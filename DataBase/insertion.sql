use dbms;
INSERT INTO bns_chapters (Chapter_no, Chapter_name) VALUES
(1, 'Offenses Against the State'),
(2, 'Offenses Relating to Public Justice'),
(3, 'Offenses Affecting Public Health, Safety, and Morals'),
(4, 'Offenses Against the Human Body'),
(5, 'Offenses Against Property'),
(6, 'Offenses Relating to Marriage'),
(7, 'Defamation and Related Offenses'),
(8, 'Offenses Against Public Tranquility'),
(9, 'Offenses Against Women and Children'),
(10, 'Cyber Offenses');

INSERT INTO Punishment (Punishment_id, Description) VALUES
(1, 'Imprisonment for life'),
(2, 'Rigorous imprisonment for 10 years'),
(3, 'Simple imprisonment for 3 months'),
(4, 'Death penalty'),
(5, 'Imprisonment for 2 years'),
(6, 'Community service for 100 hours'),
(7, 'Imprisonment up to 1 year'),
(8, 'Warning and counseling'),
(9, 'Probation for 6 months'),
(10, 'Suspended sentence');

INSERT INTO Fine (Fine_id, Description) VALUES
(1, 'Fine up to 10,000 INR'),
(2, 'Fine up to 50,000 INR'),
(3, 'Fine of 1,000 INR'),
(4, 'Fine not specified'),
(5, 'Fine up to 1,00,000 INR'),
(6, 'Fine up to 5,000 INR'),
(7, 'Fine based on court discretion'),
(8, 'Fine up to 500 INR'),
(9, 'Fine up to 25,000 INR'),
(10, 'Fine up to 2,00,000 INR');


INSERT INTO bns_sections (Section_number, Chapter_no, Section_title, Cognizability, Bailability, Punishment_id, Fine_id) VALUES
-- Chapter 1: Offenses Against the State
('1A', 1, 'Sedition - Any act or speech intending to disrupt sovereignty', 'Yes', 'Non-bailable', 1, 2),
('1B', 1, 'Espionage - Spying for a foreign nation', 'Yes', 'Non-bailable', 2, 5),
('1C', 1, 'Incitement to violence', 'Yes', 'Non-bailable', 3, 1),
('1D', 1, 'Attempt to wage war against the country', 'Yes', 'Non-bailable', 4, 7),
('1E', 1, 'Public disorder through propaganda', 'No', 'Bailable', 5, 3),
('1F', 1, 'Endangering national security through communication', 'Yes', 'Non-bailable', 2, 9),
('1G', 1, 'Unauthorised arms training', 'Yes', 'Non-bailable', 1, 6),
('1H', 1, 'Support to unlawful organizations', 'Yes', 'Bailable', 7, 4),
('1I', 1, 'Treasonous speech', 'No', 'Bailable', 8, 2),
('1J', 1, 'Promotion of civil unrest', 'Yes', 'Bailable', 9, 10),
('1K', 1, 'Aiding an enemy state', 'Yes', 'Non-bailable', 2, 3),
('1L', 1, 'Illegal border crossing for espionage', 'Yes', 'Non-bailable', 3, 6),
('1M', 1, 'Unauthorized dissemination of military secrets', 'Yes', 'Non-bailable', 5, 1),
('1N', 1, 'Attempt to destabilize government', 'Yes', 'Non-bailable', 6, 8),
('1O', 1, 'Sabotage of national infrastructure', 'Yes', 'Non-bailable', 3, 7),
('1P', 1, 'Aiding terrorism', 'Yes', 'Non-bailable', 4, 5),
('1Q', 1, 'Illegal military recruitment', 'Yes', 'Bailable', 2, 6),
('1R', 1, 'Hate speech against government institutions', 'No', 'Bailable', 7, 4),
('1S', 1, 'Infiltration in national services', 'Yes', 'Non-bailable', 1, 8),
('1T', 1, 'Act of aggression within embassies', 'Yes', 'Non-bailable', 9, 10);

 -- Insert data into the bns_sections table for Chapter 2: Offenses Relating to Public Justice
