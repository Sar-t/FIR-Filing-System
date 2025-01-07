import express from "express";
import mysql2 from "mysql2";
import bodyParser from "body-parser";
const port = 3007;
const app = express();
const db = mysql2.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'dbms'
});
app.use(express.static("public"));
app.use(bodyParser.urlencoded({extended : true}));


db.connect((err) => {
    if(err) throw err;
    console.log("Database connected successfully!");
});
// New login page route
app.get("/", (req, res) => {
  res.render("login.ejs");
});

// Updated home page route
app.get("/home", (req, res) => {
  res.render("index.ejs");
});

// Handle login submission
app.post("/login", (req, res) => {
  const { user_id, password } = req.body;

  // Check hardcoded credentials
  if (user_id === "sar669" && password === "1234") {
      res.redirect("/home");
  } else {
      res.render("login.ejs", { error: "Invalid User ID or Password" });
  }
});


app.get("/bns-Sections",(req,res)=>{
    db.query("select Chapter_name from bns_chapters",(err,data)=>{
        if(err)throw err;
        res.render("bnsSections.ejs",{
            Chapters:data
        });
    });

});
for(let i=0;i<10;i++){
    app.get(`/Chapter-${i}`,(req,res)=>{
        db.query(`select Section_number,Section_title from bns_sections where Chapter_no = ${i+1}`,(err,data)=>{
            if(err)throw err;
            res.render("bnsSections.ejs",{
                Sections:data
            });
        });
    });
    db.query(
        `SELECT Chapter_no, COUNT(Section_number) AS no_of_sections FROM bns_sections WHERE Chapter_no = ? GROUP BY Chapter_no`,
        [i + 1],
        (err, data) => {
          if (err) throw err;
      
          for (let j = 0; j < data[0].no_of_sections; j++) {
            let Sec_no = `${i + 1}${String.fromCharCode(65 + j)}`;
      
            // Define route inside a closure to capture the current value of Sec_no
            app.get(`/Section-${Sec_no}`, (req, res) => {
              db.query(
                `SELECT B.Section_number, B.Section_title, B.description, B.cognizability, B.Bailability, P.Description AS punishment, F.Description AS fine 
                FROM bns_sections B 
                JOIN punishment P ON B.Punishment_id = P.Punishment_id 
                JOIN fine F ON F.fine_id = B.fine_id 
                WHERE B.Section_number = ?`,
                [Sec_no],
                (err, sectionData) => {
                  if (err) throw err;
                  res.render("bnsSections.ejs", {
                    Section_description: sectionData,
                  });
                }
              );
            });
          }
        }
      );
      
}
app.get("/viewFIR", (req, res) => {
  db.query("SELECT COUNT(*) as no FROM fir", (err, result) => {
    if (err) throw err;
    const no_of_fir = result[0].no;

    // Render the list of FIRs along with a search form
    res.render("viewFir.ejs", { count: no_of_fir });
  });
});

// Search route for FIR details
app.get("/FIR/search", (req, res) => {
  const firNo = req.query.fir_no; // Get FIR number from query parameter

  const query = `
    SELECT 
      F.fir_no,
      F.station_no,
      P.station_name,
      F.incident_occured_at,
      F.complaint_registered_at,
      F.place_of_incident,
      F.complainant_name,
      F.complainant_address,
      F.phone_no,
      GROUP_CONCAT(DISTINCT S.Section_number SEPARATOR ', ') AS sections_applied,
      GROUP_CONCAT(DISTINCT SP.Suspect_name SEPARATOR ', ') AS suspects
    FROM 
      fir F
    JOIN 
      fir_sections S ON F.fir_no = S.fir_no
    JOIN 
      police_station P ON P.station_no = F.station_no
    JOIN 
      suspects SP ON SP.fir_no = F.fir_no
    WHERE 
      F.fir_no = ?
    GROUP BY 
      F.fir_no
  `;

  db.query(query, [firNo], (err, result) => {
    if (err) throw err;

    if (result.length > 0) {
      res.render("detailed_fir.ejs", { data: result[0] });
    } else {
      res.status(404).send("FIR not found");
    }
  });
});
app.get("/help", (req, res) => {
  res.render("help.ejs");
});


app.get("/generate-fir",(req,res)=>{
  var result;
  db.query(`select station_name from police_station`,(err,data)=>{
    if(err)throw err;
    res.render("fir.ejs",{
      stations : data
    });
  });
  
});

app.post("/submit-form",(req,res)=>{
  let complainant_details = new Object();
  if(req.body["MiddleName"] == ""){
    complainant_details.name = `${req.body["FirstName"]} ${req.body["LastName"]}`;
  }
  else{
    complainant_details.name = `${req.body["FirstName"]} ${req.body["MiddleName"]} ${req.body["LastName"]}`;
  }
  complainant_details.phone = req.body["phone"];
  complainant_details.address = req.body["address"];
  complainant_details.place = req.body["venue"];
  complainant_details.incident_time = `${req.body["date"]}` + " " + `${req.body["time"]}`;
  complainant_details.station = req.body["station"];
  
  var keywords_String = req.body["keywords"];

  db.query(`select station_no from police_station where station_name = '${complainant_details.station}'`,(err,data)=>{
    if(err)throw err;
    if(data.length > 0){
      complainant_details.station_no = data[0].station_no;
    }
    complainant_details.suspects = req.body["suspects"];
    db.query(`insert into fir (incident_occured_at, station_no,place_of_incident, complainant_name, complainant_address, phone_no) 
          values (?, ?, ?, ?, ?, ?)`, 
          [complainant_details.incident_time, complainant_details.station_no, complainant_details.place, complainant_details.name, complainant_details.address, complainant_details.phone], 
          (err, result) => {
            if (err) throw err;
            console.log("Data inserted successfully");
        
      var keywords_Array = req.body.keywords.split(',').map(value => value.trim()); //It splits the values between comma and trims the surrounding spaces
      var suspects_Array = req.body.suspects.split(',').map(value => value.trim());
      for(let i=0;i<suspects_Array.length;i++){
        db.query(`insert into suspects values((select last_insert_id()),'${suspects_Array[i]}')`,(err,data)=>{
          if(err)throw err;
        });
      } 
      db.query(`select Section_number from keywords where Keyword in (${keywords_Array.map(() => '?').join(', ')})`,keywords_Array,(err,data)=>{
        if(err)throw err;
        for(let i=0;i<data.length;i++){
          db.query(`insert into fir_sections values((select last_insert_id()),'${data[i].Section_number}')`,(err)=>{
            if(err)throw err;
          });
        }
      });
      
    });
  });
  res.redirect("/generate-fir");
});


app.listen(port,()=>{
    console.log(`listening on port ${port}`);
});

