create database dbms;
use dbms;
create table bns_chapters (
Chapter_no int primary key,
    Chapter_name varchar(100)
);

create table Punishment(
Punishment_id int primary key,
    Description text
);

create table Fine(
Fine_id int primary key,
    Description text
);

create table bns_sections (
    Section_number varchar(8) PRIMARY KEY,
    Chapter_no int,
    foreign key(Chapter_no) references bns_chapters(Chapter_no) ON DELETE CASCADE,
    Section_title varchar(70),
    description text,
    Cognizability varchar(5),
    Bailability VARCHAR(30),
    Punishment_id int,
    foreign key(Punishment_id) references Punishment(Punishment_id) ON DELETE CASCADE,
    Fine_id int,
    foreign key(Fine_id) references Fine(Fine_id) ON DELETE CASCADE
);

CREATE TABLE keywords (
    Keyword_id int Primary key,
    Keyword Varchar(50),
    Section_number varchar(8),
    foreign key(Section_number) references bns_sections(Section_number) ON DELETE CASCADE
);

create table police_station(
	station_no int primary key auto_increment,
    station_name varchar(50), 
    district varchar(50)
);

create table FIR 
(
	FIR_no int primary key auto_increment,
    incident_occured_at timestamp,
    complaint_registered_at timestamp default current_timestamp,
    station_no int,
    place_of_incident varchar(50),
    complainant_name varchar(50),
    complainant_address varchar(50),
    phone_no char(10),
    foreign key (station_no) references police_station(station_no) ON DELETE CASCADE
);


CREATE TABLE FIR_Sections (
    FIR_no INT,
    Section_number varchar(8),
    PRIMARY KEY (FIR_no, Section_number),
    FOREIGN KEY (FIR_no) REFERENCES FIR(FIR_no) ON DELETE CASCADE, 
    FOREIGN KEY (Section_number) REFERENCES bns_sections(Section_number) ON DELETE CASCADE
);

create table suspects(
	FIR_no INT,
    Suspect_Name varchar(50),
    Primary Key (FIR_no, Suspect_Name),
    foreign key (FIR_no) references FIR(FIR_no) ON DELETE CASCADE
);