INSERT INTO bns_sections (Section_number, Chapter_no, Section_title, Cognizability, Bailability, Punishment_id, Fine_id) VALUES
('2A', 2, 'Perjury - Giving false evidence in court', 'Yes', 'Bailable', 2, 3),
('2B', 2, 'Contempt of court', 'No', 'Bailable', 3, 1),
('2C', 2, 'Obstruction of justice by preventing evidence gathering', 'Yes', 'Bailable', 4, 2),
('2D', 2, 'Tampering with evidence', 'Yes', 'Non-bailable', 5, 4),
('2E', 2, 'Threatening witnesses', 'Yes', 'Non-bailable', 1, 5),
('2F', 2, 'Bribery of judicial officers', 'Yes', 'Non-bailable', 3, 6),
('2G', 2, 'Misleading police investigation', 'No', 'Bailable', 6, 2),
('2H', 2, 'Providing false information to law enforcement', 'Yes', 'Bailable', 7, 1),
('2I', 2, 'Impersonation of public officers', 'Yes', 'Bailable', 9, 4),
('2J', 2, 'Fabricating false evidence', 'Yes', 'Non-bailable', 5, 7),
('2K', 2, 'Failure to report a crime', 'No', 'Bailable', 8, 3),
('2L', 2, 'Aiding and abetting criminals in evading justice', 'Yes', 'Non-bailable', 2, 5),
('2M', 2, 'Resisting or obstructing police', 'Yes', 'Bailable', 4, 8),
('2N', 2, 'Refusing to testify in court', 'No', 'Bailable', 10, 1),
('2O', 2, 'Harassing court officers', 'Yes', 'Bailable', 3, 9),
('2P', 2, 'Escape from lawful custody', 'Yes', 'Non-bailable', 6, 7),
('2Q', 2, 'Breach of court order', 'Yes', 'Bailable', 7, 3),
('2R', 2, 'Interference with jury duties', 'Yes', 'Non-bailable', 9, 5),
('2S', 2, 'Improper disclosure of confidential information', 'Yes', 'Bailable', 8, 6),
('2T', 2, 'Intimidation of legal officers', 'Yes', 'Non-bailable', 1, 2);

-- Insert data into the bns_sections table for Chapter 3: Offenses Affecting Public Health, Safety, and Morals
INSERT INTO bns_sections (Section_number, Chapter_no, Section_title, Cognizability, Bailability, Punishment_id, Fine_id) VALUES
('3A', 3, 'Public nuisance that affects health and safety', 'Yes', 'Bailable', 3, 2),
('3B', 3, 'Negligent spread of infectious diseases', 'Yes', 'Non-bailable', 4, 5),
('3C', 3, 'Sale of adulterated food or drugs', 'Yes', 'Non-bailable', 2, 6),
('3D', 3, 'Pollution of water bodies used by the public', 'Yes', 'Bailable', 5, 3),
('3E', 3, 'Obstruction of public spaces affecting safety', 'Yes', 'Bailable', 8, 4),
('3F', 3, 'Negligence in maintaining public infrastructure', 'Yes', 'Bailable', 7, 1),
('3G', 3, 'Sale of counterfeit goods affecting health', 'Yes', 'Non-bailable', 1, 8),
('3H', 3, 'Operating unsafe factories or machinery', 'Yes', 'Non-bailable', 6, 2),
('3I', 3, 'Spreading false alarm or panic in public spaces', 'Yes', 'Bailable', 4, 3),
('3J', 3, 'Unauthorized sale of prescription medications', 'Yes', 'Non-bailable', 3, 7),
('3K', 3, 'Endangering public health by improper waste disposal', 'Yes', 'Bailable', 5, 6),
('3L', 3, 'Illegal sale of alcohol or drugs', 'Yes', 'Non-bailable', 2, 9),
('3M', 3, 'Disturbing the peace through loud noise', 'No', 'Bailable', 10, 1),
('3N', 3, 'Unauthorized construction that risks public safety', 'Yes', 'Bailable', 9, 4),
('3O', 3, 'Smoking in designated no-smoking zones', 'No', 'Bailable', 8, 2),
('3P', 3, 'Running an unlicensed health facility', 'Yes', 'Non-bailable', 1, 5),
('3Q', 3, 'Selling expired food products', 'Yes', 'Bailable', 7, 3),
('3R', 3, 'Inappropriate disposal of hazardous materials', 'Yes', 'Non-bailable', 6, 8),
('3S', 3, 'Public indecency that causes alarm', 'Yes', 'Bailable', 3, 6),
('3T', 3, 'Exposure to harmful emissions without permits', 'Yes', 'Non-bailable', 4, 7);

-- Insert data into the bns_sections table for Chapter 4: Offenses Against the Human Body
INSERT INTO bns_sections (Section_number, Chapter_no, Section_title, Cognizability, Bailability, Punishment_id, Fine_id) VALUES
('4A', 4, 'Voluntarily causing hurt', 'Yes', 'Bailable', 3, 2),
('4B', 4, 'Grievous hurt with dangerous weapons', 'Yes', 'Non-bailable', 5, 3),
('4C', 4, 'Causing death by negligence', 'Yes', 'Bailable', 4, 7),
('4D', 4, 'Attempted murder', 'Yes', 'Non-bailable', 1, 5),
('4E', 4, 'Culpable homicide not amounting to murder', 'Yes', 'Non-bailable', 6, 9),
('4F', 4, 'Assault or use of criminal force', 'Yes', 'Bailable', 7, 1),
('4G', 4, 'Kidnapping for ransom', 'Yes', 'Non-bailable', 2, 8),
('4H', 4, 'Wrongful confinement', 'Yes', 'Bailable', 8, 4),
('4I', 4, 'Human trafficking', 'Yes', 'Non-bailable', 9, 6),
('4J', 4, 'Rape or sexual assault', 'Yes', 'Non-bailable', 10, 7),
('4K', 4, 'Voluntarily causing hurt to deter a public servant', 'Yes', 'Non-bailable', 3, 2),
('4L', 4, 'Criminal intimidation', 'Yes', 'Bailable', 5, 3),
('4M', 4, 'Stalking or harassment', 'Yes', 'Bailable', 4, 2),
('4N', 4, 'Attempt to commit culpable homicide', 'Yes', 'Non-bailable', 6, 5),
('4O', 4, 'Assault on a woman with intent to outrage her modesty', 'Yes', 'Bailable', 8, 3),
('4P', 4, 'Abetment of suicide', 'Yes', 'Non-bailable', 7, 6),
('4Q', 4, 'Exposure to danger of life or bodily harm', 'Yes', 'Bailable', 2, 4),
('4R', 4, 'Use of force without injury', 'No', 'Bailable', 1, 2),
('4S', 4, 'Death caused by rash driving', 'Yes', 'Non-bailable', 9, 8),
('4T', 4, 'Endangering personal safety of others', 'Yes', 'Bailable', 3, 7);

-- Insert data into the bns_sections table for Chapter 5: Offenses Against Property
INSERT INTO bns_sections (Section_number, Chapter_no, Section_title, Cognizability, Bailability, Punishment_id, Fine_id) VALUES
('5A', 5, 'Theft', 'Yes', 'Bailable', 2, 5),
('5B', 5, 'Burglary', 'Yes', 'Non-bailable', 4, 3),
('5C', 5, 'Housebreaking by night', 'Yes', 'Non-bailable', 1, 7),
('5D', 5, 'Robbery', 'Yes', 'Non-bailable', 3, 8),
('5E', 5, 'Dacoity', 'Yes', 'Non-bailable', 5, 6),
('5F', 5, 'Criminal misappropriation of property', 'Yes', 'Bailable', 8, 2),
('5G', 5, 'Dishonest misappropriation of found property', 'No', 'Bailable', 7, 1),
('5H', 5, 'Receiving stolen property', 'Yes', 'Bailable', 6, 3),
('5I', 5, 'Criminal breach of trust', 'Yes', 'Bailable', 9, 4),
('5J', 5, 'Cheating', 'Yes', 'Bailable', 2, 5),
('5K', 5, 'Forgery for purpose of cheating', 'Yes', 'Non-bailable', 4, 7),
('5L', 5, 'Counterfeiting currency', 'Yes', 'Non-bailable', 10, 6),
('5M', 5, 'Fraudulent removal or concealment of property', 'Yes', 'Bailable', 3, 9),
('5N', 5, 'Extortion', 'Yes', 'Bailable', 8, 2),
('5O', 5, 'Property damage due to negligence', 'Yes', 'Bailable', 5, 1),
('5P', 5, 'Misappropriation of public funds', 'Yes', 'Non-bailable', 6, 4),
('5Q', 5, 'Possession of stolen property', 'Yes', 'Bailable', 7, 8),
('5R', 5, 'Intentional mischief causing damage', 'Yes', 'Bailable', 9, 3),
('5S', 5, 'Unlawful encroachment on public property', 'Yes', 'Bailable', 1, 5),
('5T', 5, 'Vandalism', 'No', 'Bailable', 2, 4);

-- Insert data into the bns_sections table for Chapter 6: Offenses Relating to Marriage
INSERT INTO bns_sections (Section_number, Chapter_no, Section_title, Cognizability, Bailability, Punishment_id, Fine_id) VALUES
('6A', 6, 'Bigamy - marrying again during lifetime of spouse', 'Yes', 'Bailable', 2, 3),
('6B', 6, 'Marrying fraudulently', 'Yes', 'Non-bailable', 4, 5),
('6C', 6, 'Cohabitation caused by deceitful means', 'Yes', 'Non-bailable', 3, 6),
('6D', 6, 'Concealment of former marriage', 'Yes', 'Bailable', 1, 2),
('6E', 6, 'Dowry harassment', 'Yes', 'Non-bailable', 5, 4),
('6F', 6, 'Cruelty to spouse', 'Yes', 'Non-bailable', 6, 7),
('6G', 6, 'Fraudulent marriage inducement', 'Yes', 'Bailable', 7, 3),
('6H', 6, 'Desertion of spouse without cause', 'Yes', 'Bailable', 9, 1),
('6I', 6, 'Refusal to provide maintenance to spouse', 'Yes', 'Bailable', 8, 2),
('6J', 6, 'Forced marriage under duress', 'Yes', 'Non-bailable', 10, 5),
('6K', 6, 'Illegal marriage to a minor', 'Yes', 'Non-bailable', 2, 8),
('6L', 6, 'Preventing lawful marriage', 'Yes', 'Bailable', 3, 4),
('6M', 6, 'Enticing married person to divorce', 'Yes', 'Bailable', 4, 6),
('6N', 6, 'Abduction for marriage', 'Yes', 'Non-bailable', 1, 7),
('6O', 6, 'Unlawful marriage registration', 'Yes', 'Bailable', 9, 2),
('6P', 6, 'Exploitation under the pretext of marriage', 'Yes', 'Non-bailable', 7, 3),
('6Q', 6, 'Marriage under influence or intoxication', 'Yes', 'Bailable', 5, 9),
('6R', 6, 'Refusal to cohabit without lawful reason', 'Yes', 'Bailable', 8, 1),
('6S', 6, 'Use of threats to secure marriage', 'Yes', 'Non-bailable', 6, 8),
('6T', 6, 'Falsely claiming to be unmarried', 'Yes', 'Bailable', 4, 3);

-- Insert data into the bns_sections table for Chapter 7: Offenses Against the State
INSERT INTO bns_sections (Section_number, Chapter_no, Section_title, Cognizability, Bailability, Punishment_id, Fine_id) VALUES
('7A', 7, 'Sedition against the State', 'Yes', 'Non-bailable', 1, 7),
('7B', 7, 'Waging war against the State', 'Yes', 'Non-bailable', 2, 8),
('7C', 7, 'Assisting enemy during wartime', 'Yes', 'Non-bailable', 3, 6),
('7D', 7, 'Espionage or spying', 'Yes', 'Non-bailable', 4, 9),
('7E', 7, 'Conspiracy to commit acts of terrorism', 'Yes', 'Non-bailable', 5, 10),
('7F', 7, 'Unauthorized disclosure of state secrets', 'Yes', 'Non-bailable', 6, 3),
('7G', 7, 'Assaulting government officials', 'Yes', 'Non-bailable', 7, 4),
('7H', 7, 'Inciting violence against the State', 'Yes', 'Non-bailable', 8, 5),
('7I', 7, 'Endangering national security', 'Yes', 'Non-bailable', 9, 2),
('7J', 7, 'Harboring fugitives against the State', 'Yes', 'Non-bailable', 10, 6),
('7K', 7, 'Promoting hatred against government policies', 'Yes', 'Bailable', 1, 2),
('7L', 7, 'Possession of unauthorized weapons', 'Yes', 'Non-bailable', 2, 4),
('7M', 7, 'Providing assistance to enemy agents', 'Yes', 'Non-bailable', 3, 7),
('7N', 7, 'Entering restricted government areas', 'Yes', 'Bailable', 4, 5),
('7O', 7, 'Interference in government operations', 'Yes', 'Bailable', 5, 3),
('7P', 7, 'Using force against police officers', 'Yes', 'Non-bailable', 6, 8),
('7Q', 7, 'Disruption of government services', 'Yes', 'Bailable', 7, 1),
('7R', 7, 'Encouraging armed rebellion', 'Yes', 'Non-bailable', 8, 9),
('7S', 7, 'Defamation of the State', 'No', 'Bailable', 9, 4),
('7T', 7, 'Propaganda against national security', 'Yes', 'Non-bailable', 10, 3);

-- Insert data into the bns_sections table for Chapter 8: Offenses Against Public Tranquility
INSERT INTO bns_sections (Section_number, Chapter_no, Section_title, Cognizability, Bailability, Punishment_id, Fine_id) VALUES
('8A', 8, 'Rioting', 'Yes', 'Non-bailable', 1, 2),
('8B', 8, 'Unlawful assembly', 'Yes', 'Bailable', 3, 5),
('8C', 8, 'Provoking breach of peace', 'Yes', 'Bailable', 2, 4),
('8D', 8, 'Engaging in violent demonstrations', 'Yes', 'Non-bailable', 4, 6),
('8E', 8, 'Inciting riots', 'Yes', 'Non-bailable', 5, 7),
('8F', 8, 'Trespassing during protests', 'Yes', 'Bailable', 6, 3),
('8G', 8, 'Disturbing public order', 'No', 'Bailable', 7, 1),
('8H', 8, 'Participation in armed gatherings', 'Yes', 'Non-bailable', 8, 9),
('8I', 8, 'Provocation to incite violence', 'Yes', 'Non-bailable', 9, 2),
('8J', 8, 'Public nuisance in gatherings', 'No', 'Bailable', 10, 1),
('8K', 8, 'Interference with police during public order maintenance', 'Yes', 'Bailable', 1, 5),
('8L', 8, 'Using loudspeakers without permit', 'No', 'Bailable', 3, 4),
('8M', 8, 'Illegal roadblocks or barricades', 'Yes', 'Non-bailable', 2, 3),
('8N', 8, 'Engaging in mob violence', 'Yes', 'Non-bailable', 4, 6),
('8O', 8, 'Damage to public property during protests', 'Yes', 'Non-bailable', 5, 8),
('8P', 8, 'Blocking emergency services', 'Yes', 'Non-bailable', 6, 7),
('8Q', 8, 'Attempt to disrupt social harmony', 'Yes', 'Bailable', 7, 1),
('8R', 8, 'Encouraging public disorder', 'Yes', 'Non-bailable', 8, 5),
('8S', 8, 'Participation in unlawful protests', 'Yes', 'Bailable', 9, 2),
('8T', 8, 'Defiling public monuments', 'Yes', 'Bailable', 10, 4);

-- Insert data into the bns_sections table for Chapter 9: Offenses Relating to Elections
INSERT INTO bns_sections (Section_number, Chapter_no, Section_title, Cognizability, Bailability, Punishment_id, Fine_id) VALUES
('9A', 9, 'Bribery in elections', 'Yes', 'Bailable', 3, 5),
('9B', 9, 'Intimidation of voters', 'Yes', 'Non-bailable', 4, 6),
('9C', 9, 'Impersonation of voter', 'Yes', 'Bailable', 1, 2),
('9D', 9, 'Interference with election officers', 'Yes', 'Non-bailable', 5, 3),
('9E', 9, 'Falsification of election documents', 'Yes', 'Non-bailable', 6, 8),
('9F', 9, 'Violating election campaigning rules', 'No', 'Bailable', 2, 4),
('9G', 9, 'Campaigning within prohibited areas', 'Yes', 'Bailable', 7, 1),
('9H', 9, 'Tampering with voting machines', 'Yes', 'Non-bailable', 8, 9),
('9I', 9, 'Publishing false information about candidates', 'No', 'Bailable', 9, 2),
('9J', 9, 'Inducing undue influence on voters', 'Yes', 'Non-bailable', 10, 7),
('9K', 9, 'Carrying weapons at polling stations', 'Yes', 'Non-bailable', 3, 8),
('9L', 9, 'Disruption of election meetings', 'Yes', 'Bailable', 4, 3),
('9M', 9, 'False declaration by election candidates', 'Yes', 'Non-bailable', 1, 6),
('9N', 9, 'Campaigning on voting day', 'No', 'Bailable', 5, 2),
('9O', 9, 'Destruction of election materials', 'Yes', 'Non-bailable', 6, 4),
('9P', 9, 'Violation of election fund limits', 'Yes', 'Bailable', 7, 3),
('9Q', 9, 'Malpractices during voting', 'Yes', 'Non-bailable', 8, 5),
('9R', 9, 'Forging electoral certificates', 'Yes', 'Non-bailable', 9, 6),
('9S', 9, 'Public speeches on election day', 'No', 'Bailable', 2, 1),
('9T', 9, 'Preventing lawful voters from voting', 'Yes', 'Non-bailable', 3, 9);

-- Insert data into the bns_sections table for Chapter 10: Offenses Relating to Religion
INSERT INTO bns_sections (Section_number, Chapter_no, Section_title, Cognizability, Bailability, Punishment_id, Fine_id) VALUES
('10A', 10, 'Insulting religious beliefs', 'Yes', 'Bailable', 3, 5),
('10B', 10, 'Desecration of places of worship', 'Yes', 'Non-bailable', 4, 6),
('10C', 10, 'Interference in religious gatherings', 'Yes', 'Bailable', 2, 3),
('10D', 10, 'Causing hurt to religious sentiments', 'Yes', 'Non-bailable', 1, 8),
('10E', 10, 'Destroying religious objects', 'Yes', 'Non-bailable', 5, 4),
('10F', 10, 'Publicly disrespecting religion', 'No', 'Bailable', 6, 2),
('10G', 10, 'Promoting enmity between religious groups', 'Yes', 'Non-bailable', 7, 3),
('10H', 10, 'Disturbance during religious ceremonies', 'Yes', 'Bailable', 8, 1),
('10I', 10, 'Malicious acts intended to outrage religious feelings', 'Yes', 'Non-bailable', 9, 6),
('10J', 10, 'Encouraging religious hatred', 'Yes', 'Non-bailable', 10, 7),
('10K', 10, 'Preventing lawful worship', 'Yes', 'Bailable', 1, 2),
('10L', 10, 'Offensive remarks against religious figures', 'Yes', 'Bailable', 3, 4),
('10M', 10, 'Inciting violence on religious grounds', 'Yes', 'Non-bailable', 4, 9),
('10N', 10, 'Interference in religious property', 'Yes', 'Non-bailable', 5, 3),
('10O', 10, 'Obstruction of religious processions', 'Yes', 'Bailable', 6, 5),
('10P', 10, 'Use of threats to insult religion', 'Yes', 'Non-bailable', 7, 8),
('10Q', 10, 'Publishing offensive material against religion', 'Yes', 'Bailable', 8, 2),
('10R', 10, 'Forcibly converting others', 'Yes', 'Non-bailable', 9, 7),
('10S', 10, 'Publicly offending religious practices', 'No', 'Bailable', 2, 1),
('10T', 10, 'Defiling a place of worship', 'Yes', 'Non-bailable', 3, 9);


-- Insert keywords related to Chapter 7: Offenses Against the State
INSERT INTO keywords (Keyword_id, Keyword, Section_number) VALUES
(1, 'Sedition', '7A'),
(2, 'Waging war', '7B'),
(3, 'Assisting enemy', '7C'),
(4, 'Espionage', '7D'),
(5, 'Terrorism', '7E'),
(6, 'State secrets', '7F'),
(7, 'Assault', '7G'),
(8, 'Inciting violence', '7H'),
(9, 'National security', '7I'),
(10, 'Harboring fugitives', '7J'),
(11, 'Public defamation', '7S'),
(12, 'Propaganda', '7T'),
(13, 'Unauthorized weapons', '7L'),
(14, 'Enemy agents', '7M'),
(15, 'Restricted areas', '7N'),
(16, 'Interference', '7O'),
(17, 'Armed rebellion', '7R'),
(18, 'Police assault', '7P'),
(19, 'Disruption', '7Q'),
(20, 'Rebellion', '7G');

-- Insert keywords related to Chapter 8: Offenses Against Public Tranquility
INSERT INTO keywords (Keyword_id, Keyword, Section_number) VALUES
(21, 'Rioting', '8A'),
(22, 'Unlawful assembly', '8B'),
(23, 'Public peace', '8C'),
(24, 'Violent demonstrations', '8D'),
(25, 'Inciting riots', '8E'),
(26, 'Public nuisance', '8G'),
(27, 'Mob violence', '8N'),
(28, 'Public disorder', '8Q'),
(29, 'Election disruption', '8L'),
(30, 'Emergency services', '8P'),
(31, 'Prohibited assembly', '8H'),
(32, 'Public speeches', '8S'),
(33, 'Destruction of property', '8O'),
(34, 'Interference with police', '8K'),
(35, 'Protest violations', '8F'),
(36, 'Public blockade', '8M'),
(37, 'Disturbance of peace', '8R'),
(38, 'Force against police', '8A'),
(39, 'Violent protests', '8I'),
(40, 'Intolerance', '8J');

-- Insert keywords related to Chapter 9: Offenses Relating to Elections
INSERT INTO keywords (Keyword_id, Keyword, Section_number) VALUES
(41, 'Bribery', '9A'),
(42, 'Voter intimidation', '9B'),
(43, 'Impersonation', '9C'),
(44, 'Election interference', '9D'),
(45, 'Falsification', '9E'),
(46, 'Election campaigning', '9F'),
(47, 'Voting machines', '9H'),
(48, 'False declarations', '9M'),
(49, 'Malpractices', '9Q'),
(50, 'Public speeches', '9S'),
(51, 'Illegal roadblocks', '9I'),
(52, 'Voter suppression', '9J'),
(53, 'Election bribery', '9A'),
(54, 'Election fund violation', '9P'),
(55, 'Tampering', '9G'),
(56, 'Illegal campaigning', '9F'),
(57, 'Election laws', '9B'),
(58, 'Voter influence', '9D'),
(59, 'Polluting the election', '9O'),
(60, 'Ballot box tampering', '9G'),
(61, 'Election threats', '9J'),
(62, 'Election fraud', '9M'),
(63, 'Election violence', '9B'),
(64, 'False voting', '9C'),
(65, 'Election misconduct', '9A'),
(66, 'Unlawful votes', '9P'),
(67, 'Election corruption', '9T'),
(68, 'Inducement', '9R'),
(69, 'Voter fraud', '9I'),
(70, 'Illegal election campaigns', '9F');

-- Insert keywords related to Chapter 10: Offenses Relating to Religion
INSERT INTO keywords (Keyword_id, Keyword, Section_number) VALUES
(71, 'Religious insult', '10A'),
(72, 'Desecration', '10B'),
(73, 'Religious gatherings', '10C'),
(74, 'Religious sentiments', '10D'),
(75, 'Destruction of religious objects', '10E'),
(76, 'Religious offense', '10F'),
(77, 'Religious harmony', '10G'),
(78, 'Religious ceremonies', '10H'),
(79, 'Outrage of religious feelings', '10I'),
(80, 'Religious hatred', '10J'),
(81, 'Worship obstruction', '10K'),
(82, 'Religious figures', '10L'),
(83, 'Offending religion', '10M'),
(84, 'Religious violence', '10N'),
(85, 'Religious processions', '10O'),
(86, 'Religious conversion', '10P'),
(87, 'Disrespect of religious practices', '10Q'),
(88, 'Defiling worship places', '10T'),
(89, 'Religious speeches', '10R'),
(90, 'Religious freedom', '10S'),
(91, 'Religious intolerance', '10M'),
(92, 'Religious defamation', '10L'),
(93, 'Offending religious symbols', '10D'),
(94, 'Religious conspiracy', '10B'),
(95, 'Interference in religious activities', '10C'),
(96, 'Religious persecution', '10G'),
(97, 'Religious protests', '10T'),
(98, 'Public insults', '10E'),
(99, 'Religious intolerance', '10P'),
(100, 'Provocation of religious violence', '10H');

INSERT INTO police_station (station_name, district) 
VALUES
('Thunderstrike Police Station', 'Ram Garh'),
('Eagle Eye Police Station', 'Ram Garh'),
('Ironclad Police Station', 'Ram Garh'),
('Justice League Police Station', 'Ram Garh'),
('The Watchtower Police Station', 'Ram Garh'),
('Shield Bearer Police Station', 'Ram Garh'),
('Guardian Angels Police Station', 'Ram Garh'),
('Thunderbolt Police Station', 'Ram Garh'),
('Justice Seekers Police Station', 'Ram Garh'),
('Vigilant Warriors Police Station', 'Ram Garh');


SELECT S.Section_number, F.station_no, P.station_name,SP.Suspect_name,F.fir_no
,F.incident_occured_at,F.complaint_registered_at,F.place_of_incident,F.complainant_name,
F.complainant_address,F.phone_no 
FROM fir F 
join fir_sections S 
on F.fir_no = S.fir_no 
join police_station P 
on P.station_no = F.station_no 
join suspect_name SP 
on SP.fir_no = F.fir_no 
WHERE F.FIR_no = 1;
