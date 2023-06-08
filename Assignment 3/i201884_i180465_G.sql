--Name: Ahmed Baig
--Rollnumber: 20i-1884
--Section: G

--Name: Ahmed Nasim
--Rollnumber: 18i-0465
--Section: G

CREATE TABLE players (
    pid VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    nationality VARCHAR(50),
    dob date  
);

CREATE TABLE player_stats(
    pid VARCHAR(10),
    team_id VARCHAR(10),
    jy_num INT,
    position VARCHAR(20),
    height INT,
    weight INT,
    foot CHAR
);

CREATE TABLE teams (
    team_id VARCHAR(10) PRIMARY KEY,
    team_name VARCHAR(50),
    country VARCHAR(50),
    stadium VARCHAR(10)
);

CREATE TABLE managers (
    mid VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    nationality VARCHAR(50),
    dob  date ,
    team VARCHAR(10)
);

CREATE TABLE stadiums (
    sid VARCHAR(10) PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    country VARCHAR(50),
    capacity INT
);

CREATE TABLE tournaments (
    tour_id VARCHAR(10) PRIMARY KEY,
    tour_name VARCHAR(50),
    season VARCHAR(10),
    location VARCHAR(50)
);

CREATE TABLE matches (
    match_id VARCHAR(10) PRIMARY KEY,
    tour VARCHAR(10),
    date_time  DATETIME,
    home_team VARCHAR(10),
    away_team VARCHAR(10),
    stadium VARCHAR(10)
);

CREATE TABLE match_report (
    match_id VARCHAR(10),
    pso INT,
    ht_score INT,
    at_score INT,
    attendance INT
);

CREATE TABLE goals (
    goal_id VARCHAR(10) PRIMARY KEY,
    match_id VARCHAR(10),
    pid VARCHAR(10),
    duration INT,
    assist VARCHAR(10),
    goal_desc VARCHAR(25)
);

INSERT INTO tournaments VALUES ('uefa1', 'UEFA Champions League', '2021-2022', 'Europe');
INSERT INTO tournaments VALUES ('uefa2', 'UEFA Champions League', '2020-2021', 'Europe');
INSERT INTO tournaments VALUES ('uefa3', 'UEFA Champions League', '2019-2020', 'Europe');
INSERT INTO tournaments VALUES ('uefa4', 'UEFA Champions League', '2018-2019', 'Europe');
INSERT INTO tournaments VALUES ('uefa5', 'UEFA Champions League', '2017-2018', 'Europe');
INSERT INTO tournaments VALUES ('uefa6', 'UEFA Champions League', '2016-2017', 'Europe');

INSERT INTO stadiums VALUES('st1', 'Giuseppe Meazza', 'Milano', 'Italy', 75923);
INSERT INTO stadiums VALUES('st2', 'Johan Cruijff ArenA', 'Amsterdam', 'Netherlands', 54990);
INSERT INTO stadiums VALUES('st3', 'Gewiss Stadium', 'Bergamo', 'Italy', 26562);
INSERT INTO stadiums VALUES('st4', 'Wanda Metropolitano', 'Madrid', 'Spain', 68000);
INSERT INTO stadiums VALUES('st5', 'Allianz Arena', 'München', 'Germany', 75024);
INSERT INTO stadiums VALUES('st6', 'Vodafone Park', 'Istanbul', 'Turkey', 41903);
INSERT INTO stadiums VALUES('st7', 'Signal Iduna Park', 'Dortmund', 'Germany', 81365);
INSERT INTO stadiums VALUES('st8', 'Stadion Wankdorf', 'Bern', 'Switzerland', 32000);
INSERT INTO stadiums VALUES('st9', 'Stamford Bridge', 'London', 'England', 41837);
INSERT INTO stadiums VALUES('st10', 'Jan Breydel Stadion', 'Brugge', 'Belgium', 29042);
INSERT INTO stadiums VALUES('st11', 'Olimpiyskyi', 'Kiev', 'Ukraine', 70050);
INSERT INTO stadiums VALUES('st12', 'Spotify Camp Nou', 'Barcelona', 'Spain', 99354);
INSERT INTO stadiums VALUES('st13', 'Estádio do Dragão', 'Porto', 'Portugal', 54378);
INSERT INTO stadiums VALUES('st14', 'Sheriff Stadium', 'Tiraspol', 'Moldova', 14300);
INSERT INTO stadiums VALUES('st15', 'Allianz Stadium', 'Torino', 'Italy', 41254);
INSERT INTO stadiums VALUES('st16', 'Stade Pierre Mauroy', 'Villeneuve D’Ascq', 'France', 50186);
INSERT INTO stadiums VALUES('st17', 'Anfield', 'Liverpool', 'England', 54074);
INSERT INTO stadiums VALUES('st18', 'Nya Malmö Stadion', 'Malmö', 'Sweden', 22500);
INSERT INTO stadiums VALUES('st19', 'Etihad Stadium', 'Manchester', 'England', 55097);
INSERT INTO stadiums VALUES('st20', 'Old Trafford', 'Manchester', 'England', 74140);
INSERT INTO stadiums VALUES('st21', 'Parc des Princes', 'Paris', 'France', 48712);
INSERT INTO stadiums VALUES('st22', 'Red Bull Arena', 'Leipzig', 'Germany', 42558);
INSERT INTO stadiums VALUES('st23', 'Red Bull Arena', 'Wals-Siezenheim', 'Austria', 31895);
INSERT INTO stadiums VALUES('st24', 'Santiago Bernabéu', 'Madrid', 'Spain', 81044);
INSERT INTO stadiums VALUES('st25', 'Ramón Sánchez Pizjuán', 'Sevilla', 'Spain', 43883);
INSERT INTO stadiums VALUES('st26', 'Donbass Arena', 'Donetsk', 'Ukraine', 52518);
INSERT INTO stadiums VALUES('st27', 'Estádio da Luz', 'Lisboa', 'Portugal', 65272);
INSERT INTO stadiums VALUES('st28', 'Estádio José Alvalade', 'Lisboa', 'Portugal', 52000);
INSERT INTO stadiums VALUES('st29', 'Volkswagen Arena', 'Wolfsburg', 'Germany', 30000);
INSERT INTO stadiums VALUES('st30', 'Estadio de la Cerámica', 'Villarreal', 'Spain', 23500);
INSERT INTO stadiums VALUES('st31', 'Gazprom Arena', 'St. Petersburg', 'Russia', 68134);
INSERT INTO stadiums VALUES('st32', 'Stade de France', 'Paris - St. Denis', 'France', 81338);
INSERT INTO stadiums VALUES('st33', 'Borussia-Park', 'Mönchengladbach', 'Germany', 54022);
INSERT INTO stadiums VALUES('st34', 'MCH Arena', 'Herning', 'Denmark', 11535);
INSERT INTO stadiums VALUES('st35', 'Groupama Aréna', 'Budapest', 'Hungary', 23700);
INSERT INTO stadiums VALUES('st36', 'Krasnodar Stadium', 'Krasnodar', 'Russia', 34652);
INSERT INTO stadiums VALUES('st37', 'Fatih Terim Stadium', 'Istanbul', 'Turkey', 17319);
INSERT INTO stadiums VALUES('st38', 'Olimpico', 'Roma', 'Italy', 70634);
INSERT INTO stadiums VALUES('st39', 'RŽD-Arena', 'Moskva', 'Russia', 27320);
INSERT INTO stadiums VALUES('st40', 'Georgios Karaiskakis', 'Piräus', 'Greece', 33334);
INSERT INTO stadiums VALUES('st41', 'Vélodrome', 'Marseille', 'France', 67394);
INSERT INTO stadiums VALUES('st42', 'Roazhon Park', 'Rennes', 'France', 29778);
INSERT INTO stadiums VALUES('st43', 'Alfredo Di Stéfano', 'Madrid', 'Spain', 9000);
INSERT INTO stadiums VALUES('st44', 'Puskás Aréna', 'Budapest', 'Hungary', 67215);
INSERT INTO stadiums VALUES('st45', 'Arena Națională', 'Bucuresti', 'Romania', 55611);
INSERT INTO stadiums VALUES('st46', 'BayArena', 'Leverkusen', 'Germany', 30210);
INSERT INTO stadiums VALUES('st47', 'Marakana', 'Beograd', 'Serbia', 55538);
INSERT INTO stadiums VALUES('st48', 'Maksimir', 'Zagreb', 'Croatia', 38079);
INSERT INTO stadiums VALUES('st49', 'Nef Stadyumu', 'Istanbul', 'Turkey', 52280);
INSERT INTO stadiums VALUES('st50', 'Cegeka Arena', 'Genk', 'Belgium', 24956);
INSERT INTO stadiums VALUES('st51', 'Groupama Stadium', 'Décines-Charpieu', 'France', 59186);
INSERT INTO stadiums VALUES('st52', 'Sinobo Stadium', 'Praha', 'Czech Republic', 19370);
INSERT INTO stadiums VALUES('st53', 'Diego Maradona', 'Napoli', 'Italy', 60240);
INSERT INTO stadiums VALUES('st54', 'Tottenham Hotspur Stadium', 'London', 'England', 62062);
INSERT INTO stadiums VALUES('st55', 'Estadio de Mestalla', 'Valencia', 'Spain', 55000);
INSERT INTO stadiums VALUES('st56', 'Metalist Stadion', 'Kharkiv', 'Ukraine', 41307);
INSERT INTO stadiums VALUES('st57', 'PreZero Arena', 'Sinsheim', 'Germany', 30150);
INSERT INTO stadiums VALUES('st58', 'Agia Sophia Stadium', 'Athen', 'Greece', 30597);
INSERT INTO stadiums VALUES('st59', 'Stade Louis II', 'Monaco', 'France', 18524);
INSERT INTO stadiums VALUES('st60', 'VEB Arena', 'Moskva', 'Russia', 30000);
INSERT INTO stadiums VALUES('st61', 'Veltins-Arena', 'Gelsenkirchen', 'Germany', 62271);
INSERT INTO stadiums VALUES('st62', 'Philips Stadion', 'Eindhoven', 'Netherlands', 35000);
INSERT INTO stadiums VALUES('st63', 'Doosan Arena', 'Plzeň', 'Czech Republic', 12500);
INSERT INTO stadiums VALUES('st64', 'Wembley Stadium', 'London', 'England', 90000);
INSERT INTO stadiums VALUES('st65', 'Spyros Louis (OAKA)', 'Athen', 'Greece', 71030);
INSERT INTO stadiums VALUES('st66', 'Luzhniki', 'Moskva', 'Russia', 80840);
INSERT INTO stadiums VALUES('st67', 'Neo GSP Stadium', 'Nikosia', 'Cyprus', 23650);
INSERT INTO stadiums VALUES('st68', 'Celtic Park', 'Glasgow', 'Scotland', 60832);
INSERT INTO stadiums VALUES('st69', 'St. Jakob-Park', 'Basel', 'Switzerland', 38512);
INSERT INTO stadiums VALUES('st70', 'De Kuip', 'Rotterdam', 'Netherlands', 51177);
INSERT INTO stadiums VALUES('st71', 'Ljudski vrt', 'Maribor', 'Slovenia', 12994);
INSERT INTO stadiums VALUES('st72', 'Qarabağ Stadium', 'Baku', 'Azerbaijan', 4735);
INSERT INTO stadiums VALUES('st73', 'Lotto Park', 'Bruxelles', 'Belgium', 22500);
INSERT INTO stadiums VALUES('st74', 'Otkrytie Arena', 'Moskva', 'Russia', 44929);
INSERT INTO stadiums VALUES('st75', 'Baku National Stadium', 'Baku', 'Azerbaijan', 68700);
INSERT INTO stadiums VALUES('st76', 'Emirates Stadium', 'London', 'England', 60704);
INSERT INTO stadiums VALUES('st77', 'Telia Parken', 'København', 'Denmark', 38076);
INSERT INTO stadiums VALUES('st78', 'Rostov Arena', 'Rostov-na-Donu', 'Russia', 45000);
INSERT INTO stadiums VALUES('st79', 'Stadion Wojska Polskiego', 'Warszawa', 'Poland', 31103);
INSERT INTO stadiums VALUES('st80', 'King Power Stadium', 'Leicester', 'England', 32500);
INSERT INTO stadiums VALUES('st81', 'Huvepharma Arena', 'Razgrad', 'Bulgaria', 9000);
INSERT INTO stadiums VALUES('st82', 'Vasil Levski', 'Sofia', 'Bulgaria', 43632);
INSERT INTO stadiums VALUES('st83', 'Vicente Calderón', 'Madrid', 'Spain', 54851);
INSERT INTO stadiums VALUES('st84', 'Olimp – 2', 'Rostov-na-Donu', 'Russia', 15840);
INSERT INTO stadiums VALUES('st85', 'Arena Khimki', 'Khimki', 'Russia', 18636);
INSERT INTO stadiums VALUES('st86', 'Millennium', 'Cardiff', 'Wales', 74500);

INSERT INTO teams VALUES ('tm1', 'AC Milan', 'Italy', 'st1');
INSERT INTO teams VALUES ('tm2', 'AFC Ajax', 'Netherlands', 'st2');
INSERT INTO teams VALUES ('tm3', 'Atalanta', 'Italy', 'st3');
INSERT INTO teams VALUES ('tm4', 'Atlético Madrid', 'Spain', 'st4');
INSERT INTO teams VALUES ('tm5', 'Bayern München', 'Germany', 'st5');
INSERT INTO teams VALUES ('tm6', 'Beşiktaş', 'Turkey', 'st6');
INSERT INTO teams VALUES ('tm7', 'Borussia Dortmund', 'Germany', 'st7');
INSERT INTO teams VALUES ('tm8', 'BSC Young Boys', 'Switzerland', 'st8');
INSERT INTO teams VALUES ('tm9', 'Chelsea FC', 'England', 'st9');
INSERT INTO teams VALUES ('tm10', 'Club Brugge KV', 'Belgium', 'st10');
INSERT INTO teams VALUES ('tm11', 'Dinamo Kiev', 'Ukraine', 'st11');
INSERT INTO teams VALUES ('tm12', 'FC Barcelona', 'Spain', 'st12');
INSERT INTO teams VALUES ('tm13', 'FC Porto', 'Portugal', 'st13');
INSERT INTO teams VALUES ('tm14', 'FC Sheriff', 'Moldova', 'st14');
INSERT INTO teams VALUES ('tm15', 'Inter', 'Italy', 'st1');
INSERT INTO teams VALUES ('tm16', 'Juventus', 'Italy', 'st15');
INSERT INTO teams VALUES ('tm17', 'Lille OSC', 'France', 'st16');
INSERT INTO teams VALUES ('tm18', 'Liverpool FC', 'England', 'st17');
INSERT INTO teams VALUES ('tm19', 'Malmö FF', 'Sweden', 'st18');
INSERT INTO teams VALUES ('tm20', 'Manchester City', 'England', 'st19');
INSERT INTO teams VALUES ('tm21', 'Manchester United', 'England', 'st20');
INSERT INTO teams VALUES ('tm22', 'Paris Saint-Germain', 'France', 'st21');
INSERT INTO teams VALUES ('tm23', 'RB Leipzig', 'Germany', 'st22');
INSERT INTO teams VALUES ('tm24', 'RB Salzburg', 'Austria', 'st23');
INSERT INTO teams VALUES ('tm25', 'Real Madrid', 'Spain', 'st24');
INSERT INTO teams VALUES ('tm26', 'Sevilla FC', 'Spain', 'st25');
INSERT INTO teams VALUES ('tm27', 'Shakhtar Donetsk', 'Ukraine', 'st26');
INSERT INTO teams VALUES ('tm28', 'SL Benfica', 'Portugal', 'st27');
INSERT INTO teams VALUES ('tm29', 'Sporting CP', 'Portugal', 'st28');
INSERT INTO teams VALUES ('tm30', 'VfL Wolfsburg', 'Germany', 'st29');
INSERT INTO teams VALUES ('tm31', 'Villarreal CF', 'Spain', 'st30');
INSERT INTO teams VALUES ('tm32', 'Zenit St. Petersburg', 'Russia', 'st31');
INSERT INTO teams VALUES ('tm33', 'Bor. Mönchengladbach', 'Germany', 'st33');
INSERT INTO teams VALUES ('tm34', 'FC Midtjylland', 'Denmark', 'st34');
INSERT INTO teams VALUES ('tm35', 'Ferencvárosi TC', 'Hungary', 'st35');
INSERT INTO teams VALUES ('tm36', 'FK Krasnodar', 'Russia', 'st36');
INSERT INTO teams VALUES ('tm37', 'İstanbul Başakşehir', 'Turkey', 'st37');
INSERT INTO teams VALUES ('tm38', 'Lazio Roma', 'Italy', 'st38');
INSERT INTO teams VALUES ('tm39', 'Lokomotiv Moskva', 'Russia', 'st39');
INSERT INTO teams VALUES ('tm40', 'Olympiakos Piraeus', 'Greece', 'st40');
INSERT INTO teams VALUES ('tm41', 'Olympique Marseille', 'France', 'st41');
INSERT INTO teams VALUES ('tm42', 'Stade Rennes', 'France', 'st42');
INSERT INTO teams VALUES ('tm43', 'Bayer Leverkusen', 'Germany', 'st46');
INSERT INTO teams VALUES ('tm44', 'Crvena Zvezda', 'Serbia', 'st47');
INSERT INTO teams VALUES ('tm45', 'Dinamo Zagreb', 'Croatia', 'st48');
INSERT INTO teams VALUES ('tm46', 'Galatasaray', 'Turkey', 'st49');
INSERT INTO teams VALUES ('tm47', 'KRC Genk', 'Belgium', 'st50');
INSERT INTO teams VALUES ('tm48', 'Olympique Lyon', 'France', 'st51');
INSERT INTO teams VALUES ('tm49', 'Slavia Praha', 'Czech Republic', 'st52');
INSERT INTO teams VALUES ('tm50', 'SSC Napoli', 'Italy', 'st53');
INSERT INTO teams VALUES ('tm51', 'Tottenham Hotspur', 'England', 'st54');
INSERT INTO teams VALUES ('tm52', 'Valencia CF', 'Spain', 'st55');
INSERT INTO teams VALUES ('tm53', '1899 Hoffenheim', 'Germany', 'st57');
INSERT INTO teams VALUES ('tm54', 'AEK Athen', 'Greece', 'st58');
INSERT INTO teams VALUES ('tm55', 'AS Monaco', 'France', 'st59');
INSERT INTO teams VALUES ('tm56', 'AS Roma', 'Italy', 'st38');
INSERT INTO teams VALUES ('tm57', 'CSKA Moskva', 'Russia', 'st60');
INSERT INTO teams VALUES ('tm58', 'FC Schalke 04', 'Germany', 'st61');
INSERT INTO teams VALUES ('tm59', 'PSV Eindhoven', 'Netherlands', 'st62');
INSERT INTO teams VALUES ('tm60', 'Viktoria Plzeň', 'Czech Republic', 'st63');
INSERT INTO teams VALUES ('tm61', 'APOEL Nikosia', 'Cyprus', 'st67');
INSERT INTO teams VALUES ('tm62', 'Celtic FC', 'Scotland', 'st68');
INSERT INTO teams VALUES ('tm63', 'FC Basel', 'Switzerland', 'st69');
INSERT INTO teams VALUES ('tm64', 'Feyenoord', 'Netherlands', 'st70');
INSERT INTO teams VALUES ('tm65', 'NK Maribor', 'Slovenia', 'st71');
INSERT INTO teams VALUES ('tm66', 'Qarabağ FK', 'Azerbaijan', 'st72');
INSERT INTO teams VALUES ('tm67', 'RSC Anderlecht', 'Belgium', 'st73');
INSERT INTO teams VALUES ('tm68', 'Spartak Moskva', 'Russia', 'st74');
INSERT INTO teams VALUES ('tm69', 'Arsenal FC', 'England', 'st76');
INSERT INTO teams VALUES ('tm70', 'FC København', 'Denmark', 'st77');
INSERT INTO teams VALUES ('tm71', 'FK Rostov', 'Russia', 'st78');
INSERT INTO teams VALUES ('tm72', 'Legia Warszawa', 'Poland', 'st79');
INSERT INTO teams VALUES ('tm73', 'Leicester City', 'England', 'st80');
INSERT INTO teams VALUES ('tm74', 'PFC Ludogorets Razgrad', 'Bulgaria', 'st81');




INSERT INTO players VALUES ('ply1', 'Sebastiano', 'Desplanches', 'Italy',    '2003-03-11');
INSERT INTO player_stats VALUES ('ply1', 'tm1', 91, 'Goalkeeper', 188, 78, 'L');

INSERT INTO players VALUES ('ply2', 'Andreas', 'Jungdal', 'Denmark',    '2002-02-22');
INSERT INTO player_stats VALUES ('ply2', 'tm1', 96, 'Goalkeeper', 195, 82, 'R');

INSERT INTO players VALUES ('ply3', 'Mike', 'Maignan', 'France',    '1995-07-03');
INSERT INTO player_stats VALUES ('ply3', 'tm1', 16, 'Goalkeeper', 191, 80, 'R');

INSERT INTO players VALUES ('ply4', 'Antonio', 'Mirante', 'Italy',    '1983-07-08');
INSERT INTO player_stats VALUES ('ply4', 'tm1', 83, 'Goalkeeper', 193, 79, 'R');

INSERT INTO players VALUES ('ply5', 'Lapo', 'Nava', 'Italy',    '2004-01-22');
INSERT INTO player_stats VALUES ('ply5', 'tm1', 92, 'Goalkeeper', 189, 70, 'R');

INSERT INTO players VALUES ('ply6', 'Ciprian', 'Tătăruşanu', 'Romania',    '1986-02-09');
INSERT INTO player_stats VALUES ('ply6', 'tm1', 1, 'Goalkeeper', 198, 90, 'R');

INSERT INTO players VALUES ('ply7', 'Fodé', 'Ballo-Touré', 'Senegal',    '1997-01-03');
INSERT INTO player_stats VALUES ('ply7', 'tm1', 5, 'Defender', 182, 70, 'L');

INSERT INTO players VALUES ('ply8', 'Davide', 'Calabria', 'Italy',    '1996-12-06');
INSERT INTO player_stats VALUES ('ply8', 'tm1', 2, 'Defender', 177, 77, 'R');

INSERT INTO players VALUES ('ply9', 'Sergiño', 'Dest', 'USA',    '2000-11-03');
INSERT INTO player_stats VALUES ('ply9', 'tm1', 21, 'Defender', 175, 62, 'R');

INSERT INTO players VALUES ('ply10', 'Alessandro', 'Florenzi', 'Italy',    '1991-03-11');
INSERT INTO player_stats VALUES ('ply10', 'tm1', 25, 'Defender', 173, 67, 'R');

INSERT INTO players VALUES ('ply11', 'Matteo', 'Gabbia', 'Italy',    '1999-10-21');
INSERT INTO player_stats VALUES ('ply11', 'tm1', 46, 'Defender', 186, 78, 'R');

INSERT INTO players VALUES ('ply12', 'Theo', 'Hernández', 'France',    '1997-10-06');
INSERT INTO player_stats VALUES ('ply12', 'tm1', 19, 'Defender', 184, 81, 'L');

INSERT INTO players VALUES ('ply13', 'Pierre', 'Kalulu', 'France',    '2000-06-05');
INSERT INTO player_stats VALUES ('ply13', 'tm1', 20, 'Defender', 179, 69, 'R');

INSERT INTO players VALUES ('ply14', 'Simon', 'Kjær', 'Denmark',    '1989-03-26');
INSERT INTO player_stats VALUES ('ply14', 'tm1', 24, 'Defender', 191, 82, 'R');

INSERT INTO players VALUES ('ply15', 'Malick', 'Thiaw', 'Germany',    '2001-08-08');
INSERT INTO player_stats VALUES ('ply15', 'tm1', 28, 'Defender', 194, 80, '');

INSERT INTO players VALUES ('ply16', 'Fikayo', 'Tomori', 'England',    '1997-12-19');
INSERT INTO player_stats VALUES ('ply16', 'tm1', 23, 'Defender', 184, 78, 'R');

INSERT INTO players VALUES ('ply17', 'Yacine', 'Adli', 'France',    '2000-07-29');
INSERT INTO player_stats VALUES ('ply17', 'tm1', 7, 'Midfielder', 186, 73, 'R');

INSERT INTO players VALUES ('ply18', 'Tiemoué', 'Bakayoko', 'France',    '1994-08-17');
INSERT INTO player_stats VALUES ('ply18', 'tm1', 14, 'Midfielder', 189, 77, 'R');

INSERT INTO players VALUES ('ply19', 'Ismaël', 'Bennacer', 'Algeria',    '1997-12-01');
INSERT INTO player_stats VALUES ('ply19', 'tm1', 4, 'Midfielder', 175, 70, 'L');

INSERT INTO players VALUES ('ply20', 'Brahim', 'Díaz', 'Spain',    '1999-08-03');
INSERT INTO player_stats VALUES ('ply20', 'tm1', 10, 'Midfielder', 171, 68, '');

INSERT INTO players VALUES ('ply21', 'Charles De', 'Ketelaere', 'Belgium',    '2001-03-10');
INSERT INTO player_stats VALUES ('ply21', 'tm1', 90, 'Midfielder', 192, 74, 'L');

INSERT INTO players VALUES ('ply22', 'Rade', 'Krunić', 'Bosnia-Herzegovina',    '1993-10-07');
INSERT INTO player_stats VALUES ('ply22', 'tm1', 33, 'Midfielder', 184, 74, 'R');

INSERT INTO players VALUES ('ply23', 'Tommaso', 'Pobega', 'Italy',    '1999-07-15');
INSERT INTO player_stats VALUES ('ply23', 'tm1', 32, 'Midfielder', 188, 75, '');

INSERT INTO players VALUES ('ply24', 'Sandro', 'Tonali', 'Italy',    '2000-05-08');
INSERT INTO player_stats VALUES ('ply24', 'tm1', 8, 'Midfielder', 181, 79, 'R');

INSERT INTO players VALUES ('ply25', 'Aster', 'Vranckx', 'Belgium',    '2002-10-04');
INSERT INTO player_stats VALUES ('ply25', 'tm1', 40, 'Midfielder', 183, 78, 'R');

INSERT INTO players VALUES ('ply26', 'Olivier', 'Giroud', 'France',    '1986-09-30');
INSERT INTO player_stats VALUES ('ply26', 'tm1', 9, 'Forward', 193, 91, 'L');

INSERT INTO players VALUES ('ply27', 'Zlatan', 'Ibrahimović', 'Sweden',    '1981-10-03');
INSERT INTO player_stats VALUES ('ply27', 'tm1', 11, 'Forward', 195, 95, '');

INSERT INTO players VALUES ('ply28', 'Marko', 'Lazetić', 'Serbia',    '2004-01-22');
INSERT INTO player_stats VALUES ('ply28', 'tm1', 22, 'Forward', 190, 79, 'R');

INSERT INTO players VALUES ('ply29', 'Junior', 'Messias', 'Brazil',    '1991-05-13');
INSERT INTO player_stats VALUES ('ply29', 'tm1', 30, 'Forward', 174, 70, 'L');

INSERT INTO players VALUES ('ply30', 'Divock', 'Origi', 'Belgium',    '1995-04-18');
INSERT INTO player_stats VALUES ('ply30', 'tm1', 27, 'Forward', 185, 75, 'R');

INSERT INTO players VALUES ('ply31', 'Rafael', 'Leão', 'Portugal',    '1999-06-10');
INSERT INTO player_stats VALUES ('ply31', 'tm1', 17, 'Forward', 188, 81, 'R');

INSERT INTO players VALUES ('ply32', 'Ante', 'Rebić', 'Croatia',    '1993-09-21');
INSERT INTO player_stats VALUES ('ply32', 'tm1', 12, 'Forward', 185, 78, 'R');

INSERT INTO players VALUES ('ply33', 'Alexis', 'Saelemaekers', 'Belgium',    '1999-06-27');
INSERT INTO player_stats VALUES ('ply33', 'tm1', 56, 'Forward', 180, 72, 'R');

INSERT INTO players VALUES ('ply34', 'Jay', 'Gorter', 'Netherlands',    '2000-05-30');
INSERT INTO player_stats VALUES ('ply34', 'tm2', 16, 'Goalkeeper', 190, NULL, 'R');

INSERT INTO players VALUES ('ply35', 'Remko', 'Pasveer', 'Netherlands',    '1983-11-08');
INSERT INTO player_stats VALUES ('ply35', 'tm2', 22, 'Goalkeeper', 187, 88, 'R');

INSERT INTO players VALUES ('ply36', 'Maarten', 'Stekelenburg', 'Netherlands',    '1982-09-22');
INSERT INTO player_stats VALUES ('ply36', 'tm2', 1, 'Goalkeeper', 197, 84, 'R');

INSERT INTO players VALUES ('ply37', 'Youri', 'Baas', 'Netherlands',    '2003-03-17');
INSERT INTO player_stats VALUES ('ply37', 'tm2', 25, 'Defender', 182, 71, 'L');

INSERT INTO players VALUES ('ply38', 'Calvin', 'Bassey', 'Nigeria',    '1999-12-31');
INSERT INTO player_stats VALUES ('ply38', 'tm2', 3, 'Defender', 185, 76, 'L');

INSERT INTO players VALUES ('ply39', 'Daley', 'Blind', 'Netherlands',    '1990-03-09');
INSERT INTO player_stats VALUES ('ply39', 'tm2', 17, 'Defender', 180, 72, 'L');

INSERT INTO players VALUES ('ply40', 'Ahmetcan', 'Kaplan', 'Turkey',    '2003-01-16');
INSERT INTO player_stats VALUES ('ply40', 'tm2', 13, 'Defender', 190, 72, 'L');

INSERT INTO players VALUES ('ply41', 'Lisandro', 'Magallán', 'Argentina',    '1993-09-27');
INSERT INTO player_stats VALUES ('ply41', 'tm2', 29, 'Defender', 185, 79, 'R');

INSERT INTO players VALUES ('ply42', 'Kik', 'Pierie', 'Netherlands',    '2000-07-20');
INSERT INTO player_stats VALUES ('ply42', 'tm2', 39, 'Defender', 183, 72, 'L');

INSERT INTO players VALUES ('ply43', 'Youri', 'Regeer', 'Netherlands',    '2003-08-18');
INSERT INTO player_stats VALUES ('ply43', 'tm2', 26, 'Defender', 177, NULL, 'R');

INSERT INTO players VALUES ('ply44', 'Devyne', 'Rensch', 'Netherlands',    '2003-01-18');
INSERT INTO player_stats VALUES ('ply44', 'tm2', 15, 'Defender', 179, NULL, '');

INSERT INTO players VALUES ('ply45', 'Jorge', 'Sánchez', 'Mexico',    '1997-12-10');
INSERT INTO player_stats VALUES ('ply45', 'tm2', 19, 'Defender', 175, 71, 'R');

INSERT INTO players VALUES ('ply46', 'Jurriën', 'Timber', 'Netherlands',    '2001-06-17');
INSERT INTO player_stats VALUES ('ply46', 'tm2', 2, 'Defender', 179, 62, 'R');

INSERT INTO players VALUES ('ply47', 'Owen', 'Wijndal', 'Netherlands',    '1999-11-28');
INSERT INTO player_stats VALUES ('ply47', 'tm2', 5, 'Defender', 176, 65, 'L');

INSERT INTO players VALUES ('ply48', 'Edson', 'Álvarez', 'Mexico',    '1997-10-24');
INSERT INTO player_stats VALUES ('ply48', 'tm2', 4, 'Midfielder', 187, 72, 'R');

INSERT INTO players VALUES ('ply49', 'Steven', 'Berghuis', 'Netherlands',    '1991-12-19');
INSERT INTO player_stats VALUES ('ply49', 'tm2', 23, 'Midfielder', 182, 75, 'L');

INSERT INTO players VALUES ('ply50', 'Kian', 'Fitz-Jim', 'Netherlands',    '2003-07-05');
INSERT INTO player_stats VALUES ('ply50', 'tm2', 28, 'Midfielder', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply51', 'Florian', 'Grillitsch', 'Austria',    '1995-08-07');
INSERT INTO player_stats VALUES ('ply51', 'tm2', 21, 'Midfielder', 187, 77, 'R');

INSERT INTO players VALUES ('ply52', 'Davy', 'Klaassen', 'Netherlands',    '1993-02-21');
INSERT INTO player_stats VALUES ('ply52', 'tm2', 6, 'Midfielder', 179, 70, 'R');

INSERT INTO players VALUES ('ply53', 'Kenneth', 'Taylor', 'Netherlands',    '2002-05-16');
INSERT INTO player_stats VALUES ('ply53', 'tm2', 8, 'Midfielder', 182, 66, 'L');

INSERT INTO players VALUES ('ply54', 'Steven', 'Bergwijn', 'Netherlands',    '1997-10-08');
INSERT INTO player_stats VALUES ('ply54', 'tm2', 7, 'Forward', 178, 69, 'R');

INSERT INTO players VALUES ('ply55', 'Brian', 'Brobbey', 'Netherlands',    '2002-02-01');
INSERT INTO player_stats VALUES ('ply55', 'tm2', 9, 'Forward', 180, 72, 'R');

INSERT INTO players VALUES ('ply56', 'Francisco', 'Conceição', 'Portugal',    '2002-12-14');
INSERT INTO player_stats VALUES ('ply56', 'tm2', 35, 'Forward', 170, 60, 'L');

INSERT INTO players VALUES ('ply57', 'Mohammed', 'Kudus', 'Ghana',    '2000-08-02');
INSERT INTO player_stats VALUES ('ply57', 'tm2', 20, 'Forward', 177, 70, 'L');

INSERT INTO players VALUES ('ply58', 'Lorenzo', 'Lucca', 'Italy',    '2000-09-10');
INSERT INTO player_stats VALUES ('ply58', 'tm2', 18, 'Forward', 201, 80, 'R');

INSERT INTO players VALUES ('ply59', 'Lucas', 'Ocampos', 'Argentina',    '1994-07-11');
INSERT INTO player_stats VALUES ('ply59', 'tm2', 11, 'Forward', 187, 84, '');

INSERT INTO players VALUES ('ply60', 'Dušan', 'Tadić', 'Serbia',    '1988-11-20');
INSERT INTO player_stats VALUES ('ply60', 'tm2', 10, 'Forward', 181, 76, 'L');

INSERT INTO players VALUES ('ply61', 'Anton', 'Scheutjens', 'Netherlands',    '1968-05-01');
INSERT INTO player_stats VALUES ('ply61', 'tm2', NULL, 'Goalkeeping', 183, 81, '');

INSERT INTO players VALUES ('ply62', 'Tommaso', 'Bertini', 'Italy',    '2004-01-13');
INSERT INTO player_stats VALUES ('ply62', 'tm3', 47, 'Goalkeeper', 188, NULL, 'R');

INSERT INTO players VALUES ('ply63', 'Juan', 'Musso', 'Argentina',    '1994-05-06');
INSERT INTO player_stats VALUES ('ply63', 'tm3', 1, 'Goalkeeper', 191, 93, 'R');

INSERT INTO players VALUES ('ply64', 'Francesco', 'Rossi', 'Italy',    '1991-04-27');
INSERT INTO player_stats VALUES ('ply64', 'tm3', 31, 'Goalkeeper', 193, 83, 'R');

INSERT INTO players VALUES ('ply65', 'Marco', 'Sportiello', 'Italy',    '1992-05-10');
INSERT INTO player_stats VALUES ('ply65', 'tm3', 57, 'Goalkeeper', 192, 87, 'R');

INSERT INTO players VALUES ('ply66', 'Merih', 'Demiral', 'Turkey',    '1998-03-05');
INSERT INTO player_stats VALUES ('ply66', 'tm3', 28, 'Defender', 192, 87, 'R');

INSERT INTO players VALUES ('ply67', 'Berat', 'Djimsiti', 'Albania',    '1993-02-19');
INSERT INTO player_stats VALUES ('ply67', 'tm3', 19, 'Defender', 191, 83, 'R');

INSERT INTO players VALUES ('ply68', 'Hans', 'Hateboer', 'Netherlands',    '1994-01-09');
INSERT INTO player_stats VALUES ('ply68', 'tm3', 33, 'Defender', 187, 74, 'R');

INSERT INTO players VALUES ('ply69', 'Joakim', 'Mæhle', 'Denmark',    '1997-05-20');
INSERT INTO player_stats VALUES ('ply69', 'tm3', 3, 'Defender', 185, 79, 'R');

INSERT INTO players VALUES ('ply70', 'Caleb', 'Okoli', 'Italy',    '2001-07-13');
INSERT INTO player_stats VALUES ('ply70', 'tm3', 5, 'Defender', 189, 72, 'R');

INSERT INTO players VALUES ('ply71', 'José', 'Palomino', 'Argentina',    '1990-01-05');
INSERT INTO player_stats VALUES ('ply71', 'tm3', 6, 'Defender', 188, 87, 'L');

INSERT INTO players VALUES ('ply72', 'Matteo', 'Ruggeri', 'Italy',    '2002-07-11');
INSERT INTO player_stats VALUES ('ply72', 'tm3', 22, 'Defender', 187, 69, 'L');

INSERT INTO players VALUES ('ply73', 'Giorgio', 'Scalvini', 'Italy',    '2003-12-11');
INSERT INTO player_stats VALUES ('ply73', 'tm3', 42, 'Defender', 194, 76, 'R');

INSERT INTO players VALUES ('ply74', 'Brandon', 'Soppy', 'France',    '2002-02-21');
INSERT INTO player_stats VALUES ('ply74', 'tm3', 93, 'Defender', 181, 80, 'R');

INSERT INTO players VALUES ('ply75', 'Rafael', 'Tolói', 'Italy',    '1990-10-10');
INSERT INTO player_stats VALUES ('ply75', 'tm3', 2, 'Defender', 185, 75, 'R');

INSERT INTO players VALUES ('ply76', 'Davide', 'Zappacosta', 'Italy',    '1992-06-11');
INSERT INTO player_stats VALUES ('ply76', 'tm3', 77, 'Defender', 182, 70, 'R');

INSERT INTO players VALUES ('ply77', 'Marten de', 'Roon', 'Netherlands',    '1991-03-29');
INSERT INTO player_stats VALUES ('ply77', 'tm3', 15, 'Midfielder', 185, 76, 'R');

INSERT INTO players VALUES ('ply78', '', 'Éderson', 'Brazil',    '1999-07-07');
INSERT INTO player_stats VALUES ('ply78', 'tm3', 13, 'Midfielder', 185, 86, 'R');

INSERT INTO players VALUES ('ply79', 'Teun', 'Koopmeiners', 'Netherlands',    '1998-02-28');
INSERT INTO player_stats VALUES ('ply79', 'tm3', 7, 'Midfielder', 184, 77, 'L');

INSERT INTO players VALUES ('ply80', 'Ruslan', 'Malinovskiy', 'Ukraine',    '1993-05-04');
INSERT INTO player_stats VALUES ('ply80', 'tm3', 18, 'Midfielder', 181, 79, 'L');

INSERT INTO players VALUES ('ply81', 'Mario', 'Pašalić', 'Croatia',    '1995-02-09');
INSERT INTO player_stats VALUES ('ply81', 'tm3', 88, 'Midfielder', 189, 82, 'R');

INSERT INTO players VALUES ('ply82', 'Nadir', 'Zortea', 'Italy',    '1999-06-19');
INSERT INTO player_stats VALUES ('ply82', 'tm3', 21, 'Midfielder', 176, 65, 'R');

INSERT INTO players VALUES ('ply83', 'Jérémie', 'Boga', 'Ivory Coast',    '1997-01-03');
INSERT INTO player_stats VALUES ('ply83', 'tm3', 10, 'Forward', 174, 68, 'R');

INSERT INTO players VALUES ('ply84', 'Rasmus', 'Højlund', 'Denmark',    '2003-02-04');
INSERT INTO player_stats VALUES ('ply84', 'tm3', 17, 'Forward', 185, NULL, 'L');

INSERT INTO players VALUES ('ply85', 'Ademola', 'Lookman', 'Nigeria',    '1997-10-20');
INSERT INTO player_stats VALUES ('ply85', 'tm3', 11, 'Forward', 174, 71, 'R');

INSERT INTO players VALUES ('ply86', 'Luis', 'Muriel', 'Colombia',    '1991-04-16');
INSERT INTO player_stats VALUES ('ply86', 'tm3', 9, 'Forward', 179, 75, 'R');

INSERT INTO players VALUES ('ply87', 'Duván', 'Zapata', 'Colombia',    '1991-04-01');
INSERT INTO player_stats VALUES ('ply87', 'tm3', 91, 'Forward', 189, 88, 'R');

INSERT INTO players VALUES ('ply88', 'Antonio', 'Gomis', 'Spain',    '2003-05-20');
INSERT INTO player_stats VALUES ('ply88', '', 13, 'Goalkeeper', 188, 80, 'L');

INSERT INTO players VALUES ('ply89', 'Ivo', 'Grbić', 'Croatia',    '1996-01-18');
INSERT INTO player_stats VALUES ('ply89', 'tm4', 1, 'Goalkeeper', 195, 83, 'R');

INSERT INTO players VALUES ('ply90', 'Jan', 'Oblak', 'Slovenia',    '1993-01-07');
INSERT INTO player_stats VALUES ('ply90', 'tm4', 13, 'Goalkeeper', 188, 87, 'R');

INSERT INTO players VALUES ('ply91', 'Sergio', 'Mestre', 'Spain',    '2005-02-13');
INSERT INTO player_stats VALUES ('ply91', 'tm4', 51, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply92', 'Adrián', 'Corral', 'Spain',    '2003-01-05');
INSERT INTO player_stats VALUES ('ply92', 'tm4', 48, 'Defender', 183, 77, 'L');

INSERT INTO players VALUES ('ply93', 'Santiago', 'Arias', 'Colombia',    '1992-01-13');
INSERT INTO player_stats VALUES ('ply93', 'tm4', NULL, 'Defender', 177, 72, 'R');

INSERT INTO players VALUES ('ply94', 'Felipe', 'Monteiro', 'Brazil',    '1989-05-16');
INSERT INTO player_stats VALUES ('ply94', 'tm4', 18, 'Defender', 190, 84, 'R');

INSERT INTO players VALUES ('ply95', 'Fran', 'González', 'Spain',    '1998-08-13');
INSERT INTO player_stats VALUES ('ply95', 'tm4', 38, 'Defender', 190, NULL, 'R');

INSERT INTO players VALUES ('ply96', 'José', 'Giménez', 'Uruguay',    '1995-01-20');
INSERT INTO player_stats VALUES ('ply96', 'tm4', 2, 'Defender', 185, 80, 'R');

INSERT INTO players VALUES ('ply97', 'Ibrahima', 'Cámara', 'Spain',    '2003-01-18');
INSERT INTO player_stats VALUES ('ply97', 'tm4', 47, 'Defender', 180, 75, '');

INSERT INTO players VALUES ('ply98', 'Marco', 'Moreno', 'Spain',    '2001-02-20');
INSERT INTO player_stats VALUES ('ply98', 'tm4', 36, 'Defender', 191, NULL, 'R');

INSERT INTO players VALUES ('ply99', 'Mario', 'Hermoso', 'Spain',    '1995-06-18');
INSERT INTO player_stats VALUES ('ply99', 'tm4', 22, 'Defender', 184, 76, 'L');

INSERT INTO players VALUES ('ply100', 'Nahuel', 'Molina', 'Argentina',    '1998-04-06');
INSERT INTO player_stats VALUES ('ply100', 'tm4', 16, 'Defender', 175, 72, 'R');

INSERT INTO players VALUES ('ply101', '', 'Reguilón', 'Spain',    '1996-12-16');
INSERT INTO player_stats VALUES ('ply101', 'tm4', 3, 'Defender', 178, 68, 'L');

INSERT INTO players VALUES ('ply102', '', 'Reinildo', 'Mozambique',    '1994-01-21');
INSERT INTO player_stats VALUES ('ply102', 'tm4', 23, 'Defender', 180, 73, 'L');

INSERT INTO players VALUES ('ply103', 'Stefan', 'Savić', 'Montenegro',    '1991-01-08');
INSERT INTO player_stats VALUES ('ply103', 'tm4', 15, 'Defender', 187, 80, 'R');

INSERT INTO players VALUES ('ply104', 'Sergio', 'Diez', 'Spain',    '2003-07-28');
INSERT INTO player_stats VALUES ('ply104', 'tm4', 30, 'Defender', 180, 75, 'R');

INSERT INTO players VALUES ('ply105', 'Axel', 'Witsel', 'Belgium',    '1989-01-12');
INSERT INTO player_stats VALUES ('ply105', 'tm4', 20, 'Defender', 186, 81, 'R');

INSERT INTO players VALUES ('ply106', 'Alberto', 'Moreno', 'Spain',    '2002-04-19');
INSERT INTO player_stats VALUES ('ply106', 'tm4', 32, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply107', 'Yannick', 'Carrasco', 'Belgium',    '1993-09-04');
INSERT INTO player_stats VALUES ('ply107', 'tm4', 21, 'Midfielder', 181, 73, 'R');

INSERT INTO players VALUES ('ply108', 'Rodrigo de', 'Paul', 'Argentina',    '1994-05-24');
INSERT INTO player_stats VALUES ('ply108', 'tm4', 5, 'Midfielder', 180, 70, 'R');

INSERT INTO players VALUES ('ply109', '', 'Koke', 'Spain',    '1992-01-08');
INSERT INTO player_stats VALUES ('ply109', 'tm4', 6, 'Midfielder', 176, 75, 'R');

INSERT INTO players VALUES ('ply110', 'Geoffrey', 'Kondogbia', 'Central Afr. Republic',    '1993-02-15');
INSERT INTO player_stats VALUES ('ply110', 'tm4', 4, 'Midfielder', 188, 76, 'L');

INSERT INTO players VALUES ('ply111', 'Thomas', 'Lemar', 'France',    '1995-11-12');
INSERT INTO player_stats VALUES ('ply111', 'tm4', 11, 'Midfielder', 171, 66, 'L');

INSERT INTO players VALUES ('ply112', 'Marcos', 'Llorente', 'Spain',    '1995-01-30');
INSERT INTO player_stats VALUES ('ply112', 'tm4', 14, 'Midfielder', 184, 74, 'R');

INSERT INTO players VALUES ('ply113', '', 'Saúl', 'Spain',    '1994-11-21');
INSERT INTO player_stats VALUES ('ply113', 'tm4', 17, 'Midfielder', 184, 77, 'L');

INSERT INTO players VALUES ('ply114', 'Ángel', 'Correa', 'Argentina',    '1995-03-09');
INSERT INTO player_stats VALUES ('ply114', 'tm4', 10, 'Forward', 171, 70, 'R');

INSERT INTO players VALUES ('ply115', 'Antoine', 'Griezmann', 'France',    '1991-03-21');
INSERT INTO player_stats VALUES ('ply115', 'tm4', 8, 'Forward', 176, 73, 'L');

INSERT INTO players VALUES ('ply116', 'João', 'Félix', 'Portugal',    '1999-11-10');
INSERT INTO player_stats VALUES ('ply116', 'tm4', 7, 'Forward', 181, 72, '');

INSERT INTO players VALUES ('ply117', 'Matheus', 'Cunha', 'Brazil',    '1999-05-27');
INSERT INTO player_stats VALUES ('ply117', 'tm4', 9, 'Forward', 184, 75, 'R');

INSERT INTO players VALUES ('ply118', 'Álvaro', 'Morata', 'Spain',    '1992-10-23');
INSERT INTO player_stats VALUES ('ply118', 'tm4', 19, 'Forward', 187, 82, 'R');

INSERT INTO players VALUES ('ply119', 'Pablo', 'Vercellone', 'Argentina',    '1968-04-24');
INSERT INTO player_stats VALUES ('ply119', 'tm4', NULL, 'Goalkeeping', NULL, NULL, '');

INSERT INTO players VALUES ('ply120', 'Óscar', 'Ortega', 'Uruguay',    '1958-03-29');
INSERT INTO player_stats VALUES ('ply120', 'tm4', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply121', 'Óscar', 'Pitillas', 'Spain',    '1971-10-16');
INSERT INTO player_stats VALUES ('ply121', 'tm4', NULL, 'Rehab', NULL, NULL, '');

INSERT INTO players VALUES ('ply122', 'Manuel', 'Neuer', 'Germany',    '1986-03-27');
INSERT INTO player_stats VALUES ('ply122', 'tm5', 1, 'Goalkeeper', 193, 92, 'R');

INSERT INTO players VALUES ('ply123', 'Johannes', 'Schenk', 'Germany',    '2003-01-13');
INSERT INTO player_stats VALUES ('ply123', 'tm5', 35, 'Goalkeeper', 191, NULL, '');

INSERT INTO players VALUES ('ply124', 'Sven', 'Ulreich', 'Germany',    '1988-08-03');
INSERT INTO player_stats VALUES ('ply124', 'tm5', 26, 'Goalkeeper', 192, 87, 'R');

INSERT INTO players VALUES ('ply125', 'Alphonso', 'Davies', 'Canada',    '2000-11-02');
INSERT INTO player_stats VALUES ('ply125', 'tm5', 19, 'Defender', 185, 77, 'L');

INSERT INTO players VALUES ('ply126', 'Matthijs de', 'Ligt', 'Netherlands',    '1999-08-12');
INSERT INTO player_stats VALUES ('ply126', 'tm5', 4, 'Defender', 189, 89, 'R');

INSERT INTO players VALUES ('ply127', 'Lucas', 'Hernández', 'France',    '1996-02-14');
INSERT INTO player_stats VALUES ('ply127', 'tm5', 21, 'Defender', 184, 79, 'L');

INSERT INTO players VALUES ('ply128', 'Noussair', 'Mazraoui', 'Morocco',    '1997-11-14');
INSERT INTO player_stats VALUES ('ply128', 'tm5', 40, 'Defender', 183, 78, 'R');

INSERT INTO players VALUES ('ply129', 'Benjamin', 'Pavard', 'France',    '1996-03-28');
INSERT INTO player_stats VALUES ('ply129', 'tm5', 5, 'Defender', 186, 81, 'R');

INSERT INTO players VALUES ('ply130', 'Bouna', 'Sarr', 'Senegal',    '1992-01-31');
INSERT INTO player_stats VALUES ('ply130', 'tm5', 20, 'Defender', 178, 71, 'R');

INSERT INTO players VALUES ('ply131', 'Josip', 'Stanišić', 'Croatia',    '2000-04-02');
INSERT INTO player_stats VALUES ('ply131', 'tm5', 44, 'Defender', 186, 77, '');

INSERT INTO players VALUES ('ply132', 'Dayot', 'Upamecano', 'France',    '1998-10-27');
INSERT INTO player_stats VALUES ('ply132', 'tm5', 2, 'Defender', 186, 90, 'R');

INSERT INTO players VALUES ('ply133', 'Leon', 'Goretzka', 'Germany',    '1995-02-06');
INSERT INTO player_stats VALUES ('ply133', 'tm5', 8, 'Midfielder', 189, 82, 'R');

INSERT INTO players VALUES ('ply134', 'Ryan', 'Gravenberch', 'Netherlands',    '2002-06-15');
INSERT INTO player_stats VALUES ('ply134', 'tm5', 38, 'Midfielder', 190, 83, 'R');

INSERT INTO players VALUES ('ply135', 'Joshua', 'Kimmich', 'Germany',    '1995-02-08');
INSERT INTO player_stats VALUES ('ply135', 'tm5', 6, 'Midfielder', 177, 75, 'R');

INSERT INTO players VALUES ('ply136', 'Jamal', 'Musiala', 'Germany',    '2003-02-26');
INSERT INTO player_stats VALUES ('ply136', 'tm5', 42, 'Midfielder', 183, 70, 'R');

INSERT INTO players VALUES ('ply137', 'Marcel', 'Sabitzer', 'Austria',    '1994-03-17');
INSERT INTO player_stats VALUES ('ply137', 'tm5', 18, 'Midfielder', 177, 76, 'R');

INSERT INTO players VALUES ('ply138', 'Paul', 'Wanner', 'Germany',    '2005-12-23');
INSERT INTO player_stats VALUES ('ply138', 'tm5', 14, 'Midfielder', 185, 72, 'L');

INSERT INTO players VALUES ('ply139', 'Eric Maxim', 'Choupo-Moting', 'Cameroon',    '1989-03-23');
INSERT INTO player_stats VALUES ('ply139', 'tm5', 13, 'Forward', 191, 90, 'R');

INSERT INTO players VALUES ('ply140', 'Kingsley', 'Coman', 'France',    '1996-06-13');
INSERT INTO player_stats VALUES ('ply140', 'tm5', 11, 'Forward', 180, 76, 'R');

INSERT INTO players VALUES ('ply141', 'Serge', 'Gnabry', 'Germany',    '1995-07-14');
INSERT INTO player_stats VALUES ('ply141', 'tm5', 7, 'Forward', 176, 77, 'R');

INSERT INTO players VALUES ('ply142', 'Sadio', 'Mané', 'Senegal',    '1992-04-10');
INSERT INTO player_stats VALUES ('ply142', 'tm5', 17, 'Forward', 174, 69, 'R');

INSERT INTO players VALUES ('ply143', 'Thomas', 'Müller', 'Germany',    '1989-09-13');
INSERT INTO player_stats VALUES ('ply143', 'tm5', 25, 'Forward', 185, 76, 'R');

INSERT INTO players VALUES ('ply144', 'Leroy', 'Sané', 'Germany',    '1996-01-11');
INSERT INTO player_stats VALUES ('ply144', 'tm5', 10, 'Forward', 183, 80, 'L');

INSERT INTO players VALUES ('ply145', 'Mathys', 'Tel', 'France',    '2005-04-27');
INSERT INTO player_stats VALUES ('ply145', 'tm5', 39, 'Forward', 183, 75, 'R');

INSERT INTO players VALUES ('ply146', 'Toni', 'Tapalović', 'Croatia',    '1980-10-10');
INSERT INTO player_stats VALUES ('ply146', 'tm5', NULL, 'Goalkeeping', 185, 83, '');

INSERT INTO players VALUES ('ply147', 'Holger', 'Broich', 'Germany',    '1974-09-18');
INSERT INTO player_stats VALUES ('ply147', 'tm5', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply148', 'Stephan', 'Kerth', 'Germany',    '1988-09-23');
INSERT INTO player_stats VALUES ('ply148', 'tm5', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply149', 'Simon', 'Martinello', 'Italy',    '1984-11-01');
INSERT INTO player_stats VALUES ('ply149', 'tm5', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply150', 'Peter', 'Schlösser', 'Germany',  NULL);
INSERT INTO player_stats VALUES ('ply150', 'tm5', NULL, 'Rehab', NULL, NULL, '');

INSERT INTO players VALUES ('ply151', 'Thomas', 'Wilhelmi', 'Germany',    '1967-05-11');
INSERT INTO player_stats VALUES ('ply151', 'tm5', NULL, 'Rehab', NULL, NULL, '');

INSERT INTO players VALUES ('ply152', 'Vitus', 'Angerer', 'Germany',    '1985-10-01');
INSERT INTO player_stats VALUES ('ply152', 'tm5', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply153', 'Michael', 'Cuper', 'Germany',    '1985-01-08');
INSERT INTO player_stats VALUES ('ply153', 'tm5', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply154', 'Maximilian', 'Luckner', 'Germany',  NULL);
INSERT INTO player_stats VALUES ('ply154', 'tm5', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply155', 'Mathias', 'Reiter', 'Germany',  NULL);
INSERT INTO player_stats VALUES ('ply155', 'tm5', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply156', 'Maximilian', 'Schwab', 'Germany',    '1988-11-28');
INSERT INTO player_stats VALUES ('ply156', 'tm5', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply157', 'Giacomo', 'Stey', 'Germany',    '1994-03-21');
INSERT INTO player_stats VALUES ('ply157', 'tm5', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply158', 'Michael', 'Niemeyer', 'Germany',    '1971-04-06');
INSERT INTO player_stats VALUES ('ply158', 'tm5', NULL, 'Chief', NULL, NULL, '');

INSERT INTO players VALUES ('ply159', 'Maximilian', 'Pelka', 'Germany',    '1988-05-24');
INSERT INTO player_stats VALUES ('ply159', 'tm5', NULL, '07/2021', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply160', 'Göktug', 'Baytekin', 'Turkey',    '2004-11-20');
INSERT INTO player_stats VALUES ('ply160', 'tm6', 74, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply161', 'Emre', 'Bilgin', 'Turkey',    '2004-02-26');
INSERT INTO player_stats VALUES ('ply161', 'tm6', 99, 'Goalkeeper', 188, 80, 'L');

INSERT INTO players VALUES ('ply162', 'Ersin', 'Destanoğlu', 'Turkey',    '2001-01-01');
INSERT INTO player_stats VALUES ('ply162', 'tm6', 1, 'Goalkeeper', 195, 88, 'R');

INSERT INTO players VALUES ('ply163', 'Mert', 'Günok', 'Turkey',    '1989-03-01');
INSERT INTO player_stats VALUES ('ply163', 'tm6', 34, 'Goalkeeper', 196, 92, 'R');

INSERT INTO players VALUES ('ply164', 'Utku', 'Yuvakuran', 'Turkey',    '1997-11-02');
INSERT INTO player_stats VALUES ('ply164', 'tm6', 97, 'Goalkeeper', 192, 81, 'R');

INSERT INTO players VALUES ('ply165', 'Tayfur', 'Bingöl', 'Turkey',    '1993-01-11');
INSERT INTO player_stats VALUES ('ply165', 'tm6', NULL, 'Defender', 180, 71, 'R');

INSERT INTO players VALUES ('ply166', 'Halil', 'Duman', 'Turkey',    '2001-03-08');
INSERT INTO player_stats VALUES ('ply166', 'tm6', NULL, 'Defender', NULL, NULL, '');

INSERT INTO players VALUES ('ply167', 'Arthur', 'Masuaku', 'Congo DR',    '1993-11-07');
INSERT INTO player_stats VALUES ('ply167', 'tm6', 25, 'Defender', 179, 70, 'L');

INSERT INTO players VALUES ('ply168', 'Umut', 'Meraş', 'Turkey',    '1995-12-20');
INSERT INTO player_stats VALUES ('ply168', 'tm6', 77, 'Defender', 178, 73, 'L');

INSERT INTO players VALUES ('ply169', '', 'Montero', 'Spain',    '1999-01-14');
INSERT INTO player_stats VALUES ('ply169', 'tm6', 4, 'Defender', 185, 76, 'L');

INSERT INTO players VALUES ('ply170', 'Valentin', 'Rosier', 'France',    '1996-08-19');
INSERT INTO player_stats VALUES ('ply170', 'tm6', 2, 'Defender', 175, 70, 'R');

INSERT INTO players VALUES ('ply171', 'Romain', 'Saïss', 'Morocco',    '1990-03-26');
INSERT INTO player_stats VALUES ('ply171', 'tm6', 26, 'Defender', 188, 80, 'L');

INSERT INTO players VALUES ('ply172', 'Tayyip', 'Sanuç', 'Turkey',    '1999-12-17');
INSERT INTO player_stats VALUES ('ply172', 'tm6', NULL, 'Defender', 188, 80, 'R');

INSERT INTO players VALUES ('ply173', 'Emrecan', 'Uzunhan', 'Turkey',    '2001-02-26');
INSERT INTO player_stats VALUES ('ply173', 'tm6', 14, 'Defender', NULL, NULL, '');

INSERT INTO players VALUES ('ply174', 'Welinton', 'Souza', 'Brazil',    '1989-04-10');
INSERT INTO player_stats VALUES ('ply174', 'tm6', 23, 'Defender', 181, 81, 'R');

INSERT INTO players VALUES ('ply175', 'Oğuzhan', 'Akgün', 'Turkey',    '2001-07-13');
INSERT INTO player_stats VALUES ('ply175', 'tm6', 33, 'Midfielder', 174, NULL, 'L');

INSERT INTO players VALUES ('ply176', 'Dele', 'Alli', 'England',    '1996-04-11');
INSERT INTO player_stats VALUES ('ply176', 'tm6', 11, 'Midfielder', 188, 80, 'R');

INSERT INTO players VALUES ('ply177', 'Gedson', 'Fernandes', 'Portugal',    '1999-01-09');
INSERT INTO player_stats VALUES ('ply177', 'tm6', 83, 'Midfielder', 184, 71, 'R');

INSERT INTO players VALUES ('ply178', 'Atiba', 'Hutchinson', 'Canada',    '1983-02-08');
INSERT INTO player_stats VALUES ('ply178', 'tm6', 13, 'Midfielder', 187, 83, 'R');

INSERT INTO players VALUES ('ply179', '', 'Josef', 'Brazil',    '1989-02-11');
INSERT INTO player_stats VALUES ('ply179', 'tm6', 5, 'Midfielder', 188, 82, 'R');

INSERT INTO players VALUES ('ply180', 'Kerem', 'Kesgin', 'Turkey',    '2000-11-05');
INSERT INTO player_stats VALUES ('ply180', 'tm6', 17, 'Midfielder', 176, 76, 'R');

INSERT INTO players VALUES ('ply181', 'Muhayer', 'Oktay', 'Turkey',    '1999-04-28');
INSERT INTO player_stats VALUES ('ply181', 'tm6', 45, 'Midfielder', 180, 75, '');

INSERT INTO players VALUES ('ply182', 'Demir', 'Tiknaz', 'Turkey',    '2004-08-17');
INSERT INTO player_stats VALUES ('ply182', 'tm6', 68, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply183', 'Salih', 'Uçan', 'Turkey',    '1994-01-06');
INSERT INTO player_stats VALUES ('ply183', 'tm6', 8, 'Midfielder', 182, 72, 'R');

INSERT INTO players VALUES ('ply184', 'Necip', 'Uysal', 'Turkey',    '1991-01-24');
INSERT INTO player_stats VALUES ('ply184', 'tm6', 20, 'Midfielder', 180, 76, 'R');

INSERT INTO players VALUES ('ply185', 'Berkay', 'Vardar', 'Azerbaijan',    '2003-01-14');
INSERT INTO player_stats VALUES ('ply185', 'tm6', 22, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply186', 'Tyler', 'Boyd', 'USA',    '1994-12-30');
INSERT INTO player_stats VALUES ('ply186', 'tm6', 30, 'Forward', 183, 74, 'R');

INSERT INTO players VALUES ('ply187', 'Rachid', 'Ghezzal', 'Algeria',    '1992-05-09');
INSERT INTO player_stats VALUES ('ply187', 'tm6', 18, 'Forward', 182, 70, 'L');

INSERT INTO players VALUES ('ply188', 'Jackson', 'Muleka', 'Congo DR',    '1999-10-04');
INSERT INTO player_stats VALUES ('ply188', 'tm6', 40, 'Forward', 180, 77, 'R');

INSERT INTO players VALUES ('ply189', 'Georges-Kévin', 'N''Koudou', 'France',    '1995-02-13');
INSERT INTO player_stats VALUES ('ply189', 'tm6', 7, 'Forward', 172, 68, 'R');

INSERT INTO players VALUES ('ply190', 'Nathan', 'Redmond', 'England',    '1994-03-06');
INSERT INTO player_stats VALUES ('ply190', 'tm6', NULL, 'Forward', 173, 69, 'R');

INSERT INTO players VALUES ('ply191', 'Cenk', 'Tosun', 'Turkey',    '1991-06-07');
INSERT INTO player_stats VALUES ('ply191', 'tm6', 9, 'Forward', 183, 78, 'R');

INSERT INTO players VALUES ('ply192', 'Wout', 'Weghorst', 'Netherlands',    '1992-08-07');
INSERT INTO player_stats VALUES ('ply192', 'tm6', 10, 'Forward', 197, 84, 'R');

INSERT INTO players VALUES ('ply193', 'Gregor', 'Kobel', 'Switzerland',    '1997-12-06');
INSERT INTO player_stats VALUES ('ply193', 'tm7', 1, 'Goalkeeper', 196, 88, 'R');

INSERT INTO players VALUES ('ply194', 'Marcel', 'Lotka', 'Poland',    '2001-05-25');
INSERT INTO player_stats VALUES ('ply194', 'tm7', 35, 'Goalkeeper', 190, 85, 'R');

INSERT INTO players VALUES ('ply195', 'Alexander', 'Meyer', 'Germany',    '1991-04-13');
INSERT INTO player_stats VALUES ('ply195', 'tm7', 33, 'Goalkeeper', 195, 90, 'R');

INSERT INTO players VALUES ('ply196', 'Luca', 'Unbehaun', 'Germany',    '2001-02-27');
INSERT INTO player_stats VALUES ('ply196', 'tm7', 38, 'Goalkeeper', 185, 82, 'R');

INSERT INTO players VALUES ('ply197', 'Soumaïla', 'Coulibaly', 'France',    '2003-10-14');
INSERT INTO player_stats VALUES ('ply197', 'tm7', 44, 'Defender', 190, 82, 'L');

INSERT INTO players VALUES ('ply198', 'Raphaël', 'Guerreiro', 'Portugal',    '1993-12-22');
INSERT INTO player_stats VALUES ('ply198', 'tm7', 13, 'Defender', 170, 71, 'L');

INSERT INTO players VALUES ('ply199', 'Mats', 'Hummels', 'Germany',    '1988-12-16');
INSERT INTO player_stats VALUES ('ply199', 'tm7', 15, 'Defender', 191, 94, 'R');

INSERT INTO players VALUES ('ply200', 'Mateu', 'Morey', 'Spain',    '2000-03-02');
INSERT INTO player_stats VALUES ('ply200', 'tm7', 2, 'Defender', 173, 67, 'R');

INSERT INTO players VALUES ('ply201', 'Thomas', 'Meunier', 'Belgium',    '1991-09-12');
INSERT INTO player_stats VALUES ('ply201', 'tm7', 24, 'Defender', 191, 90, 'R');

INSERT INTO players VALUES ('ply202', 'Felix', 'Passlack', 'Germany',    '1998-05-29');
INSERT INTO player_stats VALUES ('ply202', 'tm7', 30, 'Defender', 170, 74, 'R');

INSERT INTO players VALUES ('ply203', 'Tom', 'Rothe', 'Germany',    '2004-10-29');
INSERT INTO player_stats VALUES ('ply203', 'tm7', 36, 'Defender', 193, 88, 'L');

INSERT INTO players VALUES ('ply204', 'Nico', 'Schlotterbeck', 'Germany',    '1999-12-01');
INSERT INTO player_stats VALUES ('ply204', 'tm7', 4, 'Defender', 191, 86, 'L');

INSERT INTO players VALUES ('ply205', 'Nico', 'Schulz', 'Germany',    '1993-04-01');
INSERT INTO player_stats VALUES ('ply205', 'tm7', 14, 'Defender', 181, 83, 'L');

INSERT INTO players VALUES ('ply206', 'Niklas', 'Süle', 'Germany',    '1995-09-03');
INSERT INTO player_stats VALUES ('ply206', 'tm7', 25, 'Defender', 195, 97, 'R');

INSERT INTO players VALUES ('ply207', 'Jude', 'Bellingham', 'England',    '2003-06-29');
INSERT INTO player_stats VALUES ('ply207', 'tm7', 22, 'Midfielder', 186, 75, 'R');

INSERT INTO players VALUES ('ply208', 'Julian', 'Brandt', 'Germany',    '1996-05-02');
INSERT INTO player_stats VALUES ('ply208', 'tm7', 19, 'Midfielder', 185, 83, 'R');

INSERT INTO players VALUES ('ply209', 'Emre', 'Can', 'Germany',    '1994-01-12');
INSERT INTO player_stats VALUES ('ply209', 'tm7', 23, 'Midfielder', 186, 86, 'R');

INSERT INTO players VALUES ('ply210', 'Mahmoud', 'Dahoud', 'Germany',    '1996-01-01');
INSERT INTO player_stats VALUES ('ply210', 'tm7', 8, 'Midfielder', 178, 68, 'R');

INSERT INTO players VALUES ('ply211', 'Göktan', 'Gürpüz', 'Germany',    '2003-01-22');
INSERT INTO player_stats VALUES ('ply211', 'tm7', 42, 'Midfielder', 175, 60, 'R');

INSERT INTO players VALUES ('ply212', 'Thorgan', 'Hazard', 'Belgium',    '1993-03-29');
INSERT INTO player_stats VALUES ('ply212', 'tm7', 10, 'Midfielder', 175, 71, 'R');

INSERT INTO players VALUES ('ply213', 'Abdoulaye', 'Kamara', 'Guinea',    '2004-11-06');
INSERT INTO player_stats VALUES ('ply213', 'tm7', 32, 'Midfielder', 182, 77, 'R');

INSERT INTO players VALUES ('ply214', 'Justin', 'Njinmah', 'Germany',    '2000-11-15');
INSERT INTO player_stats VALUES ('ply214', 'tm7', 49, 'Midfielder', 184, 75, 'R');

INSERT INTO players VALUES ('ply215', 'Salih', 'Özcan', 'Turkey',    '1998-01-11');
INSERT INTO player_stats VALUES ('ply215', 'tm7', 6, 'Midfielder', 182, 74, 'R');

INSERT INTO players VALUES ('ply216', 'Antonios', 'Papadopoulos', 'Germany',    '1999-09-10');
INSERT INTO player_stats VALUES ('ply216', 'tm7', 47, 'Midfielder', 185, 83, 'R');

INSERT INTO players VALUES ('ply217', 'Gio', 'Reyna', 'USA',    '2002-11-13');
INSERT INTO player_stats VALUES ('ply217', 'tm7', 7, 'Midfielder', 185, 79, 'R');

INSERT INTO players VALUES ('ply218', 'Marius', 'Wolf', 'Germany',    '1995-05-27');
INSERT INTO player_stats VALUES ('ply218', 'tm7', 17, 'Midfielder', 187, 81, 'R');

INSERT INTO players VALUES ('ply219', 'Karim', 'Adeyemi', 'Germany',    '2002-01-18');
INSERT INTO player_stats VALUES ('ply219', 'tm7', 27, 'Forward', 177, 68, 'L');

INSERT INTO players VALUES ('ply220', 'Jamie', 'Bynoe-Gittens', 'England',    '2004-08-08');
INSERT INTO player_stats VALUES ('ply220', 'tm7', 43, 'Forward', 175, 70, 'R');

INSERT INTO players VALUES ('ply221', 'Sébastien', 'Haller', 'Ivory Coast',    '1994-06-22');
INSERT INTO player_stats VALUES ('ply221', 'tm7', 9, 'Forward', 190, 82, 'R');

INSERT INTO players VALUES ('ply222', 'Donyell', 'Malen', 'Netherlands',    '1999-01-19');
INSERT INTO player_stats VALUES ('ply222', 'tm7', 21, 'Forward', 179, 68, 'R');

INSERT INTO players VALUES ('ply223', 'Anthony', 'Modeste', 'France',    '1988-04-14');
INSERT INTO player_stats VALUES ('ply223', 'tm7', 20, 'Forward', 187, 84, 'R');

INSERT INTO players VALUES ('ply224', 'Youssoufa', 'Moukoko', 'Germany',    '2004-11-20');
INSERT INTO player_stats VALUES ('ply224', 'tm7', 18, 'Forward', 179, 72, 'L');

INSERT INTO players VALUES ('ply225', 'Marco', 'Reus', 'Germany',    '1989-05-31');
INSERT INTO player_stats VALUES ('ply225', 'tm7', 11, 'Forward', 180, 71, 'R');

INSERT INTO players VALUES ('ply226', 'Matthias', 'Kleinsteiber', 'Germany',    '1978-01-05');
INSERT INTO player_stats VALUES ('ply226', 'tm7', NULL, 'Goalkeeping', 188, 85, '');

INSERT INTO players VALUES ('ply227', 'Mathias', 'Kolodziej', 'Germany',    '1988-04-04');
INSERT INTO player_stats VALUES ('ply227', 'tm7', NULL, 'Athletic', 194, NULL, '');

INSERT INTO players VALUES ('ply228', 'Dennis', 'Morschel', 'Germany',    '1985-02-21');
INSERT INTO player_stats VALUES ('ply228', 'tm7', NULL, 'Athletic', 194, NULL, '');

INSERT INTO players VALUES ('ply229', 'Florian', 'Wangler', 'Germany',    '1980-01-16');
INSERT INTO player_stats VALUES ('ply229', 'tm7', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply230', 'Johannes', 'Wieber', 'Germany',    '1972-09-09');
INSERT INTO player_stats VALUES ('ply230', 'tm7', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply231', 'Thorben', 'Voeste', 'Germany',    '1981-06-10');
INSERT INTO player_stats VALUES ('ply231', 'tm7', NULL, 'Rehab', NULL, NULL, '');

INSERT INTO players VALUES ('ply232', 'Olaf', 'Wehmer', 'Germany',    '1980-06-01');
INSERT INTO player_stats VALUES ('ply232', 'tm7', NULL, 'Rehab', NULL, NULL, '');

INSERT INTO players VALUES ('ply233', 'Frank', 'Zöllner', 'Germany',    '1968-02-20');
INSERT INTO player_stats VALUES ('ply233', 'tm7', NULL, 'Rehab', NULL, NULL, '');

INSERT INTO players VALUES ('ply234', 'Otto', 'Addo', 'Ghana',    '1975-06-09');
INSERT INTO player_stats VALUES ('ply234', 'tm7', NULL, 'Special', 188, 80, 'R');

INSERT INTO players VALUES ('ply235', 'Serdar', 'Ayar', 'Germany',    '1972-04-22');
INSERT INTO player_stats VALUES ('ply235', 'tm7', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply236', 'Mario', 'Baric', 'Germany',    '1984-11-10');
INSERT INTO player_stats VALUES ('ply236', 'tm7', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply237', 'Daniel', 'Ackermann', 'Germany',    '1981-07-29');
INSERT INTO player_stats VALUES ('ply237', 'tm7', NULL, 'Video', 182, 81, '');

INSERT INTO players VALUES ('ply238', 'Frank', 'Rutemöller', 'Germany',    '1983-07-28');
INSERT INTO player_stats VALUES ('ply238', 'tm7', NULL, 'Video', NULL, NULL, '');

INSERT INTO players VALUES ('ply239', 'Kai-Norman', 'Schulz', 'Germany',    '1974-05-02');
INSERT INTO player_stats VALUES ('ply239', 'tm7', NULL, 'Chief', NULL, NULL, '');

INSERT INTO players VALUES ('ply240', 'Philipp', 'Laux', 'Germany',    '1973-01-25');
INSERT INTO player_stats VALUES ('ply240', 'tm7', NULL, '05/2020', 182, 82, '');

INSERT INTO players VALUES ('ply241', 'Dario', 'Marzino', 'Switzerland',    '1996-09-19');
INSERT INTO player_stats VALUES ('ply241', 'tm8', 40, 'Goalkeeper', 184, 80, 'R');

INSERT INTO players VALUES ('ply242', 'Anthony', 'Racioppi', 'Switzerland',    '1998-12-31');
INSERT INTO player_stats VALUES ('ply242', 'tm8', 1, 'Goalkeeper', 188, 80, 'R');

INSERT INTO players VALUES ('ply243', 'David von', 'Ballmoos', 'Switzerland',    '1994-12-30');
INSERT INTO player_stats VALUES ('ply243', 'tm8', 26, 'Goalkeeper', 192, 90, 'R');

INSERT INTO players VALUES ('ply244', 'Leandro', 'Zbinden', 'Switzerland',    '2002-07-30');
INSERT INTO player_stats VALUES ('ply244', 'tm8', 61, 'Goalkeeper', 189, 83, '');

INSERT INTO players VALUES ('ply245', 'Aurèle', 'Amenda', 'Switzerland',    '2003-07-31');
INSERT INTO player_stats VALUES ('ply245', 'tm8', 4, 'Defender', 194, 90, '');

INSERT INTO players VALUES ('ply246', 'Loris', 'Benito', 'Switzerland',    '1992-01-07');
INSERT INTO player_stats VALUES ('ply246', 'tm8', 23, 'Defender', 186, 85, 'L');

INSERT INTO players VALUES ('ply247', 'Lewin', 'Blum', 'Switzerland',    '2001-07-27');
INSERT INTO player_stats VALUES ('ply247', 'tm8', 27, 'Defender', 181, 75, '');

INSERT INTO players VALUES ('ply248', 'Mohamed', 'Camara', 'Guinea',    '1997-08-28');
INSERT INTO player_stats VALUES ('ply248', 'tm8', 13, 'Defender', 191, 80, 'R');

INSERT INTO players VALUES ('ply249', 'Ulisses', 'Garcia', 'Switzerland',    '1996-01-11');
INSERT INTO player_stats VALUES ('ply249', 'tm8', 21, 'Defender', 183, 82, 'L');

INSERT INTO players VALUES ('ply250', 'Sandro', 'Lauper', 'Switzerland',    '1996-10-25');
INSERT INTO player_stats VALUES ('ply250', 'tm8', 30, 'Defender', 186, 73, 'R');

INSERT INTO players VALUES ('ply251', 'Fabian', 'Lustenberger', 'Switzerland',    '1988-05-02');
INSERT INTO player_stats VALUES ('ply251', 'tm8', 28, 'Defender', 182, 73, 'R');

INSERT INTO players VALUES ('ply252', 'Quentin', 'Maceiras', 'Switzerland',    '1995-10-10');
INSERT INTO player_stats VALUES ('ply252', 'tm8', 24, 'Defender', 181, 75, 'R');

INSERT INTO players VALUES ('ply253', 'Cédric', 'Zesiger', 'Switzerland',    '1998-06-24');
INSERT INTO player_stats VALUES ('ply253', 'tm8', 5, 'Defender', 194, 88, 'L');

INSERT INTO players VALUES ('ply254', 'Miguel', 'Chaiwa', 'Zambia',    '2004-06-07');
INSERT INTO player_stats VALUES ('ply254', 'tm8', 14, 'Midfielder', 179, 73, 'R');

INSERT INTO players VALUES ('ply255', 'Théo', 'Golliard', 'Switzerland',    '2002-09-27');
INSERT INTO player_stats VALUES ('ply255', '', NULL, 'Midfielder', 172, 68, '');

INSERT INTO players VALUES ('ply256', 'Kastriot', 'Imeri', 'Switzerland',    '2000-06-27');
INSERT INTO player_stats VALUES ('ply256', 'tm8', 29, 'Midfielder', 181, 75, 'R');

INSERT INTO players VALUES ('ply257', 'Cheikh', 'Niasse', 'Senegal',    '2000-01-19');
INSERT INTO player_stats VALUES ('ply257', 'tm8', 20, 'Midfielder', 188, 69, 'R');

INSERT INTO players VALUES ('ply258', 'Esteban', 'Petignat', 'Switzerland',    '2000-05-17');
INSERT INTO player_stats VALUES ('ply258', 'tm8', 6, 'Midfielder', 177, 71, 'R');

INSERT INTO players VALUES ('ply259', 'Fabian', 'Rieder', 'Switzerland',    '2002-02-16');
INSERT INTO player_stats VALUES ('ply259', 'tm8', 32, 'Midfielder', 181, 74, 'L');

INSERT INTO players VALUES ('ply260', 'Donat', 'Rrudhani', 'Kosovo',    '1999-05-02');
INSERT INTO player_stats VALUES ('ply260', 'tm8', 22, 'Midfielder', 188, 78, 'L');

INSERT INTO players VALUES ('ply261', 'Kevin', 'Rüegg', 'Switzerland',    '1998-08-05');
INSERT INTO player_stats VALUES ('ply261', 'tm8', 17, 'Midfielder', 173, 77, 'R');

INSERT INTO players VALUES ('ply262', 'Vincent', 'Sierro', 'Switzerland',    '1995-10-08');
INSERT INTO player_stats VALUES ('ply262', 'tm8', 8, 'Midfielder', 185, 79, 'R');

INSERT INTO players VALUES ('ply263', 'Filip', 'Ugrinić', 'Switzerland',    '1999-01-05');
INSERT INTO player_stats VALUES ('ply263', 'tm8', 7, 'Midfielder', 184, 88, 'R');

INSERT INTO players VALUES ('ply264', 'Jonathan De', 'Donno', 'Switzerland',    '2002-02-16');
INSERT INTO player_stats VALUES ('ply264', 'tm8', NULL, 'Forward', NULL, NULL, '');

INSERT INTO players VALUES ('ply265', 'Meschack', 'Elia', 'Congo DR',    '1997-08-06');
INSERT INTO player_stats VALUES ('ply265', 'tm8', 15, 'Forward', 173, 67, 'R');

INSERT INTO players VALUES ('ply266', 'Christian', 'Fassnacht', 'Switzerland',    '1993-11-11');
INSERT INTO player_stats VALUES ('ply266', 'tm8', 16, 'Forward', 185, 77, 'R');

INSERT INTO players VALUES ('ply267', 'Cedric', 'Itten', 'Switzerland',    '1996-12-27');
INSERT INTO player_stats VALUES ('ply267', 'tm8', 11, 'Forward', 190, 84, 'R');

INSERT INTO players VALUES ('ply268', 'Joël', 'Monteiro', 'Portugal',    '1999-08-05');
INSERT INTO player_stats VALUES ('ply268', 'tm8', 77, 'Forward', 191, 81, 'R');

INSERT INTO players VALUES ('ply269', 'Jean-Pierre', 'Nsame', 'Cameroon',    '1993-05-01');
INSERT INTO player_stats VALUES ('ply269', 'tm8', 18, 'Forward', 188, 89, 'R');

INSERT INTO players VALUES ('ply270', 'Marcus', 'Bettinelli', 'England',    '1992-05-24');
INSERT INTO player_stats VALUES ('ply270', 'tm9', 13, 'Goalkeeper', 194, 84, 'R');

INSERT INTO players VALUES ('ply271', '', 'Kepa', 'Spain',    '1994-10-03');
INSERT INTO player_stats VALUES ('ply271', 'tm9', 1, 'Goalkeeper', 186, 85, 'R');

INSERT INTO players VALUES ('ply272', 'Edouard', 'Mendy', 'Senegal',    '1992-03-01');
INSERT INTO player_stats VALUES ('ply272', 'tm9', 16, 'Goalkeeper', 196, 86, 'R');

INSERT INTO players VALUES ('ply273', '', 'Azpilicueta', 'Spain',    '1989-08-28');
INSERT INTO player_stats VALUES ('ply273', 'tm9', 28, 'Defender', 178, 75, 'R');

INSERT INTO players VALUES ('ply274', 'Ben', 'Chilwell', 'England',    '1996-12-21');
INSERT INTO player_stats VALUES ('ply274', 'tm9', 21, 'Defender', 180, 78, 'L');

INSERT INTO players VALUES ('ply275', '', 'Cucurella', 'Spain',    '1998-07-22');
INSERT INTO player_stats VALUES ('ply275', 'tm9', 32, 'Defender', 175, 68, 'L');

INSERT INTO players VALUES ('ply276', 'Wesley', 'Fofana', 'France',    '2000-12-17');
INSERT INTO player_stats VALUES ('ply276', 'tm9', 33, 'Defender', 190, 76, 'R');

INSERT INTO players VALUES ('ply277', 'Reece', 'James', 'England',    '1999-12-08');
INSERT INTO player_stats VALUES ('ply277', 'tm9', 24, 'Defender', 180, 91, 'R');

INSERT INTO players VALUES ('ply278', 'Kalidou', 'Koulibaly', 'Senegal',    '1991-06-20');
INSERT INTO player_stats VALUES ('ply278', 'tm9', 26, 'Defender', 187, 89, 'R');

INSERT INTO players VALUES ('ply279', 'Thiago', 'Silva', 'Brazil',    '1984-09-22');
INSERT INTO player_stats VALUES ('ply279', 'tm9', 6, 'Defender', 183, 79, 'R');

INSERT INTO players VALUES ('ply280', 'Trevoh', 'Chalobah', 'England',    '1999-07-05');
INSERT INTO player_stats VALUES ('ply280', 'tm9', 14, 'Midfielder', 191, 84, 'R');

INSERT INTO players VALUES ('ply281', 'Carney', 'Chukwuemeka', 'England',    '2003-10-20');
INSERT INTO player_stats VALUES ('ply281', 'tm9', 30, 'Midfielder', 185, 70, 'R');

INSERT INTO players VALUES ('ply282', 'Conor', 'Gallagher', 'England',    '2000-02-06');
INSERT INTO player_stats VALUES ('ply282', 'tm9', 23, 'Midfielder', 182, 74, 'R');

INSERT INTO players VALUES ('ply283', 'Kai', 'Havertz', 'Germany',    '1999-06-11');
INSERT INTO player_stats VALUES ('ply283', 'tm9', 29, 'Midfielder', 189, 82, 'L');

INSERT INTO players VALUES ('ply284', '', 'Jorginho', 'Italy',    '1991-12-20');
INSERT INTO player_stats VALUES ('ply284', 'tm9', 5, 'Midfielder', 180, 68, 'R');

INSERT INTO players VALUES ('ply285', 'N''Golo', 'Kanté', 'France',    '1991-03-29');
INSERT INTO player_stats VALUES ('ply285', 'tm9', 7, 'Midfielder', 168, 68, 'R');

INSERT INTO players VALUES ('ply286', 'Mateo', 'Kovačić', 'Croatia',    '1994-05-06');
INSERT INTO player_stats VALUES ('ply286', 'tm9', 8, 'Midfielder', 177, 75, 'R');

INSERT INTO players VALUES ('ply287', 'Ruben', 'Loftus-Cheek', 'England',    '1996-01-23');
INSERT INTO player_stats VALUES ('ply287', 'tm9', 12, 'Midfielder', 191, 83, 'R');

INSERT INTO players VALUES ('ply288', 'Mason', 'Mount', 'England',    '1999-01-10');
INSERT INTO player_stats VALUES ('ply288', 'tm9', 19, 'Midfielder', 180, 74, 'R');

INSERT INTO players VALUES ('ply289', 'Denis', 'Zakaria', 'Switzerland',    '1996-11-20');
INSERT INTO player_stats VALUES ('ply289', 'tm9', 20, 'Midfielder', 191, 81, 'R');

INSERT INTO players VALUES ('ply290', 'Pierre-Emerick', 'Aubameyang', 'Gabon',    '1989-06-18');
INSERT INTO player_stats VALUES ('ply290', 'tm9', 9, 'Forward', 187, 80, 'R');

INSERT INTO players VALUES ('ply291', 'Armando', 'Broja', 'Albania',    '2001-09-10');
INSERT INTO player_stats VALUES ('ply291', 'tm9', 18, 'Forward', 191, 75, 'R');

INSERT INTO players VALUES ('ply292', 'Christian', 'Pulišić', 'USA',    '1998-09-18');
INSERT INTO player_stats VALUES ('ply292', 'tm9', 10, 'Forward', 177, 73, 'R');

INSERT INTO players VALUES ('ply293', 'Raheem', 'Sterling', 'England',    '1994-12-08');
INSERT INTO player_stats VALUES ('ply293', 'tm9', 17, 'Forward', 170, 69, 'R');

INSERT INTO players VALUES ('ply294', 'Hakim', 'Ziyech', 'Morocco',    '1993-03-19');
INSERT INTO player_stats VALUES ('ply294', 'tm9', 22, 'Forward', 181, 70, 'L');

INSERT INTO players VALUES ('ply295', '', 'Hilário', 'Portugal',    '1975-10-21');
INSERT INTO player_stats VALUES ('ply295', 'tm9', NULL, 'Goalkeeping', 189, 85, '');

INSERT INTO players VALUES ('ply296', 'Ben', 'Roberts', 'England',    '1975-06-22');
INSERT INTO player_stats VALUES ('ply296', 'tm9', NULL, 'Goalkeeping', 184, 78, '');

INSERT INTO players VALUES ('ply297', 'James', 'Russell', 'England',    '1987-09-19');
INSERT INTO player_stats VALUES ('ply297', 'tm9', NULL, 'Goalkeeping', 178, 74, '');

INSERT INTO players VALUES ('ply298', 'Matt', 'Birnie', 'England',    '1987-07-10');
INSERT INTO player_stats VALUES ('ply298', 'tm9', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply299', 'Will', 'Tullett', 'England',    '1980-08-01');
INSERT INTO player_stats VALUES ('ply299', 'tm9', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply300', 'James', 'Melbourne', 'England',    '1981-07-22');
INSERT INTO player_stats VALUES ('ply300', 'tm9', NULL, 'Chief', NULL, NULL, '');

INSERT INTO players VALUES ('ply301', 'Senne', 'Lammens', 'Belgium',    '2002-07-07');
INSERT INTO player_stats VALUES ('ply301', 'tm10', 91, 'Goalkeeper', 193, 70, 'R');

INSERT INTO players VALUES ('ply302', 'Simon', 'Mignolet', 'Belgium',    '1988-03-06');
INSERT INTO player_stats VALUES ('ply302', 'tm10', 22, 'Goalkeeper', 193, 88, 'R');

INSERT INTO players VALUES ('ply303', 'Nick', 'Shinton', 'Belgium',    '2001-05-10');
INSERT INTO player_stats VALUES ('ply303', '', 33, 'Goalkeeper', 194, 81, 'L');

INSERT INTO players VALUES ('ply304', 'Dedryck', 'Boyata', 'Belgium',    '1990-11-28');
INSERT INTO player_stats VALUES ('ply304', 'tm10', 28, 'Defender', 188, 84, 'R');

INSERT INTO players VALUES ('ply305', '', 'Clinton', 'Angola',    '1992-11-07');
INSERT INTO player_stats VALUES ('ply305', 'tm10', 77, 'Defender', 180, 72, 'R');

INSERT INTO players VALUES ('ply306', 'Ibe', 'Hautekiet', 'Belgium',    '2002-04-13');
INSERT INTO player_stats VALUES ('ply306', 'tm10', NULL, 'Defender', 182, 71, 'L');

INSERT INTO players VALUES ('ply307', 'Brandon', 'Mechele', 'Belgium',    '1993-01-28');
INSERT INTO player_stats VALUES ('ply307', 'tm10', 44, 'Defender', 190, 81, 'R');

INSERT INTO players VALUES ('ply308', 'Bjorn', 'Meijer', 'Netherlands',    '2003-03-18');
INSERT INTO player_stats VALUES ('ply308', 'tm10', 14, 'Defender', 190, NULL, 'L');

INSERT INTO players VALUES ('ply309', 'Denis', 'Odoi', 'Belgium',    '1988-05-27');
INSERT INTO player_stats VALUES ('ply309', 'tm10', 6, 'Defender', 178, 72, 'R');

INSERT INTO players VALUES ('ply310', 'Kyriani', 'Sabbe', 'Belgium',    '2005-01-26');
INSERT INTO player_stats VALUES ('ply310', '', NULL, 'Defender', NULL, NULL, '');

INSERT INTO players VALUES ('ply311', 'Eduard', 'Sobol', 'Ukraine',    '1995-04-20');
INSERT INTO player_stats VALUES ('ply311', 'tm10', 2, 'Defender', 186, 74, 'L');

INSERT INTO players VALUES ('ply312', 'Jorne', 'Spileers', 'Belgium',    '2005-01-21');
INSERT INTO player_stats VALUES ('ply312', 'tm10', 58, 'Defender', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply313', 'Abakar', 'Sylla', 'Ivory Coast',    '2002-12-25');
INSERT INTO player_stats VALUES ('ply313', 'tm10', 94, 'Defender', NULL, NULL, 'L');

INSERT INTO players VALUES ('ply314', 'Lynnt', 'Audoor', 'Belgium',    '2003-10-13');
INSERT INTO player_stats VALUES ('ply314', 'tm10', 89, 'Midfielder', 182, NULL, 'R');

INSERT INTO players VALUES ('ply315', 'Éder', 'Balanta', 'Colombia',    '1993-02-28');
INSERT INTO player_stats VALUES ('ply315', 'tm10', 3, 'Midfielder', 180, 84, 'L');

INSERT INTO players VALUES ('ply316', 'Noah', 'Mbamba-Muanda', 'Belgium',    '2005-01-05');
INSERT INTO player_stats VALUES ('ply316', 'tm10', 72, 'Midfielder', 184, NULL, 'R');

INSERT INTO players VALUES ('ply317', 'Casper', 'Nielsen', 'Denmark',    '1994-04-29');
INSERT INTO player_stats VALUES ('ply317', 'tm10', 27, 'Midfielder', 182, 71, 'R');

INSERT INTO players VALUES ('ply318', 'Raphael', 'Onyedika', 'Nigeria',    '2001-04-19');
INSERT INTO player_stats VALUES ('ply318', 'tm10', 15, 'Midfielder', 184, NULL, 'R');

INSERT INTO players VALUES ('ply319', 'Owen', 'Otasowie', 'USA',    '2001-01-06');
INSERT INTO player_stats VALUES ('ply319', 'tm10', 8, 'Midfielder', 191, 82, 'R');

INSERT INTO players VALUES ('ply320', 'Mats', 'Rits', 'Belgium',    '1993-07-18');
INSERT INTO player_stats VALUES ('ply320', 'tm10', 26, 'Midfielder', 178, 73, 'R');

INSERT INTO players VALUES ('ply321', 'Cisse', 'Sandra', 'Belgium',    '2003-12-16');
INSERT INTO player_stats VALUES ('ply321', 'tm10', 98, 'Midfielder', 184, 74, 'L');

INSERT INTO players VALUES ('ply322', 'Hans', 'Vanaken', 'Belgium',    '1992-08-24');
INSERT INTO player_stats VALUES ('ply322', 'tm10', 20, 'Midfielder', 195, 77, 'R');

INSERT INTO players VALUES ('ply323', 'Ruud', 'Vormer', 'Netherlands',    '1988-05-11');
INSERT INTO player_stats VALUES ('ply323', 'tm10', 25, 'Midfielder', 178, 77, 'R');

INSERT INTO players VALUES ('ply324', 'Tajon', 'Buchanan', 'Canada',    '1999-02-08');
INSERT INTO player_stats VALUES ('ply324', 'tm10', 17, 'Forward', 183, 68, 'R');

INSERT INTO players VALUES ('ply325', 'Arne', 'Engels', 'Belgium',    '2003-09-08');
INSERT INTO player_stats VALUES ('ply325', 'tm10', 94, 'Forward', 185, 71, 'R');

INSERT INTO players VALUES ('ply326', 'Ferrán', 'Jutglà', 'Spain',    '1999-02-01');
INSERT INTO player_stats VALUES ('ply326', 'tm10', 9, 'Forward', 175, 75, 'R');

INSERT INTO players VALUES ('ply327', 'Noa', 'Lang', 'Netherlands',    '1999-06-17');
INSERT INTO player_stats VALUES ('ply327', 'tm10', 10, 'Forward', 173, 70, 'R');

INSERT INTO players VALUES ('ply328', 'Cyle', 'Larin', 'Canada',    '1995-04-17');
INSERT INTO player_stats VALUES ('ply328', 'tm10', 11, 'Forward', 188, 86, 'R');

INSERT INTO players VALUES ('ply329', 'Antonio', 'Nusa', 'Norway',    '2005-04-17');
INSERT INTO player_stats VALUES ('ply329', 'tm10', 32, 'Forward', 180, NULL, 'R');

INSERT INTO players VALUES ('ply330', 'Daniel', 'Pérez', 'Venezuela',    '2002-01-17');
INSERT INTO player_stats VALUES ('ply330', 'tm10', 30, 'Forward', 190, 77, 'R');

INSERT INTO players VALUES ('ply331', 'Andreas Skov', 'Olsen', 'Denmark',    '1999-12-29');
INSERT INTO player_stats VALUES ('ply331', 'tm10', 7, 'Forward', 187, 75, 'L');

INSERT INTO players VALUES ('ply332', 'Kamal', 'Sowah', 'Ghana',    '2000-01-09');
INSERT INTO player_stats VALUES ('ply332', 'tm10', 19, 'Forward', 179, 66, 'L');

INSERT INTO players VALUES ('ply333', 'Roman', 'Yaremchuk', 'Ukraine',    '1995-11-27');
INSERT INTO player_stats VALUES ('ply333', 'tm10', 70, 'Forward', 191, 79, 'R');

INSERT INTO players VALUES ('ply334', 'Peter', 'Mollez', 'Belgium',    '1983-09-23');
INSERT INTO player_stats VALUES ('ply334', 'tm10', NULL, 'Goalkeeping', 183, 83, '');

INSERT INTO players VALUES ('ply335', 'Denis', 'Boyko', 'Ukraine',    '1988-01-29');
INSERT INTO player_stats VALUES ('ply335', 'tm11', 71, 'Goalkeeper', 197, 85, 'R');

INSERT INTO players VALUES ('ply336', 'Georgiy', 'Bushchan', 'Ukraine',    '1994-05-31');
INSERT INTO player_stats VALUES ('ply336', 'tm11', 1, 'Goalkeeper', 196, 84, 'R');

INSERT INTO players VALUES ('ply337', 'Denys', 'Ignatenko', 'Ukraine',    '2003-01-11');
INSERT INTO player_stats VALUES ('ply337', 'tm11', 74, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply338', 'Vladyslav', 'Kucheruk', 'Ukraine',    '1999-02-14');
INSERT INTO player_stats VALUES ('ply338', 'tm11', 31, 'Goalkeeper', 191, 81, 'R');

INSERT INTO players VALUES ('ply339', 'Valentyn', 'Morgun', 'Ukraine',    '2001-08-10');
INSERT INTO player_stats VALUES ('ply339', 'tm11', 51, 'Goalkeeper', 189, 78, '');

INSERT INTO players VALUES ('ply340', 'Ruslan', 'Neshcheret', 'Ukraine',    '2002-01-22');
INSERT INTO player_stats VALUES ('ply340', 'tm11', 35, 'Goalkeeper', 190, 81, '');

INSERT INTO players VALUES ('ply341', 'Anton', 'Bol', 'Ukraine',    '2003-01-08');
INSERT INTO player_stats VALUES ('ply341', 'tm11', 3, 'Defender', 187, 78, '');

INSERT INTO players VALUES ('ply342', 'Mykyta', 'Burda', 'Ukraine',    '1995-03-24');
INSERT INTO player_stats VALUES ('ply342', 'tm11', 6, 'Defender', 187, 80, 'R');

INSERT INTO players VALUES ('ply343', 'Vladyslav', 'Dubinchak', 'Ukraine',    '1998-07-01');
INSERT INTO player_stats VALUES ('ply343', 'tm11', 44, 'Defender', 173, 62, 'L');

INSERT INTO players VALUES ('ply344', 'Tomasz', 'Kędziora', 'Poland',    '1994-06-11');
INSERT INTO player_stats VALUES ('ply344', 'tm11', 94, 'Defender', 183, 73, 'R');

INSERT INTO players VALUES ('ply345', 'Volodymyr', 'Kostevych', 'Ukraine',    '1992-10-23');
INSERT INTO player_stats VALUES ('ply345', 'tm11', 21, 'Defender', 174, 62, 'L');

INSERT INTO players VALUES ('ply346', 'Mykyta', 'Kravchenko', 'Ukraine',    '1997-06-14');
INSERT INTO player_stats VALUES ('ply346', 'tm11', 21, 'Defender', 182, 77, 'R');

INSERT INTO players VALUES ('ply347', 'Denys', 'Popov', 'Ukraine',    '1999-02-17');
INSERT INTO player_stats VALUES ('ply347', 'tm11', 4, 'Defender', 185, 81, '');

INSERT INTO players VALUES ('ply348', 'Oleksandr', 'Syrota', 'Ukraine',    '2000-06-11');
INSERT INTO player_stats VALUES ('ply348', 'tm11', 34, 'Defender', 193, 78, 'L');

INSERT INTO players VALUES ('ply349', 'Oleksandr', 'Tymchyk', 'Ukraine',    '1997-01-20');
INSERT INTO player_stats VALUES ('ply349', 'tm11', 24, 'Defender', 180, 67, 'R');

INSERT INTO players VALUES ('ply350', 'Kostiantyn', 'Vivcharenko', 'Ukraine',    '2002-06-10');
INSERT INTO player_stats VALUES ('ply350', 'tm11', 2, 'Defender', 178, 76, '');

INSERT INTO players VALUES ('ply351', 'Ilya', 'Zabarnyi', 'Ukraine',    '2002-09-01');
INSERT INTO player_stats VALUES ('ply351', 'tm11', 25, 'Defender', 186, 81, 'R');

INSERT INTO players VALUES ('ply352', 'Oleksandr', 'Andriyevskyi', 'Ukraine',    '1994-06-25');
INSERT INTO player_stats VALUES ('ply352', 'tm11', 18, 'Midfielder', 179, 75, 'L');

INSERT INTO players VALUES ('ply353', 'Vitaliy', 'Buyalskyi', 'Ukraine',    '1993-01-06');
INSERT INTO player_stats VALUES ('ply353', 'tm11', 29, 'Midfielder', 170, 61, 'R');

INSERT INTO players VALUES ('ply354', 'Samba', 'Diallo', 'Senegal',    '2003-01-05');
INSERT INTO player_stats VALUES ('ply354', 'tm11', NULL, 'Midfielder', 163, NULL, 'L');

INSERT INTO players VALUES ('ply355', 'Denys', 'Garmash', 'Ukraine',    '1990-04-19');
INSERT INTO player_stats VALUES ('ply355', 'tm11', 19, 'Midfielder', 186, 72, 'R');

INSERT INTO players VALUES ('ply356', 'Mohammed', 'Kadiri', 'Ghana',    '1996-03-07');
INSERT INTO player_stats VALUES ('ply356', 'tm11', NULL, 'Midfielder', 186, 75, 'R');

INSERT INTO players VALUES ('ply357', 'Oleksandr', 'Karavayev', 'Ukraine',    '1992-06-02');
INSERT INTO player_stats VALUES ('ply357', 'tm11', 20, 'Midfielder', 175, 71, 'R');

INSERT INTO players VALUES ('ply358', 'Justin', 'Lonwijk', 'Netherlands',    '1999-12-21');
INSERT INTO player_stats VALUES ('ply358', 'tm11', 22, 'Midfielder', 189, NULL, 'R');

INSERT INTO players VALUES ('ply359', 'Yaroslav', 'Nadolskyi', 'Ukraine',    '2001-03-01');
INSERT INTO player_stats VALUES ('ply359', 'tm11', NULL, 'Midfielder', 179, 72, 'L');

INSERT INTO players VALUES ('ply360', 'Mykola', 'Shaparenko', 'Ukraine',    '1998-10-04');
INSERT INTO player_stats VALUES ('ply360', 'tm11', 10, 'Midfielder', 178, 72, 'R');

INSERT INTO players VALUES ('ply361', 'Volodymyr', 'Shepelyev', 'Ukraine',    '1997-06-01');
INSERT INTO player_stats VALUES ('ply361', 'tm11', 8, 'Midfielder', 184, 73, 'R');

INSERT INTO players VALUES ('ply362', 'Sergiy', 'Sydorchuk', 'Ukraine',    '1991-05-02');
INSERT INTO player_stats VALUES ('ply362', 'tm11', 5, 'Midfielder', 189, 80, 'R');

INSERT INTO players VALUES ('ply363', 'Anton', 'Tsarenko', 'Ukraine',    '2004-06-17');
INSERT INTO player_stats VALUES ('ply363', 'tm11', 37, 'Midfielder', 162, 58, '');

INSERT INTO players VALUES ('ply364', 'Viktor', 'Tsygankov', 'Ukraine',    '1997-11-15');
INSERT INTO player_stats VALUES ('ply364', 'tm11', 15, 'Midfielder', 178, 72, 'L');

INSERT INTO players VALUES ('ply365', 'Oleksandr', 'Yatsyk', 'Ukraine',    '2003-01-03');
INSERT INTO player_stats VALUES ('ply365', 'tm11', 14, 'Midfielder', 182, 70, '');

INSERT INTO players VALUES ('ply366', '', 'Benito', 'Nigeria',    '1998-09-07');
INSERT INTO player_stats VALUES ('ply366', 'tm11', NULL, 'Forward', 179, 80, 'R');

INSERT INTO players VALUES ('ply367', 'Artem', 'Besedin', 'Ukraine',    '1996-03-31');
INSERT INTO player_stats VALUES ('ply367', 'tm11', 41, 'Forward', 185, 76, 'R');

INSERT INTO players VALUES ('ply368', 'Vladyslav', 'Kabaev', 'Ukraine',    '1995-09-01');
INSERT INTO player_stats VALUES ('ply368', 'tm11', 7, 'Forward', 176, 63, 'R');

INSERT INTO players VALUES ('ply369', 'Vladyslav', 'Kulach', 'Ukraine',    '1993-05-07');
INSERT INTO player_stats VALUES ('ply369', 'tm11', 28, 'Forward', 178, 74, 'R');

INSERT INTO players VALUES ('ply370', 'Kaheem', 'Parris', 'Jamaica',    '2000-01-06');
INSERT INTO player_stats VALUES ('ply370', 'tm11', 9, 'Forward', 184, NULL, 'L');

INSERT INTO players VALUES ('ply371', 'Vladyslav', 'Supryaga', 'Ukraine',    '2000-02-15');
INSERT INTO player_stats VALUES ('ply371', 'tm11', 17, 'Forward', 185, 75, 'R');

INSERT INTO players VALUES ('ply372', 'Vladyslav', 'Vanat', 'Ukraine',    '2002-01-04');
INSERT INTO player_stats VALUES ('ply372', 'tm11', 11, 'Forward', 182, 69, 'L');

INSERT INTO players VALUES ('ply373', 'Arnau', 'Tenas', 'Spain',    '2001-05-30');
INSERT INTO player_stats VALUES ('ply373', '', 1, 'Goalkeeper', 185, 85, 'R');

INSERT INTO players VALUES ('ply374', 'Iñaki', 'Peña', 'Spain',    '1999-03-02');
INSERT INTO player_stats VALUES ('ply374', 'tm12', 26, 'Goalkeeper', 184, 78, 'R');

INSERT INTO players VALUES ('ply375', 'Marc-André ter', 'Stegen', 'Germany',    '1992-04-30');
INSERT INTO player_stats VALUES ('ply375', 'tm12', 1, 'Goalkeeper', 187, 85, 'R');

INSERT INTO players VALUES ('ply376', 'Álex', 'Baldé', 'Spain',    '2003-10-18');
INSERT INTO player_stats VALUES ('ply376', 'tm12', 28, 'Defender', 175, 69, 'L');

INSERT INTO players VALUES ('ply377', 'Ronald', 'Araújo', 'Uruguay',    '1999-03-07');
INSERT INTO player_stats VALUES ('ply377', 'tm12', 4, 'Defender', 188, 79, 'R');

INSERT INTO players VALUES ('ply378', 'Andreas', 'Christensen', 'Denmark',    '1996-04-10');
INSERT INTO player_stats VALUES ('ply378', 'tm12', 15, 'Defender', 187, 78, 'R');

INSERT INTO players VALUES ('ply379', 'Eric', 'García', 'Spain',    '2001-01-09');
INSERT INTO player_stats VALUES ('ply379', 'tm12', 24, 'Defender', 182, 76, 'R');

INSERT INTO players VALUES ('ply380', 'Héctor', 'Bellerín', 'Spain',    '1995-03-19');
INSERT INTO player_stats VALUES ('ply380', 'tm12', 2, 'Defender', 177, 74, 'R');

INSERT INTO players VALUES ('ply381', 'Jordi', 'Alba', 'Spain',    '1989-03-21');
INSERT INTO player_stats VALUES ('ply381', 'tm12', 18, 'Defender', 170, 68, 'L');

INSERT INTO players VALUES ('ply382', 'Jules', 'Koundé', 'France',    '1998-11-12');
INSERT INTO player_stats VALUES ('ply382', 'tm12', 23, 'Defender', 178, 70, 'R');

INSERT INTO players VALUES ('ply383', 'Marcos', 'Alonso', 'Spain',    '1990-12-28');
INSERT INTO player_stats VALUES ('ply383', 'tm12', 17, 'Defender', 188, 85, 'L');

INSERT INTO players VALUES ('ply384', '', 'Piqué', 'Spain',    '1987-02-02');
INSERT INTO player_stats VALUES ('ply384', 'tm12', 3, 'Defender', 194, 85, 'R');

INSERT INTO players VALUES ('ply385', '', 'Busquets', 'Spain',    '1988-07-16');
INSERT INTO player_stats VALUES ('ply385', 'tm12', 5, 'Midfielder', 189, 76, 'R');

INSERT INTO players VALUES ('ply386', 'Frenkie de', 'Jong', 'Netherlands',    '1997-05-12');
INSERT INTO player_stats VALUES ('ply386', 'tm12', 21, 'Midfielder', 180, 74, 'R');

INSERT INTO players VALUES ('ply387', '', 'Gavi', 'Spain',    '2004-08-05');
INSERT INTO player_stats VALUES ('ply387', 'tm12', 30, 'Midfielder', 173, 68, 'R');

INSERT INTO players VALUES ('ply388', 'Franck', 'Kessié', 'Ivory Coast',    '1996-12-19');
INSERT INTO player_stats VALUES ('ply388', 'tm12', 19, 'Midfielder', 183, 76, 'R');

INSERT INTO players VALUES ('ply389', 'Marc', 'Casadó', 'Spain',    '2003-09-14');
INSERT INTO player_stats VALUES ('ply389', 'tm12', 29, 'Midfielder', 172, 66, 'R');

INSERT INTO players VALUES ('ply390', 'Pablo', 'Torre', 'Spain',    '2003-04-03');
INSERT INTO player_stats VALUES ('ply390', '', 18, 'Midfielder', 173, 63, 'R');

INSERT INTO players VALUES ('ply391', '', 'Pedri', 'Spain',    '2002-11-25');
INSERT INTO player_stats VALUES ('ply391', 'tm12', 8, 'Midfielder', 174, 60, 'R');

INSERT INTO players VALUES ('ply392', 'Sergi', 'Roberto', 'Spain',    '1992-02-07');
INSERT INTO player_stats VALUES ('ply392', 'tm12', 20, 'Midfielder', 178, 68, 'R');

INSERT INTO players VALUES ('ply393', 'Ousmane', 'Dembélé', 'France',    '1997-05-15');
INSERT INTO player_stats VALUES ('ply393', 'tm12', 7, 'Forward', 178, 67, '');

INSERT INTO players VALUES ('ply394', 'Memphis', 'Depay', 'Netherlands',    '1994-02-13');
INSERT INTO player_stats VALUES ('ply394', 'tm12', 14, 'Forward', 176, 78, 'R');

INSERT INTO players VALUES ('ply395', 'Ansu', 'Fati', 'Spain',    '2002-10-31');
INSERT INTO player_stats VALUES ('ply395', 'tm12', 10, 'Forward', 178, 66, 'R');

INSERT INTO players VALUES ('ply396', 'Ferrán', 'Torres', 'Spain',    '2000-02-29');
INSERT INTO player_stats VALUES ('ply396', 'tm12', 11, 'Forward', 184, 77, 'R');

INSERT INTO players VALUES ('ply397', 'Ilias', 'Akhomach', 'Spain',    '2004-04-16');
INSERT INTO player_stats VALUES ('ply397', '', 30, 'Forward', 175, 70, 'L');

INSERT INTO players VALUES ('ply398', 'Robert', 'Lewandowski', 'Poland',    '1988-08-21');
INSERT INTO player_stats VALUES ('ply398', 'tm12', 9, 'Forward', 185, 81, 'R');

INSERT INTO players VALUES ('ply399', '', 'Raphinha', 'Brazil',    '1996-12-14');
INSERT INTO player_stats VALUES ('ply399', 'tm12', 22, 'Forward', 175, 68, 'L');

INSERT INTO players VALUES ('ply400', 'Iván', 'Torres', 'Spain',    '1978-05-26');
INSERT INTO player_stats VALUES ('ply400', 'tm12', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply401', 'Cláudio', 'Ramos', 'Portugal',    '1991-11-16');
INSERT INTO player_stats VALUES ('ply401', 'tm13', 14, 'Goalkeeper', 183, 83, 'R');

INSERT INTO players VALUES ('ply402', 'Diogo', 'Costa', 'Portugal',    '1999-09-19');
INSERT INTO player_stats VALUES ('ply402', 'tm13', 99, 'Goalkeeper', 186, 80, 'R');

INSERT INTO players VALUES ('ply403', '', 'Samuel', 'Brazil',    '1994-03-29');
INSERT INTO player_stats VALUES ('ply403', 'tm13', NULL, 'Goalkeeper', 188, 80, 'R');

INSERT INTO players VALUES ('ply404', 'David', 'Carmo', 'Portugal',    '1999-07-19');
INSERT INTO player_stats VALUES ('ply404', 'tm13', 4, 'Defender', 196, 89, 'L');

INSERT INTO players VALUES ('ply405', 'Fábio', 'Cardoso', 'Portugal',    '1994-04-19');
INSERT INTO player_stats VALUES ('ply405', 'tm13', 2, 'Defender', 187, 79, 'R');

INSERT INTO players VALUES ('ply406', '', 'Hulk', 'Brazil',    '1999-04-30');
INSERT INTO player_stats VALUES ('ply406', 'tm13', 75, 'Defender', 179, 75, 'L');

INSERT INTO players VALUES ('ply407', 'João', 'Marcelo', 'Brazil',    '2000-06-13');
INSERT INTO player_stats VALUES ('ply407', '', 43, 'Defender', 189, 82, 'R');

INSERT INTO players VALUES ('ply408', 'João', 'Mário', 'Portugal',    '2000-01-03');
INSERT INTO player_stats VALUES ('ply408', 'tm13', 23, 'Defender', 179, 66, '');

INSERT INTO players VALUES ('ply409', 'João', 'Mendes', 'Portugal',    '2000-04-13');
INSERT INTO player_stats VALUES ('ply409', 'tm13', 55, 'Defender', 179, 66, 'L');

INSERT INTO players VALUES ('ply410', '', 'Marcano', 'Spain',    '1987-06-23');
INSERT INTO player_stats VALUES ('ply410', 'tm13', 5, 'Defender', 189, 79, 'L');

INSERT INTO players VALUES ('ply411', '', 'Pepe', 'Portugal',    '1983-02-26');
INSERT INTO player_stats VALUES ('ply411', 'tm13', 3, 'Defender', 187, 81, 'R');

INSERT INTO players VALUES ('ply412', 'Romain', 'Correia', 'Portugal',    '1999-09-06');
INSERT INTO player_stats VALUES ('ply412', 'tm13', 44, 'Defender', 187, 78, 'R');

INSERT INTO players VALUES ('ply413', 'Zaidu', 'Sanusi', 'Nigeria',    '1997-06-13');
INSERT INTO player_stats VALUES ('ply413', 'tm13', 12, 'Defender', 182, 71, 'L');

INSERT INTO players VALUES ('ply414', '', 'Wendell', 'Brazil',    '1993-07-20');
INSERT INTO player_stats VALUES ('ply414', 'tm13', 22, 'Defender', 178, 72, 'L');

INSERT INTO players VALUES ('ply415', 'Wilson', 'Manafá', 'Portugal',    '1994-07-23');
INSERT INTO player_stats VALUES ('ply415', 'tm13', 18, 'Defender', 177, 69, 'R');

INSERT INTO players VALUES ('ply416', 'Zé', 'Pedro', 'Portugal',    '1997-06-06');
INSERT INTO player_stats VALUES ('ply416', 'tm13', 97, 'Defender', 187, 75, 'R');

INSERT INTO players VALUES ('ply417', 'André', 'Franco', 'Portugal',    '1998-04-12');
INSERT INTO player_stats VALUES ('ply417', 'tm13', 20, 'Midfielder', 177, 70, 'L');

INSERT INTO players VALUES ('ply418', 'Bernardo', 'Folha', 'Portugal',    '2002-03-23');
INSERT INTO player_stats VALUES ('ply418', '', 87, 'Midfielder', 177, 73, 'R');

INSERT INTO players VALUES ('ply419', 'Bruno', 'Costa', 'Portugal',    '1997-04-19');
INSERT INTO player_stats VALUES ('ply419', 'tm13', 28, 'Midfielder', 174, 65, 'R');

INSERT INTO players VALUES ('ply420', 'Stephen', 'Eustáquio', 'Canada',    '1996-12-21');
INSERT INTO player_stats VALUES ('ply420', 'tm13', 46, 'Midfielder', 177, 68, 'R');

INSERT INTO players VALUES ('ply421', 'Marko', 'Grujić', 'Serbia',    '1996-04-13');
INSERT INTO player_stats VALUES ('ply421', 'tm13', 16, 'Midfielder', 191, 86, 'R');

INSERT INTO players VALUES ('ply422', '', 'Otávio', 'Brazil',    '1995-02-09');
INSERT INTO player_stats VALUES ('ply422', 'tm13', 25, 'Midfielder', 172, 71, 'R');

INSERT INTO players VALUES ('ply423', '', 'Pepê', 'Brazil',    '1997-02-24');
INSERT INTO player_stats VALUES ('ply423', 'tm13', 11, 'Midfielder', 175, 68, 'R');

INSERT INTO players VALUES ('ply424', 'Mateus', 'Uribe', 'Colombia',    '1991-03-21');
INSERT INTO player_stats VALUES ('ply424', 'tm13', 8, 'Midfielder', 182, 76, 'R');

INSERT INTO players VALUES ('ply425', '', 'Evanilson', 'Brazil',    '1999-10-06');
INSERT INTO player_stats VALUES ('ply425', 'tm13', 30, 'Forward', 180, 80, '');

INSERT INTO players VALUES ('ply426', 'Fernando', 'Andrade', 'Brazil',    '1993-01-08');
INSERT INTO player_stats VALUES ('ply426', 'tm13', 38, 'Forward', 182, 79, 'R');

INSERT INTO players VALUES ('ply427', 'Gabriel', 'Veron', 'Brazil',    '2002-09-03');
INSERT INTO player_stats VALUES ('ply427', 'tm13', 7, 'Forward', 176, 75, 'R');

INSERT INTO players VALUES ('ply428', '', 'Galeno', 'Brazil',    '1997-10-21');
INSERT INTO player_stats VALUES ('ply428', 'tm13', 13, 'Forward', 179, 65, 'R');

INSERT INTO players VALUES ('ply429', 'Gonçalo', 'Borges', 'Portugal',    '2001-03-29');
INSERT INTO player_stats VALUES ('ply429', 'tm13', 70, 'Forward', 184, 76, 'R');

INSERT INTO players VALUES ('ply430', 'Danny', 'Loader', 'England',    '2000-08-28');
INSERT INTO player_stats VALUES ('ply430', 'tm13', 19, 'Forward', 182, 74, 'R');

INSERT INTO players VALUES ('ply431', 'Rodrigo', 'Conceição', 'Portugal',    '2000-01-02');
INSERT INTO player_stats VALUES ('ply431', 'tm13', 17, 'Forward', 175, 65, 'R');

INSERT INTO players VALUES ('ply432', 'Mehdi', 'Taremi', 'Iran',    '1992-07-18');
INSERT INTO player_stats VALUES ('ply432', 'tm13', 9, 'Forward', 187, 82, 'R');

INSERT INTO players VALUES ('ply433', 'Toni', 'Martínez', 'Spain',    '1997-06-30');
INSERT INTO player_stats VALUES ('ply433', 'tm13', 29, 'Forward', 187, 84, 'R');

INSERT INTO players VALUES ('ply434', 'Vedran', 'Runje', 'Croatia',    '1976-02-10');
INSERT INTO player_stats VALUES ('ply434', 'tm13', NULL, 'Goalkeeping', 184, 85, 'R');

INSERT INTO players VALUES ('ply435', 'Razak', 'Abalora', 'Ghana',    '1996-09-04');
INSERT INTO player_stats VALUES ('ply435', 'tm14', 40, 'Goalkeeper', 194, NULL, 'R');

INSERT INTO players VALUES ('ply436', 'Dumitru', 'Celeadnic', 'Moldova',    '1992-04-23');
INSERT INTO player_stats VALUES ('ply436', 'tm14', 1, 'Goalkeeper', 192, 87, 'L');

INSERT INTO players VALUES ('ply437', 'Roman', 'Dumenco', 'Moldova',    '2004-07-30');
INSERT INTO player_stats VALUES ('ply437', 'tm14', 25, 'Goalkeeper', 185, NULL, '');

INSERT INTO players VALUES ('ply438', 'Maksim', 'Koval', 'Ukraine',    '1992-12-09');
INSERT INTO player_stats VALUES ('ply438', 'tm14', 35, 'Goalkeeper', 188, 87, 'R');

INSERT INTO players VALUES ('ply439', 'Serghei', 'Paşcenco', 'Moldova',    '1982-12-18');
INSERT INTO player_stats VALUES ('ply439', 'tm14', 33, 'Goalkeeper', 185, 70, 'R');

INSERT INTO players VALUES ('ply440', 'Serafim', 'Cojocari', 'Moldova',    '2001-01-07');
INSERT INTO player_stats VALUES ('ply440', 'tm14', 19, 'Defender', 180, NULL, '');

INSERT INTO players VALUES ('ply441', 'Stefanos', 'Evangelou', 'Greece',    '1998-05-12');
INSERT INTO player_stats VALUES ('ply441', 'tm14', 41, 'Defender', 185, 75, 'R');

INSERT INTO players VALUES ('ply442', 'Adrian', 'Hatman', 'Moldova',    '2003-01-05');
INSERT INTO player_stats VALUES ('ply442', 'tm14', NULL, 'Defender', NULL, NULL, '');

INSERT INTO players VALUES ('ply443', '', 'Heron', 'Brazil',    '2000-08-17');
INSERT INTO player_stats VALUES ('ply443', 'tm14', 4, 'Defender', 186, NULL, 'L');

INSERT INTO players VALUES ('ply444', 'Danila', 'Ignatov', 'Moldova',    '2001-06-19');
INSERT INTO player_stats VALUES ('ply444', 'tm14', 29, 'Defender', 190, NULL, '');

INSERT INTO players VALUES ('ply445', 'Keston', 'Julien', 'Trinidad & Tobago',    '1998-10-26');
INSERT INTO player_stats VALUES ('ply445', 'tm14', 16, 'Defender', 181, 79, 'L');

INSERT INTO players VALUES ('ply446', 'Gaby', 'Kiki', 'Cameroon',    '1995-02-15');
INSERT INTO player_stats VALUES ('ply446', 'tm14', 15, 'Defender', 194, 81, 'R');

INSERT INTO players VALUES ('ply447', 'Patrick', 'Kpozo', 'Ghana',    '1997-07-15');
INSERT INTO player_stats VALUES ('ply447', 'tm14', 2, 'Defender', 180, 77, 'L');

INSERT INTO players VALUES ('ply448', 'Stjepan', 'Radeljić', 'Bosnia-Herzegovina',    '1997-09-05');
INSERT INTO player_stats VALUES ('ply448', 'tm14', 6, 'Defender', 198, 84, 'L');

INSERT INTO players VALUES ('ply449', 'Renan', 'Guedes', 'Brazil',    '1998-01-19');
INSERT INTO player_stats VALUES ('ply449', 'tm14', 42, 'Defender', 177, 69, 'R');

INSERT INTO players VALUES ('ply450', 'Armel', 'Zohouri', 'Ivory Coast',    '2001-04-05');
INSERT INTO player_stats VALUES ('ply450', 'tm14', 20, 'Defender', 176, 69, 'R');

INSERT INTO players VALUES ('ply451', 'Edmund', 'Addo', 'Ghana',    '2000-05-17');
INSERT INTO player_stats VALUES ('ply451', 'tm14', 21, 'Midfielder', 178, 76, 'R');

INSERT INTO players VALUES ('ply452', 'Steve', 'Ambri', 'Guinea-Bissau',    '1997-08-12');
INSERT INTO player_stats VALUES ('ply452', 'tm14', 70, 'Midfielder', 178, 71, 'L');

INSERT INTO players VALUES ('ply453', 'Cédric', 'Badolo', 'Burkina Faso',    '1998-11-04');
INSERT INTO player_stats VALUES ('ply453', 'tm14', 10, 'Midfielder', 172, 68, 'R');

INSERT INTO players VALUES ('ply454', 'Giannis', 'Botos', 'Greece',    '2000-12-20');
INSERT INTO player_stats VALUES ('ply454', 'tm14', 30, 'Midfielder', 172, 69, 'R');

INSERT INTO players VALUES ('ply455', 'Mouhamed', 'Diop', 'Senegal',    '2000-09-30');
INSERT INTO player_stats VALUES ('ply455', '', 28, 'Midfielder', 182, NULL, 'R');

INSERT INTO players VALUES ('ply456', 'Eugeniu', 'Gliga', 'Moldova',    '2001-01-30');
INSERT INTO player_stats VALUES ('ply456', 'tm14', 24, 'Midfielder', 171, NULL, '');

INSERT INTO players VALUES ('ply457', 'Moussa', 'Kyabou', 'Mali',    '1998-04-18');
INSERT INTO player_stats VALUES ('ply457', 'tm14', 18, 'Midfielder', 180, NULL, 'R');

INSERT INTO players VALUES ('ply458', 'Regi', 'Lushkja', 'Albania',    '1996-05-17');
INSERT INTO player_stats VALUES ('ply458', 'tm14', 22, 'Midfielder', 184, NULL, 'R');

INSERT INTO players VALUES ('ply459', 'Abdoul', 'Moumouni', 'Niger',    '2002-08-07');
INSERT INTO player_stats VALUES ('ply459', 'tm14', 12, 'Midfielder', 185, 77, '');

INSERT INTO players VALUES ('ply460', 'Charles', 'Petro', 'Malawi',    '2001-02-08');
INSERT INTO player_stats VALUES ('ply460', 'tm14', 3, 'Midfielder', 173, NULL, 'R');

INSERT INTO players VALUES ('ply461', 'Mudasiru', 'Salifu', 'Ghana',    '1997-04-01');
INSERT INTO player_stats VALUES ('ply461', 'tm14', 17, 'Midfielder', 177, NULL, '');

INSERT INTO players VALUES ('ply462', 'Danil', 'Ankudinov', 'Kazakhstan',    '2003-07-31');
INSERT INTO player_stats VALUES ('ply462', 'tm14', 23, 'Forward', 188, NULL, '');

INSERT INTO players VALUES ('ply463', 'Iyayi', 'Atiemwen', 'Nigeria',    '1996-01-24');
INSERT INTO player_stats VALUES ('ply463', 'tm14', 80, 'Forward', 180, 76, 'R');

INSERT INTO players VALUES ('ply464', 'Felipe', 'Vizeu', 'Brazil',    '1997-03-12');
INSERT INTO player_stats VALUES ('ply464', 'tm14', 11, 'Forward', 184, 83, 'L');

INSERT INTO players VALUES ('ply465', 'Abou', 'Ouattara', 'Burkina Faso',    '1999-12-26');
INSERT INTO player_stats VALUES ('ply465', 'tm14', 7, 'Forward', 177, 70, 'R');

INSERT INTO players VALUES ('ply466', '', 'Pernambuco', 'Brazil',    '1998-04-28');
INSERT INTO player_stats VALUES ('ply466', 'tm14', 28, 'Forward', 187, 77, 'L');

INSERT INTO players VALUES ('ply467', 'Ibrahim', 'Rasheed', 'Nigeria',    '1999-05-09');
INSERT INTO player_stats VALUES ('ply467', 'tm14', 61, 'Forward', 186, NULL, '');

INSERT INTO players VALUES ('ply468', 'Kay', 'Tejan', 'Netherlands',    '1997-02-03');
INSERT INTO player_stats VALUES ('ply468', 'tm14', 9, 'Forward', 180, NULL, 'L');

INSERT INTO players VALUES ('ply469', 'Nikolaos', 'Botis', 'Greece',    '2004-03-31');
INSERT INTO player_stats VALUES ('ply469', 'tm15', 40, 'Goalkeeper', 191, NULL, '');

INSERT INTO players VALUES ('ply470', 'Alex', 'Cordaz', 'Italy',    '1983-01-01');
INSERT INTO player_stats VALUES ('ply470', 'tm15', 21, 'Goalkeeper', 188, 83, 'R');

INSERT INTO players VALUES ('ply471', 'Gabriel', 'Brazão', 'Brazil',    '2000-10-05');
INSERT INTO player_stats VALUES ('ply471', 'tm15', NULL, 'Goalkeeper', 192, 75, 'R');

INSERT INTO players VALUES ('ply472', 'Samir', 'Handanovič', 'Slovenia',    '1984-07-14');
INSERT INTO player_stats VALUES ('ply472', 'tm15', 1, 'Goalkeeper', 193, 82, 'R');

INSERT INTO players VALUES ('ply473', 'André', 'Onana', 'Cameroon',    '1996-04-02');
INSERT INTO player_stats VALUES ('ply473', 'tm15', 24, 'Goalkeeper', 190, 93, 'R');

INSERT INTO players VALUES ('ply474', 'Francesco', 'Acerbi', 'Italy',    '1988-02-10');
INSERT INTO player_stats VALUES ('ply474', 'tm15', 15, 'Defender', 192, 90, 'L');

INSERT INTO players VALUES ('ply475', 'Alessandro', 'Bastoni', 'Italy',    '1999-04-13');
INSERT INTO player_stats VALUES ('ply475', 'tm15', 95, 'Defender', 190, 75, 'L');

INSERT INTO players VALUES ('ply476', 'Raoul', 'Bellanova', 'Italy',    '2000-05-17');
INSERT INTO player_stats VALUES ('ply476', 'tm15', 12, 'Defender', 188, 78, 'R');

INSERT INTO players VALUES ('ply477', 'Danilo', 'D''Ambrosio', 'Italy',    '1988-09-09');
INSERT INTO player_stats VALUES ('ply477', 'tm15', 33, 'Defender', 180, 75, 'R');

INSERT INTO players VALUES ('ply478', '', 'Dalbert', 'Brazil',    '1993-09-08');
INSERT INTO player_stats VALUES ('ply478', 'tm15', NULL, 'Defender', 182, 70, 'L');

INSERT INTO players VALUES ('ply479', 'Matteo', 'Darmian', 'Italy',    '1989-12-02');
INSERT INTO player_stats VALUES ('ply479', 'tm15', 36, 'Defender', 182, 70, 'R');

INSERT INTO players VALUES ('ply480', 'Stefan de', 'Vrij', 'Netherlands',    '1992-02-05');
INSERT INTO player_stats VALUES ('ply480', 'tm15', 6, 'Defender', 189, 78, 'R');

INSERT INTO players VALUES ('ply481', 'Federico', 'Dimarco', 'Italy',    '1997-11-10');
INSERT INTO player_stats VALUES ('ply481', 'tm15', 32, 'Defender', 175, 75, 'L');

INSERT INTO players VALUES ('ply482', 'Denzel', 'Dumfries', 'Netherlands',    '1996-04-18');
INSERT INTO player_stats VALUES ('ply482', 'tm15', 2, 'Defender', 189, 81, 'R');

INSERT INTO players VALUES ('ply483', 'Alessandro', 'Fontanarosa', 'Italy',    '2003-02-07');
INSERT INTO player_stats VALUES ('ply483', 'tm15', 47, 'Defender', NULL, NULL, '');

INSERT INTO players VALUES ('ply484', 'Milan', 'Škriniar', 'Slovakia',    '1995-02-11');
INSERT INTO player_stats VALUES ('ply484', 'tm15', 37, 'Defender', 188, 82, 'R');

INSERT INTO players VALUES ('ply485', 'Mattia', 'Zanotti', 'Italy',    '2003-01-11');
INSERT INTO player_stats VALUES ('ply485', 'tm15', 46, 'Defender', 177, 65, 'R');

INSERT INTO players VALUES ('ply486', 'Kristjan', 'Asllani', 'Albania',    '2002-03-09');
INSERT INTO player_stats VALUES ('ply486', 'tm15', 14, 'Midfielder', 175, 68, 'R');

INSERT INTO players VALUES ('ply487', 'Nicolò', 'Barella', 'Italy',    '1997-02-07');
INSERT INTO player_stats VALUES ('ply487', 'tm15', 23, 'Midfielder', 172, 68, 'R');

INSERT INTO players VALUES ('ply488', 'Marcelo', 'Brozović', 'Croatia',    '1992-11-16');
INSERT INTO player_stats VALUES ('ply488', 'tm15', 77, 'Midfielder', 181, 68, '');

INSERT INTO players VALUES ('ply489', 'Hakan', 'Çalhanoğlu', 'Turkey',    '1994-02-08');
INSERT INTO player_stats VALUES ('ply489', 'tm15', 20, 'Midfielder', 178, 76, 'R');

INSERT INTO players VALUES ('ply490', 'Valentin', 'Carboni', 'Italy',    '2005-03-05');
INSERT INTO player_stats VALUES ('ply490', 'tm15', 45, 'Midfielder', NULL, NULL, 'L');

INSERT INTO players VALUES ('ply491', 'Roberto', 'Gagliardini', 'Italy',    '1994-04-07');
INSERT INTO player_stats VALUES ('ply491', 'tm15', 5, 'Midfielder', 188, 77, 'R');

INSERT INTO players VALUES ('ply492', 'Jacopo', 'Gianelli', 'Italy',    '2001-03-04');
INSERT INTO player_stats VALUES ('ply492', 'tm15', NULL, 'Midfielder', 184, 73, 'R');

INSERT INTO players VALUES ('ply493', 'Robin', 'Gosens', 'Germany',    '1994-07-05');
INSERT INTO player_stats VALUES ('ply493', 'tm15', 8, 'Midfielder', 184, 76, 'L');

INSERT INTO players VALUES ('ply494', 'Henrikh', 'Mkhitaryan', 'Armenia',    '1989-01-21');
INSERT INTO player_stats VALUES ('ply494', 'tm15', 22, 'Midfielder', 178, 75, '');

INSERT INTO players VALUES ('ply495', 'Aleksandar', 'Stanković', 'Serbia',    '2005-08-03');
INSERT INTO player_stats VALUES ('ply495', 'tm15', 50, 'Midfielder', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply496', 'Joaquín', 'Correa', 'Argentina',    '1994-08-13');
INSERT INTO player_stats VALUES ('ply496', 'tm15', 11, 'Forward', 188, 75, 'R');

INSERT INTO players VALUES ('ply497', 'Edin', 'Džeko', 'Bosnia-Herzegovina',    '1986-03-17');
INSERT INTO player_stats VALUES ('ply497', 'tm15', 9, 'Forward', 193, 80, 'R');

INSERT INTO players VALUES ('ply498', 'Romelu', 'Lukaku', 'Belgium',    '1993-05-13');
INSERT INTO player_stats VALUES ('ply498', 'tm15', 90, 'Forward', 192, 93, 'L');

INSERT INTO players VALUES ('ply499', 'Lautaro', 'Martínez', 'Argentina',    '1997-08-22');
INSERT INTO player_stats VALUES ('ply499', 'tm15', 10, 'Forward', 174, 72, 'R');

INSERT INTO players VALUES ('ply500', 'Adriano', 'Bonaiuti', 'Italy',    '1967-05-07');
INSERT INTO player_stats VALUES ('ply500', 'tm15', NULL, 'Goalkeeping', 181, 74, 'R');

INSERT INTO players VALUES ('ply501', 'Giovanni', 'Garofani', 'Italy',    '2002-10-20');
INSERT INTO player_stats VALUES ('ply501', 'tm16', 41, 'Goalkeeper', 188, 79, 'R');

INSERT INTO players VALUES ('ply502', 'Mattia', 'Perin', 'Italy',    '1992-11-10');
INSERT INTO player_stats VALUES ('ply502', 'tm16', 36, 'Goalkeeper', 188, 77, 'R');

INSERT INTO players VALUES ('ply503', 'Carlo', 'Pinsoglio', 'Italy',    '1990-03-16');
INSERT INTO player_stats VALUES ('ply503', 'tm16', 23, 'Goalkeeper', 194, 85, 'L');

INSERT INTO players VALUES ('ply504', 'Wojciech', 'Szczęsny', 'Poland',    '1990-04-18');
INSERT INTO player_stats VALUES ('ply504', 'tm16', 1, 'Goalkeeper', 195, 90, 'R');

INSERT INTO players VALUES ('ply505', 'Alex', 'Sandro', 'Brazil',    '1991-01-26');
INSERT INTO player_stats VALUES ('ply505', 'tm16', 12, 'Defender', 180, 80, 'L');

INSERT INTO players VALUES ('ply506', 'Tommaso', 'Barbieri', 'Italy',    '2002-08-26');
INSERT INTO player_stats VALUES ('ply506', '', 26, 'Defender', 181, NULL, 'R');

INSERT INTO players VALUES ('ply507', 'Leonardo', 'Bonucci', 'Italy',    '1987-05-01');
INSERT INTO player_stats VALUES ('ply507', 'tm16', 19, 'Defender', 190, 85, 'R');

INSERT INTO players VALUES ('ply508', '', 'Bremer', 'Brazil',    '1997-03-18');
INSERT INTO player_stats VALUES ('ply508', 'tm16', 3, 'Defender', 188, 82, 'R');

INSERT INTO players VALUES ('ply509', 'Juan', 'Cuadrado', 'Colombia',    '1988-05-26');
INSERT INTO player_stats VALUES ('ply509', 'tm16', 11, 'Defender', 176, 66, 'R');

INSERT INTO players VALUES ('ply510', '', 'Danilo', 'Brazil',    '1991-07-15');
INSERT INTO player_stats VALUES ('ply510', 'tm16', 6, 'Defender', 184, 78, 'R');

INSERT INTO players VALUES ('ply511', 'Mattia De', 'Sciglio', 'Italy',    '1992-10-20');
INSERT INTO player_stats VALUES ('ply511', 'tm16', 2, 'Defender', 182, 78, 'R');

INSERT INTO players VALUES ('ply512', 'Federico', 'Gatti', 'Italy',    '1998-06-24');
INSERT INTO player_stats VALUES ('ply512', 'tm16', 15, 'Defender', 190, 84, 'R');

INSERT INTO players VALUES ('ply513', 'Daniele', 'Rugani', 'Italy',    '1994-07-29');
INSERT INTO player_stats VALUES ('ply513', 'tm16', 24, 'Defender', 190, 84, 'R');

INSERT INTO players VALUES ('ply514', 'Enzo', 'Barrenechea', 'Argentina',    '2001-05-22');
INSERT INTO player_stats VALUES ('ply514', 'tm16', 45, 'Midfielder', 186, 81, 'L');

INSERT INTO players VALUES ('ply515', 'Nicolò', 'Fagioli', 'Italy',    '2001-02-12');
INSERT INTO player_stats VALUES ('ply515', 'tm16', 44, 'Midfielder', 178, 70, 'R');

INSERT INTO players VALUES ('ply516', 'Samuel', 'Iling', 'England',    '2003-10-04');
INSERT INTO player_stats VALUES ('ply516', 'tm16', 43, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply517', 'Filip', 'Kostić', 'Serbia',    '1992-11-01');
INSERT INTO player_stats VALUES ('ply517', 'tm16', 17, 'Midfielder', 184, 82, 'L');

INSERT INTO players VALUES ('ply518', 'Manuel', 'Locatelli', 'Italy',    '1998-01-08');
INSERT INTO player_stats VALUES ('ply518', 'tm16', 5, 'Midfielder', 186, 75, 'R');

INSERT INTO players VALUES ('ply519', 'Weston', 'McKennie', 'USA',    '1998-08-28');
INSERT INTO player_stats VALUES ('ply519', 'tm16', 8, 'Midfielder', 183, 84, 'R');

INSERT INTO players VALUES ('ply520', 'Fabio', 'Miretti', 'Italy',    '2003-08-03');
INSERT INTO player_stats VALUES ('ply520', 'tm16', 20, 'Midfielder', 179, 65, 'R');

INSERT INTO players VALUES ('ply521', 'Leandro', 'Paredes', 'Argentina',    '1994-06-29');
INSERT INTO player_stats VALUES ('ply521', 'tm16', 32, 'Midfielder', 180, 75, 'R');

INSERT INTO players VALUES ('ply522', 'Paul', 'Pogba', 'France',    '1993-03-15');
INSERT INTO player_stats VALUES ('ply522', 'tm16', 10, 'Midfielder', 191, 84, '');

INSERT INTO players VALUES ('ply523', 'Adrien', 'Rabiot', 'France',    '1995-04-03');
INSERT INTO player_stats VALUES ('ply523', 'tm16', 25, 'Midfielder', 191, 80, 'L');

INSERT INTO players VALUES ('ply524', 'Marley', 'Aké', 'France',    '2001-01-05');
INSERT INTO player_stats VALUES ('ply524', 'tm16', 33, 'Forward', 177, 68, 'R');

INSERT INTO players VALUES ('ply525', 'Federico', 'Chiesa', 'Italy',    '1997-10-25');
INSERT INTO player_stats VALUES ('ply525', 'tm16', 7, 'Forward', 175, 70, 'R');

INSERT INTO players VALUES ('ply526', 'Cosimo Da', 'Graca', 'Italy',    '2002-05-01');
INSERT INTO player_stats VALUES ('ply526', 'tm16', 40, 'Forward', 185, 74, 'R');

INSERT INTO players VALUES ('ply527', 'Ángel Di', 'María', 'Argentina',    '1988-02-14');
INSERT INTO player_stats VALUES ('ply527', 'tm16', 22, 'Forward', 180, 75, 'L');

INSERT INTO players VALUES ('ply528', 'Kaio', 'Jorge', 'Brazil',    '2002-01-24');
INSERT INTO player_stats VALUES ('ply528', 'tm16', 21, 'Forward', 182, 71, 'R');

INSERT INTO players VALUES ('ply529', 'Moise', 'Kean', 'Italy',    '2000-02-28');
INSERT INTO player_stats VALUES ('ply529', 'tm16', 18, 'Forward', 182, 72, 'R');

INSERT INTO players VALUES ('ply530', 'Arkadiusz', 'Milik', 'Poland',    '1994-02-28');
INSERT INTO player_stats VALUES ('ply530', 'tm16', 14, 'Forward', 186, 78, 'L');

INSERT INTO players VALUES ('ply531', 'Matías', 'Soulé', 'Argentina',    '2003-04-15');
INSERT INTO player_stats VALUES ('ply531', 'tm16', 30, 'Forward', 176, 71, 'L');

INSERT INTO players VALUES ('ply532', 'Dušan', 'Vlahović', 'Serbia',    '2000-01-28');
INSERT INTO player_stats VALUES ('ply532', 'tm16', 9, 'Forward', 190, 75, 'L');

INSERT INTO players VALUES ('ply533', 'Lucas', 'Chevalier', 'France',    '2001-11-06');
INSERT INTO player_stats VALUES ('ply533', 'tm17', 30, 'Goalkeeper', 192, 78, 'R');

INSERT INTO players VALUES ('ply534', 'Adam', 'Jakubech', 'Slovakia',    '1997-01-02');
INSERT INTO player_stats VALUES ('ply534', 'tm17', 16, 'Goalkeeper', 188, 85, 'R');

INSERT INTO players VALUES ('ply535', 'Léo', 'Jardim', 'Brazil',    '1995-03-20');
INSERT INTO player_stats VALUES ('ply535', 'tm17', 1, 'Goalkeeper', 188, 82, 'R');

INSERT INTO players VALUES ('ply536', 'Alexsandro', 'Ribeiro', 'Brazil',    '1999-08-09');
INSERT INTO player_stats VALUES ('ply536', 'tm17', 4, 'Defender', 192, 90, 'R');

INSERT INTO players VALUES ('ply537', 'Bafodé', 'Diakité', 'France',    '2001-01-06');
INSERT INTO player_stats VALUES ('ply537', 'tm17', 18, 'Defender', 185, 82, 'R');

INSERT INTO players VALUES ('ply538', 'Gabriel', 'Gudmundsson', 'Sweden',    '1999-04-29');
INSERT INTO player_stats VALUES ('ply538', 'tm17', 5, 'Defender', 181, 74, 'L');

INSERT INTO players VALUES ('ply539', '', 'Ismaily', 'Brazil',    '1990-01-11');
INSERT INTO player_stats VALUES ('ply539', 'tm17', 31, 'Defender', 177, 82, 'L');

INSERT INTO players VALUES ('ply540', 'José', 'Fonte', 'Portugal',    '1983-12-22');
INSERT INTO player_stats VALUES ('ply540', 'tm17', 6, 'Defender', 191, 81, 'R');

INSERT INTO players VALUES ('ply541', 'Tiago', 'Djaló', 'Portugal',    '2000-04-09');
INSERT INTO player_stats VALUES ('ply541', 'tm17', 3, 'Defender', 190, 82, 'R');

INSERT INTO players VALUES ('ply542', 'Leny', 'Yoro', 'France',    '2005-11-13');
INSERT INTO player_stats VALUES ('ply542', 'tm17', 15, 'Defender', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply543', 'Akim', 'Zedadka', 'France',    '1995-05-30');
INSERT INTO player_stats VALUES ('ply543', 'tm17', 13, 'Defender', 173, 70, 'R');

INSERT INTO players VALUES ('ply544', 'Benjamin', 'André', 'France',    '1990-08-03');
INSERT INTO player_stats VALUES ('ply544', 'tm17', 21, 'Midfielder', 180, 68, 'R');

INSERT INTO players VALUES ('ply545', 'André', 'Gomes', 'Portugal',    '1993-07-30');
INSERT INTO player_stats VALUES ('ply545', 'tm17', 28, 'Midfielder', 188, 84, 'R');

INSERT INTO players VALUES ('ply546', 'Carlos', 'Baleba', 'Cameroon',    '2004-01-03');
INSERT INTO player_stats VALUES ('ply546', 'tm17', 35, 'Midfielder', NULL, NULL, 'L');

INSERT INTO players VALUES ('ply547', 'Rémy', 'Cabella', 'France',    '1990-03-08');
INSERT INTO player_stats VALUES ('ply547', 'tm17', 17, 'Midfielder', 171, 68, 'R');

INSERT INTO players VALUES ('ply548', 'Angel', 'Gomes', 'England',    '2000-08-31');
INSERT INTO player_stats VALUES ('ply548', 'tm17', 20, 'Midfielder', 168, 56, 'R');

INSERT INTO players VALUES ('ply549', 'Jonas', 'Martin', 'France',    '1990-04-09');
INSERT INTO player_stats VALUES ('ply549', 'tm17', 8, 'Midfielder', 184, 77, 'R');

INSERT INTO players VALUES ('ply550', 'Ugo', 'Raghouber', 'France',    '2003-07-13');
INSERT INTO player_stats VALUES ('ply550', 'tm17', 12, 'Midfielder', 179, 62, 'L');

INSERT INTO players VALUES ('ply551', 'Jonathan', 'Bamba', 'France',    '1996-03-26');
INSERT INTO player_stats VALUES ('ply551', 'tm17', 7, 'Forward', 175, 67, 'R');

INSERT INTO players VALUES ('ply552', 'Mohamed', 'Bayo', 'Guinea',    '1998-06-04');
INSERT INTO player_stats VALUES ('ply552', 'tm17', 27, 'Forward', 188, 76, 'R');

INSERT INTO players VALUES ('ply553', 'Jonathan', 'David', 'Canada',    '2000-01-14');
INSERT INTO player_stats VALUES ('ply553', 'tm17', 9, 'Forward', 180, 70, '');

INSERT INTO players VALUES ('ply554', 'José', 'Bica', 'Portugal',    '2003-06-16');
INSERT INTO player_stats VALUES ('ply554', 'tm17', 39, 'Forward', 176, 66, 'R');

INSERT INTO players VALUES ('ply555', 'Isaac', 'Lihadji', 'France',    '2002-04-10');
INSERT INTO player_stats VALUES ('ply555', 'tm17', 19, 'Forward', 177, 70, 'L');

INSERT INTO players VALUES ('ply556', 'Adam', 'Ounas', 'Algeria',    '1996-11-11');
INSERT INTO player_stats VALUES ('ply556', 'tm17', 11, 'Forward', 172, 65, 'L');

INSERT INTO players VALUES ('ply557', 'Alan', 'Virginius', 'France',    '2003-01-03');
INSERT INTO player_stats VALUES ('ply557', 'tm17', 26, 'Forward', 175, 65, 'R');

INSERT INTO players VALUES ('ply558', 'Timothy', 'Weah', 'USA',    '2000-02-22');
INSERT INTO player_stats VALUES ('ply558', 'tm17', 22, 'Forward', 183, 66, 'R');

INSERT INTO players VALUES ('ply559', 'Edon', 'Zhegrova', 'Kosovo',    '1999-03-31');
INSERT INTO player_stats VALUES ('ply559', 'tm17', 23, 'Forward', 181, 72, 'L');

INSERT INTO players VALUES ('ply560', '', 'Adrián', 'Spain',    '1987-01-03');
INSERT INTO player_stats VALUES ('ply560', 'tm18', 13, 'Goalkeeper', 190, 89, 'R');

INSERT INTO players VALUES ('ply561', '', 'Alisson', 'Brazil',    '1992-10-02');
INSERT INTO player_stats VALUES ('ply561', 'tm18', 1, 'Goalkeeper', 191, 88, 'R');

INSERT INTO players VALUES ('ply562', 'Harvey', 'Davies', 'England',    '2003-09-03');
INSERT INTO player_stats VALUES ('ply562', '', NULL, 'Goalkeeper', 190, NULL, 'L');

INSERT INTO players VALUES ('ply563', 'Caoimhin', 'Kelleher', 'Ireland',    '1998-11-23');
INSERT INTO player_stats VALUES ('ply563', 'tm18', 62, 'Goalkeeper', 188, 74, 'R');

INSERT INTO players VALUES ('ply564', 'Trent', 'Alexander-Arnold', 'England',    '1998-10-07');
INSERT INTO player_stats VALUES ('ply564', 'tm18', 66, 'Defender', 180, 69, 'R');

INSERT INTO players VALUES ('ply565', 'Stefan', 'Bajčetić', 'Spain',    '2004-10-22');
INSERT INTO player_stats VALUES ('ply565', 'tm18', 43, 'Defender', 185, NULL, '');

INSERT INTO players VALUES ('ply566', 'Luke', 'Chambers', 'England',    '2004-06-24');
INSERT INTO player_stats VALUES ('ply566', 'tm18', 88, 'Defender', 181, NULL, 'L');

INSERT INTO players VALUES ('ply567', 'Joe', 'Gomez', 'England',    '1997-05-23');
INSERT INTO player_stats VALUES ('ply567', 'tm18', 2, 'Defender', 188, 77, 'R');

INSERT INTO players VALUES ('ply568', 'Ibrahima', 'Konaté', 'France',    '1999-05-25');
INSERT INTO player_stats VALUES ('ply568', 'tm18', 5, 'Defender', 194, 95, 'R');

INSERT INTO players VALUES ('ply569', 'Joel', 'Matip', 'Cameroon',    '1991-08-08');
INSERT INTO player_stats VALUES ('ply569', 'tm18', 32, 'Defender', 195, 89, 'R');

INSERT INTO players VALUES ('ply570', 'Nathaniel', 'Phillips', 'England',    '1997-03-21');
INSERT INTO player_stats VALUES ('ply570', 'tm18', 47, 'Defender', 190, 84, 'R');

INSERT INTO players VALUES ('ply571', 'Calvin', 'Ramsay', 'Scotland',    '2003-07-31');
INSERT INTO player_stats VALUES ('ply571', 'tm18', 22, 'Defender', 177, 68, 'R');

INSERT INTO players VALUES ('ply572', 'Andrew', 'Robertson', 'Scotland',    '1994-03-11');
INSERT INTO player_stats VALUES ('ply572', 'tm18', 26, 'Defender', 178, 64, 'L');

INSERT INTO players VALUES ('ply573', 'Kostas', 'Tsimikas', 'Greece',    '1996-05-12');
INSERT INTO player_stats VALUES ('ply573', 'tm18', 21, 'Defender', 179, 70, 'L');

INSERT INTO players VALUES ('ply574', 'Virgil van', 'Dijk', 'Netherlands',    '1991-07-08');
INSERT INTO player_stats VALUES ('ply574', 'tm18', 4, 'Defender', 193, 92, 'R');

INSERT INTO players VALUES ('ply575', '', 'Arthur', 'Brazil',    '1996-08-12');
INSERT INTO player_stats VALUES ('ply575', 'tm18', 29, 'Midfielder', 171, 73, 'R');

INSERT INTO players VALUES ('ply576', 'Harvey', 'Elliott', 'England',    '2003-04-04');
INSERT INTO player_stats VALUES ('ply576', 'tm18', 19, 'Midfielder', 170, 67, 'L');

INSERT INTO players VALUES ('ply577', '', 'Fabinho', 'Brazil',    '1993-10-23');
INSERT INTO player_stats VALUES ('ply577', 'tm18', 3, 'Midfielder', 188, 78, 'R');

INSERT INTO players VALUES ('ply578', 'Jordan', 'Henderson', 'England',    '1990-06-17');
INSERT INTO player_stats VALUES ('ply578', 'tm18', 14, 'Midfielder', 187, 80, 'R');

INSERT INTO players VALUES ('ply579', 'Curtis', 'Jones', 'England',    '2001-01-30');
INSERT INTO player_stats VALUES ('ply579', 'tm18', 17, 'Midfielder', 185, 75, 'R');

INSERT INTO players VALUES ('ply580', 'Naby', 'Keïta', 'Guinea',    '1995-02-10');
INSERT INTO player_stats VALUES ('ply580', 'tm18', 8, 'Midfielder', 172, 64, 'R');

INSERT INTO players VALUES ('ply581', 'James', 'Milner', 'England',    '1986-01-04');
INSERT INTO player_stats VALUES ('ply581', 'tm18', 7, 'Midfielder', 175, 70, 'R');

INSERT INTO players VALUES ('ply582', 'Alex', 'Oxlade-Chamberlain', 'England',    '1993-08-15');
INSERT INTO player_stats VALUES ('ply582', 'tm18', 15, 'Midfielder', 175, 70, 'R');

INSERT INTO players VALUES ('ply583', '', 'Thiago', 'Spain',    '1991-04-11');
INSERT INTO player_stats VALUES ('ply583', 'tm18', 6, 'Midfielder', 174, 70, 'R');

INSERT INTO players VALUES ('ply584', 'Bobby', 'Clark', 'England',    '2005-02-07');
INSERT INTO player_stats VALUES ('ply584', 'tm18', 50, 'Forward', 178, NULL, 'R');

INSERT INTO players VALUES ('ply585', 'Luis', 'Díaz', 'Colombia',    '1997-01-13');
INSERT INTO player_stats VALUES ('ply585', 'tm18', 23, 'Forward', 180, 73, 'R');

INSERT INTO players VALUES ('ply586', 'Diogo', 'Jota', 'Portugal',    '1996-12-04');
INSERT INTO player_stats VALUES ('ply586', 'tm18', 20, 'Forward', 178, 70, 'R');

INSERT INTO players VALUES ('ply587', 'Fabio', 'Carvalho', 'Portugal',    '2002-08-30');
INSERT INTO player_stats VALUES ('ply587', 'tm18', 28, 'Forward', 170, 63, 'R');

INSERT INTO players VALUES ('ply588', 'Darwin', 'Núñez', 'Uruguay',    '1999-06-24');
INSERT INTO player_stats VALUES ('ply588', 'tm18', 27, 'Forward', 187, 80, 'R');

INSERT INTO players VALUES ('ply589', 'Roberto', 'Firmino', 'Brazil',    '1991-10-02');
INSERT INTO player_stats VALUES ('ply589', 'tm18', 9, 'Forward', 181, 76, 'R');

INSERT INTO players VALUES ('ply590', 'Mo', 'Salah', 'Egypt',    '1992-06-15');
INSERT INTO player_stats VALUES ('ply590', 'tm18', 11, 'Forward', 175, 73, 'L');

INSERT INTO players VALUES ('ply591', 'John', 'Achterberg', 'Netherlands',    '1971-07-08');
INSERT INTO player_stats VALUES ('ply591', 'tm18', NULL, 'Goalkeeping', 189, 90, '');

INSERT INTO players VALUES ('ply592', 'Cláudio', 'Taffarel', 'Brazil',    '1966-05-08');
INSERT INTO player_stats VALUES ('ply592', 'tm18', NULL, 'Goalkeeping', 182, 80, '');

INSERT INTO players VALUES ('ply593', 'Jack', 'Robinson', 'England',  NULL);
INSERT INTO player_stats VALUES ('ply593', 'tm18', NULL, 'Goalkeeping', NULL, NULL, '');

INSERT INTO players VALUES ('ply594', 'Jordan', 'Fairclough', 'England',  NULL);
INSERT INTO player_stats VALUES ('ply594', 'tm18', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply595', 'John', 'Hill', 'England',  NULL);
INSERT INTO player_stats VALUES ('ply595', 'tm18', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply596', 'Andreas', 'Kornmayer', 'Germany',    '1974-09-21');
INSERT INTO player_stats VALUES ('ply596', 'tm18', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply597', 'Conall', 'Murtagh', 'Northern Ireland',    '1985-06-29');
INSERT INTO player_stats VALUES ('ply597', 'tm18', NULL, 'Fitness', 183, 75, 'R');

INSERT INTO players VALUES ('ply598', 'David', 'Rydings', 'England',  NULL);
INSERT INTO player_stats VALUES ('ply598', 'tm18', NULL, 'Rehab', NULL, NULL, '');

INSERT INTO players VALUES ('ply599', 'Andreas', 'Schlumberger', 'Germany',    '1966-07-23');
INSERT INTO player_stats VALUES ('ply599', 'tm18', NULL, 'Rehab', NULL, NULL, '');

INSERT INTO players VALUES ('ply600', 'Mark', 'Hulse', 'England',    '1971-09-06');
INSERT INTO player_stats VALUES ('ply600', 'tm18', NULL, 'Physical', NULL, NULL, '');

INSERT INTO players VALUES ('ply601', 'Thomas', 'Grønnemark', 'England',    '1975-12-12');
INSERT INTO player_stats VALUES ('ply601', 'tm18', NULL, 'Individual', NULL, NULL, '');

INSERT INTO players VALUES ('ply602', 'Angel', 'Vales', 'Spain',    '1967-02-01');
INSERT INTO player_stats VALUES ('ply602', 'tm18', NULL, 'Technique', NULL, NULL, '');

INSERT INTO players VALUES ('ply603', 'Vitor', 'Matos', 'England',  NULL);
INSERT INTO player_stats VALUES ('ply603', 'tm18', NULL, 'Special', NULL, NULL, '');

INSERT INTO players VALUES ('ply604', 'James', 'French', 'England',  NULL);
INSERT INTO player_stats VALUES ('ply604', 'tm18', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply605', 'Greg', 'Mathieson', 'England',  NULL);
INSERT INTO player_stats VALUES ('ply605', 'tm18', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply606', 'Daniel', 'Spearritt', 'England',  NULL);
INSERT INTO player_stats VALUES ('ply606', 'tm18', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply607', 'Viktor', 'Andersson', 'Sweden',    '2004-03-30');
INSERT INTO player_stats VALUES ('ply607', 'tm19', 39, 'Goalkeeper', 186, 76, '');

INSERT INTO players VALUES ('ply608', 'Johan', 'Dahlin', 'Sweden',    '1986-09-08');
INSERT INTO player_stats VALUES ('ply608', 'tm19', 27, 'Goalkeeper', 192, 94, 'R');

INSERT INTO players VALUES ('ply609', 'Ismael', 'Diawara', 'Mali',    '1994-11-11');
INSERT INTO player_stats VALUES ('ply609', '', NULL, 'Goalkeeper', 194, 97, 'R');

INSERT INTO players VALUES ('ply610', 'Melker', 'Ellborg', 'Sweden',    '2003-05-22');
INSERT INTO player_stats VALUES ('ply610', '', 1, 'Goalkeeper', 191, 84, '');

INSERT INTO players VALUES ('ply611', 'André Alvarez', 'Perez', 'Sweden',    '2005-03-23');
INSERT INTO player_stats VALUES ('ply611', 'tm19', 42, 'Defender', NULL, NULL, '');

INSERT INTO players VALUES ('ply612', 'Felix', 'Beijmo', 'Sweden',    '1998-01-31');
INSERT INTO player_stats VALUES ('ply612', 'tm19', 14, 'Defender', 186, 82, 'R');

INSERT INTO players VALUES ('ply613', 'Matěj', 'Chaluš', 'Czech Republic',    '1998-02-02');
INSERT INTO player_stats VALUES ('ply613', 'tm19', 23, 'Defender', 190, 89, 'R');

INSERT INTO players VALUES ('ply614', 'Dennis', 'Hadžikadunić', 'Bosnia-Herzegovina',    '1998-07-09');
INSERT INTO player_stats VALUES ('ply614', 'tm19', 21, 'Defender', 186, 81, 'R');

INSERT INTO players VALUES ('ply615', 'Jonas', 'Knudsen', 'Denmark',    '1992-09-16');
INSERT INTO player_stats VALUES ('ply615', 'tm19', 3, 'Defender', 187, 72, 'L');

INSERT INTO players VALUES ('ply616', 'Niklas', 'Moisander', 'Finland',    '1985-09-29');
INSERT INTO player_stats VALUES ('ply616', 'tm19', 4, 'Defender', 183, 77, 'L');

INSERT INTO players VALUES ('ply617', 'Lasse', 'Nielsen', 'Denmark',    '1988-01-08');
INSERT INTO player_stats VALUES ('ply617', 'tm19', 24, 'Defender', 185, 82, 'R');

INSERT INTO players VALUES ('ply618', 'Martin', 'Olsson', 'Sweden',    '1988-05-17');
INSERT INTO player_stats VALUES ('ply618', 'tm19', 13, 'Defender', 180, 78, 'L');

INSERT INTO players VALUES ('ply619', 'Raymond', 'Adjei', 'Sweden',    '2004-02-10');
INSERT INTO player_stats VALUES ('ply619', 'tm19', 44, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply620', 'Jo Inge', 'Berget', 'Norway',    '1990-09-11');
INSERT INTO player_stats VALUES ('ply620', 'tm19', 32, 'Midfielder', 186, 81, 'R');

INSERT INTO players VALUES ('ply621', 'Anders', 'Christiansen', 'Denmark',    '1990-06-08');
INSERT INTO player_stats VALUES ('ply621', 'tm19', 10, 'Midfielder', 175, 68, 'R');

INSERT INTO players VALUES ('ply622', 'Romain', 'Gall', 'USA',    '1995-01-31');
INSERT INTO player_stats VALUES ('ply622', '', NULL, 'Midfielder', 176, 72, '');

INSERT INTO players VALUES ('ply623', 'Hugo', 'Larsson', 'Sweden',    '2004-06-27');
INSERT INTO player_stats VALUES ('ply623', 'tm19', 31, 'Midfielder', 187, 63, '');

INSERT INTO players VALUES ('ply624', 'Oscar', 'Lewicki', 'Sweden',    '1992-07-14');
INSERT INTO player_stats VALUES ('ply624', 'tm19', 6, 'Midfielder', 170, 67, '');

INSERT INTO players VALUES ('ply625', 'Emmanuel', 'Lomotey', 'Ghana',    '1997-12-19');
INSERT INTO player_stats VALUES ('ply625', 'tm19', 40, 'Midfielder', 190, 79, 'R');

INSERT INTO players VALUES ('ply626', 'Sergio', 'Peña', 'Peru',    '1995-09-28');
INSERT INTO player_stats VALUES ('ply626', 'tm19', 8, 'Midfielder', 178, 70, 'R');

INSERT INTO players VALUES ('ply627', 'Erdal', 'Rakip', 'North Macedonia',    '1996-02-13');
INSERT INTO player_stats VALUES ('ply627', 'tm19', 7, 'Midfielder', 178, 71, 'R');

INSERT INTO players VALUES ('ply628', 'Søren', 'Rieks', 'Denmark',    '1987-04-07');
INSERT INTO player_stats VALUES ('ply628', 'tm19', 5, 'Midfielder', 185, 76, '');

INSERT INTO players VALUES ('ply629', 'Patriot', 'Sejdiu', 'Kosovo',    '2000-05-05');
INSERT INTO player_stats VALUES ('ply629', 'tm19', 36, 'Midfielder', 182, NULL, 'L');

INSERT INTO players VALUES ('ply630', 'Mahamé', 'Siby', 'France',    '1996-07-07');
INSERT INTO player_stats VALUES ('ply630', 'tm19', 25, 'Midfielder', 191, 84, 'R');

INSERT INTO players VALUES ('ply631', 'Moustafa', 'Zeidan', 'Sweden',    '1998-06-07');
INSERT INTO player_stats VALUES ('ply631', 'tm19', 20, 'Midfielder', 174, 72, 'L');

INSERT INTO players VALUES ('ply632', 'Mohamed', 'Buya', 'Sierra Leone',    '1995-01-10');
INSERT INTO player_stats VALUES ('ply632', 'tm19', 33, 'Forward', 180, 72, '');

INSERT INTO players VALUES ('ply633', 'Joseph', 'Ceesay', 'Sweden',    '1998-06-03');
INSERT INTO player_stats VALUES ('ply633', 'tm19', 15, 'Forward', 178, 69, 'R');

INSERT INTO players VALUES ('ply634', 'Mamadou', 'Diagne', 'Sweden',    '2003-09-14');
INSERT INTO player_stats VALUES ('ply634', 'tm19', 41, 'Forward', NULL, NULL, '');

INSERT INTO players VALUES ('ply635', 'Isaac Kiese', 'Thelin', 'Sweden',    '1992-06-24');
INSERT INTO player_stats VALUES ('ply635', 'tm19', 9, 'Forward', 189, 83, 'R');

INSERT INTO players VALUES ('ply636', 'Adi', 'Nalić', 'Bosnia-Herzegovina',    '1997-12-01');
INSERT INTO player_stats VALUES ('ply636', 'tm19', 22, 'Forward', 190, 83, '');

INSERT INTO players VALUES ('ply637', 'Ola', 'Toivonen', 'Sweden',    '1986-07-03');
INSERT INTO player_stats VALUES ('ply637', '', NULL, 'Forward', 192, 78, 'R');

INSERT INTO players VALUES ('ply638', 'Jonnie', 'Fedel', 'Sweden',    '1966-11-22');
INSERT INTO player_stats VALUES ('ply638', 'tm19', NULL, 'Goalkeeping', 184, 89, '');

INSERT INTO players VALUES ('ply639', 'Scott', 'Carson', 'England',    '1985-09-03');
INSERT INTO player_stats VALUES ('ply639', 'tm20', 33, 'Goalkeeper', 188, 86, 'R');

INSERT INTO players VALUES ('ply640', '', 'Ederson', 'Brazil',    '1993-08-17');
INSERT INTO player_stats VALUES ('ply640', 'tm20', 31, 'Goalkeeper', 188, 86, 'L');

INSERT INTO players VALUES ('ply641', 'Stefan', 'Ortega', 'Germany',    '1992-11-06');
INSERT INTO player_stats VALUES ('ply641', 'tm20', 18, 'Goalkeeper', 185, 88, 'R');

INSERT INTO players VALUES ('ply642', 'Manuel', 'Akanji', 'Switzerland',    '1995-07-19');
INSERT INTO player_stats VALUES ('ply642', 'tm20', 25, 'Defender', 187, 91, 'R');

INSERT INTO players VALUES ('ply643', 'Nathan', 'Aké', 'Netherlands',    '1995-02-18');
INSERT INTO player_stats VALUES ('ply643', 'tm20', 6, 'Defender', 180, 75, 'L');

INSERT INTO players VALUES ('ply644', 'João', 'Cancelo', 'Portugal',    '1994-05-27');
INSERT INTO player_stats VALUES ('ply644', 'tm20', 7, 'Defender', 182, 74, 'R');

INSERT INTO players VALUES ('ply645', 'Aymeric', 'Laporte', 'Spain',    '1994-05-27');
INSERT INTO player_stats VALUES ('ply645', 'tm20', 14, 'Defender', 190, 87, 'L');

INSERT INTO players VALUES ('ply646', 'Rico', 'Lewis', 'England',    '2004-11-21');
INSERT INTO player_stats VALUES ('ply646', '', NULL, 'Defender', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply647', 'Benjamin', 'Mendy', 'France',    '1994-07-17');
INSERT INTO player_stats VALUES ('ply647', 'tm20', 22, 'Defender', 185, 85, 'L');

INSERT INTO players VALUES ('ply648', 'Rúben', 'Dias', 'Portugal',    '1997-05-14');
INSERT INTO player_stats VALUES ('ply648', 'tm20', 3, 'Defender', 187, 82, 'R');

INSERT INTO players VALUES ('ply649', 'John', 'Stones', 'England',    '1994-05-28');
INSERT INTO player_stats VALUES ('ply649', 'tm20', 5, 'Defender', 188, 70, 'R');

INSERT INTO players VALUES ('ply650', 'Kyle', 'Walker', 'England',    '1990-05-28');
INSERT INTO player_stats VALUES ('ply650', 'tm20', 2, 'Defender', 183, 83, 'R');

INSERT INTO players VALUES ('ply651', 'Josh', 'Wilson-Esbrand', 'England',    '2002-12-26');
INSERT INTO player_stats VALUES ('ply651', 'tm20', 97, 'Defender', 176, 63, 'L');

INSERT INTO players VALUES ('ply652', 'Bernardo', 'Silva', 'Portugal',    '1994-08-10');
INSERT INTO player_stats VALUES ('ply652', 'tm20', 20, 'Midfielder', 173, 64, 'L');

INSERT INTO players VALUES ('ply653', 'Kevin De', 'Bruyne', 'Belgium',    '1991-06-28');
INSERT INTO player_stats VALUES ('ply653', 'tm20', 17, 'Midfielder', 181, 70, 'R');

INSERT INTO players VALUES ('ply654', 'Phil', 'Foden', 'England',    '2000-05-28');
INSERT INTO player_stats VALUES ('ply654', 'tm20', 47, 'Midfielder', 171, 70, 'L');

INSERT INTO players VALUES ('ply655', 'Jack', 'Grealish', 'England',    '1995-09-10');
INSERT INTO player_stats VALUES ('ply655', 'tm20', 10, 'Midfielder', 175, 68, 'R');

INSERT INTO players VALUES ('ply656', 'İlkay', 'Gündoğan', 'Germany',    '1990-10-24');
INSERT INTO player_stats VALUES ('ply656', 'tm20', 8, 'Midfielder', 180, 79, 'R');

INSERT INTO players VALUES ('ply657', 'Cole', 'Palmer', 'England',    '2002-05-06');
INSERT INTO player_stats VALUES ('ply657', 'tm20', 80, 'Midfielder', 189, 72, 'L');

INSERT INTO players VALUES ('ply658', 'Kalvin', 'Phillips', 'England',    '1995-12-02');
INSERT INTO player_stats VALUES ('ply658', 'tm20', 4, 'Midfielder', 178, 72, 'R');

INSERT INTO players VALUES ('ply659', '', 'Rodri', 'Spain',    '1996-06-22');
INSERT INTO player_stats VALUES ('ply659', 'tm20', 16, 'Midfielder', 191, 82, 'R');

INSERT INTO players VALUES ('ply660', 'Sergio', 'Gómez', 'Spain',    '2000-09-04');
INSERT INTO player_stats VALUES ('ply660', 'tm20', 21, 'Midfielder', 171, 68, 'L');

INSERT INTO players VALUES ('ply661', 'Julián', 'Álvarez', 'Argentina',    '2000-01-31');
INSERT INTO player_stats VALUES ('ply661', 'tm20', 19, 'Forward', 170, 71, 'R');

INSERT INTO players VALUES ('ply662', 'Erling', 'Haaland', 'Norway',    '2000-07-21');
INSERT INTO player_stats VALUES ('ply662', 'tm20', 9, 'Forward', 194, 88, 'L');

INSERT INTO players VALUES ('ply663', 'Ben', 'Knight', 'England',    '2002-06-14');
INSERT INTO player_stats VALUES ('ply663', '', NULL, 'Forward', 170, 59, 'L');

INSERT INTO players VALUES ('ply664', 'Riyad', 'Mahrez', 'Algeria',    '1991-02-21');
INSERT INTO player_stats VALUES ('ply664', 'tm20', 26, 'Forward', 179, 67, 'L');

INSERT INTO players VALUES ('ply665', 'Richard', 'Wright', 'England',    '1977-11-05');
INSERT INTO player_stats VALUES ('ply665', 'tm20', NULL, 'Goalkeeping', 189, 87, '');

INSERT INTO players VALUES ('ply666', '', 'Xabier', 'Spain',    '1970-05-24');
INSERT INTO player_stats VALUES ('ply666', 'tm20', NULL, 'Goalkeeping', 182, 82, '');

INSERT INTO players VALUES ('ply667', 'Lorenzo', 'Buenaventura', 'Spain',    '1963-01-01');
INSERT INTO player_stats VALUES ('ply667', 'tm20', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply668', 'Ryan', 'DeFreitas', 'England',    '1986-10-28');
INSERT INTO player_stats VALUES ('ply668', 'tm20', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply669', 'Carles', 'Planchart', 'Spain',    '1965-12-17');
INSERT INTO player_stats VALUES ('ply669', 'tm20', NULL, 'Video', NULL, NULL, '');

INSERT INTO players VALUES ('ply670', 'Piet', 'Cremers', 'Netherlands',    '1994-10-27');
INSERT INTO player_stats VALUES ('ply670', 'tm20', NULL, 'Chief', NULL, NULL, '');

INSERT INTO players VALUES ('ply671', 'Martin', 'Drury', 'England',    '1986-04-10');
INSERT INTO player_stats VALUES ('ply671', 'tm21', NULL, '08/2022', NULL, NULL, '');

INSERT INTO players VALUES ('ply672', 'De', 'Gea', 'Spain',    '1990-11-07');
INSERT INTO player_stats VALUES ('ply672', 'tm21', 1, 'Goalkeeper', 192, 82, 'R');

INSERT INTO players VALUES ('ply673', 'Martin', 'Dúbravka', 'Slovakia',    '1989-01-15');
INSERT INTO player_stats VALUES ('ply673', 'tm21', 31, 'Goalkeeper', 191, 83, 'R');

INSERT INTO players VALUES ('ply674', 'Tom', 'Heaton', 'England',    '1986-04-15');
INSERT INTO player_stats VALUES ('ply674', 'tm21', 22, 'Goalkeeper', 188, 85, 'R');

INSERT INTO players VALUES ('ply675', 'Radek', 'Vítek', 'Czech Republic',    '2003-10-24');
INSERT INTO player_stats VALUES ('ply675', 'tm21', 50, 'Goalkeeper', 198, 76, 'R');

INSERT INTO players VALUES ('ply676', 'Diogo', 'Dalot', 'Portugal',    '1999-03-18');
INSERT INTO player_stats VALUES ('ply676', 'tm21', 20, 'Defender', 184, 77, 'R');

INSERT INTO players VALUES ('ply677', 'Tyler', 'Fredricson', 'England',    '2005-02-23');
INSERT INTO player_stats VALUES ('ply677', 'tm21', 80, 'Defender', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply678', 'Phil', 'Jones', 'England',    '1992-02-21');
INSERT INTO player_stats VALUES ('ply678', 'tm21', 4, 'Defender', 185, 71, 'R');

INSERT INTO players VALUES ('ply679', 'Victor', 'Lindelöf', 'Sweden',    '1994-07-17');
INSERT INTO player_stats VALUES ('ply679', 'tm21', 2, 'Defender', 187, 82, 'R');

INSERT INTO players VALUES ('ply680', 'Harry', 'Maguire', 'England',    '1993-03-05');
INSERT INTO player_stats VALUES ('ply680', 'tm21', 5, 'Defender', 194, 99, 'R');

INSERT INTO players VALUES ('ply681', 'Tyrell', 'Malacia', 'Netherlands',    '1999-08-17');
INSERT INTO player_stats VALUES ('ply681', 'tm21', 12, 'Defender', 175, 67, 'L');

INSERT INTO players VALUES ('ply682', 'Lisandro', 'Martínez', 'Argentina',    '1998-01-18');
INSERT INTO player_stats VALUES ('ply682', 'tm21', 6, 'Defender', 175, 77, 'L');

INSERT INTO players VALUES ('ply683', 'Teden', 'Mengi', 'England',    '2002-04-30');
INSERT INTO player_stats VALUES ('ply683', 'tm21', 43, 'Defender', 183, 78, 'R');

INSERT INTO players VALUES ('ply684', 'Luke', 'Shaw', 'England',    '1995-07-12');
INSERT INTO player_stats VALUES ('ply684', 'tm21', 23, 'Defender', 178, 75, 'L');

INSERT INTO players VALUES ('ply685', 'Axel', 'Tuanzebe', 'England',    '1997-11-14');
INSERT INTO player_stats VALUES ('ply685', 'tm21', 38, 'Defender', 186, 81, 'R');

INSERT INTO players VALUES ('ply686', 'Raphaël', 'Varane', 'France',    '1993-04-25');
INSERT INTO player_stats VALUES ('ply686', 'tm21', 19, 'Defender', 191, 81, 'R');

INSERT INTO players VALUES ('ply687', 'Aaron', 'Wan-Bissaka', 'England',    '1997-11-26');
INSERT INTO player_stats VALUES ('ply687', 'tm21', 29, 'Defender', 183, 72, 'R');

INSERT INTO players VALUES ('ply688', 'Brandon', 'Williams', 'England',    '2000-09-03');
INSERT INTO player_stats VALUES ('ply688', 'tm21', 33, 'Defender', 172, 63, 'R');

INSERT INTO players VALUES ('ply689', 'Bruno', 'Fernandes', 'Portugal',    '1994-09-08');
INSERT INTO player_stats VALUES ('ply689', 'tm21', 8, 'Midfielder', 179, 69, 'R');

INSERT INTO players VALUES ('ply690', '', 'Casemiro', 'Brazil',    '1992-02-23');
INSERT INTO player_stats VALUES ('ply690', 'tm21', 18, 'Midfielder', 185, 84, 'R');

INSERT INTO players VALUES ('ply691', 'Christian', 'Eriksen', 'Denmark',    '1992-02-14');
INSERT INTO player_stats VALUES ('ply691', 'tm21', 14, 'Midfielder', 182, 76, '');

INSERT INTO players VALUES ('ply692', '', 'Fred', 'Brazil',    '1993-03-05');
INSERT INTO player_stats VALUES ('ply692', 'tm21', 17, 'Midfielder', 169, 62, 'L');

INSERT INTO players VALUES ('ply693', 'Zidane', 'Iqbal', 'Iraq',    '2003-04-27');
INSERT INTO player_stats VALUES ('ply693', '', NULL, 'Midfielder', 181, 65, 'R');

INSERT INTO players VALUES ('ply694', 'Scott', 'McTominay', 'Scotland',    '1996-12-08');
INSERT INTO player_stats VALUES ('ply694', 'tm21', 39, 'Midfielder', 193, 88, 'R');

INSERT INTO players VALUES ('ply695', 'Facundo', 'Pellistri', 'Uruguay',    '2001-12-20');
INSERT INTO player_stats VALUES ('ply695', 'tm21', 28, 'Midfielder', 174, 65, 'R');

INSERT INTO players VALUES ('ply696', 'Donny van de', 'Beek', 'Netherlands',    '1997-04-18');
INSERT INTO player_stats VALUES ('ply696', 'tm21', 34, 'Midfielder', 184, 76, 'R');

INSERT INTO players VALUES ('ply697', 'Alejandro', 'Garnacho', 'Argentina',    '2004-07-01');
INSERT INTO player_stats VALUES ('ply697', 'tm21', 49, 'Forward', 180, 80, 'R');

INSERT INTO players VALUES ('ply698', '', 'Antony', 'Brazil',    '2000-02-24');
INSERT INTO player_stats VALUES ('ply698', 'tm21', 21, 'Forward', 172, 63, 'L');

INSERT INTO players VALUES ('ply699', 'Cristiano', 'Ronaldo', 'Portugal',    '1985-02-05');
INSERT INTO player_stats VALUES ('ply699', 'tm21', 7, 'Forward', 187, 83, '');

INSERT INTO players VALUES ('ply700', 'Anthony', 'Elanga', 'Sweden',    '2002-04-27');
INSERT INTO player_stats VALUES ('ply700', 'tm21', 36, 'Forward', 178, 65, 'R');

INSERT INTO players VALUES ('ply701', 'Mason', 'Greenwood', 'England',    '2001-10-01');
INSERT INTO player_stats VALUES ('ply701', 'tm21', 11, 'Forward', 181, 70, '');

INSERT INTO players VALUES ('ply702', 'Anthony', 'Martial', 'France',    '1995-12-05');
INSERT INTO player_stats VALUES ('ply702', 'tm21', 9, 'Forward', 181, 76, 'R');

INSERT INTO players VALUES ('ply703', 'Charlie', 'McNeill', 'England',    '2003-09-09');
INSERT INTO player_stats VALUES ('ply703', '', NULL, 'Forward', 182, 70, 'R');

INSERT INTO players VALUES ('ply704', 'Marcus', 'Rashford', 'England',    '1997-10-31');
INSERT INTO player_stats VALUES ('ply704', 'tm21', 10, 'Forward', 185, 70, 'R');

INSERT INTO players VALUES ('ply705', 'Jadon', 'Sancho', 'England',    '2000-03-25');
INSERT INTO player_stats VALUES ('ply705', 'tm21', 25, 'Forward', 180, 76, 'R');

INSERT INTO players VALUES ('ply706', 'Shola', 'Shoretire', 'Nigeria',    '2004-02-02');
INSERT INTO player_stats VALUES ('ply706', '', NULL, 'Forward', 171, 66, 'R');

INSERT INTO players VALUES ('ply707', 'Richard', 'Hartis', 'England',    '1967-09-16');
INSERT INTO player_stats VALUES ('ply707', 'tm21', NULL, 'Goalkeeping', NULL, NULL, '');

INSERT INTO players VALUES ('ply708', 'Craig', 'Mawson', 'England',    '1979-05-16');
INSERT INTO player_stats VALUES ('ply708', 'tm21', NULL, 'Goalkeeping', 188, 84, '');

INSERT INTO players VALUES ('ply709', 'Richard', 'Hawkins', 'England',    '1971-01-27');
INSERT INTO player_stats VALUES ('ply709', 'tm21', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply710', 'Michael', 'Clegg', 'England',    '1977-07-03');
INSERT INTO player_stats VALUES ('ply710', 'tm21', NULL, 'Physical', 173, 73, '');

INSERT INTO players VALUES ('ply711', 'Eric', 'Ramsay', 'Wales',    '1992-02-14');
INSERT INTO player_stats VALUES ('ply711', 'tm21', NULL, 'Individual', NULL, NULL, '');

INSERT INTO players VALUES ('ply712', 'Kevin', 'Keij', 'Netherlands',    '1985-09-29');
INSERT INTO player_stats VALUES ('ply712', 'tm21', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply713', 'Luke', 'Lazenby', 'England',    '1990-12-15');
INSERT INTO player_stats VALUES ('ply713', 'tm21', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply714', 'Anthony', 'Bates', 'England',    '1990-12-15');
INSERT INTO player_stats VALUES ('ply714', 'tm21', NULL, 'Video', NULL, NULL, '');

INSERT INTO players VALUES ('ply715', 'Stewart', 'Heppinstall', 'England',    '1989-12-27');
INSERT INTO player_stats VALUES ('ply715', 'tm21', NULL, 'Video', NULL, NULL, '');

INSERT INTO players VALUES ('ply716', 'Andrew', 'Meredith', 'Australia',    '1972-04-24');
INSERT INTO player_stats VALUES ('ply716', 'tm21', NULL, 'Video', NULL, NULL, '');

INSERT INTO players VALUES ('ply717', 'Paul', 'Brand', 'Scotland',    '1988-02-07');
INSERT INTO player_stats VALUES ('ply717', 'tm21', NULL, 'Chief', NULL, NULL, '');

INSERT INTO players VALUES ('ply718', 'Gianluigi', 'Donnarumma', 'Italy',    '1999-02-25');
INSERT INTO player_stats VALUES ('ply718', 'tm22', 99, 'Goalkeeper', 196, 90, 'R');

INSERT INTO players VALUES ('ply719', 'Alexandre', 'Letellier', 'France',    '1990-12-11');
INSERT INTO player_stats VALUES ('ply719', 'tm22', 90, 'Goalkeeper', 193, 93, 'R');

INSERT INTO players VALUES ('ply720', 'Keylor', 'Navas', 'Costa Rica',    '1986-12-15');
INSERT INTO player_stats VALUES ('ply720', 'tm22', 1, 'Goalkeeper', 185, 80, 'R');

INSERT INTO players VALUES ('ply721', 'Sergio', 'Rico', 'Spain',    '1993-09-01');
INSERT INTO player_stats VALUES ('ply721', 'tm22', 16, 'Goalkeeper', 195, 90, 'R');

INSERT INTO players VALUES ('ply722', 'El Chadaïlle', 'Bitshiabu', 'France',    '2005-05-16');
INSERT INTO player_stats VALUES ('ply722', 'tm22', 31, 'Defender', 196, 95, 'L');

INSERT INTO players VALUES ('ply723', 'Achraf', 'Hakimi', 'Morocco',    '1998-11-04');
INSERT INTO player_stats VALUES ('ply723', 'tm22', 2, 'Defender', 181, 73, 'R');

INSERT INTO players VALUES ('ply724', 'Juan', 'Bernat', 'Spain',    '1993-03-01');
INSERT INTO player_stats VALUES ('ply724', 'tm22', 14, 'Defender', 170, 67, 'L');

INSERT INTO players VALUES ('ply725', 'Presnel', 'Kimpembe', 'France',    '1995-08-13');
INSERT INTO player_stats VALUES ('ply725', 'tm22', 3, 'Defender', 189, 80, 'L');

INSERT INTO players VALUES ('ply726', '', 'Marquinhos', 'Brazil',    '1994-05-14');
INSERT INTO player_stats VALUES ('ply726', 'tm22', 5, 'Defender', 183, 75, 'R');

INSERT INTO players VALUES ('ply727', 'Nordi', 'Mukiele', 'France',    '1997-11-01');
INSERT INTO player_stats VALUES ('ply727', 'tm22', 26, 'Defender', 187, 84, 'R');

INSERT INTO players VALUES ('ply728', 'Nuno', 'Mendes', 'Portugal',    '2002-06-19');
INSERT INTO player_stats VALUES ('ply728', 'tm22', 25, 'Defender', 184, 72, 'L');

INSERT INTO players VALUES ('ply729', 'Sergio', 'Ramos', 'Spain',    '1986-03-30');
INSERT INTO player_stats VALUES ('ply729', 'tm22', 4, 'Defender', 184, 82, 'R');

INSERT INTO players VALUES ('ply730', 'Carlos', 'Soler', 'Spain',    '1997-01-02');
INSERT INTO player_stats VALUES ('ply730', 'tm22', 28, 'Midfielder', 180, 76, 'R');

INSERT INTO players VALUES ('ply731', '', 'Danilo', 'Portugal',    '1991-09-09');
INSERT INTO player_stats VALUES ('ply731', 'tm22', 15, 'Midfielder', 188, 83, 'R');

INSERT INTO players VALUES ('ply732', 'Fabián', 'Ruiz', 'Spain',    '1996-04-03');
INSERT INTO player_stats VALUES ('ply732', 'tm22', 8, 'Midfielder', 189, 70, 'L');

INSERT INTO players VALUES ('ply733', 'Pablo', 'Sarabia', 'Spain',    '1992-05-11');
INSERT INTO player_stats VALUES ('ply733', 'tm22', 19, 'Midfielder', 174, 70, 'L');

INSERT INTO players VALUES ('ply734', 'Renato', 'Sanches', 'Portugal',    '1997-08-18');
INSERT INTO player_stats VALUES ('ply734', 'tm22', 18, 'Midfielder', 176, 70, 'R');

INSERT INTO players VALUES ('ply735', 'Marco', 'Verratti', 'Italy',    '1992-11-05');
INSERT INTO player_stats VALUES ('ply735', 'tm22', 6, 'Midfielder', 165, 60, 'R');

INSERT INTO players VALUES ('ply736', '', 'Vitinha', 'Portugal',    '2000-02-13');
INSERT INTO player_stats VALUES ('ply736', 'tm22', 17, 'Midfielder', 172, 64, 'R');

INSERT INTO players VALUES ('ply737', 'Warren', 'Zaire-Emery', 'France',    '2006-03-08');
INSERT INTO player_stats VALUES ('ply737', 'tm22', 33, 'Midfielder', 178, NULL, 'R');

INSERT INTO players VALUES ('ply738', 'Hugo', 'Ekitike', 'France',    '2002-06-20');
INSERT INTO player_stats VALUES ('ply738', 'tm22', 44, 'Forward', 189, 75, 'R');

INSERT INTO players VALUES ('ply739', 'Kylian', 'Mbappé', 'France',    '1998-12-20');
INSERT INTO player_stats VALUES ('ply739', 'tm22', 7, 'Forward', 178, 73, 'R');

INSERT INTO players VALUES ('ply740', 'Lionel', 'Messi', 'Argentina',    '1987-06-24');
INSERT INTO player_stats VALUES ('ply740', 'tm22', 30, 'Forward', 170, 72, 'L');

INSERT INTO players VALUES ('ply741', '', 'Neymar', 'Brazil',    '1992-02-05');
INSERT INTO player_stats VALUES ('ply741', 'tm22', 10, 'Forward', 175, 68, 'R');

INSERT INTO players VALUES ('ply742', 'Gianluca', 'Spinelli', 'Italy',    '1966-10-28');
INSERT INTO player_stats VALUES ('ply742', 'tm22', NULL, 'Goalkeeping', NULL, NULL, '');

INSERT INTO players VALUES ('ply743', 'Janis', 'Blaswich', 'Germany',    '1991-05-02');
INSERT INTO player_stats VALUES ('ply743', 'tm23', 21, 'Goalkeeper', 193, 88, 'R');

INSERT INTO players VALUES ('ply744', 'Péter', 'Gulácsi', 'Hungary',    '1990-05-06');
INSERT INTO player_stats VALUES ('ply744', 'tm23', 1, 'Goalkeeper', 191, 86, 'R');

INSERT INTO players VALUES ('ply745', 'Jonas', 'Nickisch', 'Germany',    '2004-05-21');
INSERT INTO player_stats VALUES ('ply745', 'tm23', 34, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply746', 'Oskar', 'Preil', 'Germany',    '2003-09-14');
INSERT INTO player_stats VALUES ('ply746', 'tm23', NULL, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply747', 'Sanoussy', 'Ba', 'Germany',    '2004-01-05');
INSERT INTO player_stats VALUES ('ply747', 'tm23', 25, 'Defender', 184, NULL, '');

INSERT INTO players VALUES ('ply748', 'Abdou', 'Diallo', 'Senegal',    '1996-05-04');
INSERT INTO player_stats VALUES ('ply748', 'tm23', 37, 'Defender', 186, 79, 'L');

INSERT INTO players VALUES ('ply749', 'Joško', 'Gvardiol', 'Croatia',    '2002-01-23');
INSERT INTO player_stats VALUES ('ply749', 'tm23', 32, 'Defender', 185, 82, 'L');

INSERT INTO players VALUES ('ply750', 'Marcel', 'Halstenberg', 'Germany',    '1991-09-27');
INSERT INTO player_stats VALUES ('ply750', 'tm23', 23, 'Defender', 188, 87, 'L');

INSERT INTO players VALUES ('ply751', 'Benjamin', 'Henrichs', 'Germany',    '1997-02-23');
INSERT INTO player_stats VALUES ('ply751', 'tm23', 39, 'Defender', 183, 79, 'R');

INSERT INTO players VALUES ('ply752', 'Lukas', 'Klostermann', 'Germany',    '1996-06-03');
INSERT INTO player_stats VALUES ('ply752', 'tm23', 16, 'Defender', 187, 88, 'R');

INSERT INTO players VALUES ('ply753', 'Willi', 'Orban', 'Hungary',    '1992-11-03');
INSERT INTO player_stats VALUES ('ply753', 'tm23', 4, 'Defender', 186, 87, 'R');

INSERT INTO players VALUES ('ply754', 'David', 'Raum', 'Germany',    '1998-04-22');
INSERT INTO player_stats VALUES ('ply754', 'tm23', 22, 'Defender', 180, 75, 'L');

INSERT INTO players VALUES ('ply755', 'Mohamed', 'Simakan', 'France',    '2000-05-03');
INSERT INTO player_stats VALUES ('ply755', 'tm23', 2, 'Defender', 187, 82, 'R');

INSERT INTO players VALUES ('ply756', 'Dani', 'Olmo', 'Spain',    '1998-05-07');
INSERT INTO player_stats VALUES ('ply756', 'tm23', 7, 'Midfielder', 179, 72, 'R');

INSERT INTO players VALUES ('ply757', 'Emil', 'Forsberg', 'Sweden',    '1991-10-23');
INSERT INTO player_stats VALUES ('ply757', 'tm23', 10, 'Midfielder', 177, 76, 'R');

INSERT INTO players VALUES ('ply758', 'Amadou', 'Haïdara', 'Mali',    '1998-01-31');
INSERT INTO player_stats VALUES ('ply758', 'tm23', 8, 'Midfielder', 175, 72, 'R');

INSERT INTO players VALUES ('ply759', 'Kevin', 'Kampl', 'Slovenia',    '1990-10-09');
INSERT INTO player_stats VALUES ('ply759', 'tm23', 44, 'Midfielder', 178, 66, 'R');

INSERT INTO players VALUES ('ply760', 'Konrad', 'Laimer', 'Austria',    '1997-05-27');
INSERT INTO player_stats VALUES ('ply760', 'tm23', 27, 'Midfielder', 180, 72, 'R');

INSERT INTO players VALUES ('ply761', 'Xaver', 'Schlager', 'Austria',    '1997-09-28');
INSERT INTO player_stats VALUES ('ply761', 'tm23', 24, 'Midfielder', 174, 76, 'L');

INSERT INTO players VALUES ('ply762', 'Dominik', 'Szoboszlai', 'Hungary',    '2000-10-25');
INSERT INTO player_stats VALUES ('ply762', 'tm23', 17, 'Midfielder', 186, 74, 'R');

INSERT INTO players VALUES ('ply763', 'André', 'Silva', 'Portugal',    '1995-11-06');
INSERT INTO player_stats VALUES ('ply763', 'tm23', 19, 'Forward', 185, 84, 'R');

INSERT INTO players VALUES ('ply764', 'Hugo', 'Novoa', 'Spain',    '2003-01-24');
INSERT INTO player_stats VALUES ('ply764', 'tm23', 38, 'Forward', 182, 70, 'R');

INSERT INTO players VALUES ('ply765', 'Christopher', 'Nkunku', 'France',    '1997-11-14');
INSERT INTO player_stats VALUES ('ply765', 'tm23', 18, 'Forward', 175, 73, 'R');

INSERT INTO players VALUES ('ply766', 'Yussuf', 'Poulsen', 'Denmark',    '1994-06-15');
INSERT INTO player_stats VALUES ('ply766', 'tm23', 9, 'Forward', 192, 84, 'R');

INSERT INTO players VALUES ('ply767', 'Timo', 'Werner', 'Germany',    '1996-03-06');
INSERT INTO player_stats VALUES ('ply767', 'tm23', 11, 'Forward', 181, 75, 'R');

INSERT INTO players VALUES ('ply768', 'Frederik', 'Gößling', 'Germany',    '1977-09-22');
INSERT INTO player_stats VALUES ('ply768', 'tm23', NULL, 'Goalkeeping', 190, 88, '');

INSERT INTO players VALUES ('ply769', 'Philipp', 'Tschauner', 'Germany',    '1985-11-03');
INSERT INTO player_stats VALUES ('ply769', 'tm23', NULL, 'Goalkeeping', 196, 100, 'R');

INSERT INTO players VALUES ('ply770', 'Daniel', 'Behlau', 'Germany',    '1988-08-24');
INSERT INTO player_stats VALUES ('ply770', 'tm23', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply771', 'Ruwen', 'Faller', 'Germany',    '1980-07-22');
INSERT INTO player_stats VALUES ('ply771', 'tm23', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply772', 'Kai', 'Kraft', 'Germany',    '1977-07-02');
INSERT INTO player_stats VALUES ('ply772', 'tm23', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply773', 'Matthias', 'Grote', 'Germany',    '1987-05-10');
INSERT INTO player_stats VALUES ('ply773', 'tm23', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply774', 'Fabian', 'Friedrich', 'Germany',    '1985-10-19');
INSERT INTO player_stats VALUES ('ply774', 'tm23', NULL, 'Chief', NULL, NULL, '');

INSERT INTO players VALUES ('ply775', 'Peter', 'Schneider', 'USA',    '1984-04-21');
INSERT INTO player_stats VALUES ('ply775', 'tm23', NULL, '02/2022', NULL, NULL, '');

INSERT INTO players VALUES ('ply776', 'Philipp', 'Köhn', 'Switzerland',    '1998-04-02');
INSERT INTO player_stats VALUES ('ply776', 'tm24', 18, 'Goalkeeper', 191, 75, 'R');

INSERT INTO players VALUES ('ply777', 'Nico', 'Mantl', 'Germany',    '2000-02-06');
INSERT INTO player_stats VALUES ('ply777', 'tm24', 1, 'Goalkeeper', 193, 88, '');

INSERT INTO players VALUES ('ply778', 'Adam', 'Stejskal', 'Czech Republic',    '2002-03-28');
INSERT INTO player_stats VALUES ('ply778', 'tm24', 40, 'Goalkeeper', 189, NULL, 'R');

INSERT INTO players VALUES ('ply779', 'Alexander', 'Walke', 'Germany',    '1983-06-06');
INSERT INTO player_stats VALUES ('ply779', 'tm24', 33, 'Goalkeeper', 189, 88, 'R');

INSERT INTO players VALUES ('ply780', 'Samson', 'Baidoo', 'Austria',    '2004-03-31');
INSERT INTO player_stats VALUES ('ply780', 'tm24', 6, 'Defender', 187, NULL, 'R');

INSERT INTO players VALUES ('ply781', '', 'Bernardo', 'Brazil',    '1995-05-14');
INSERT INTO player_stats VALUES ('ply781', 'tm24', 95, 'Defender', 186, 76, 'L');

INSERT INTO players VALUES ('ply782', 'Amar', 'Dedić', 'Bosnia-Herzegovina',    '2002-08-18');
INSERT INTO player_stats VALUES ('ply782', 'tm24', 70, 'Defender', 180, 70, 'R');

INSERT INTO players VALUES ('ply783', 'Bryan', 'Okoh', 'Switzerland',    '2003-05-16');
INSERT INTO player_stats VALUES ('ply783', 'tm24', 3, 'Defender', 187, 77, '');

INSERT INTO players VALUES ('ply784', 'Strahinja', 'Pavlović', 'Serbia',    '2001-05-24');
INSERT INTO player_stats VALUES ('ply784', 'tm24', 31, 'Defender', 194, 84, 'L');

INSERT INTO players VALUES ('ply785', 'Kamil', 'Piątkowski', 'Poland',    '2000-06-21');
INSERT INTO player_stats VALUES ('ply785', 'tm24', 4, 'Defender', 191, 83, 'R');

INSERT INTO players VALUES ('ply786', 'Oumar', 'Solet', 'France',    '2000-02-07');
INSERT INTO player_stats VALUES ('ply786', 'tm24', 22, 'Defender', 192, 81, 'R');

INSERT INTO players VALUES ('ply787', 'Andreas', 'Ulmer', 'Austria',    '1985-10-30');
INSERT INTO player_stats VALUES ('ply787', 'tm24', 17, 'Defender', 175, 73, 'L');

INSERT INTO players VALUES ('ply788', 'Ignace Van Der', 'Brempt', 'Belgium',    '2002-04-01');
INSERT INTO player_stats VALUES ('ply788', 'tm24', 2, 'Defender', 187, 71, 'R');

INSERT INTO players VALUES ('ply789', 'Max', 'Wöber', 'Austria',    '1998-02-04');
INSERT INTO player_stats VALUES ('ply789', 'tm24', 39, 'Defender', 188, 76, 'L');

INSERT INTO players VALUES ('ply790', 'Antoine', 'Bernède', 'France',    '1999-05-26');
INSERT INTO player_stats VALUES ('ply790', 'tm24', 10, 'Midfielder', 177, 74, 'L');

INSERT INTO players VALUES ('ply791', 'Nicolás', 'Capaldo', 'Argentina',    '1998-09-14');
INSERT INTO player_stats VALUES ('ply791', 'tm24', 7, 'Midfielder', 177, 73, 'R');

INSERT INTO players VALUES ('ply792', 'Ousmane', 'Diakité', 'Mali',    '2000-07-25');
INSERT INTO player_stats VALUES ('ply792', 'tm24', NULL, 'Midfielder', 187, 87, '');

INSERT INTO players VALUES ('ply793', 'Mamady', 'Diambou', 'Mali',    '2002-11-11');
INSERT INTO player_stats VALUES ('ply793', 'tm24', 15, 'Midfielder', 176, NULL, 'R');

INSERT INTO players VALUES ('ply794', 'Youba', 'Diarra', 'Mali',    '1998-03-24');
INSERT INTO player_stats VALUES ('ply794', 'tm24', 24, 'Midfielder', 178, 79, 'R');

INSERT INTO players VALUES ('ply795', 'Lucas', 'Gourna-Douath', 'France',    '2003-08-05');
INSERT INTO player_stats VALUES ('ply795', 'tm24', 27, 'Midfielder', 185, 78, 'R');

INSERT INTO players VALUES ('ply796', 'Dijon', 'Kameri', 'Austria',    '2004-04-20');
INSERT INTO player_stats VALUES ('ply796', 'tm24', 8, 'Midfielder', 181, NULL, 'R');

INSERT INTO players VALUES ('ply797', 'Maurits', 'Kjærgaard', 'Denmark',    '2003-06-26');
INSERT INTO player_stats VALUES ('ply797', 'tm24', 14, 'Midfielder', 186, 70, 'R');

INSERT INTO players VALUES ('ply798', 'Justin', 'Omoregie', 'Austria',    '2003-09-21');
INSERT INTO player_stats VALUES ('ply798', 'tm24', 36, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply799', 'Nicolas', 'Seiwald', 'Austria',    '2001-05-04');
INSERT INTO player_stats VALUES ('ply799', 'tm24', 13, 'Midfielder', 179, 70, 'R');

INSERT INTO players VALUES ('ply800', 'Luka', 'Sučić', 'Croatia',    '2002-09-08');
INSERT INTO player_stats VALUES ('ply800', 'tm24', 21, 'Midfielder', 185, 71, 'L');

INSERT INTO players VALUES ('ply801', 'Samson', 'Tijani', 'Nigeria',    '2002-05-17');
INSERT INTO player_stats VALUES ('ply801', 'tm24', 44, 'Midfielder', 170, 63, 'R');

INSERT INTO players VALUES ('ply802', 'Chikwubuike', 'Adamu', 'Austria',    '2001-06-06');
INSERT INTO player_stats VALUES ('ply802', 'tm24', 9, 'Forward', 182, 79, 'R');

INSERT INTO players VALUES ('ply803', '', 'Fernando', 'Brazil',    '1999-03-01');
INSERT INTO player_stats VALUES ('ply803', 'tm24', 11, 'Forward', 176, 72, 'R');

INSERT INTO players VALUES ('ply804', 'Sékou', 'Koïta', 'Mali',    '1999-11-28');
INSERT INTO player_stats VALUES ('ply804', 'tm24', 20, 'Forward', 173, 66, 'L');

INSERT INTO players VALUES ('ply805', 'Dominik', 'Lechner', 'Austria',    '2005-04-01');
INSERT INTO player_stats VALUES ('ply805', 'tm24', 14, 'Forward', NULL, NULL, '');

INSERT INTO players VALUES ('ply806', 'Noah', 'Okafor', 'Switzerland',    '2000-05-24');
INSERT INTO player_stats VALUES ('ply806', 'tm24', 77, 'Forward', 185, 85, 'R');

INSERT INTO players VALUES ('ply807', 'Benjamin', 'Šeško', 'Slovenia',    '2003-05-31');
INSERT INTO player_stats VALUES ('ply807', 'tm24', 30, 'Forward', 193, 77, 'R');

INSERT INTO players VALUES ('ply808', 'Roko', 'Šimić', 'Croatia',    '2003-09-10');
INSERT INTO player_stats VALUES ('ply808', 'tm24', 23, 'Forward', 190, NULL, 'R');

INSERT INTO players VALUES ('ply809', 'Herbert', 'Ilsanker', 'Austria',    '1967-05-24');
INSERT INTO player_stats VALUES ('ply809', 'tm24', NULL, 'Goalkeeping', 195, 90, 'R');

INSERT INTO players VALUES ('ply810', 'Michael', 'Berktold', 'Austria',    '1980-09-30');
INSERT INTO player_stats VALUES ('ply810', 'tm24', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply811', 'Thibaut', 'Courtois', 'Belgium',    '1992-05-11');
INSERT INTO player_stats VALUES ('ply811', 'tm25', 1, 'Goalkeeper', 200, 96, 'L');

INSERT INTO players VALUES ('ply812', 'Diego', 'Piñeiro', 'Spain',    '2004-02-13');
INSERT INTO player_stats VALUES ('ply812', 'tm25', 38, 'Goalkeeper', 183, 69, '');

INSERT INTO players VALUES ('ply813', 'Lucas', 'Cañizares', 'Spain',    '2002-05-10');
INSERT INTO player_stats VALUES ('ply813', 'tm25', 30, 'Goalkeeper', 187, 81, 'R');

INSERT INTO players VALUES ('ply814', 'Luis', 'López', 'Spain',    '2001-05-08');
INSERT INTO player_stats VALUES ('ply814', 'tm25', 26, 'Goalkeeper', 193, 84, 'L');

INSERT INTO players VALUES ('ply815', 'Andriy', 'Lunin', 'Ukraine',    '1999-02-11');
INSERT INTO player_stats VALUES ('ply815', 'tm25', 13, 'Goalkeeper', 191, 84, 'R');

INSERT INTO players VALUES ('ply816', 'David', 'Alaba', 'Austria',    '1992-06-24');
INSERT INTO player_stats VALUES ('ply816', 'tm25', 4, 'Defender', 180, 78, 'L');

INSERT INTO players VALUES ('ply817', 'Álvaro', 'Odriozola', 'Spain',    '1995-12-14');
INSERT INTO player_stats VALUES ('ply817', 'tm25', 16, 'Defender', 176, 66, 'R');

INSERT INTO players VALUES ('ply818', 'Dani', 'Carvajal', 'Spain',    '1992-01-11');
INSERT INTO player_stats VALUES ('ply818', 'tm25', 2, 'Defender', 173, 74, 'R');

INSERT INTO players VALUES ('ply819', 'Eder', 'Militão', 'Brazil',    '1998-01-18');
INSERT INTO player_stats VALUES ('ply819', 'tm25', 3, 'Defender', 186, 78, 'R');

INSERT INTO players VALUES ('ply820', 'Jesús', 'Vallejo', 'Spain',    '1997-01-05');
INSERT INTO player_stats VALUES ('ply820', 'tm25', 5, 'Defender', 184, 79, 'R');

INSERT INTO players VALUES ('ply821', 'Ferland', 'Mendy', 'France',    '1995-06-08');
INSERT INTO player_stats VALUES ('ply821', 'tm25', 23, 'Defender', 180, 73, 'L');

INSERT INTO players VALUES ('ply822', '', 'Nacho', 'Spain',    '1990-01-18');
INSERT INTO player_stats VALUES ('ply822', 'tm25', 6, 'Defender', 180, 76, 'R');

INSERT INTO players VALUES ('ply823', 'Rafa', 'Marín', 'Spain',    '2002-05-19');
INSERT INTO player_stats VALUES ('ply823', '', 3, 'Defender', 191, 76, 'R');

INSERT INTO players VALUES ('ply824', 'Antonio', 'Rüdiger', 'Germany',    '1993-03-03');
INSERT INTO player_stats VALUES ('ply824', 'tm25', 22, 'Defender', 190, 85, 'R');

INSERT INTO players VALUES ('ply825', 'Eduardo', 'Camavinga', 'France',    '2002-11-10');
INSERT INTO player_stats VALUES ('ply825', 'tm25', 12, 'Midfielder', 182, 68, 'L');

INSERT INTO players VALUES ('ply826', 'Dani', 'Ceballos', 'Spain',    '1996-08-07');
INSERT INTO player_stats VALUES ('ply826', 'tm25', 19, 'Midfielder', 179, 71, 'R');

INSERT INTO players VALUES ('ply827', 'Toni', 'Kroos', 'Germany',    '1990-01-04');
INSERT INTO player_stats VALUES ('ply827', 'tm25', 8, 'Midfielder', 183, 76, 'R');

INSERT INTO players VALUES ('ply828', 'Luka', 'Modrić', 'Croatia',    '1985-09-09');
INSERT INTO player_stats VALUES ('ply828', 'tm25', 10, 'Midfielder', 172, 66, '');

INSERT INTO players VALUES ('ply829', 'Aurélien', 'Tchouaméni', 'France',    '2000-01-27');
INSERT INTO player_stats VALUES ('ply829', 'tm25', 18, 'Midfielder', 188, 81, 'R');

INSERT INTO players VALUES ('ply830', 'Federico', 'Valverde', 'Uruguay',    '1998-07-22');
INSERT INTO player_stats VALUES ('ply830', 'tm25', 15, 'Midfielder', 182, 78, 'R');

INSERT INTO players VALUES ('ply831', 'Karim', 'Benzema', 'France',    '1987-12-19');
INSERT INTO player_stats VALUES ('ply831', 'tm25', 9, 'Forward', 185, 81, 'R');

INSERT INTO players VALUES ('ply832', 'Eden', 'Hazard', 'Belgium',    '1991-01-07');
INSERT INTO player_stats VALUES ('ply832', 'tm25', 7, 'Forward', 175, 74, 'R');

INSERT INTO players VALUES ('ply833', 'Lucas', 'Vázquez', 'Spain',    '1991-07-01');
INSERT INTO player_stats VALUES ('ply833', 'tm25', 17, 'Forward', 173, 71, 'R');

INSERT INTO players VALUES ('ply834', 'Marco', 'Asensio', 'Spain',    '1996-01-21');
INSERT INTO player_stats VALUES ('ply834', 'tm25', 11, 'Forward', 182, 76, 'L');

INSERT INTO players VALUES ('ply835', '', 'Mariano', 'Dom. Republic',    '1993-08-01');
INSERT INTO player_stats VALUES ('ply835', 'tm25', 24, 'Forward', 180, 76, 'R');

INSERT INTO players VALUES ('ply836', '', 'Rodrygo', 'Brazil',    '2001-01-09');
INSERT INTO player_stats VALUES ('ply836', 'tm25', 21, 'Forward', 174, 64, 'R');

INSERT INTO players VALUES ('ply837', 'Vinícius', 'Júnior', 'Brazil',    '2000-07-12');
INSERT INTO player_stats VALUES ('ply837', 'tm25', 20, 'Forward', 176, 73, 'R');

INSERT INTO players VALUES ('ply838', 'Lluís', 'Llopis', 'Spain',    '1964-11-26');
INSERT INTO player_stats VALUES ('ply838', 'tm25', NULL, 'Goalkeeping', NULL, NULL, '');

INSERT INTO players VALUES ('ply839', 'Antonio', 'Pintus', 'Italy',    '1962-09-26');
INSERT INTO player_stats VALUES ('ply839', 'tm25', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply840', 'Alberto', 'Flores', 'Spain',    '2003-11-10');
INSERT INTO player_stats VALUES ('ply840', 'tm26', 31, 'Goalkeeper', 186, NULL, '');

INSERT INTO players VALUES ('ply841', '', 'Bono', 'Morocco',    '1991-04-05');
INSERT INTO player_stats VALUES ('ply841', 'tm26', 13, 'Goalkeeper', 192, 78, 'L');

INSERT INTO players VALUES ('ply842', 'Marko', 'Dmitrović', 'Serbia',    '1992-01-24');
INSERT INTO player_stats VALUES ('ply842', 'tm26', 1, 'Goalkeeper', 189, 94, 'L');

INSERT INTO players VALUES ('ply843', 'Marcos', 'Acuña', 'Argentina',    '1991-10-28');
INSERT INTO player_stats VALUES ('ply843', 'tm26', 19, 'Defender', 172, 69, 'L');

INSERT INTO players VALUES ('ply844', 'Alex', 'Telles', 'Brazil',    '1992-12-15');
INSERT INTO player_stats VALUES ('ply844', 'tm26', 3, 'Defender', 181, 71, 'L');

INSERT INTO players VALUES ('ply845', 'Jesús', 'Navas', 'Spain',    '1985-11-21');
INSERT INTO player_stats VALUES ('ply845', 'tm26', 16, 'Defender', 172, 60, 'R');

INSERT INTO players VALUES ('ply846', 'José', 'Ángel', 'Spain',    '2002-01-29');
INSERT INTO player_stats VALUES ('ply846', 'tm26', 30, 'Defender', 184, 80, 'R');

INSERT INTO players VALUES ('ply847', 'Kike', 'Salas', 'Spain',    '2002-04-23');
INSERT INTO player_stats VALUES ('ply847', 'tm26', 29, 'Defender', 186, NULL, 'L');

INSERT INTO players VALUES ('ply848', '', 'Marcão', 'Brazil',    '1996-06-05');
INSERT INTO player_stats VALUES ('ply848', 'tm26', 23, 'Defender', 185, 80, 'L');

INSERT INTO players VALUES ('ply849', 'Gonzalo', 'Montiel', 'Argentina',    '1997-01-01');
INSERT INTO player_stats VALUES ('ply849', 'tm26', 2, 'Defender', 176, 70, 'R');

INSERT INTO players VALUES ('ply850', 'Tanguy', 'Nianzou', 'France',    '2002-06-07');
INSERT INTO player_stats VALUES ('ply850', 'tm26', 14, 'Defender', 191, 85, 'R');

INSERT INTO players VALUES ('ply851', 'Pablo', 'Pérez', 'Spain',    '2001-08-18');
INSERT INTO player_stats VALUES ('ply851', 'tm26', 26, 'Defender', 174, 70, 'L');

INSERT INTO players VALUES ('ply852', 'Karim', 'Rekik', 'Netherlands',    '1994-12-02');
INSERT INTO player_stats VALUES ('ply852', 'tm26', 4, 'Defender', 186, 84, 'L');

INSERT INTO players VALUES ('ply853', 'Thomas', 'Delaney', 'Denmark',    '1991-09-03');
INSERT INTO player_stats VALUES ('ply853', 'tm26', 18, 'Midfielder', 182, 79, 'L');

INSERT INTO players VALUES ('ply854', '', 'Fernando', 'Brazil',    '1987-07-25');
INSERT INTO player_stats VALUES ('ply854', 'tm26', 20, 'Midfielder', 183, 70, 'R');

INSERT INTO players VALUES ('ply855', 'Papu', 'Gómez', 'Argentina',    '1988-02-15');
INSERT INTO player_stats VALUES ('ply855', 'tm26', 24, 'Midfielder', 167, 68, 'R');

INSERT INTO players VALUES ('ply856', 'Nemanja', 'Gudelj', 'Serbia',    '1991-11-16');
INSERT INTO player_stats VALUES ('ply856', 'tm26', 6, 'Midfielder', 187, 81, 'R');

INSERT INTO players VALUES ('ply857', '', 'Isco', 'Spain',    '1992-04-21');
INSERT INTO player_stats VALUES ('ply857', 'tm26', 22, 'Midfielder', 176, 79, 'R');

INSERT INTO players VALUES ('ply858', 'Adnan', 'Januzaj', 'Belgium',    '1995-02-05');
INSERT INTO player_stats VALUES ('ply858', 'tm26', 11, 'Midfielder', 186, 75, 'L');

INSERT INTO players VALUES ('ply859', 'Joan', 'Jordán', 'Spain',    '1994-07-06');
INSERT INTO player_stats VALUES ('ply859', 'tm26', 8, 'Midfielder', 183, 74, 'R');

INSERT INTO players VALUES ('ply860', 'Nacho', 'Quintana', 'Spain',    '2001-02-23');
INSERT INTO player_stats VALUES ('ply860', 'tm26', 43, 'Midfielder', 178, 75, 'R');

INSERT INTO players VALUES ('ply861', 'Óliver', 'Torres', 'Spain',    '1994-11-10');
INSERT INTO player_stats VALUES ('ply861', 'tm26', 21, 'Midfielder', 175, 68, 'R');

INSERT INTO players VALUES ('ply862', 'Pedro', 'Ortiz', 'Spain',    '2000-08-19');
INSERT INTO player_stats VALUES ('ply862', '', 14, 'Midfielder', 184, 76, 'L');

INSERT INTO players VALUES ('ply863', 'Ivan', 'Rakitić', 'Croatia',    '1988-03-10');
INSERT INTO player_stats VALUES ('ply863', 'tm26', 10, 'Midfielder', 184, 78, 'R');

INSERT INTO players VALUES ('ply864', 'Jesús', 'Corona', 'Mexico',    '1993-01-06');
INSERT INTO player_stats VALUES ('ply864', 'tm26', 9, 'Forward', 173, 66, '');

INSERT INTO players VALUES ('ply865', 'Kasper', 'Dolberg', 'Denmark',    '1997-10-06');
INSERT INTO player_stats VALUES ('ply865', 'tm26', 5, 'Forward', 187, 83, 'R');

INSERT INTO players VALUES ('ply866', 'Youssef', 'En-Nesyri', 'Morocco',    '1997-06-01');
INSERT INTO player_stats VALUES ('ply866', 'tm26', 15, 'Forward', 188, 73, 'L');

INSERT INTO players VALUES ('ply867', 'Érik', 'Lamela', 'Argentina',    '1992-03-04');
INSERT INTO player_stats VALUES ('ply867', 'tm26', 17, 'Forward', 181, 80, 'L');

INSERT INTO players VALUES ('ply868', 'Rafa', 'Mir', 'Spain',    '1997-06-18');
INSERT INTO player_stats VALUES ('ply868', 'tm26', 12, 'Forward', 191, 75, 'R');

INSERT INTO players VALUES ('ply869', '', 'Suso', 'Spain',    '1993-11-19');
INSERT INTO player_stats VALUES ('ply869', 'tm26', 7, 'Forward', 176, 70, 'L');

INSERT INTO players VALUES ('ply870', 'José Luis', 'Silva', 'Spain',    '1979-09-15');
INSERT INTO player_stats VALUES ('ply870', 'tm26', NULL, 'Goalkeeping', NULL, NULL, '');

INSERT INTO players VALUES ('ply871', 'Juanvi', 'Peinado', 'Spain',    '1973-06-26');
INSERT INTO player_stats VALUES ('ply871', 'tm26', NULL, 'Technique', NULL, NULL, '');

INSERT INTO players VALUES ('ply872', 'Andriy', 'Pyatov', 'Ukraine',    '1984-06-28');
INSERT INTO player_stats VALUES ('ply872', 'tm27', 30, 'Goalkeeper', 190, 90, 'R');

INSERT INTO players VALUES ('ply873', 'Oleksiy', 'Shevchenko', 'Ukraine',    '1992-02-24');
INSERT INTO player_stats VALUES ('ply873', 'tm27', 1, 'Goalkeeper', 188, 81, 'R');

INSERT INTO players VALUES ('ply874', 'Anatoliy', 'Trubin', 'Ukraine',    '2001-08-01');
INSERT INTO player_stats VALUES ('ply874', 'tm27', 81, 'Goalkeeper', 199, 86, 'R');

INSERT INTO players VALUES ('ply875', 'Valeriy', 'Bondar', 'Ukraine',    '1999-02-27');
INSERT INTO player_stats VALUES ('ply875', 'tm27', 5, 'Defender', 172, 73, 'R');

INSERT INTO players VALUES ('ply876', 'Marian', 'Farina', 'Ukraine',    '2003-08-28');
INSERT INTO player_stats VALUES ('ply876', 'tm27', 28, 'Defender', NULL, NULL, '');

INSERT INTO players VALUES ('ply877', 'Yukhym', 'Konoplya', 'Ukraine',    '1999-08-26');
INSERT INTO player_stats VALUES ('ply877', 'tm27', 26, 'Defender', 180, 74, 'R');

INSERT INTO players VALUES ('ply878', 'Viktor', 'Kornienko', 'Ukraine',    '1999-02-14');
INSERT INTO player_stats VALUES ('ply878', 'tm27', 99, 'Defender', 175, 70, 'L');

INSERT INTO players VALUES ('ply879', 'Eduard', 'Kozik', 'Ukraine',    '2003-04-19');
INSERT INTO player_stats VALUES ('ply879', 'tm27', 32, 'Defender', NULL, NULL, '');

INSERT INTO players VALUES ('ply880', 'Sergiy', 'Kryvtsov', 'Ukraine',    '1991-03-15');
INSERT INTO player_stats VALUES ('ply880', 'tm27', 4, 'Defender', 186, 83, 'R');

INSERT INTO players VALUES ('ply881', 'Lucas', 'Taylor', 'Brazil',    '1995-04-10');
INSERT INTO player_stats VALUES ('ply881', 'tm27', 23, 'Defender', 177, 70, 'R');

INSERT INTO players VALUES ('ply882', 'Mykola', 'Matvienko', 'Ukraine',    '1996-05-02');
INSERT INTO player_stats VALUES ('ply882', 'tm27', 22, 'Defender', 182, 74, 'L');

INSERT INTO players VALUES ('ply883', 'Bogdan', 'Mykhaylychenko', 'Ukraine',    '1997-03-21');
INSERT INTO player_stats VALUES ('ply883', 'tm27', 15, 'Defender', 179, 73, 'L');

INSERT INTO players VALUES ('ply884', 'Artem', 'Bondarenko', 'Ukraine',    '2000-08-21');
INSERT INTO player_stats VALUES ('ply884', 'tm27', 21, 'Midfielder', 182, 73, 'L');

INSERT INTO players VALUES ('ply885', 'Neven', 'Đurasek', 'Croatia',    '1998-08-15');
INSERT INTO player_stats VALUES ('ply885', 'tm27', 17, 'Midfielder', 180, 74, 'R');

INSERT INTO players VALUES ('ply886', 'Dmytro', 'Kryskiv', 'Ukraine',    '2000-10-06');
INSERT INTO player_stats VALUES ('ply886', 'tm27', 16, 'Midfielder', 180, 67, 'R');

INSERT INTO players VALUES ('ply887', 'Mykhaylo', 'Mudryk', 'Ukraine',    '2001-01-05');
INSERT INTO player_stats VALUES ('ply887', 'tm27', 10, 'Midfielder', 175, 61, 'R');

INSERT INTO players VALUES ('ply888', 'Yegor', 'Nazaryna', 'Ukraine',    '1997-07-10');
INSERT INTO player_stats VALUES ('ply888', 'tm27', 29, 'Midfielder', 183, 69, 'R');

INSERT INTO players VALUES ('ply889', 'Oleh', 'Ocheretko', 'Ukraine',    '2003-03-25');
INSERT INTO player_stats VALUES ('ply889', 'tm27', 27, 'Midfielder', 181, 75, '');

INSERT INTO players VALUES ('ply890', 'Ivan', 'Petryak', 'Ukraine',    '1994-03-13');
INSERT INTO player_stats VALUES ('ply890', 'tm27', 34, 'Midfielder', 171, 63, 'R');

INSERT INTO players VALUES ('ply891', 'Taras', 'Stepanenko', 'Ukraine',    '1989-08-08');
INSERT INTO player_stats VALUES ('ply891', 'tm27', 6, 'Midfielder', 181, 76, 'L');

INSERT INTO players VALUES ('ply892', 'Georgiy', 'Sudakov', 'Ukraine',    '2002-09-01');
INSERT INTO player_stats VALUES ('ply892', 'tm27', 8, 'Midfielder', 177, 68, '');

INSERT INTO players VALUES ('ply893', 'Dmytro', 'Topalov', 'Ukraine',    '1998-03-12');
INSERT INTO player_stats VALUES ('ply893', 'tm27', 20, 'Midfielder', 176, 70, 'L');

INSERT INTO players VALUES ('ply894', 'Andriy', 'Totovytskyy', 'Ukraine',    '1993-01-20');
INSERT INTO player_stats VALUES ('ply894', 'tm27', 7, 'Midfielder', 187, 77, 'R');

INSERT INTO players VALUES ('ply895', 'Oleksandr', 'Zubkov', 'Ukraine',    '1996-08-03');
INSERT INTO player_stats VALUES ('ply895', 'tm27', 11, 'Midfielder', 182, 78, 'L');

INSERT INTO players VALUES ('ply896', 'Danylo', 'Honcharuk', 'Ukraine',    '2002-07-13');
INSERT INTO player_stats VALUES ('ply896', 'tm27', NULL, 'Forward', 176, NULL, 'R');

INSERT INTO players VALUES ('ply897', 'Olarenwaju', 'Kayode', 'Nigeria',    '1993-05-08');
INSERT INTO player_stats VALUES ('ply897', 'tm27', NULL, 'Forward', 176, 66, 'R');

INSERT INTO players VALUES ('ply898', 'Andriy', 'Kulakov', 'Ukraine',    '1999-04-28');
INSERT INTO player_stats VALUES ('ply898', 'tm27', 19, 'Forward', 183, 73, 'R');

INSERT INTO players VALUES ('ply899', 'Marian', 'Shved', 'Ukraine',    '1997-07-16');
INSERT INTO player_stats VALUES ('ply899', 'tm27', 9, 'Forward', 171, 63, 'L');

INSERT INTO players VALUES ('ply900', 'Danylo', 'Sikan', 'Ukraine',    '2001-04-16');
INSERT INTO player_stats VALUES ('ply900', 'tm27', 14, 'Forward', 185, 73, 'R');

INSERT INTO players VALUES ('ply901', 'Denys', 'Svitiukha', 'Ukraine',    '2002-02-08');
INSERT INTO player_stats VALUES ('ply901', 'tm27', NULL, 'Forward', 186, NULL, 'L');

INSERT INTO players VALUES ('ply902', 'Lassina', 'Traoré', 'Burkina Faso',    '2001-01-12');
INSERT INTO player_stats VALUES ('ply902', 'tm27', 2, 'Forward', 182, 90, 'R');

INSERT INTO players VALUES ('ply903', 'Giorgio', 'Bianchi', 'Italy',    '1975-12-08');
INSERT INTO player_stats VALUES ('ply903', 'tm27', NULL, 'Goalkeeping', 185, 77, '');

INSERT INTO players VALUES ('ply904', '', 'Hèlton', 'Brazil',    '1990-11-02');
INSERT INTO player_stats VALUES ('ply904', 'tm28', 77, 'Goalkeeper', 196, 92, 'R');

INSERT INTO players VALUES ('ply905', 'Leo Brian', 'Kokubo', 'Japan',    '2001-01-23');
INSERT INTO player_stats VALUES ('ply905', 'tm28', 45, 'Goalkeeper', 191, 84, 'R');

INSERT INTO players VALUES ('ply906', 'Odisseas', 'Vlachodimos', 'Greece',    '1994-04-26');
INSERT INTO player_stats VALUES ('ply906', 'tm28', 99, 'Goalkeeper', 188, 78, 'R');

INSERT INTO players VALUES ('ply907', 'Álex', 'Grimaldo', 'Spain',    '1995-09-20');
INSERT INTO player_stats VALUES ('ply907', 'tm28', 3, 'Defender', 171, 69, 'L');

INSERT INTO players VALUES ('ply908', 'André', 'Almeida', 'Portugal',    '1990-09-10');
INSERT INTO player_stats VALUES ('ply908', 'tm28', 34, 'Defender', 186, 80, 'R');

INSERT INTO players VALUES ('ply909', 'António', 'Silva', 'Portugal',    '2003-10-31');
INSERT INTO player_stats VALUES ('ply909', 'tm28', 66, 'Defender', 182, NULL, 'R');

INSERT INTO players VALUES ('ply910', 'Alexander', 'Bah', 'Denmark',    '1997-12-09');
INSERT INTO player_stats VALUES ('ply910', 'tm28', 6, 'Defender', 183, 76, 'R');

INSERT INTO players VALUES ('ply911', 'John Anthony', 'Brooks', 'USA',    '1993-01-28');
INSERT INTO player_stats VALUES ('ply911', 'tm28', 25, 'Defender', 193, 78, 'L');

INSERT INTO players VALUES ('ply912', 'Diogo', 'Gonçalves', 'Portugal',    '1997-02-06');
INSERT INTO player_stats VALUES ('ply912', 'tm28', 17, 'Defender', 178, 71, 'R');

INSERT INTO players VALUES ('ply913', 'Gil', 'Dias', 'Portugal',    '1996-09-28');
INSERT INTO player_stats VALUES ('ply913', 'tm28', 31, 'Defender', 183, 75, 'L');

INSERT INTO players VALUES ('ply914', '', 'Gilberto', 'Brazil',    '1993-03-07');
INSERT INTO player_stats VALUES ('ply914', 'tm28', 2, 'Defender', 181, 75, 'R');

INSERT INTO players VALUES ('ply915', 'João', 'Victor', 'Brazil',    '1998-07-17');
INSERT INTO player_stats VALUES ('ply915', 'tm28', 38, 'Defender', 187, NULL, 'R');

INSERT INTO players VALUES ('ply916', 'Lucas', 'Veríssimo', 'Brazil',    '1995-07-02');
INSERT INTO player_stats VALUES ('ply916', 'tm28', 4, 'Defender', 188, 84, 'R');

INSERT INTO players VALUES ('ply917', '', 'Morato', 'Brazil',    '2001-06-30');
INSERT INTO player_stats VALUES ('ply917', 'tm28', 91, 'Defender', 190, 88, 'L');

INSERT INTO players VALUES ('ply918', 'Nicolás', 'Otamendi', 'Argentina',    '1988-02-12');
INSERT INTO player_stats VALUES ('ply918', 'tm28', 30, 'Defender', 183, 80, 'R');

INSERT INTO players VALUES ('ply919', 'Tomás', 'Tavares', 'Portugal',    '2001-03-07');
INSERT INTO player_stats VALUES ('ply919', 'tm28', NULL, 'Defender', 184, 73, 'R');

INSERT INTO players VALUES ('ply920', 'Fredrik', 'Aursnes', 'Norway',    '1995-12-10');
INSERT INTO player_stats VALUES ('ply920', 'tm28', 8, 'Midfielder', 179, 71, 'R');

INSERT INTO players VALUES ('ply921', '', 'Chiquinho', 'Portugal',    '1995-07-19');
INSERT INTO player_stats VALUES ('ply921', 'tm28', 22, 'Midfielder', 174, 68, 'R');

INSERT INTO players VALUES ('ply922', 'Julian', 'Draxler', 'Germany',    '1993-09-20');
INSERT INTO player_stats VALUES ('ply922', 'tm28', 93, 'Midfielder', 185, 72, 'R');

INSERT INTO players VALUES ('ply923', 'Enzo', 'Fernández', 'Argentina',    '2001-01-17');
INSERT INTO player_stats VALUES ('ply923', 'tm28', 13, 'Midfielder', 180, 77, 'R');

INSERT INTO players VALUES ('ply924', '', 'Florentino', 'Portugal',    '1999-08-19');
INSERT INTO player_stats VALUES ('ply924', 'tm28', 61, 'Midfielder', 184, 73, 'R');

INSERT INTO players VALUES ('ply925', 'João', 'Mário', 'Portugal',    '1993-01-19');
INSERT INTO player_stats VALUES ('ply925', 'tm28', 20, 'Midfielder', 179, 73, 'R');

INSERT INTO players VALUES ('ply926', 'Paulo', 'Bernardo', 'Portugal',    '2002-01-24');
INSERT INTO player_stats VALUES ('ply926', 'tm28', 55, 'Midfielder', 184, 78, 'R');

INSERT INTO players VALUES ('ply927', 'Mihailo', 'Ristić', 'Serbia',    '1995-10-31');
INSERT INTO player_stats VALUES ('ply927', 'tm28', 23, 'Midfielder', 180, 79, 'L');

INSERT INTO players VALUES ('ply928', 'David', 'Neres', 'Brazil',    '1997-03-03');
INSERT INTO player_stats VALUES ('ply928', 'tm28', 7, 'Forward', 175, 66, 'L');

INSERT INTO players VALUES ('ply929', 'Diego', 'Moreira', 'Portugal',    '2004-08-06');
INSERT INTO player_stats VALUES ('ply929', 'tm28', 96, 'Forward', 170, NULL, 'L');

INSERT INTO players VALUES ('ply930', 'Gonçalo', 'Ramos', 'Portugal',    '2001-06-20');
INSERT INTO player_stats VALUES ('ply930', 'tm28', 88, 'Forward', 185, 79, 'R');

INSERT INTO players VALUES ('ply931', 'Henrique', 'Araújo', 'Portugal',    '2002-01-19');
INSERT INTO player_stats VALUES ('ply931', 'tm28', 39, 'Forward', 180, 69, 'R');

INSERT INTO players VALUES ('ply932', 'Petar', 'Musa', 'Croatia',    '1998-03-04');
INSERT INTO player_stats VALUES ('ply932', 'tm28', 33, 'Forward', 190, 81, 'R');

INSERT INTO players VALUES ('ply933', 'Rafa', 'Silva', 'Portugal',    '1993-05-17');
INSERT INTO player_stats VALUES ('ply933', 'tm28', 27, 'Forward', 171, 66, 'R');

INSERT INTO players VALUES ('ply934', 'Rodrigo', 'Pinho', 'Brazil',    '1991-05-30');
INSERT INTO player_stats VALUES ('ply934', 'tm28', 18, 'Forward', 185, 79, 'L');

INSERT INTO players VALUES ('ply935', 'André', 'Paulo', 'Portugal',    '1996-12-18');
INSERT INTO player_stats VALUES ('ply935', 'tm29', 22, 'Goalkeeper', 188, 79, 'R');

INSERT INTO players VALUES ('ply936', 'Antonio', 'Adán', 'Spain',    '1987-05-13');
INSERT INTO player_stats VALUES ('ply936', 'tm29', 1, 'Goalkeeper', 190, 86, 'L');

INSERT INTO players VALUES ('ply937', 'Diego', 'Calai', 'Italy',    '2004-07-18');
INSERT INTO player_stats VALUES ('ply937', '', NULL, 'Goalkeeper', 190, 90, 'R');

INSERT INTO players VALUES ('ply938', 'Franco', 'Israel', 'Uruguay',    '2000-04-22');
INSERT INTO player_stats VALUES ('ply938', 'tm29', 12, 'Goalkeeper', 186, 79, 'R');

INSERT INTO players VALUES ('ply939', 'Jesús', 'Alcantar', 'Mexico',    '2003-07-30');
INSERT INTO player_stats VALUES ('ply939', 'tm29', 67, 'Defender', 184, 78, '');

INSERT INTO players VALUES ('ply940', 'Sebastián', 'Coates', 'Uruguay',    '1990-10-07');
INSERT INTO player_stats VALUES ('ply940', 'tm29', 4, 'Defender', 196, 92, 'R');

INSERT INTO players VALUES ('ply941', 'Flávio', 'Nazinho', 'Portugal',    '2003-07-20');
INSERT INTO player_stats VALUES ('ply941', 'tm29', 71, 'Defender', 179, 72, 'L');

INSERT INTO players VALUES ('ply942', 'Gonçalo', 'Inácio', 'Portugal',    '2001-08-25');
INSERT INTO player_stats VALUES ('ply942', 'tm29', 25, 'Defender', 186, 77, 'L');

INSERT INTO players VALUES ('ply943', 'José', 'Marsà', 'Spain',    '2002-03-04');
INSERT INTO player_stats VALUES ('ply943', 'tm29', 63, 'Defender', 185, 80, 'L');

INSERT INTO players VALUES ('ply944', 'Matheus', 'Reis', 'Brazil',    '1995-02-18');
INSERT INTO player_stats VALUES ('ply944', 'tm29', 2, 'Defender', 183, 77, 'L');

INSERT INTO players VALUES ('ply945', '', 'Neto', 'Portugal',    '1988-05-26');
INSERT INTO player_stats VALUES ('ply945', 'tm29', 13, 'Defender', 187, 71, 'R');

INSERT INTO players VALUES ('ply946', 'Pedro', 'Porro', 'Spain',    '1999-09-13');
INSERT INTO player_stats VALUES ('ply946', 'tm29', 24, 'Defender', 176, 71, 'R');

INSERT INTO players VALUES ('ply947', 'Ricardo', 'Esgaio', 'Portugal',    '1993-05-16');
INSERT INTO player_stats VALUES ('ply947', 'tm29', 47, 'Defender', 173, 68, 'R');

INSERT INTO players VALUES ('ply948', 'Jerry St.', 'Juste', 'Netherlands',    '1996-10-19');
INSERT INTO player_stats VALUES ('ply948', 'tm29', 3, 'Defender', 184, 74, 'R');

INSERT INTO players VALUES ('ply949', 'Sotirios', 'Alexandropoulos', 'Greece',    '2001-11-26');
INSERT INTO player_stats VALUES ('ply949', 'tm29', 6, 'Midfielder', 179, NULL, '');

INSERT INTO players VALUES ('ply950', 'Daniel', 'Bragança', 'Portugal',    '1999-05-27');
INSERT INTO player_stats VALUES ('ply950', 'tm29', 68, 'Midfielder', 169, 60, 'L');

INSERT INTO players VALUES ('ply951', 'Dário', 'Essugo', 'Portugal',    '2005-03-14');
INSERT INTO player_stats VALUES ('ply951', 'tm29', 84, 'Midfielder', 179, 76, 'R');

INSERT INTO players VALUES ('ply952', 'Eduardo', 'Henrique', 'Brazil',    '1995-05-17');
INSERT INTO player_stats VALUES ('ply952', 'tm29', NULL, 'Midfielder', 186, 73, 'R');

INSERT INTO players VALUES ('ply953', 'Abdul', 'Issahaku', 'Ghana',    '2004-03-08');
INSERT INTO player_stats VALUES ('ply953', 'tm29', 18, 'Midfielder', 177, NULL, 'L');

INSERT INTO players VALUES ('ply954', 'Mateus', 'Fernandes', 'Portugal',    '2004-07-10');
INSERT INTO player_stats VALUES ('ply954', 'tm29', 82, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply955', 'Hidemasa', 'Morita', 'Japan',    '1995-05-10');
INSERT INTO player_stats VALUES ('ply955', 'tm29', 5, 'Midfielder', 177, 75, 'R');

INSERT INTO players VALUES ('ply956', 'Manuel', 'Ugarte', 'Uruguay',    '2001-04-11');
INSERT INTO player_stats VALUES ('ply956', 'tm29', 15, 'Midfielder', 182, 73, 'R');

INSERT INTO players VALUES ('ply957', 'Arthur', 'Gomes', 'Brazil',    '1998-07-03');
INSERT INTO player_stats VALUES ('ply957', 'tm29', 33, 'Forward', 174, 68, 'R');

INSERT INTO players VALUES ('ply958', 'Marcus', 'Edwards', 'England',    '1998-12-03');
INSERT INTO player_stats VALUES ('ply958', 'tm29', 10, 'Forward', 168, 65, 'L');

INSERT INTO players VALUES ('ply959', 'Jovane', 'Cabral', 'Cape Verde',    '1998-06-14');
INSERT INTO player_stats VALUES ('ply959', 'tm29', NULL, 'Forward', 176, 72, 'R');

INSERT INTO players VALUES ('ply960', 'Nuno', 'Santos', 'Portugal',    '1995-02-13');
INSERT INTO player_stats VALUES ('ply960', 'tm29', 11, 'Forward', 176, 73, 'L');

INSERT INTO players VALUES ('ply961', '', 'Paulinho', 'Portugal',    '1992-11-09');
INSERT INTO player_stats VALUES ('ply961', 'tm29', 20, 'Forward', 188, 82, 'L');

INSERT INTO players VALUES ('ply962', 'Pedro', 'Gonçalves', 'Portugal',    '1998-06-28');
INSERT INTO player_stats VALUES ('ply962', 'tm29', 28, 'Forward', 173, 65, 'R');

INSERT INTO players VALUES ('ply963', '', 'Rochinha', 'Portugal',    '1995-05-03');
INSERT INTO player_stats VALUES ('ply963', 'tm29', 16, 'Forward', 169, 68, 'R');

INSERT INTO players VALUES ('ply964', 'Rodrigo', 'Ribeiro', 'Portugal',    '2005-04-28');
INSERT INTO player_stats VALUES ('ply964', 'tm29', 91, 'Forward', 185, NULL, 'R');

INSERT INTO players VALUES ('ply965', 'Tiago', 'Ferreira', 'Portugal',    '2002-03-18');
INSERT INTO player_stats VALUES ('ply965', 'tm29', 59, 'Forward', 174, 64, 'L');

INSERT INTO players VALUES ('ply966', '', 'Trincão', 'Portugal',    '1999-12-29');
INSERT INTO player_stats VALUES ('ply966', 'tm29', 17, 'Forward', 183, 77, 'L');

INSERT INTO players VALUES ('ply967', 'Koen', 'Casteels', 'Belgium',    '1992-06-25');
INSERT INTO player_stats VALUES ('ply967', 'tm30', 1, 'Goalkeeper', 197, 78, 'L');

INSERT INTO players VALUES ('ply968', 'Niklas', 'Klinger', 'Germany',    '1995-10-13');
INSERT INTO player_stats VALUES ('ply968', 'tm30', 30, 'Goalkeeper', 187, 85, 'R');

INSERT INTO players VALUES ('ply969', 'Pavao', 'Pervan', 'Austria',    '1987-11-13');
INSERT INTO player_stats VALUES ('ply969', 'tm30', 12, 'Goalkeeper', 194, 88, 'R');

INSERT INTO players VALUES ('ply970', 'Philipp', 'Schulze', 'Germany',    '2003-01-29');
INSERT INTO player_stats VALUES ('ply970', 'tm30', 35, 'Goalkeeper', 189, 82, '');

INSERT INTO players VALUES ('ply971', 'Ridle', 'Baku', 'Germany',    '1998-04-08');
INSERT INTO player_stats VALUES ('ply971', 'tm30', 20, 'Defender', 176, 72, 'R');

INSERT INTO players VALUES ('ply972', 'Sebastiaan', 'Bornauw', 'Belgium',    '1999-03-22');
INSERT INTO player_stats VALUES ('ply972', 'tm30', 3, 'Defender', 191, 81, 'R');

INSERT INTO players VALUES ('ply973', 'Kilian', 'Fischer', 'Germany',    '2000-10-12');
INSERT INTO player_stats VALUES ('ply973', 'tm30', 2, 'Defender', 182, 77, '');

INSERT INTO players VALUES ('ply974', 'Maxence', 'Lacroix', 'France',    '2000-04-06');
INSERT INTO player_stats VALUES ('ply974', 'tm30', 4, 'Defender', 190, 88, 'R');

INSERT INTO players VALUES ('ply975', 'Paulo', 'Otávio', 'Brazil',    '1994-11-23');
INSERT INTO player_stats VALUES ('ply975', 'tm30', 6, 'Defender', 173, 68, 'L');

INSERT INTO players VALUES ('ply976', 'Jérôme', 'Roussillon', 'France',    '1993-01-06');
INSERT INTO player_stats VALUES ('ply976', 'tm30', 15, 'Defender', 175, 80, 'L');

INSERT INTO players VALUES ('ply977', 'Micky van de', 'Ven', 'Netherlands',    '2001-04-19');
INSERT INTO player_stats VALUES ('ply977', 'tm30', 5, 'Defender', 193, 81, 'L');

INSERT INTO players VALUES ('ply978', 'Maximilian', 'Arnold', 'Germany',    '1994-05-27');
INSERT INTO player_stats VALUES ('ply978', 'tm30', 27, 'Midfielder', 184, 74, 'L');

INSERT INTO players VALUES ('ply979', 'Bartol', 'Franjić', 'Croatia',    '2000-01-14');
INSERT INTO player_stats VALUES ('ply979', 'tm30', 38, 'Midfielder', 188, 77, 'L');

INSERT INTO players VALUES ('ply980', 'Yannick', 'Gerhardt', 'Germany',    '1994-03-13');
INSERT INTO player_stats VALUES ('ply980', 'tm30', 31, 'Midfielder', 184, 81, 'L');

INSERT INTO players VALUES ('ply981', 'Josuha', 'Guilavogui', 'France',    '1990-09-19');
INSERT INTO player_stats VALUES ('ply981', 'tm30', 29, 'Midfielder', 188, 77, 'R');

INSERT INTO players VALUES ('ply982', 'Felix', 'Nmecha', 'Germany',    '2000-10-10');
INSERT INTO player_stats VALUES ('ply982', 'tm30', 22, 'Midfielder', 188, 74, 'R');

INSERT INTO players VALUES ('ply983', 'Kevin', 'Paredes', 'USA',    '2003-05-07');
INSERT INTO player_stats VALUES ('ply983', 'tm30', 40, 'Midfielder', 175, 61, 'L');

INSERT INTO players VALUES ('ply984', 'Maximilian', 'Philipp', 'Germany',    '1994-03-01');
INSERT INTO player_stats VALUES ('ply984', 'tm30', 17, 'Midfielder', 183, 79, 'R');

INSERT INTO players VALUES ('ply985', 'Mattias', 'Svanberg', 'Sweden',    '1999-01-05');
INSERT INTO player_stats VALUES ('ply985', 'tm30', 32, 'Midfielder', 185, 77, 'R');

INSERT INTO players VALUES ('ply986', 'Patrick', 'Wimmer', 'Austria',    '2001-05-30');
INSERT INTO player_stats VALUES ('ply986', 'tm30', 39, 'Midfielder', 182, 77, '');

INSERT INTO players VALUES ('ply987', 'Josip', 'Brekalo', 'Croatia',    '1998-06-23');
INSERT INTO player_stats VALUES ('ply987', 'tm30', 14, 'Forward', 175, 70, 'R');

INSERT INTO players VALUES ('ply988', 'Jakub', 'Kamiński', 'Poland',    '2002-06-05');
INSERT INTO player_stats VALUES ('ply988', 'tm30', 16, 'Forward', 179, 64, 'R');

INSERT INTO players VALUES ('ply989', 'Max', 'Kruse', 'Germany',    '1988-03-19');
INSERT INTO player_stats VALUES ('ply989', 'tm30', 9, 'Forward', 180, 76, 'L');

INSERT INTO players VALUES ('ply990', 'Omar', 'Marmoush', 'Egypt',    '1999-02-07');
INSERT INTO player_stats VALUES ('ply990', 'tm30', 33, 'Forward', 183, 81, 'R');

INSERT INTO players VALUES ('ply991', 'Lukas', 'Nmecha', 'Germany',    '1998-12-14');
INSERT INTO player_stats VALUES ('ply991', 'tm30', 10, 'Forward', 185, 80, 'R');

INSERT INTO players VALUES ('ply992', 'Dženan', 'Pejčinović', 'Germany',    '2005-02-15');
INSERT INTO player_stats VALUES ('ply992', 'tm30', 18, 'Forward', 188, NULL, 'L');

INSERT INTO players VALUES ('ply993', 'Luca', 'Waldschmidt', 'Germany',    '1996-05-19');
INSERT INTO player_stats VALUES ('ply993', 'tm30', 7, 'Forward', 181, 75, 'L');

INSERT INTO players VALUES ('ply994', 'Jonas', 'Wind', 'Denmark',    '1999-02-07');
INSERT INTO player_stats VALUES ('ply994', 'tm30', 23, 'Forward', 190, 82, 'R');

INSERT INTO players VALUES ('ply995', 'Pascal', 'Formann', 'Germany',    '1982-11-16');
INSERT INTO player_stats VALUES ('ply995', 'tm30', NULL, 'Goalkeeping', 188, 75, '');

INSERT INTO players VALUES ('ply996', 'Christoph', 'Tebel', 'Germany',    '1988-06-13');
INSERT INTO player_stats VALUES ('ply996', 'tm30', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply997', 'Michele', 'Putaro', 'Germany',    '1974-02-25');
INSERT INTO player_stats VALUES ('ply997', 'tm30', NULL, 'Rehab', 176, NULL, '');

INSERT INTO players VALUES ('ply998', 'Alexander', 'Klitzpera', 'Germany',    '1977-10-19');
INSERT INTO player_stats VALUES ('ply998', 'tm30', NULL, 'Game', 184, 79, 'R');

INSERT INTO players VALUES ('ply999', 'Tim', 'Cezanne', 'Germany',    '1989-08-15');
INSERT INTO player_stats VALUES ('ply999', 'tm30', NULL, 'Video', NULL, NULL, '');

INSERT INTO players VALUES ('ply1000', 'Martin', 'Raschick', 'Germany',    '1990-07-08');
INSERT INTO player_stats VALUES ('ply1000', 'tm30', NULL, 'Video', NULL, NULL, '');

INSERT INTO players VALUES ('ply1001', 'Aaron', 'Briggs', 'England',    '1987-06-27');
INSERT INTO player_stats VALUES ('ply1001', 'tm30', NULL, 'Chief', NULL, NULL, '');

INSERT INTO players VALUES ('ply1002', 'Iker', 'Álvarez', 'Andorra',    '2001-07-25');
INSERT INTO player_stats VALUES ('ply1002', '', 13, 'Goalkeeper', 190, 77, 'R');

INSERT INTO players VALUES ('ply1003', 'Filip', 'Jörgensen', 'Denmark',    '2002-04-16');
INSERT INTO player_stats VALUES ('ply1003', '', 1, 'Goalkeeper', 190, 82, 'R');

INSERT INTO players VALUES ('ply1004', 'Pepe', 'Reina', 'Spain',    '1982-08-31');
INSERT INTO player_stats VALUES ('ply1004', 'tm31', 1, 'Goalkeeper', 188, 92, 'R');

INSERT INTO players VALUES ('ply1005', 'Gerónimo', 'Rulli', 'Argentina',    '1992-05-20');
INSERT INTO player_stats VALUES ('ply1005', 'tm31', 13, 'Goalkeeper', 189, 84, 'R');

INSERT INTO players VALUES ('ply1006', 'Alberto', 'Moreno', 'Spain',    '1992-07-05');
INSERT INTO player_stats VALUES ('ply1006', 'tm31', 18, 'Defender', 171, 65, 'L');

INSERT INTO players VALUES ('ply1007', 'Dani', 'Tasende', 'Spain',    '2000-07-06');
INSERT INTO player_stats VALUES ('ply1007', 'tm31', 36, 'Defender', 163, NULL, 'L');

INSERT INTO players VALUES ('ply1008', 'De la', 'Fuente', 'Spain',    '1999-02-26');
INSERT INTO player_stats VALUES ('ply1008', 'tm31', 37, 'Defender', 179, 76, 'R');

INSERT INTO players VALUES ('ply1009', 'Juan', 'Foyth', 'Argentina',    '1998-01-12');
INSERT INTO player_stats VALUES ('ply1009', 'tm31', 8, 'Defender', 187, 69, 'R');

INSERT INTO players VALUES ('ply1010', 'Jorge', 'Cuenca', 'Spain',    '1999-11-17');
INSERT INTO player_stats VALUES ('ply1010', 'tm31', 5, 'Defender', 190, 75, 'L');

INSERT INTO players VALUES ('ply1011', 'Kiko', 'Femenía', 'Spain',    '1991-02-02');
INSERT INTO player_stats VALUES ('ply1011', 'tm31', 2, 'Defender', 171, 61, 'R');

INSERT INTO players VALUES ('ply1012', 'Aïssa', 'Mandi', 'Algeria',    '1991-10-22');
INSERT INTO player_stats VALUES ('ply1012', 'tm31', 23, 'Defender', 184, 78, 'R');

INSERT INTO players VALUES ('ply1013', 'Johan', 'Mojica', 'Colombia',    '1992-08-21');
INSERT INTO player_stats VALUES ('ply1013', 'tm31', 12, 'Defender', 185, 66, 'L');

INSERT INTO players VALUES ('ply1014', 'Pau', 'Torres', 'Spain',    '1997-01-16');
INSERT INTO player_stats VALUES ('ply1014', 'tm31', 4, 'Defender', 191, 80, 'L');

INSERT INTO players VALUES ('ply1015', '', 'Pedraza', 'Spain',    '1996-04-09');
INSERT INTO player_stats VALUES ('ply1015', 'tm31', 24, 'Defender', 184, 73, 'L');

INSERT INTO players VALUES ('ply1016', 'Raúl', 'Albiol', 'Spain',    '1985-09-04');
INSERT INTO player_stats VALUES ('ply1016', 'tm31', 3, 'Defender', 190, 82, 'R');

INSERT INTO players VALUES ('ply1017', 'Étienne', 'Capoue', 'France',    '1988-07-11');
INSERT INTO player_stats VALUES ('ply1017', 'tm31', 6, 'Midfielder', 189, 80, 'R');

INSERT INTO players VALUES ('ply1018', 'Carlo', 'García', 'Spain',    '2001-02-12');
INSERT INTO player_stats VALUES ('ply1018', 'tm31', 28, 'Midfielder', 182, 75, 'R');

INSERT INTO players VALUES ('ply1019', 'Francis', 'Coquelin', 'France',    '1991-05-13');
INSERT INTO player_stats VALUES ('ply1019', 'tm31', 19, 'Midfielder', 177, 73, 'R');

INSERT INTO players VALUES ('ply1020', 'Dani', 'Parejo', 'Spain',    '1989-04-16');
INSERT INTO player_stats VALUES ('ply1020', 'tm31', 10, 'Midfielder', 182, 74, 'R');

INSERT INTO players VALUES ('ply1021', 'Giovani Lo', 'Celso', 'Argentina',    '1996-04-09');
INSERT INTO player_stats VALUES ('ply1021', 'tm31', 17, 'Midfielder', 177, 68, 'L');

INSERT INTO players VALUES ('ply1022', 'Manu', 'Morlanes', 'Spain',    '1999-01-12');
INSERT INTO player_stats VALUES ('ply1022', 'tm31', 20, 'Midfielder', 178, 75, 'R');

INSERT INTO players VALUES ('ply1023', '', 'Pacheco', 'Spain',    '2002-01-03');
INSERT INTO player_stats VALUES ('ply1023', '', 20, 'Midfielder', 170, NULL, '');

INSERT INTO players VALUES ('ply1024', 'Rodrigo', 'Alonso', 'Spain',    '2003-01-04');
INSERT INTO player_stats VALUES ('ply1024', 'tm31', 40, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply1025', '', 'Trigueros', 'Spain',    '1991-10-17');
INSERT INTO player_stats VALUES ('ply1025', 'tm31', 14, 'Midfielder', 178, 75, 'R');

INSERT INTO players VALUES ('ply1026', 'Álex', 'Baena', 'Spain',    '2001-07-20');
INSERT INTO player_stats VALUES ('ply1026', 'tm31', 16, 'Forward', 174, 69, 'R');

INSERT INTO players VALUES ('ply1027', 'Samuel', 'Chukwueze', 'Nigeria',    '1999-05-22');
INSERT INTO player_stats VALUES ('ply1027', 'tm31', 11, 'Forward', 172, 70, 'L');

INSERT INTO players VALUES ('ply1028', 'Arnaut', 'Danjuma', 'Netherlands',    '1997-01-31');
INSERT INTO player_stats VALUES ('ply1028', 'tm31', 9, 'Forward', 178, 74, 'R');

INSERT INTO players VALUES ('ply1029', 'Fer', 'Niño', 'Spain',    '2000-10-24');
INSERT INTO player_stats VALUES ('ply1029', 'tm31', 34, 'Forward', 191, 81, 'R');

INSERT INTO players VALUES ('ply1030', 'Gerard', 'Moreno', 'Spain',    '1992-04-07');
INSERT INTO player_stats VALUES ('ply1030', 'tm31', 7, 'Forward', 180, 77, 'L');

INSERT INTO players VALUES ('ply1031', 'Nicolas', 'Jackson', 'Senegal',    '2001-06-20');
INSERT INTO player_stats VALUES ('ply1031', 'tm31', 15, 'Forward', 186, 80, 'R');

INSERT INTO players VALUES ('ply1032', 'José', 'Morales', 'Spain',    '1987-07-23');
INSERT INTO player_stats VALUES ('ply1032', 'tm31', 22, 'Forward', 180, 70, 'R');

INSERT INTO players VALUES ('ply1033', '', 'Yeremy', 'Spain',    '2002-10-20');
INSERT INTO player_stats VALUES ('ply1033', 'tm31', 21, 'Forward', 172, 70, 'R');

INSERT INTO players VALUES ('ply1034', 'Javier', 'García', 'Spain',    '1979-07-04');
INSERT INTO player_stats VALUES ('ply1034', 'tm31', NULL, 'Goalkeeping', 173, NULL, '');

INSERT INTO players VALUES ('ply1035', 'David', 'Byazrov', 'Russia',    '2003-02-12');
INSERT INTO player_stats VALUES ('ply1035', '', 91, 'Goalkeeper', 190, 78, 'R');

INSERT INTO players VALUES ('ply1036', '', 'Ivan', 'Brazil',    '1997-02-07');
INSERT INTO player_stats VALUES ('ply1036', 'tm32', 1, 'Goalkeeper', 194, 96, 'R');

INSERT INTO players VALUES ('ply1037', 'Mikhail', 'Kerzhakov', 'Russia',    '1987-01-28');
INSERT INTO player_stats VALUES ('ply1037', 'tm32', 41, 'Goalkeeper', 191, 88, 'R');

INSERT INTO players VALUES ('ply1038', 'Georgiy', 'Korolev', 'Russia',    '2003-08-22');
INSERT INTO player_stats VALUES ('ply1038', 'tm32', 95, 'Goalkeeper', 196, 80, 'R');

INSERT INTO players VALUES ('ply1039', 'Daniil', 'Odoevskiy', 'Russia',    '2003-01-22');
INSERT INTO player_stats VALUES ('ply1039', 'tm32', 71, 'Goalkeeper', 190, 78, 'L');

INSERT INTO players VALUES ('ply1040', 'Arsen', 'Adamov', 'Russia',    '1999-10-20');
INSERT INTO player_stats VALUES ('ply1040', 'tm32', 23, 'Defender', 180, 69, 'R');

INSERT INTO players VALUES ('ply1041', 'Nuraly', 'Alip', 'Kazakhstan',    '1999-12-22');
INSERT INTO player_stats VALUES ('ply1041', 'tm32', 28, 'Defender', 190, 70, '');

INSERT INTO players VALUES ('ply1042', 'Dmitriy', 'Chistyakov', 'Russia',    '1994-01-13');
INSERT INTO player_stats VALUES ('ply1042', 'tm32', 2, 'Defender', 185, 79, 'R');

INSERT INTO players VALUES ('ply1043', 'Douglas', 'Santos', 'Brazil',    '1994-03-22');
INSERT INTO player_stats VALUES ('ply1043', 'tm32', 3, 'Defender', 175, 70, 'L');

INSERT INTO players VALUES ('ply1044', 'Vyacheslav', 'Karavaev', 'Russia',    '1995-05-20');
INSERT INTO player_stats VALUES ('ply1044', 'tm32', 15, 'Defender', 175, 70, 'R');

INSERT INTO players VALUES ('ply1045', 'Danil', 'Krugovoy', 'Russia',    '1998-05-28');
INSERT INTO player_stats VALUES ('ply1045', 'tm32', 4, 'Defender', 175, 70, 'L');

INSERT INTO players VALUES ('ply1046', 'Dejan', 'Lovren', 'Croatia',    '1989-07-05');
INSERT INTO player_stats VALUES ('ply1046', 'tm32', 6, 'Defender', 188, 84, 'R');

INSERT INTO players VALUES ('ply1047', '', 'Rodrigão', 'Brazil',    '1995-09-11');
INSERT INTO player_stats VALUES ('ply1047', 'tm32', 55, 'Defender', 191, 89, 'R');

INSERT INTO players VALUES ('ply1048', 'Wilmar', 'Barrios', 'Colombia',    '1993-10-17');
INSERT INTO player_stats VALUES ('ply1048', 'tm32', 5, 'Midfielder', 178, 74, 'R');

INSERT INTO players VALUES ('ply1049', '', 'Claudinho', 'Brazil',    '1997-01-28');
INSERT INTO player_stats VALUES ('ply1049', 'tm32', 11, 'Midfielder', 172, 65, 'R');

INSERT INTO players VALUES ('ply1050', 'Aleksandr', 'Erokhin', 'Russia',    '1989-10-13');
INSERT INTO player_stats VALUES ('ply1050', 'tm32', 21, 'Midfielder', 195, 80, 'R');

INSERT INTO players VALUES ('ply1051', 'Evgeny', 'Kim', 'Russia',    '2003-05-17');
INSERT INTO player_stats VALUES ('ply1051', 'tm32', 72, 'Midfielder', 181, 72, 'R');

INSERT INTO players VALUES ('ply1052', 'Daler', 'Kuzyaev', 'Russia',    '1993-01-15');
INSERT INTO player_stats VALUES ('ply1052', 'tm32', 14, 'Midfielder', 182, 74, 'R');

INSERT INTO players VALUES ('ply1053', 'Dmitriy', 'Sergeev', 'Russia',    '2000-04-03');
INSERT INTO player_stats VALUES ('ply1053', 'tm32', 45, 'Midfielder', 183, 73, 'R');

INSERT INTO players VALUES ('ply1054', 'Kirill', 'Stolbov', 'Russia',    '2004-04-08');
INSERT INTO player_stats VALUES ('ply1054', '', 60, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply1055', '', 'Wendel', 'Brazil',    '1997-08-28');
INSERT INTO player_stats VALUES ('ply1055', 'tm32', 8, 'Midfielder', 180, 73, 'R');

INSERT INTO players VALUES ('ply1056', 'Zelimkhan', 'Bakaev', 'Russia',    '1996-07-01');
INSERT INTO player_stats VALUES ('ply1056', 'tm32', 7, 'Forward', 180, 77, 'L');

INSERT INTO players VALUES ('ply1057', 'Mateo', 'Cassierra', 'Colombia',    '1997-04-13');
INSERT INTO player_stats VALUES ('ply1057', 'tm32', 30, 'Forward', 183, 75, 'R');

INSERT INTO players VALUES ('ply1058', 'Gustavo', 'Mantuan', 'Brazil',    '2001-06-20');
INSERT INTO player_stats VALUES ('ply1058', 'tm32', 31, 'Forward', 174, NULL, 'R');

INSERT INTO players VALUES ('ply1059', '', 'Malcom', 'Brazil',    '1997-02-26');
INSERT INTO player_stats VALUES ('ply1059', 'tm32', 10, 'Forward', 171, 74, 'L');

INSERT INTO players VALUES ('ply1060', 'Andrey', 'Mostovoy', 'Russia',    '1997-11-05');
INSERT INTO player_stats VALUES ('ply1060', 'tm32', 17, 'Forward', 180, 77, 'R');

INSERT INTO players VALUES ('ply1061', 'Ivan', 'Sergeev', 'Russia',    '1995-05-11');
INSERT INTO player_stats VALUES ('ply1061', 'tm32', 33, 'Forward', 184, 75, 'R');

INSERT INTO players VALUES ('ply1062', 'Aleksey', 'Sutormin', 'Russia',    '1994-01-10');
INSERT INTO player_stats VALUES ('ply1062', 'tm32', 19, 'Forward', 188, 79, 'R');

INSERT INTO players VALUES ('ply1063', 'Mikhail', 'Biryukov', 'Russia',    '1958-05-07');
INSERT INTO player_stats VALUES ('ply1063', 'tm32', NULL, 'Goalkeeping', 190, 87, '');

INSERT INTO players VALUES ('ply1064', 'Gabriel', 'Jesus', 'Brazil',    '1997-04-03');
INSERT INTO player_stats VALUES ('ply1064', '', 9, 'Forward', 175, 68, 'R');

INSERT INTO players VALUES ('ply1065', 'Ander', 'Herrera', 'Spain',    '1989-08-14');
INSERT INTO player_stats VALUES ('ply1065', '', 23, 'Midfielder', 182, 71, 'R');

INSERT INTO players VALUES ('ply1066', 'Idrissa', 'Gueye', 'Senegal',    '1989-09-26');
INSERT INTO player_stats VALUES ('ply1066', '', 27, 'Midfielder', 174, 66, 'R');

INSERT INTO players VALUES ('ply1067', '', 'Fernandinho', 'Brazil',    '1985-05-04');
INSERT INTO player_stats VALUES ('ply1067', '', 50, 'Midfielder', 179, 67, 'R');

INSERT INTO players VALUES ('ply1068', '', 'Angeliño', 'Spain',    '1997-01-04');
INSERT INTO player_stats VALUES ('ply1068', '', 11, 'Defender', 175, 69, 'L');

INSERT INTO players VALUES ('ply1069', 'Georginio', 'Wijnaldum', 'Netherlands',    '1990-11-11');
INSERT INTO player_stats VALUES ('ply1069', '', 25, 'Midfielder', 175, 69, 'R');

INSERT INTO players VALUES ('ply1070', 'Oleksandr', 'Zinchenko', 'Ukraine',    '1996-12-15');
INSERT INTO player_stats VALUES ('ply1070', '', 35, 'Defender', 175, 65, 'L');

INSERT INTO players VALUES ('ply1071', 'Fábio', 'Vieira', 'Portugal',    '2000-05-30');
INSERT INTO player_stats VALUES ('ply1071', '', 21, 'Midfielder', 170, 63, 'L');

INSERT INTO players VALUES ('ply1072', 'Renan', 'Lodi', 'Brazil',    '1998-04-08');
INSERT INTO player_stats VALUES ('ply1072', '', 32, 'Defender', 173, 70, 'L');

INSERT INTO players VALUES ('ply1073', 'Luis', 'Suárez', 'Uruguay',    '1987-01-24');
INSERT INTO player_stats VALUES ('ply1073', '', 9, 'Forward', 182, 83, 'R');

INSERT INTO players VALUES ('ply1074', 'Chancel', 'Mbemba', 'Congo DR',    '1994-08-08');
INSERT INTO player_stats VALUES ('ply1074', '', 99, 'Defender', 182, 81, 'R');

INSERT INTO players VALUES ('ply1075', 'Sérgio', 'Oliveira', 'Portugal',    '1992-06-02');
INSERT INTO player_stats VALUES ('ply1075', '', 27, 'Midfielder', 181, 78, 'R');

INSERT INTO players VALUES ('ply1076', 'Miralem', 'Pjanić', 'Bosnia-Herzegovina',    '1990-04-02');
INSERT INTO player_stats VALUES ('ply1076', '', NULL, 'Emirates', 178, 72, 'R');

INSERT INTO players VALUES ('ply1077', 'Matheus', 'Nunes', 'Brazil',    '1998-08-27');
INSERT INTO player_stats VALUES ('ply1077', '', 27, 'Midfielder', 183, 74, 'R');

INSERT INTO players VALUES ('ply1078', 'Nico', 'Tagliafico', 'Argentina',    '1992-08-31');
INSERT INTO player_stats VALUES ('ply1078', '', 3, 'Defender', 172, 65, 'L');

INSERT INTO players VALUES ('ply1079', '', 'Tabata', 'Brazil',    '1997-03-30');
INSERT INTO player_stats VALUES ('ply1079', '', NULL, 'Forward', 175, 72, 'L');

INSERT INTO players VALUES ('ply1080', 'Perr', 'Schuurs', 'Netherlands',    '1999-11-26');
INSERT INTO player_stats VALUES ('ply1080', '', 3, 'Defender', 191, 87, 'R');

INSERT INTO players VALUES ('ply1081', 'Adama Traoré', 'I', 'Mali',    '1995-06-05');
INSERT INTO player_stats VALUES ('ply1081', '', 20, 'Forward', 177, 74, 'L');

INSERT INTO players VALUES ('ply1082', '', 'Cristiano', 'Brazil',    '1993-08-29');
INSERT INTO player_stats VALUES ('ply1082', '', 15, 'Defender', 180, 76, 'L');

INSERT INTO players VALUES ('ply1083', 'Momo', 'Yansane', 'Guinea',    '1997-07-29');
INSERT INTO player_stats VALUES ('ply1083', '', 99, 'Forward', 180, 79, 'R');

INSERT INTO players VALUES ('ply1084', 'Jasurbek', 'Yakhshiboev', 'Uzbekistan',    '1997-06-24');
INSERT INTO player_stats VALUES ('ply1084', '', NULL, 'Forward', 178, 74, '');

INSERT INTO players VALUES ('ply1085', 'Sébastien', 'Thill', 'Luxembourg',    '1993-12-29');
INSERT INTO player_stats VALUES ('ply1085', '', 29, 'Midfielder', 178, 70, 'L');

INSERT INTO players VALUES ('ply1086', 'Arturo', 'Vidal', 'Chile',    '1987-05-22');
INSERT INTO player_stats VALUES ('ply1086', '', 32, 'Midfielder', 180, 75, 'R');

INSERT INTO players VALUES ('ply1087', 'Alan', 'Patrick', 'Brazil',    '1991-05-13');
INSERT INTO player_stats VALUES ('ply1087', '', 10, 'Midfielder', 177, 70, 'R');

INSERT INTO players VALUES ('ply1088', 'Alexis', 'Sánchez', 'Chile',    '1988-12-19');
INSERT INTO player_stats VALUES ('ply1088', '', 70, 'Forward', 169, 62, 'R');

INSERT INTO players VALUES ('ply1089', 'Ivan', 'Perišić', 'Croatia',    '1989-02-02');
INSERT INTO player_stats VALUES ('ply1089', '', 14, 'Midfielder', 186, 80, '');

INSERT INTO players VALUES ('ply1090', 'Boban', 'Nikolov', 'North Macedonia',    '1994-07-28');
INSERT INTO player_stats VALUES ('ply1090', '', 24, 'Midfielder', 182, 72, 'R');

INSERT INTO players VALUES ('ply1091', '', 'Éverton', 'Brazil',    '1996-03-22');
INSERT INTO player_stats VALUES ('ply1091', '', 11, 'Forward', 174, 72, 'R');

INSERT INTO players VALUES ('ply1092', 'Corentin', 'Tolisso', 'France',    '1994-08-03');
INSERT INTO player_stats VALUES ('ply1092', '', 88, 'Midfielder', 181, 81, 'R');

INSERT INTO players VALUES ('ply1093', 'Nicolas Moumi', 'Ngamaleu', 'Cameroon',    '1994-07-09');
INSERT INTO player_stats VALUES ('ply1093', '', 13, 'Midfielder', 181, 74, 'R');

INSERT INTO players VALUES ('ply1094', 'Jordan', 'Siebatcheu', 'USA',    '1996-04-26');
INSERT INTO player_stats VALUES ('ply1094', '', 45, 'Forward', 190, 84, 'R');

INSERT INTO players VALUES ('ply1095', 'Remo', 'Freuler', 'Switzerland',    '1992-04-15');
INSERT INTO player_stats VALUES ('ply1095', '', 23, 'Midfielder', 181, 77, 'R');

INSERT INTO players VALUES ('ply1096', 'Aleksey', 'Miranchuk', 'Russia',    '1995-10-17');
INSERT INTO player_stats VALUES ('ply1096', '', 59, 'Midfielder', 182, 74, 'L');

INSERT INTO players VALUES ('ply1097', 'Matteo', 'Pessina', 'Italy',    '1997-04-21');
INSERT INTO player_stats VALUES ('ply1097', '', 32, 'Midfielder', 187, 75, 'L');

INSERT INTO players VALUES ('ply1098', 'Paco', 'Alcácer', 'Spain',    '1993-08-30');
INSERT INTO player_stats VALUES ('ply1098', '', NULL, 'Emirates', 175, 70, 'R');

INSERT INTO players VALUES ('ply1099', 'Jesse', 'Lingard', 'England',    '1992-12-15');
INSERT INTO player_stats VALUES ('ply1099', '', 11, 'Midfielder', 174, 65, 'R');

INSERT INTO players VALUES ('ply1100', 'Josip', 'Iličič', 'Slovenia',    '1988-01-29');
INSERT INTO player_stats VALUES ('ply1100', '', NULL, 'Forward', 190, 79, 'L');

INSERT INTO players VALUES ('ply1101', 'Michel', 'Aebischer', 'Switzerland',    '1997-01-06');
INSERT INTO player_stats VALUES ('ply1101', '', 20, 'Midfielder', 183, 74, 'R');

INSERT INTO players VALUES ('ply1102', 'Silvan', 'Hefti', 'Switzerland',    '1997-10-25');
INSERT INTO player_stats VALUES ('ply1102', '', 36, 'Defender', 183, 80, 'R');

INSERT INTO players VALUES ('ply1103', 'Moi', 'Gómez', 'Spain',    '1994-06-23');
INSERT INTO player_stats VALUES ('ply1103', '', 16, 'Midfielder', 176, 73, 'R');

INSERT INTO players VALUES ('ply1104', 'Burak', 'Yılmaz', 'Turkey',    '1985-07-15');
INSERT INTO player_stats VALUES ('ply1104', '', 17, 'Forward', 188, 81, 'R');

INSERT INTO players VALUES ('ply1105', 'Renato', 'Steffen', 'Switzerland',    '1991-11-03');
INSERT INTO player_stats VALUES ('ply1105', '', 22, 'Midfielder', 170, 65, 'L');

INSERT INTO players VALUES ('ply1106', 'Rasmus', 'Kristensen', 'Denmark',    '1997-07-11');
INSERT INTO player_stats VALUES ('ply1106', '', 25, 'Defender', 186, 70, 'R');

INSERT INTO players VALUES ('ply1107', 'Jonathan', 'Ikoné', 'France',    '1998-05-02');
INSERT INTO player_stats VALUES ('ply1107', '', 11, 'Forward', 175, 67, 'L');

INSERT INTO players VALUES ('ply1108', 'Zeki', 'Çelik', 'Turkey',    '1997-02-17');
INSERT INTO player_stats VALUES ('ply1108', '', 19, 'Defender', 180, 78, 'R');

INSERT INTO players VALUES ('ply1109', 'Rodrigo', 'Bentancur', 'Uruguay',    '1997-06-25');
INSERT INTO player_stats VALUES ('ply1109', '', 30, 'Midfielder', 187, 78, 'R');

INSERT INTO players VALUES ('ply1110', 'Paulo', 'Dybala', 'Argentina',    '1993-11-15');
INSERT INTO player_stats VALUES ('ply1110', '', 21, 'Forward', 177, 75, 'L');

INSERT INTO players VALUES ('ply1111', 'Yaroslav', 'Rakitskiy', 'Ukraine',    '1989-08-03');
INSERT INTO player_stats VALUES ('ply1111', '', 44, 'Defender', 180, 78, 'L');

INSERT INTO players VALUES ('ply1112', 'Federico', 'Bernardeschi', 'Italy',    '1994-02-16');
INSERT INTO player_stats VALUES ('ply1112', '', 10, 'Forward', 183, 77, 'L');

INSERT INTO players VALUES ('ply1113', 'Dejan', 'Kulusevski', 'Sweden',    '2000-04-25');
INSERT INTO player_stats VALUES ('ply1113', '', 21, 'Forward', 186, 75, 'L');

INSERT INTO players VALUES ('ply1114', 'Callum', 'Hudson-Odoi', 'England',    '2000-11-07');
INSERT INTO player_stats VALUES ('ply1114', '', 17, 'Forward', 177, 75, 'R');

INSERT INTO players VALUES ('ply1115', 'Sardar', 'Azmoun', 'Iran',    '1995-01-01');
INSERT INTO player_stats VALUES ('ply1115', '', 9, 'Forward', 186, 79, '');

INSERT INTO players VALUES ('ply1116', 'Artem', 'Dzyuba', 'Russia',    '1988-08-22');
INSERT INTO player_stats VALUES ('ply1116', '', 24, 'Forward', 197, 91, 'R');

INSERT INTO players VALUES ('ply1117', 'Veljko', 'Birmančević', 'Serbia',    '1998-03-05');
INSERT INTO player_stats VALUES ('ply1117', '', 19, 'Midfielder', 178, 70, '');

INSERT INTO players VALUES ('ply1118', 'Magomed', 'Ozdoev', 'Russia',    '1992-11-05');
INSERT INTO player_stats VALUES ('ply1118', '', 27, 'Midfielder', 184, 78, 'R');

INSERT INTO players VALUES ('ply1119', 'Brenden', 'Aaronson', 'USA',    '2000-10-22');
INSERT INTO player_stats VALUES ('ply1119', '', 7, 'Midfielder', 178, 70, 'R');

INSERT INTO players VALUES ('ply1120', 'Serge', 'Aurier', 'Ivory Coast',    '1992-12-24');
INSERT INTO player_stats VALUES ('ply1120', '', 24, 'Defender', 176, 76, 'R');

INSERT INTO players VALUES ('ply1121', 'Pervis', 'Estupiñán', 'Ecuador',    '1998-01-21');
INSERT INTO player_stats VALUES ('ply1121', '', 30, 'Defender', 175, 78, 'L');

INSERT INTO players VALUES ('ply1122', 'Boulaye', 'Dia', 'Senegal',    '1996-11-16');
INSERT INTO player_stats VALUES ('ply1122', '', 29, 'Forward', 180, 75, 'R');

INSERT INTO players VALUES ('ply1123', 'Jan', 'Olschowsky', 'Germany',    '2001-11-18');
INSERT INTO player_stats VALUES ('ply1123', 'tm33', 41, 'Goalkeeper', 182, 79, 'R');

INSERT INTO players VALUES ('ply1124', 'Tobias', 'Sippel', 'Germany',    '1988-03-22');
INSERT INTO player_stats VALUES ('ply1124', 'tm33', 21, 'Goalkeeper', 183, 78, 'R');

INSERT INTO players VALUES ('ply1125', 'Yann', 'Sommer', 'Switzerland',    '1988-12-17');
INSERT INTO player_stats VALUES ('ply1125', 'tm33', 1, 'Goalkeeper', 183, 79, 'R');

INSERT INTO players VALUES ('ply1126', 'Ramy', 'Bensebaini', 'Algeria',    '1995-04-16');
INSERT INTO player_stats VALUES ('ply1126', 'tm33', 25, 'Defender', 186, 82, 'L');

INSERT INTO players VALUES ('ply1127', 'Nico', 'Elvedi', 'Switzerland',    '1996-09-30');
INSERT INTO player_stats VALUES ('ply1127', 'tm33', 30, 'Defender', 189, 81, 'R');

INSERT INTO players VALUES ('ply1128', 'Marvin', 'Friedrich', 'Germany',    '1995-12-13');
INSERT INTO player_stats VALUES ('ply1128', 'tm33', 5, 'Defender', 192, 83, 'R');

INSERT INTO players VALUES ('ply1129', 'Ko', 'Itakura', 'Japan',    '1997-01-27');
INSERT INTO player_stats VALUES ('ply1129', 'tm33', 3, 'Defender', 186, 75, 'R');

INSERT INTO players VALUES ('ply1130', 'Tony', 'Jantschke', 'Germany',    '1990-04-07');
INSERT INTO player_stats VALUES ('ply1130', 'tm33', 24, 'Defender', 177, 76, 'R');

INSERT INTO players VALUES ('ply1131', 'Stefan', 'Lainer', 'Austria',    '1992-08-27');
INSERT INTO player_stats VALUES ('ply1131', 'tm33', 18, 'Defender', 175, 73, 'R');

INSERT INTO players VALUES ('ply1132', 'Luca', 'Netz', 'Germany',    '2003-05-15');
INSERT INTO player_stats VALUES ('ply1132', 'tm33', 20, 'Defender', 180, 83, 'L');

INSERT INTO players VALUES ('ply1133', 'Joe', 'Scally', 'USA',    '2002-12-31');
INSERT INTO player_stats VALUES ('ply1133', 'tm33', 29, 'Defender', 184, 80, 'R');

INSERT INTO players VALUES ('ply1134', 'Yvandro Borges', 'Sanches', 'Luxembourg',    '2004-05-24');
INSERT INTO player_stats VALUES ('ply1134', 'tm33', 38, 'Midfielder', 175, 67, 'R');

INSERT INTO players VALUES ('ply1135', 'Oscar', 'Fraulo', 'Denmark',    '2003-12-06');
INSERT INTO player_stats VALUES ('ply1135', 'tm33', 22, 'Midfielder', 180, 77, 'R');

INSERT INTO players VALUES ('ply1136', 'Patrick', 'Herrmann', 'Germany',    '1991-02-12');
INSERT INTO player_stats VALUES ('ply1136', 'tm33', 7, 'Midfielder', 179, 71, 'R');

INSERT INTO players VALUES ('ply1137', 'Jonas', 'Hofmann', 'Germany',    '1992-07-14');
INSERT INTO player_stats VALUES ('ply1137', 'tm33', 23, 'Midfielder', 176, 73, 'R');

INSERT INTO players VALUES ('ply1138', 'Kouadio', 'Koné', 'France',    '2001-05-17');
INSERT INTO player_stats VALUES ('ply1138', 'tm33', 17, 'Midfielder', 185, 80, 'R');

INSERT INTO players VALUES ('ply1139', 'Christoph', 'Kramer', 'Germany',    '1991-02-19');
INSERT INTO player_stats VALUES ('ply1139', 'tm33', 6, 'Midfielder', 191, 76, '');

INSERT INTO players VALUES ('ply1140', 'Torben', 'Müsel', 'Germany',    '1999-07-25');
INSERT INTO player_stats VALUES ('ply1140', 'tm33', 26, 'Midfielder', 185, 80, 'R');

INSERT INTO players VALUES ('ply1141', 'Florian', 'Neuhaus', 'Germany',    '1997-03-16');
INSERT INTO player_stats VALUES ('ply1141', 'tm33', 32, 'Midfielder', 185, 74, 'R');

INSERT INTO players VALUES ('ply1142', 'Conor', 'Noß', 'Ireland',    '2001-01-01');
INSERT INTO player_stats VALUES ('ply1142', '', 34, 'Midfielder', 181, 72, '');

INSERT INTO players VALUES ('ply1143', 'Rocco', 'Reitz', 'Germany',    '2002-05-29');
INSERT INTO player_stats VALUES ('ply1143', 'tm33', 27, 'Midfielder', 176, 75, '');

INSERT INTO players VALUES ('ply1144', 'Julian', 'Weigl', 'Germany',    '1995-09-08');
INSERT INTO player_stats VALUES ('ply1144', 'tm33', 8, 'Midfielder', 186, 80, 'R');

INSERT INTO players VALUES ('ply1145', 'Jacob', 'Italiano', 'Australia',    '2001-07-30');
INSERT INTO player_stats VALUES ('ply1145', 'tm33', 35, 'Forward', 177, 74, '');

INSERT INTO players VALUES ('ply1146', 'Nathan', 'N''Goumou', 'France',    '2000-03-14');
INSERT INTO player_stats VALUES ('ply1146', 'tm33', 19, 'Forward', 182, 70, 'R');

INSERT INTO players VALUES ('ply1147', 'Alassane', 'Pléa', 'France',    '1993-03-10');
INSERT INTO player_stats VALUES ('ply1147', 'tm33', 14, 'Forward', 181, 79, 'R');

INSERT INTO players VALUES ('ply1148', 'Lars', 'Stindl', 'Germany',    '1988-08-26');
INSERT INTO player_stats VALUES ('ply1148', 'tm33', 13, 'Forward', 181, 80, 'R');

INSERT INTO players VALUES ('ply1149', 'Marcus', 'Thuram', 'France',    '1997-08-06');
INSERT INTO player_stats VALUES ('ply1149', 'tm33', 10, 'Forward', 192, 88, 'R');

INSERT INTO players VALUES ('ply1150', 'Hannes', 'Wolf', 'Austria',    '1999-04-16');
INSERT INTO player_stats VALUES ('ply1150', 'tm33', 11, 'Forward', 179, 69, 'L');

INSERT INTO players VALUES ('ply1151', 'Uwe', 'Kamps', 'Germany',    '1964-06-12');
INSERT INTO player_stats VALUES ('ply1151', 'tm33', NULL, 'Goalkeeping', 180, 79, '');

INSERT INTO players VALUES ('ply1152', 'Fabian', 'Otte', 'Germany',    '1990-12-04');
INSERT INTO player_stats VALUES ('ply1152', 'tm33', NULL, 'Goalkeeping', 187, 75, 'R');

INSERT INTO players VALUES ('ply1153', 'Chris', 'Domogalla', 'Germany',    '1986-01-20');
INSERT INTO player_stats VALUES ('ply1153', 'tm33', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1154', 'Quirin', 'Löppert', 'Germany',    '1987-05-01');
INSERT INTO player_stats VALUES ('ply1154', 'tm33', NULL, 'Athletic', 189, 80, 'R');

INSERT INTO players VALUES ('ply1155', 'Alexander', 'Mouhcine', 'Germany',    '1978-10-21');
INSERT INTO player_stats VALUES ('ply1155', 'tm33', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1156', 'Roman', 'Steinweg', 'Germany',  NULL);
INSERT INTO player_stats VALUES ('ply1156', 'tm33', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1157', 'Philipp', 'Schützendorf', 'Germany',    '1981-09-18');
INSERT INTO player_stats VALUES ('ply1157', 'tm33', NULL, 'Video', NULL, NULL, '');

INSERT INTO players VALUES ('ply1158', 'Jonas', 'Lössl', 'Denmark',    '1989-02-01');
INSERT INTO player_stats VALUES ('ply1158', 'tm34', 1, 'Goalkeeper', 195, 89, 'R');

INSERT INTO players VALUES ('ply1159', 'Elías', 'Ólafsson', 'Iceland',    '2000-03-11');
INSERT INTO player_stats VALUES ('ply1159', 'tm34', 16, 'Goalkeeper', 201, NULL, '');

INSERT INTO players VALUES ('ply1160', 'Mark', 'Ugboh', 'Nigeria',  NULL);
INSERT INTO player_stats VALUES ('ply1160', 'tm34', 30, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply1161', 'Joel', 'Andersson', 'Sweden',    '1996-11-11');
INSERT INTO player_stats VALUES ('ply1161', 'tm34', 6, 'Defender', 178, 68, 'R');

INSERT INTO players VALUES ('ply1162', 'Henrik', 'Dalsgaard', 'Denmark',    '1989-07-27');
INSERT INTO player_stats VALUES ('ply1162', 'tm34', 14, 'Defender', 192, 81, 'R');

INSERT INTO players VALUES ('ply1163', 'Nikolas', 'Dyhr', 'Denmark',    '2001-06-18');
INSERT INTO player_stats VALUES ('ply1163', 'tm34', 44, 'Defender', 177, 60, 'L');

INSERT INTO players VALUES ('ply1164', 'Stefan', 'Gartenmann', 'Denmark',    '1997-02-02');
INSERT INTO player_stats VALUES ('ply1164', 'tm34', 4, 'Defender', 185, 75, 'R');

INSERT INTO players VALUES ('ply1165', '', 'Juninho', 'Brazil',    '1995-02-01');
INSERT INTO player_stats VALUES ('ply1165', 'tm34', 73, 'Defender', 187, 80, 'L');

INSERT INTO players VALUES ('ply1166', 'Pablo', 'Ortíz', 'Colombia',    '2000-06-08');
INSERT INTO player_stats VALUES ('ply1166', 'tm34', 26, 'Defender', 190, 70, 'L');

INSERT INTO players VALUES ('ply1167', '', 'Paulinho', 'Brazil',    '1995-01-03');
INSERT INTO player_stats VALUES ('ply1167', 'tm34', 29, 'Defender', 178, 71, 'L');

INSERT INTO players VALUES ('ply1168', 'Erik', 'Sviatchenko', 'Denmark',    '1991-10-04');
INSERT INTO player_stats VALUES ('ply1168', 'tm34', 28, 'Defender', 184, 82, 'R');

INSERT INTO players VALUES ('ply1169', 'Pontus', 'Texel', 'Denmark',    '2004-02-27');
INSERT INTO player_stats VALUES ('ply1169', 'tm34', 22, 'Defender', NULL, NULL, '');

INSERT INTO players VALUES ('ply1170', 'Mads', 'Thychosen', 'Denmark',    '1997-06-27');
INSERT INTO player_stats VALUES ('ply1170', 'tm34', 17, 'Defender', 178, 65, 'R');

INSERT INTO players VALUES ('ply1171', 'Valdemar', 'Andreasen', 'Denmark',    '2005-01-05');
INSERT INTO player_stats VALUES ('ply1171', 'tm34', 20, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply1172', '', 'Charles', 'Brazil',    '1996-06-19');
INSERT INTO player_stats VALUES ('ply1172', 'tm34', 35, 'Midfielder', 187, 81, 'R');

INSERT INTO players VALUES ('ply1173', 'Edward', 'Chilufya', 'Zambia',    '1999-09-17');
INSERT INTO player_stats VALUES ('ply1173', 'tm34', 18, 'Midfielder', 171, 65, 'R');

INSERT INTO players VALUES ('ply1174', '', 'Evander', 'Brazil',    '1998-06-09');
INSERT INTO player_stats VALUES ('ply1174', 'tm34', 10, 'Midfielder', 179, 76, 'R');

INSERT INTO players VALUES ('ply1175', 'Andreas', 'Hansen', 'Denmark',    '2003-05-31');
INSERT INTO player_stats VALUES ('ply1175', 'tm34', 21, 'Midfielder', 184, NULL, '');

INSERT INTO players VALUES ('ply1176', 'Gustav', 'Isaksen', 'Denmark',    '2001-04-19');
INSERT INTO player_stats VALUES ('ply1176', 'tm34', 11, 'Midfielder', 178, NULL, '');

INSERT INTO players VALUES ('ply1177', 'Chris', 'Kouakou', 'Ivory Coast',    '1999-12-15');
INSERT INTO player_stats VALUES ('ply1177', 'tm34', 19, 'Midfielder', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply1178', 'Emiliano', 'Martínez', 'Uruguay',    '1999-08-17');
INSERT INTO player_stats VALUES ('ply1178', 'tm34', 5, 'Midfielder', 184, 64, 'R');

INSERT INTO players VALUES ('ply1179', 'Kristoffer', 'Olsson', 'Sweden',    '1995-06-30');
INSERT INTO player_stats VALUES ('ply1179', 'tm34', 8, 'Midfielder', 178, 70, 'R');

INSERT INTO players VALUES ('ply1180', 'Pione', 'Sisto', 'Denmark',    '1995-02-04');
INSERT INTO player_stats VALUES ('ply1180', 'tm34', 7, 'Midfielder', 171, 64, 'R');

INSERT INTO players VALUES ('ply1181', 'Oliver', 'Sørensen', 'Denmark',    '2002-03-10');
INSERT INTO player_stats VALUES ('ply1181', 'tm34', 24, 'Midfielder', 184, 78, 'L');

INSERT INTO players VALUES ('ply1182', 'Anders', 'Dreyer', 'Denmark',    '1998-05-02');
INSERT INTO player_stats VALUES ('ply1182', 'tm34', 36, 'Forward', 174, 69, 'L');

INSERT INTO players VALUES ('ply1183', 'Júnior', 'Brumado', 'Brazil',    '1999-05-15');
INSERT INTO player_stats VALUES ('ply1183', 'tm34', 74, 'Forward', 190, 88, 'R');

INSERT INTO players VALUES ('ply1184', 'Sory', 'Kaba', 'Guinea',    '1995-07-28');
INSERT INTO player_stats VALUES ('ply1184', 'tm34', 9, 'Forward', 190, 80, 'R');

INSERT INTO players VALUES ('ply1185', 'Juan', 'Moreno', 'Denmark',    '2002-09-21');
INSERT INTO player_stats VALUES ('ply1185', 'tm34', 23, 'Forward', 188, NULL, '');

INSERT INTO players VALUES ('ply1186', 'Lasse', 'Heinze', 'Denmark',    '1986-04-03');
INSERT INTO player_stats VALUES ('ply1186', 'tm34', NULL, 'Goalkeeping', 184, 78, 'R');

INSERT INTO players VALUES ('ply1187', 'Oliver', 'Heil', 'Germany',    '1988-06-19');
INSERT INTO player_stats VALUES ('ply1187', 'tm34', NULL, 'Game', 182, 78, '');

INSERT INTO players VALUES ('ply1188', 'Ádám', 'Bogdán', 'Hungary',    '1987-09-27');
INSERT INTO player_stats VALUES ('ply1188', 'tm35', 1, 'Goalkeeper', 194, 92, 'R');

INSERT INTO players VALUES ('ply1189', 'Dénes', 'Dibusz', 'Hungary',    '1990-11-16');
INSERT INTO player_stats VALUES ('ply1189', 'tm35', 90, 'Goalkeeper', 188, 81, 'R');

INSERT INTO players VALUES ('ply1190', 'Marcell', 'Kovács', 'Hungary',    '2003-02-09');
INSERT INTO player_stats VALUES ('ply1190', 'tm35', 63, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply1191', 'Szabolcs', 'Mergl', 'Hungary',    '2004-02-17');
INSERT INTO player_stats VALUES ('ply1191', 'tm35', 61, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply1192', 'Levente', 'Őri', 'Hungary',    '2003-04-29');
INSERT INTO player_stats VALUES ('ply1192', 'tm35', 62, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply1193', 'Gergő', 'Szécsi', 'Hungary',    '1989-02-07');
INSERT INTO player_stats VALUES ('ply1193', 'tm35', 29, 'Goalkeeper', 185, 83, 'R');

INSERT INTO players VALUES ('ply1194', 'Endre', 'Botka', 'Hungary',    '1994-08-25');
INSERT INTO player_stats VALUES ('ply1194', 'tm35', 21, 'Defender', 178, 77, 'R');

INSERT INTO players VALUES ('ply1195', 'Eldar', 'Čivić', 'Bosnia-Herzegovina',    '1996-05-28');
INSERT INTO player_stats VALUES ('ply1195', 'tm35', 17, 'Defender', 182, 74, 'L');

INSERT INTO players VALUES ('ply1196', 'Mats', 'Knoester', 'Netherlands',    '1998-11-19');
INSERT INTO player_stats VALUES ('ply1196', 'tm35', 4, 'Defender', 186, 77, 'L');

INSERT INTO players VALUES ('ply1197', 'Adnan', 'Kovačević', 'Bosnia-Herzegovina',    '1993-09-09');
INSERT INTO player_stats VALUES ('ply1197', 'tm35', 15, 'Defender', 189, 80, '');

INSERT INTO players VALUES ('ply1198', 'Samy', 'Mmaee', 'Morocco',    '1996-09-08');
INSERT INTO player_stats VALUES ('ply1198', 'tm35', 3, 'Defender', 188, 80, 'R');

INSERT INTO players VALUES ('ply1199', 'Olivér', 'Nagy', 'Hungary',    '2003-03-12');
INSERT INTO player_stats VALUES ('ply1199', 'tm35', 56, 'Defender', NULL, NULL, '');

INSERT INTO players VALUES ('ply1200', 'Lóránd', 'Pászka', 'Hungary',    '1996-03-22');
INSERT INTO player_stats VALUES ('ply1200', 'tm35', 23, 'Defender', 186, NULL, 'R');

INSERT INTO players VALUES ('ply1201', 'Rasmus', 'Thelander', 'Denmark',    '1991-07-09');
INSERT INTO player_stats VALUES ('ply1201', 'tm35', 25, 'Defender', 191, 87, 'R');

INSERT INTO players VALUES ('ply1202', 'Henry', 'Wingo', 'USA',    '1995-10-04');
INSERT INTO player_stats VALUES ('ply1202', 'tm35', 31, 'Defender', 183, 77, 'R');

INSERT INTO players VALUES ('ply1203', 'Muhamed', 'Bešić', 'Bosnia-Herzegovina',    '1992-09-10');
INSERT INTO player_stats VALUES ('ply1203', 'tm35', 5, 'Midfielder', 180, 75, 'R');

INSERT INTO players VALUES ('ply1204', 'Anderson', 'Esiti', 'Nigeria',    '1994-05-24');
INSERT INTO player_stats VALUES ('ply1204', 'tm35', 13, 'Midfielder', 189, 82, 'R');

INSERT INTO players VALUES ('ply1205', 'Amer', 'Gojak', 'Bosnia-Herzegovina',    '1997-02-13');
INSERT INTO player_stats VALUES ('ply1205', 'tm35', 14, 'Midfielder', 184, 78, 'R');

INSERT INTO players VALUES ('ply1206', 'Giorgi', 'Kharaishvili', 'Georgia',    '1996-07-29');
INSERT INTO player_stats VALUES ('ply1206', 'tm35', 27, 'Midfielder', 183, NULL, 'R');

INSERT INTO players VALUES ('ply1207', 'Aïssa', 'Laïdouni', 'France',    '1996-12-13');
INSERT INTO player_stats VALUES ('ply1207', 'tm35', 93, 'Midfielder', 183, 75, 'R');

INSERT INTO players VALUES ('ply1208', 'Krisztián', 'Lisztes', 'Hungary',    '2005-05-06');
INSERT INTO player_stats VALUES ('ply1208', 'tm35', 76, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply1209', 'Xavier', 'Mercier', 'France',    '1989-07-25');
INSERT INTO player_stats VALUES ('ply1209', 'tm35', 7, 'Midfielder', 172, 71, 'R');

INSERT INTO players VALUES ('ply1210', 'Dávid', 'Sigér', 'Hungary',    '1990-11-30');
INSERT INTO player_stats VALUES ('ply1210', 'tm35', 18, 'Midfielder', 175, 69, 'R');

INSERT INTO players VALUES ('ply1211', 'Bálint', 'Vécsei', 'Hungary',    '1993-07-13');
INSERT INTO player_stats VALUES ('ply1211', 'tm35', 19, 'Midfielder', 185, 82, 'L');

INSERT INTO players VALUES ('ply1212', 'Kristoffer', 'Zachariassen', 'Norway',    '1994-01-27');
INSERT INTO player_stats VALUES ('ply1212', 'tm35', 16, 'Midfielder', 180, 74, 'R');

INSERT INTO players VALUES ('ply1213', 'Carlos', 'Auzqui', 'Argentina',    '1991-03-16');
INSERT INTO player_stats VALUES ('ply1213', 'tm35', 28, 'Forward', 180, 72, 'R');

INSERT INTO players VALUES ('ply1214', 'Franck', 'Boli', 'Ivory Coast',    '1993-12-07');
INSERT INTO player_stats VALUES ('ply1214', 'tm35', 70, 'Forward', 180, 77, 'R');

INSERT INTO players VALUES ('ply1215', 'Dániel', 'Gera', 'Hungary',    '1995-08-29');
INSERT INTO player_stats VALUES ('ply1215', 'tm35', NULL, 'Forward', 178, 74, 'R');

INSERT INTO players VALUES ('ply1216', '', 'Marquinhos', 'Brazil',    '1999-10-24');
INSERT INTO player_stats VALUES ('ply1216', 'tm35', 50, 'Forward', 170, 71, 'L');

INSERT INTO players VALUES ('ply1217', 'Ryan', 'Mmaee', 'Morocco',    '1997-11-01');
INSERT INTO player_stats VALUES ('ply1217', 'tm35', 8, 'Forward', 184, 82, 'R');

INSERT INTO players VALUES ('ply1218', 'Tokmac', 'Nguen', 'Norway',    '1993-10-20');
INSERT INTO player_stats VALUES ('ply1218', 'tm35', 10, 'Forward', 174, 68, 'R');

INSERT INTO players VALUES ('ply1219', 'Damir', 'Redzic', 'Hungary',    '2003-03-23');
INSERT INTO player_stats VALUES ('ply1219', 'tm35', 52, 'Forward', NULL, NULL, '');

INSERT INTO players VALUES ('ply1220', 'Tamás', 'Balogh', 'Hungary',    '1967-09-06');
INSERT INTO player_stats VALUES ('ply1220', 'tm35', NULL, 'Goalkeeping', 181, 77, '');

INSERT INTO players VALUES ('ply1221', 'Gintaras', 'Staučė', 'Russia',    '1969-12-24');
INSERT INTO player_stats VALUES ('ply1221', 'tm35', NULL, 'Goalkeeping', 187, 80, '');

INSERT INTO players VALUES ('ply1222', 'Péter', 'Bali', 'Hungary',    '1970-05-20');
INSERT INTO player_stats VALUES ('ply1222', 'tm35', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply1223', 'Vladimir', 'Panikov', 'Russia',    '1969-11-14');
INSERT INTO player_stats VALUES ('ply1223', 'tm35', NULL, 'Physical', NULL, NULL, '');

INSERT INTO players VALUES ('ply1224', 'Paulino', 'Granero', 'Spain',    '1970-02-17');
INSERT INTO player_stats VALUES ('ply1224', 'tm35', NULL, 'Physical', NULL, NULL, '');

INSERT INTO players VALUES ('ply1225', 'Stanislav', 'Agkatsev', 'Russia',    '2002-01-09');
INSERT INTO player_stats VALUES ('ply1225', 'tm36', 1, 'Goalkeeper', 189, 82, 'R');

INSERT INTO players VALUES ('ply1226', 'Matvey', 'Safonov', 'Russia',    '1999-02-25');
INSERT INTO player_stats VALUES ('ply1226', 'tm36', 39, 'Goalkeeper', 192, 82, 'R');

INSERT INTO players VALUES ('ply1227', 'Mikhail', 'Shtepa', 'Russia',    '2003-03-19');
INSERT INTO player_stats VALUES ('ply1227', 'tm36', 73, 'Goalkeeper', 183, 62, 'R');

INSERT INTO players VALUES ('ply1228', 'Sergey', 'Borodin', 'Russia',    '1999-01-30');
INSERT INTO player_stats VALUES ('ply1228', 'tm36', 44, 'Defender', 187, 77, 'L');

INSERT INTO players VALUES ('ply1229', 'Oleg', 'Isaenko', 'Russia',    '2000-01-31');
INSERT INTO player_stats VALUES ('ply1229', 'tm36', 48, 'Defender', 166, 62, 'L');

INSERT INTO players VALUES ('ply1230', 'Kaio', 'Pantaleão', 'Brazil',    '1995-09-08');
INSERT INTO player_stats VALUES ('ply1230', 'tm36', 31, 'Defender', 183, 76, 'R');

INSERT INTO players VALUES ('ply1231', 'Vyacheslav', 'Litvinov', 'Russia',    '2001-04-01');
INSERT INTO player_stats VALUES ('ply1231', 'tm36', 84, 'Defender', 189, 73, 'R');

INSERT INTO players VALUES ('ply1232', 'Sergey', 'Petrov', 'Russia',    '1991-01-02');
INSERT INTO player_stats VALUES ('ply1232', 'tm36', 98, 'Defender', 175, 71, 'R');

INSERT INTO players VALUES ('ply1233', 'Dmitriy', 'Pivovarov', 'Russia',    '2000-03-21');
INSERT INTO player_stats VALUES ('ply1233', 'tm36', 32, 'Defender', 179, 74, 'L');

INSERT INTO players VALUES ('ply1234', 'Cristian', 'Ramírez', 'Ecuador',    '1994-08-12');
INSERT INTO player_stats VALUES ('ply1234', 'tm36', 6, 'Defender', 174, 69, 'L');

INSERT INTO players VALUES ('ply1235', 'Egor', 'Sorokin', 'Russia',    '1995-11-04');
INSERT INTO player_stats VALUES ('ply1235', 'tm36', 80, 'Defender', 189, 81, 'L');

INSERT INTO players VALUES ('ply1236', 'Mikhail', 'Sukhoruchenko', 'Russia',    '2003-04-13');
INSERT INTO player_stats VALUES ('ply1236', 'tm36', 41, 'Defender', 190, 78, '');

INSERT INTO players VALUES ('ply1237', 'Sergey', 'Volkov', 'Russia',    '2002-09-09');
INSERT INTO player_stats VALUES ('ply1237', '', 82, 'Defender', 182, 75, 'R');

INSERT INTO players VALUES ('ply1238', 'Grigoriy', 'Zhilkin', 'Russia',    '2003-06-20');
INSERT INTO player_stats VALUES ('ply1238', 'tm36', 28, 'Defender', 175, 68, '');

INSERT INTO players VALUES ('ply1239', 'Ilzat', 'Akhmetov', 'Russia',    '1997-12-31');
INSERT INTO player_stats VALUES ('ply1239', 'tm36', 7, 'Midfielder', 173, 65, 'R');

INSERT INTO players VALUES ('ply1240', 'Mihajlo', 'Banjac', 'Serbia',    '1999-11-10');
INSERT INTO player_stats VALUES ('ply1240', 'tm36', 14, 'Midfielder', 186, 74, 'L');

INSERT INTO players VALUES ('ply1241', 'Aleksandr', 'Chernikov', 'Russia',    '2000-02-01');
INSERT INTO player_stats VALUES ('ply1241', 'tm36', 8, 'Midfielder', 183, 74, 'R');

INSERT INTO players VALUES ('ply1242', 'João', 'Batxi', 'Portugal',    '1998-05-01');
INSERT INTO player_stats VALUES ('ply1242', 'tm36', 19, 'Midfielder', 174, 64, 'R');

INSERT INTO players VALUES ('ply1243', '', 'Kevin', 'Cape Verde',    '1997-01-27');
INSERT INTO player_stats VALUES ('ply1243', 'tm36', 16, 'Midfielder', 190, NULL, 'L');

INSERT INTO players VALUES ('ply1244', 'David', 'Kokoev', 'Russia',    '2002-08-29');
INSERT INTO player_stats VALUES ('ply1244', 'tm36', 38, 'Midfielder', 178, 58, 'R');

INSERT INTO players VALUES ('ply1245', 'Dmitriy', 'Kratkov', 'Russia',    '2002-01-15');
INSERT INTO player_stats VALUES ('ply1245', 'tm36', 26, 'Midfielder', 175, 66, 'R');

INSERT INTO players VALUES ('ply1246', 'Nikita', 'Krivtsov', 'Russia',    '2002-08-18');
INSERT INTO player_stats VALUES ('ply1246', 'tm36', 88, 'Midfielder', 188, 83, 'R');

INSERT INTO players VALUES ('ply1247', 'Aleks', 'Matsukatov', 'Russia',    '1999-01-11');
INSERT INTO player_stats VALUES ('ply1247', 'tm36', 15, 'Midfielder', 180, 78, 'R');

INSERT INTO players VALUES ('ply1248', 'Ifeany', 'Ndouka', 'Nigeria',    '2003-12-02');
INSERT INTO player_stats VALUES ('ply1248', 'tm36', 61, 'Midfielder', 182, 78, '');

INSERT INTO players VALUES ('ply1249', 'Eduard', 'Spertsyan', 'Armenia',    '2000-06-07');
INSERT INTO player_stats VALUES ('ply1249', 'tm36', 10, 'Midfielder', 178, 66, 'R');

INSERT INTO players VALUES ('ply1250', 'Vyacheslav', 'Yakimov', 'Russia',    '1998-01-05');
INSERT INTO player_stats VALUES ('ply1250', 'tm36', 23, 'Midfielder', 178, 69, 'R');

INSERT INTO players VALUES ('ply1251', 'Ruslan', 'Apekov', 'Russia',    '2000-06-08');
INSERT INTO player_stats VALUES ('ply1251', 'tm36', 92, 'Forward', 172, 63, 'R');

INSERT INTO players VALUES ('ply1252', 'Jhon', 'Córdoba', 'Colombia',    '1993-05-11');
INSERT INTO player_stats VALUES ('ply1252', 'tm36', 9, 'Forward', 188, 85, 'R');

INSERT INTO players VALUES ('ply1253', 'Aleksey', 'Ionov', 'Russia',    '1989-02-18');
INSERT INTO player_stats VALUES ('ply1253', 'tm36', 11, 'Forward', 177, 69, 'R');

INSERT INTO players VALUES ('ply1254', 'Danil', 'Karpov', 'Russia',    '1999-06-28');
INSERT INTO player_stats VALUES ('ply1254', 'tm36', 21, 'Forward', 179, 75, 'R');

INSERT INTO players VALUES ('ply1255', 'Rustam', 'Khalnazarov', 'Russia',    '2000-07-20');
INSERT INTO player_stats VALUES ('ply1255', 'tm36', 72, 'Forward', 173, 64, '');

INSERT INTO players VALUES ('ply1256', 'Aleksandr', 'Koksharov', 'Russia',    '2004-12-20');
INSERT INTO player_stats VALUES ('ply1256', '', 96, 'Forward', 188, 71, 'R');

INSERT INTO players VALUES ('ply1257', 'Dmitriy', 'Kuchugura', 'Russia',    '2004-10-21');
INSERT INTO player_stats VALUES ('ply1257', '', 94, 'Forward', 179, 70, 'R');

INSERT INTO players VALUES ('ply1258', 'Maksim', 'Kutovoi', 'Russia',    '2001-07-01');
INSERT INTO player_stats VALUES ('ply1258', 'tm36', 67, 'Forward', 187, 74, 'R');

INSERT INTO players VALUES ('ply1259', 'Irakliy', 'Manelov', 'Russia',    '2002-09-19');
INSERT INTO player_stats VALUES ('ply1259', 'tm36', 69, 'Forward', 173, 69, 'R');

INSERT INTO players VALUES ('ply1260', 'Jonathan', 'Okoronkwo', 'Nigeria',    '2003-09-13');
INSERT INTO player_stats VALUES ('ply1260', 'tm36', 85, 'Forward', 175, NULL, 'R');

INSERT INTO players VALUES ('ply1261', 'Olakunle', 'Olusegun', 'Nigeria',    '2002-04-23');
INSERT INTO player_stats VALUES ('ply1261', 'tm36', 40, 'Forward', 170, 70, 'R');

INSERT INTO players VALUES ('ply1262', 'Vladislav', 'Samko', 'Russia',    '2002-01-03');
INSERT INTO player_stats VALUES ('ply1262', 'tm36', 70, 'Forward', 173, 63, '');

INSERT INTO players VALUES ('ply1263', 'Volkan', 'Babacan', 'Turkey',    '1988-08-11');
INSERT INTO player_stats VALUES ('ply1263', 'tm37', 1, 'Goalkeeper', 192, 86, 'R');

INSERT INTO players VALUES ('ply1264', 'Deniz', 'Dilmen', 'Turkey',    '2005-06-05');
INSERT INTO player_stats VALUES ('ply1264', 'tm37', 98, 'Goalkeeper', NULL, NULL, 'L');

INSERT INTO players VALUES ('ply1265', 'Muhammed', 'Şengezer', 'Turkey',    '1997-01-05');
INSERT INTO player_stats VALUES ('ply1265', '', NULL, 'Goalkeeper', 192, 80, 'R');

INSERT INTO players VALUES ('ply1266', 'Alexandru', 'Epureanu', 'Moldova',    '1986-09-27');
INSERT INTO player_stats VALUES ('ply1266', 'tm37', 6, 'Defender', 189, 76, 'L');

INSERT INTO players VALUES ('ply1267', 'Junior', 'Caiçara', 'Brazil',    '1989-04-27');
INSERT INTO player_stats VALUES ('ply1267', 'tm37', 80, 'Defender', 173, 70, 'R');

INSERT INTO players VALUES ('ply1268', 'Hasan Ali', 'Kaldırım', 'Turkey',    '1989-12-09');
INSERT INTO player_stats VALUES ('ply1268', 'tm37', 3, 'Defender', 183, 75, 'L');

INSERT INTO players VALUES ('ply1269', 'Eren', 'Karaagac', 'France',    '2004-05-24');
INSERT INTO player_stats VALUES ('ply1269', 'tm37', NULL, 'Defender', NULL, NULL, '');

INSERT INTO players VALUES ('ply1270', 'Efe', 'Koyuncu', 'Turkey',    '2005-07-08');
INSERT INTO player_stats VALUES ('ply1270', 'tm37', 41, 'Defender', NULL, NULL, '');

INSERT INTO players VALUES ('ply1271', 'Léo', 'Duarte', 'Brazil',    '1996-07-17');
INSERT INTO player_stats VALUES ('ply1271', 'tm37', 5, 'Defender', 183, 83, 'R');

INSERT INTO players VALUES ('ply1272', 'Lucas', 'Lima', 'Brazil',    '1991-10-10');
INSERT INTO player_stats VALUES ('ply1272', 'tm37', 60, 'Defender', 179, 72, 'L');

INSERT INTO players VALUES ('ply1273', 'Youssouf', 'Ndayishimiye', 'Burundi',    '1998-10-27');
INSERT INTO player_stats VALUES ('ply1273', 'tm37', 55, 'Defender', 183, 76, 'R');

INSERT INTO players VALUES ('ply1274', 'Muharrem', 'Öner', 'Turkey',    '1999-12-29');
INSERT INTO player_stats VALUES ('ply1274', 'tm37', NULL, 'Defender', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply1275', 'Şener', 'Özbayraklı', 'Turkey',    '1990-01-23');
INSERT INTO player_stats VALUES ('ply1275', 'tm37', 2, 'Defender', 171, 71, 'R');

INSERT INTO players VALUES ('ply1276', 'Ömer', 'Şahiner', 'Turkey',    '1992-01-02');
INSERT INTO player_stats VALUES ('ply1276', 'tm37', 42, 'Defender', 175, 70, 'R');

INSERT INTO players VALUES ('ply1277', 'Ahmed', 'Touba', 'Algeria',    '1998-03-13');
INSERT INTO player_stats VALUES ('ply1277', 'tm37', 59, 'Defender', 190, 75, 'L');

INSERT INTO players VALUES ('ply1278', 'Muhammet', 'Yazıcı', 'Turkey',    '2002-12-01');
INSERT INTO player_stats VALUES ('ply1278', 'tm37', 53, 'Defender', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply1279', 'Danijel', 'Aleksić', 'Serbia',    '1991-04-30');
INSERT INTO player_stats VALUES ('ply1279', 'tm37', 8, 'Midfielder', 182, 75, 'L');

INSERT INTO players VALUES ('ply1280', 'Okechukwu', 'Azubuike', 'Nigeria',    '1997-04-19');
INSERT INTO player_stats VALUES ('ply1280', 'tm37', NULL, 'Midfielder', 170, 73, 'R');

INSERT INTO players VALUES ('ply1281', 'Sekou', 'Bangoura', 'Guinea',    '2002-04-05');
INSERT INTO player_stats VALUES ('ply1281', 'tm37', 97, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply1282', 'Lucas', 'Biglia', 'Argentina',    '1986-01-30');
INSERT INTO player_stats VALUES ('ply1282', 'tm37', 20, 'Midfielder', 178, 63, 'R');

INSERT INTO players VALUES ('ply1283', 'Francis', 'Nzaba', 'Congo',    '2002-07-17');
INSERT INTO player_stats VALUES ('ply1283', 'tm37', NULL, 'Midfielder', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply1284', 'Berkay', 'Özcan', 'Turkey',    '1998-02-15');
INSERT INTO player_stats VALUES ('ply1284', 'tm37', 19, 'Midfielder', 180, 79, 'R');

INSERT INTO players VALUES ('ply1285', 'Mesut', 'Özil', 'Germany',    '1988-10-15');
INSERT INTO player_stats VALUES ('ply1285', 'tm37', 10, 'Midfielder', 180, 71, 'L');

INSERT INTO players VALUES ('ply1286', 'Mahmut', 'Tekdemir', 'Turkey',    '1988-01-20');
INSERT INTO player_stats VALUES ('ply1286', 'tm37', 21, 'Midfielder', 178, 72, '');

INSERT INTO players VALUES ('ply1287', 'Deniz', 'Türüç', 'Turkey',    '1993-01-29');
INSERT INTO player_stats VALUES ('ply1287', 'tm37', 23, 'Midfielder', 177, 72, 'L');

INSERT INTO players VALUES ('ply1288', 'Muhammet', 'Arslantaş', 'Turkey',    '2001-01-27');
INSERT INTO player_stats VALUES ('ply1288', 'tm37', 34, 'Forward', 188, 86, 'R');

INSERT INTO players VALUES ('ply1289', 'Batuhan', 'Çelik', 'Turkey',    '2005-01-12');
INSERT INTO player_stats VALUES ('ply1289', 'tm37', 15, 'Forward', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply1290', 'Mounir', 'Chouiar', 'France',    '1999-01-23');
INSERT INTO player_stats VALUES ('ply1290', 'tm37', 11, 'Forward', 177, 77, 'R');

INSERT INTO players VALUES ('ply1291', 'Serdar', 'Gürler', 'Turkey',    '1991-09-14');
INSERT INTO player_stats VALUES ('ply1291', 'tm37', 7, 'Forward', 175, 65, 'R');

INSERT INTO players VALUES ('ply1292', 'Enes', 'Karakuş', 'Turkey',    '2001-01-03');
INSERT INTO player_stats VALUES ('ply1292', 'tm37', NULL, 'Forward', 193, 83, 'R');

INSERT INTO players VALUES ('ply1293', 'Philippe', 'Keny', 'Senegal',    '1999-05-18');
INSERT INTO player_stats VALUES ('ply1293', 'tm37', NULL, 'Forward', 190, 80, 'R');

INSERT INTO players VALUES ('ply1294', 'Stefano', 'Okaka', 'Italy',    '1989-08-09');
INSERT INTO player_stats VALUES ('ply1294', 'tm37', 77, 'Forward', 186, 82, 'R');

INSERT INTO players VALUES ('ply1295', 'Patryk', 'Szysz', 'Poland',    '1998-04-01');
INSERT INTO player_stats VALUES ('ply1295', 'tm37', 18, 'Forward', 177, 70, 'R');

INSERT INTO players VALUES ('ply1296', 'Bertrand', 'Traoré', 'Burkina Faso',    '1995-09-06');
INSERT INTO player_stats VALUES ('ply1296', 'tm37', NULL, 'Forward', 181, 73, 'L');

INSERT INTO players VALUES ('ply1297', 'Murat', 'Öztürk', 'Turkey',    '1969-12-05');
INSERT INTO player_stats VALUES ('ply1297', 'tm37', NULL, 'Goalkeeping', NULL, NULL, '');

INSERT INTO players VALUES ('ply1298', 'Marius', 'Adamonis', 'Lithuania',    '1997-05-13');
INSERT INTO player_stats VALUES ('ply1298', 'tm38', 31, 'Goalkeeper', 191, 80, 'R');

INSERT INTO players VALUES ('ply1299', 'Luís', 'Maximiano', 'Portugal',    '1999-01-05');
INSERT INTO player_stats VALUES ('ply1299', 'tm38', 1, 'Goalkeeper', 190, 82, '');

INSERT INTO players VALUES ('ply1300', 'Federico', 'Magro', 'Italy',    '2005-01-10');
INSERT INTO player_stats VALUES ('ply1300', 'tm38', 61, 'Goalkeeper', 189, NULL, 'R');

INSERT INTO players VALUES ('ply1301', 'Ivan', 'Provedel', 'Italy',    '1994-03-17');
INSERT INTO player_stats VALUES ('ply1301', 'tm38', 94, 'Goalkeeper', 192, 82, 'R');

INSERT INTO players VALUES ('ply1302', 'Enzo', 'Adeagbo', 'Switzerland',    '2002-01-11');
INSERT INTO player_stats VALUES ('ply1302', 'tm38', 83, 'Defender', 191, 78, 'R');

INSERT INTO players VALUES ('ply1303', 'Nicolò', 'Casale', 'Italy',    '1998-02-14');
INSERT INTO player_stats VALUES ('ply1303', 'tm38', 15, 'Defender', 191, 82, 'R');

INSERT INTO players VALUES ('ply1304', 'Romano', 'Floriani', 'Italy',    '2003-01-27');
INSERT INTO player_stats VALUES ('ply1304', 'tm38', 44, 'Defender', 188, NULL, 'R');

INSERT INTO players VALUES ('ply1305', '', 'Gila', 'Spain',    '2000-08-29');
INSERT INTO player_stats VALUES ('ply1305', 'tm38', 34, 'Defender', 185, 78, 'R');

INSERT INTO players VALUES ('ply1306', 'Elseid', 'Hysaj', 'Albania',    '1994-02-02');
INSERT INTO player_stats VALUES ('ply1306', 'tm38', 23, 'Defender', 182, 75, 'R');

INSERT INTO players VALUES ('ply1307', 'Dimitrije', 'Kamenović', 'Serbia',    '2000-07-16');
INSERT INTO player_stats VALUES ('ply1307', 'tm38', 16, 'Defender', 188, 83, 'L');

INSERT INTO players VALUES ('ply1308', 'Adam', 'Marušić', 'Montenegro',    '1992-10-17');
INSERT INTO player_stats VALUES ('ply1308', 'tm38', 77, 'Defender', 185, 76, 'R');

INSERT INTO players VALUES ('ply1309', '', 'Patric', 'Spain',    '1993-04-17');
INSERT INTO player_stats VALUES ('ply1309', 'tm38', 4, 'Defender', 184, 72, 'R');

INSERT INTO players VALUES ('ply1310', 'Stefan', 'Radu', 'Romania',    '1986-10-22');
INSERT INTO player_stats VALUES ('ply1310', 'tm38', 26, 'Defender', 183, 79, 'L');

INSERT INTO players VALUES ('ply1311', 'Alessio', 'Romagnoli', 'Italy',    '1995-01-12');
INSERT INTO player_stats VALUES ('ply1311', 'tm38', 13, 'Defender', 185, 78, 'L');

INSERT INTO players VALUES ('ply1312', 'Toma', 'Bašić', 'Croatia',    '1996-11-25');
INSERT INTO player_stats VALUES ('ply1312', 'tm38', 88, 'Midfielder', 190, 80, 'L');

INSERT INTO players VALUES ('ply1313', 'Marco', 'Bertini', 'Italy',    '2002-08-07');
INSERT INTO player_stats VALUES ('ply1313', 'tm38', 50, 'Midfielder', 185, 68, 'R');

INSERT INTO players VALUES ('ply1314', 'Danilo', 'Cataldi', 'Italy',    '1994-08-06');
INSERT INTO player_stats VALUES ('ply1314', 'tm38', 32, 'Midfielder', 180, 75, 'R');

INSERT INTO players VALUES ('ply1315', 'Mohamed', 'Fares', 'Algeria',    '1996-02-15');
INSERT INTO player_stats VALUES ('ply1315', 'tm38', 93, 'Midfielder', 183, 75, 'L');

INSERT INTO players VALUES ('ply1316', 'Manuel', 'Lazzari', 'Italy',    '1993-11-29');
INSERT INTO player_stats VALUES ('ply1316', 'tm38', 29, 'Midfielder', 174, 67, 'R');

INSERT INTO players VALUES ('ply1317', 'Luis', 'Alberto', 'Spain',    '1992-11-28');
INSERT INTO player_stats VALUES ('ply1317', 'tm38', 10, 'Midfielder', 183, 74, 'R');

INSERT INTO players VALUES ('ply1318', 'Marcos', 'Antônio', 'Brazil',    '2000-06-13');
INSERT INTO player_stats VALUES ('ply1318', 'tm38', 6, 'Midfielder', 166, 63, 'R');

INSERT INTO players VALUES ('ply1319', 'Sergej', 'Milinković-Savić', 'Serbia',    '1995-02-27');
INSERT INTO player_stats VALUES ('ply1319', 'tm38', 21, 'Midfielder', 191, 82, 'R');

INSERT INTO players VALUES ('ply1320', 'Luka', 'Romero', 'Argentina',    '2004-11-18');
INSERT INTO player_stats VALUES ('ply1320', 'tm38', 18, 'Midfielder', 165, 64, 'L');

INSERT INTO players VALUES ('ply1321', 'Matías', 'Vecino', 'Uruguay',    '1991-08-24');
INSERT INTO player_stats VALUES ('ply1321', 'tm38', 5, 'Midfielder', 187, 81, 'R');

INSERT INTO players VALUES ('ply1322', 'Mattia', 'Zaccagni', 'Italy',    '1995-06-16');
INSERT INTO player_stats VALUES ('ply1322', 'tm38', 20, 'Midfielder', 176, 63, 'R');

INSERT INTO players VALUES ('ply1323', 'Matteo', 'Cancellieri', 'Italy',    '2002-02-12');
INSERT INTO player_stats VALUES ('ply1323', 'tm38', 11, 'Forward', 180, 78, 'L');

INSERT INTO players VALUES ('ply1324', 'Felipe', 'Anderson', 'Brazil',    '1993-04-15');
INSERT INTO player_stats VALUES ('ply1324', 'tm38', 7, 'Forward', 175, 70, 'R');

INSERT INTO players VALUES ('ply1325', 'Ciro', 'Immobile', 'Italy',    '1990-02-20');
INSERT INTO player_stats VALUES ('ply1325', 'tm38', 17, 'Forward', 185, 85, 'R');

INSERT INTO players VALUES ('ply1326', '', 'Pedro', 'Spain',    '1987-07-28');
INSERT INTO player_stats VALUES ('ply1326', 'tm38', 9, 'Forward', 167, 64, '');

INSERT INTO players VALUES ('ply1327', '', 'Guilherme', 'Russia',    '1985-12-12');
INSERT INTO player_stats VALUES ('ply1327', 'tm39', 1, 'Goalkeeper', 197, 96, 'R');

INSERT INTO players VALUES ('ply1328', 'Daniil', 'Khudyakov', 'Russia',    '2004-01-09');
INSERT INTO player_stats VALUES ('ply1328', 'tm39', 53, 'Goalkeeper', 194, 85, 'R');

INSERT INTO players VALUES ('ply1329', 'Nikita', 'Matyunin', 'Russia',    '2004-04-27');
INSERT INTO player_stats VALUES ('ply1329', 'tm39', 54, 'Goalkeeper', 194, 83, 'R');

INSERT INTO players VALUES ('ply1330', 'Andrey', 'Savin', 'Russia',    '1999-08-30');
INSERT INTO player_stats VALUES ('ply1330', 'tm39', 60, 'Goalkeeper', 194, 89, 'R');

INSERT INTO players VALUES ('ply1331', 'Lucas', 'Fasson', 'Brazil',    '2001-05-30');
INSERT INTO player_stats VALUES ('ply1331', 'tm39', 3, 'Defender', 190, 79, 'L');

INSERT INTO players VALUES ('ply1332', 'Mikhail', 'Ivankov', 'Russia',    '2001-06-17');
INSERT INTO player_stats VALUES ('ply1332', 'tm39', 66, 'Defender', 196, 88, 'R');

INSERT INTO players VALUES ('ply1333', 'Tin', 'Jedvaj', 'Croatia',    '1995-11-28');
INSERT INTO player_stats VALUES ('ply1333', 'tm39', 16, 'Defender', 185, 81, 'R');

INSERT INTO players VALUES ('ply1334', 'Ivan', 'Kuzmichev', 'Russia',    '2000-10-20');
INSERT INTO player_stats VALUES ('ply1334', 'tm39', 20, 'Defender', 196, 86, 'R');

INSERT INTO players VALUES ('ply1335', 'Mark', 'Mampassi', 'Ukraine',    '2003-03-12');
INSERT INTO player_stats VALUES ('ply1335', 'tm39', 18, 'Defender', 185, 76, 'R');

INSERT INTO players VALUES ('ply1336', 'Mario', 'Mitaj', 'Albania',    '2003-08-06');
INSERT INTO player_stats VALUES ('ply1336', 'tm39', 12, 'Defender', 185, 71, 'L');

INSERT INTO players VALUES ('ply1337', 'Maksim', 'Nenakhov', 'Russia',    '1998-12-13');
INSERT INTO player_stats VALUES ('ply1337', 'tm39', 24, 'Defender', 178, 69, '');

INSERT INTO players VALUES ('ply1338', 'Egor', 'Pogostnov', 'Russia',    '2004-03-01');
INSERT INTO player_stats VALUES ('ply1338', 'tm39', 59, 'Defender', 196, 86, 'R');

INSERT INTO players VALUES ('ply1339', 'Nayair', 'Tiknizyan', 'Russia',    '1999-05-12');
INSERT INTO player_stats VALUES ('ply1339', 'tm39', 71, 'Defender', 180, 75, 'L');

INSERT INTO players VALUES ('ply1340', 'Dmitri', 'Zhivoglyadov', 'Russia',    '1994-05-29');
INSERT INTO player_stats VALUES ('ply1340', 'tm39', 2, 'Defender', 178, 65, 'R');

INSERT INTO players VALUES ('ply1341', 'Dmitry', 'Barinov', 'Russia',    '1996-09-11');
INSERT INTO player_stats VALUES ('ply1341', 'tm39', 6, 'Midfielder', 179, 72, '');

INSERT INTO players VALUES ('ply1342', 'Ilya', 'Belikov', 'Russia',    '2003-05-23');
INSERT INTO player_stats VALUES ('ply1342', 'tm39', 95, 'Midfielder', 184, 71, '');

INSERT INTO players VALUES ('ply1343', 'Artem', 'Karpukas', 'Russia',    '2002-06-13');
INSERT INTO player_stats VALUES ('ply1343', 'tm39', 93, 'Midfielder', 184, 75, 'R');

INSERT INTO players VALUES ('ply1344', 'Daniil', 'Kulikov', 'Russia',    '1998-06-24');
INSERT INTO player_stats VALUES ('ply1344', 'tm39', 69, 'Midfielder', 178, 66, 'R');

INSERT INTO players VALUES ('ply1345', 'Stanislav', 'Magkeev', 'Russia',    '1999-03-27');
INSERT INTO player_stats VALUES ('ply1345', 'tm39', 4, 'Midfielder', 187, 76, 'R');

INSERT INTO players VALUES ('ply1346', 'Konstantin', 'Maradishvili', 'Russia',    '2000-02-07');
INSERT INTO player_stats VALUES ('ply1346', 'tm39', 5, 'Midfielder', 181, 75, 'R');

INSERT INTO players VALUES ('ply1347', 'Anton', 'Miranchuk', 'Russia',    '1995-10-17');
INSERT INTO player_stats VALUES ('ply1347', 'tm39', 11, 'Midfielder', 183, 72, 'R');

INSERT INTO players VALUES ('ply1348', 'Daniil', 'Popov', 'Russia',    '2004-02-27');
INSERT INTO player_stats VALUES ('ply1348', 'tm39', 89, 'Midfielder', 177, 67, 'R');

INSERT INTO players VALUES ('ply1349', 'Mikhail', 'Shchetinin', 'Russia',    '2005-07-08');
INSERT INTO player_stats VALUES ('ply1349', 'tm39', 43, 'Midfielder', 170, 67, '');

INSERT INTO players VALUES ('ply1350', 'Rifat', 'Zhemaletdinov', 'Russia',    '1996-09-20');
INSERT INTO player_stats VALUES ('ply1350', 'tm39', 17, 'Midfielder', 184, 80, 'R');

INSERT INTO players VALUES ('ply1351', 'Abdula', 'Bagamaev', 'Russia',    '2004-10-18');
INSERT INTO player_stats VALUES ('ply1351', 'tm39', 92, 'Forward', NULL, NULL, '');

INSERT INTO players VALUES ('ply1352', 'Ivan', 'Ignatyev', 'Russia',    '1999-01-06');
INSERT INTO player_stats VALUES ('ply1352', 'tm39', 9, 'Forward', 180, 72, 'R');

INSERT INTO players VALUES ('ply1353', 'Wilson', 'Isidor', 'France',    '2000-08-27');
INSERT INTO player_stats VALUES ('ply1353', 'tm39', 10, 'Forward', 180, 67, 'R');

INSERT INTO players VALUES ('ply1354', 'François', 'Kamano', 'Guinea',    '1996-05-02');
INSERT INTO player_stats VALUES ('ply1354', 'tm39', 25, 'Forward', 182, 77, 'R');

INSERT INTO players VALUES ('ply1355', 'Gyrano', 'Kerk', 'Netherlands',    '1995-12-02');
INSERT INTO player_stats VALUES ('ply1355', 'tm39', 7, 'Forward', 175, 68, 'R');

INSERT INTO players VALUES ('ply1356', '', 'Pedrinho', 'Brazil',    '1999-11-10');
INSERT INTO player_stats VALUES ('ply1356', 'tm39', 29, 'Forward', 176, 64, 'R');

INSERT INTO players VALUES ('ply1357', 'Marko', 'Rakonjac', 'Montenegro',    '2000-04-25');
INSERT INTO player_stats VALUES ('ply1357', 'tm39', 77, 'Forward', 192, 78, 'R');

INSERT INTO players VALUES ('ply1358', 'Vadim', 'Rakov', 'Russia',    '2005-01-09');
INSERT INTO player_stats VALUES ('ply1358', 'tm39', 27, 'Forward', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply1359', 'Ögmundur', 'Kristinsson', 'Iceland',    '1989-06-19');
INSERT INTO player_stats VALUES ('ply1359', 'tm40', 31, 'Goalkeeper', 193, 89, 'R');

INSERT INTO players VALUES ('ply1360', 'Athanasios-Theologos', 'Papadoudis', 'Greece',    '2003-09-06');
INSERT INTO player_stats VALUES ('ply1360', 'tm40', 99, 'Goalkeeper', 192, NULL, '');

INSERT INTO players VALUES ('ply1361', 'Alexandros', 'Paschalakis', 'Greece',    '1989-07-28');
INSERT INTO player_stats VALUES ('ply1361', 'tm40', NULL, 'Goalkeeper', 197, 88, 'R');

INSERT INTO players VALUES ('ply1362', 'Konstantinos', 'Tzolakis', 'Greece',    '2002-11-08');
INSERT INTO player_stats VALUES ('ply1362', '', 88, 'Goalkeeper', 193, NULL, 'R');

INSERT INTO players VALUES ('ply1363', 'Tomáš', 'Vaclík', 'Czech Republic',    '1989-03-29');
INSERT INTO player_stats VALUES ('ply1363', 'tm40', 1, 'Goalkeeper', 189, 85, 'R');

INSERT INTO players VALUES ('ply1364', 'Athanasios', 'Androutsos', 'Greece',    '1997-05-06');
INSERT INTO player_stats VALUES ('ply1364', 'tm40', 14, 'Defender', 182, 65, 'R');

INSERT INTO players VALUES ('ply1365', 'Ousseynou', 'Ba', 'Senegal',    '1995-11-11');
INSERT INTO player_stats VALUES ('ply1365', 'tm40', 24, 'Defender', 192, 84, 'R');

INSERT INTO players VALUES ('ply1366', 'Pape', 'Cissé', 'Senegal',    '1995-09-14');
INSERT INTO player_stats VALUES ('ply1366', 'tm40', 66, 'Defender', 197, 83, 'R');

INSERT INTO players VALUES ('ply1367', 'Etienne', 'Kinkoue', 'France',    '2002-01-14');
INSERT INTO player_stats VALUES ('ply1367', 'tm40', 90, 'Defender', 195, NULL, 'R');

INSERT INTO players VALUES ('ply1368', 'Leonardo', 'Koutris', 'Greece',    '1995-07-23');
INSERT INTO player_stats VALUES ('ply1368', 'tm40', 23, 'Defender', 170, 71, 'L');

INSERT INTO players VALUES ('ply1369', 'Kenny', 'Lala', 'France',    '1991-10-03');
INSERT INTO player_stats VALUES ('ply1369', 'tm40', 27, 'Defender', 178, 78, 'R');

INSERT INTO players VALUES ('ply1370', 'Doron', 'Leidner', 'Israel',    '2002-04-26');
INSERT INTO player_stats VALUES ('ply1370', 'tm40', 16, 'Defender', 178, NULL, 'L');

INSERT INTO players VALUES ('ply1371', '', 'Marcelo', 'Brazil',    '1988-05-12');
INSERT INTO player_stats VALUES ('ply1371', 'tm40', 12, 'Defender', 174, 75, 'L');

INSERT INTO players VALUES ('ply1372', 'Giannis', 'Masouras', 'Greece',    '1996-08-24');
INSERT INTO player_stats VALUES ('ply1372', 'tm40', NULL, 'Defender', 181, 75, 'R');

INSERT INTO players VALUES ('ply1373', 'Nemanja', 'Nikolić', 'Bosnia-Herzegovina',    '2001-02-21');
INSERT INTO player_stats VALUES ('ply1373', 'tm40', 70, 'Defender', 180, NULL, 'R');

INSERT INTO players VALUES ('ply1374', 'Sokratis', 'Papastathopoulos', 'Greece',    '1988-06-09');
INSERT INTO player_stats VALUES ('ply1374', 'tm40', 15, 'Defender', 186, 85, 'R');

INSERT INTO players VALUES ('ply1375', '', 'Pipa', 'Spain',    '1998-01-26');
INSERT INTO player_stats VALUES ('ply1375', 'tm40', 26, 'Defender', 175, 68, 'R');

INSERT INTO players VALUES ('ply1376', 'Oleg', 'Reabciuk', 'Moldova',    '1998-01-16');
INSERT INTO player_stats VALUES ('ply1376', 'tm40', 45, 'Defender', 180, 72, 'L');

INSERT INTO players VALUES ('ply1377', 'Panagiotis', 'Retsos', 'Greece',    '1998-08-09');
INSERT INTO player_stats VALUES ('ply1377', 'tm40', 4, 'Defender', 186, 75, 'R');

INSERT INTO players VALUES ('ply1378', 'Šime', 'Vrsaljko', 'Croatia',    '1992-01-10');
INSERT INTO player_stats VALUES ('ply1378', 'tm40', 2, 'Defender', 181, 76, 'R');

INSERT INTO players VALUES ('ply1379', 'Andreas', 'Bouchalakis', 'Greece',    '1993-04-05');
INSERT INTO player_stats VALUES ('ply1379', 'tm40', 5, 'Midfielder', 186, 83, 'L');

INSERT INTO players VALUES ('ply1380', 'Aguibou', 'Camara', 'Guinea',    '2001-05-20');
INSERT INTO player_stats VALUES ('ply1380', 'tm40', 22, 'Midfielder', 167, 60, 'L');

INSERT INTO players VALUES ('ply1381', 'Kostas', 'Fortounis', 'Greece',    '1992-10-16');
INSERT INTO player_stats VALUES ('ply1381', 'tm40', 53, 'Midfielder', 183, 69, '');

INSERT INTO players VALUES ('ply1382', 'In-beom', 'Hwang', 'South Korea',    '1996-09-20');
INSERT INTO player_stats VALUES ('ply1382', 'tm40', 33, 'Midfielder', 177, 70, '');

INSERT INTO players VALUES ('ply1383', 'Pajtim', 'Kasami', 'Switzerland',    '1992-06-02');
INSERT INTO player_stats VALUES ('ply1383', 'tm40', NULL, 'Midfielder', 188, 87, 'L');

INSERT INTO players VALUES ('ply1384', 'Ioannis', 'Kosti', 'Cyprus',    '2000-03-17');
INSERT INTO player_stats VALUES ('ply1384', 'tm40', 79, 'Midfielder', 170, NULL, '');

INSERT INTO players VALUES ('ply1385', 'Yann', 'M''Vila', 'France',    '1990-06-29');
INSERT INTO player_stats VALUES ('ply1385', 'tm40', 6, 'Midfielder', 182, 80, 'R');

INSERT INTO players VALUES ('ply1386', 'Pierre', 'Malong', 'Cameroon',    '1995-07-26');
INSERT INTO player_stats VALUES ('ply1386', 'tm40', 8, 'Midfielder', 180, 79, 'R');

INSERT INTO players VALUES ('ply1387', 'Andreas', 'Ndoj', 'Albania',    '2003-02-02');
INSERT INTO player_stats VALUES ('ply1387', '', 74, 'Midfielder', 190, NULL, 'R');

INSERT INTO players VALUES ('ply1388', 'Pep', 'Biel', 'Spain',    '1996-09-05');
INSERT INTO player_stats VALUES ('ply1388', 'tm40', 21, 'Midfielder', 167, 64, 'L');

INSERT INTO players VALUES ('ply1389', 'Garry', 'Rodrigues', 'Cape Verde',    '1990-11-27');
INSERT INTO player_stats VALUES ('ply1389', 'tm40', 77, 'Midfielder', 173, 70, 'R');

INSERT INTO players VALUES ('ply1390', 'James', 'Rodríguez', 'Colombia',    '1991-07-12');
INSERT INTO player_stats VALUES ('ply1390', 'tm40', 10, 'Midfielder', 181, 78, 'L');

INSERT INTO players VALUES ('ply1391', 'Diadié', 'Samassékou', 'Mali',    '1996-01-11');
INSERT INTO player_stats VALUES ('ply1391', 'tm40', 38, 'Midfielder', 175, 70, 'R');

INSERT INTO players VALUES ('ply1392', 'Mathieu', 'Valbuena', 'France',    '1984-09-28');
INSERT INTO player_stats VALUES ('ply1392', 'tm40', 28, 'Midfielder', 167, 58, 'R');

INSERT INTO players VALUES ('ply1393', 'Cédric', 'Bakambu', 'Congo DR',    '1991-04-11');
INSERT INTO player_stats VALUES ('ply1393', 'tm40', 94, 'Forward', 182, 73, 'R');

INSERT INTO players VALUES ('ply1394', 'Josh', 'Bowler', 'England',    '1999-03-05');
INSERT INTO player_stats VALUES ('ply1394', 'tm40', 20, 'Forward', 181, 73, 'L');

INSERT INTO players VALUES ('ply1395', 'Konrad de la', 'Fuente', 'USA',    '2001-07-16');
INSERT INTO player_stats VALUES ('ply1395', 'tm40', 30, 'Forward', 176, 73, 'R');

INSERT INTO players VALUES ('ply1396', '', 'Diby', 'Spain',    '2003-07-08');
INSERT INTO player_stats VALUES ('ply1396', 'tm40', 85, 'Forward', 174, 59, 'L');

INSERT INTO players VALUES ('ply1397', 'Youssef', 'El-Arabi', 'Morocco',    '1987-02-03');
INSERT INTO player_stats VALUES ('ply1397', 'tm40', 11, 'Forward', 183, 84, 'R');

INSERT INTO players VALUES ('ply1398', 'Ui-jo', 'Hwang', 'South Korea',    '1992-08-28');
INSERT INTO player_stats VALUES ('ply1398', 'tm40', 18, 'Forward', 185, 73, '');

INSERT INTO players VALUES ('ply1399', 'Aboubakar', 'Kamara', 'Mauritania',    '1995-03-07');
INSERT INTO player_stats VALUES ('ply1399', 'tm40', 47, 'Forward', 177, 75, 'R');

INSERT INTO players VALUES ('ply1400', 'Georgios', 'Masouras', 'Greece',    '1994-01-01');
INSERT INTO player_stats VALUES ('ply1400', 'tm40', 19, 'Forward', 184, 75, 'R');

INSERT INTO players VALUES ('ply1401', 'Marios', 'Vrousai', 'Greece',    '1998-07-02');
INSERT INTO player_stats VALUES ('ply1401', 'tm40', 17, 'Forward', 183, 78, '');

INSERT INTO players VALUES ('ply1402', 'Panagiotis', 'Agriogiannis', 'Greece',    '1979-07-02');
INSERT INTO player_stats VALUES ('ply1402', 'tm40', NULL, 'Goalkeeping', NULL, NULL, '');

INSERT INTO players VALUES ('ply1403', 'Simon', 'Ngapandouetnbu', 'Cameroon',    '2003-04-12');
INSERT INTO player_stats VALUES ('ply1403', 'tm41', 1, 'Goalkeeper', 180, 76, 'R');

INSERT INTO players VALUES ('ply1404', 'Pau', 'López', 'Spain',    '1994-12-13');
INSERT INTO player_stats VALUES ('ply1404', 'tm41', 16, 'Goalkeeper', 189, 77, 'L');

INSERT INTO players VALUES ('ply1405', 'Rubén', 'Blanco', 'Spain',    '1995-07-25');
INSERT INTO player_stats VALUES ('ply1405', 'tm41', 36, 'Goalkeeper', 189, 80, 'R');

INSERT INTO players VALUES ('ply1406', 'Eric', 'Bailly', 'Ivory Coast',    '1994-04-12');
INSERT INTO player_stats VALUES ('ply1406', 'tm41', 3, 'Defender', 187, 77, 'R');

INSERT INTO players VALUES ('ply1407', 'Leonardo', 'Balerdi', 'Argentina',    '1999-01-26');
INSERT INTO player_stats VALUES ('ply1407', 'tm41', 5, 'Defender', 188, 72, 'R');

INSERT INTO players VALUES ('ply1408', 'Samuel', 'Gigot', 'France',    '1993-10-12');
INSERT INTO player_stats VALUES ('ply1408', 'tm41', 4, 'Defender', 187, 83, 'R');

INSERT INTO players VALUES ('ply1409', 'Issa', 'Kabore', 'Burkina Faso',    '2001-05-12');
INSERT INTO player_stats VALUES ('ply1409', 'tm41', 29, 'Defender', 180, 70, 'R');

INSERT INTO players VALUES ('ply1410', 'Aaron', 'Kamardin', 'France',    '2002-04-08');
INSERT INTO player_stats VALUES ('ply1410', 'tm41', 37, 'Defender', 183, 77, 'R');

INSERT INTO players VALUES ('ply1411', 'Sead', 'Kolašinac', 'Bosnia-Herzegovina',    '1993-06-20');
INSERT INTO player_stats VALUES ('ply1411', 'tm41', 23, 'Defender', 183, 85, 'L');

INSERT INTO players VALUES ('ply1412', 'Nuno', 'Tavares', 'Portugal',    '2000-01-26');
INSERT INTO player_stats VALUES ('ply1412', 'tm41', 30, 'Defender', 184, 76, 'L');

INSERT INTO players VALUES ('ply1413', 'Yakine Said', 'M''Madi', 'France',    '2004-03-11');
INSERT INTO player_stats VALUES ('ply1413', 'tm41', 42, 'Defender', 183, NULL, 'R');

INSERT INTO players VALUES ('ply1414', 'Souleymane Isaak', 'Touré', 'France',    '2003-03-28');
INSERT INTO player_stats VALUES ('ply1414', 'tm41', 18, 'Defender', 190, 75, 'L');

INSERT INTO players VALUES ('ply1415', 'Ugo', 'Bertelli', 'France',    '2003-07-15');
INSERT INTO player_stats VALUES ('ply1415', 'tm41', 31, 'Midfielder', 168, 54, 'R');

INSERT INTO players VALUES ('ply1416', 'Jonathan', 'Clauss', 'France',    '1992-09-25');
INSERT INTO player_stats VALUES ('ply1416', 'tm41', 7, 'Midfielder', 185, 67, 'R');

INSERT INTO players VALUES ('ply1417', '', 'Gerson', 'Brazil',    '1997-05-20');
INSERT INTO player_stats VALUES ('ply1417', 'tm41', 8, 'Midfielder', 184, 76, 'L');

INSERT INTO players VALUES ('ply1418', 'Mattéo', 'Guendouzi', 'France',    '1999-04-14');
INSERT INTO player_stats VALUES ('ply1418', 'tm41', 6, 'Midfielder', 185, 68, 'R');

INSERT INTO players VALUES ('ply1419', 'Pape', 'Gueye', 'Senegal',    '1999-01-24');
INSERT INTO player_stats VALUES ('ply1419', 'tm41', 22, 'Midfielder', 189, 70, 'L');

INSERT INTO players VALUES ('ply1420', 'Amine', 'Harit', 'Morocco',    '1997-06-18');
INSERT INTO player_stats VALUES ('ply1420', 'tm41', 77, 'Midfielder', 180, 67, 'R');

INSERT INTO players VALUES ('ply1421', 'Bilal', 'Nadir', 'France',    '2003-11-28');
INSERT INTO player_stats VALUES ('ply1421', 'tm41', 39, 'Midfielder', 179, 62, 'L');

INSERT INTO players VALUES ('ply1422', 'Dimitri', 'Payet', 'France',    '1987-03-29');
INSERT INTO player_stats VALUES ('ply1422', 'tm41', 10, 'Midfielder', 175, 77, 'R');

INSERT INTO players VALUES ('ply1423', 'Valentin', 'Rongier', 'France',    '1994-12-07');
INSERT INTO player_stats VALUES ('ply1423', 'tm41', 21, 'Midfielder', 172, 70, 'R');

INSERT INTO players VALUES ('ply1424', 'Paolo', 'Sciortino', 'France',    '2003-11-05');
INSERT INTO player_stats VALUES ('ply1424', 'tm41', 34, 'Midfielder', 177, 70, 'R');

INSERT INTO players VALUES ('ply1425', 'Cheick', 'Souaré', 'France',    '2002-09-03');
INSERT INTO player_stats VALUES ('ply1425', 'tm41', 41, 'Midfielder', 170, 61, 'L');

INSERT INTO players VALUES ('ply1426', 'Jordan', 'Veretout', 'France',    '1993-03-01');
INSERT INTO player_stats VALUES ('ply1426', 'tm41', 27, 'Midfielder', 177, 75, 'R');

INSERT INTO players VALUES ('ply1427', 'Salim Ben', 'Seghir', 'France',    '2003-02-24');
INSERT INTO player_stats VALUES ('ply1427', 'tm41', 32, 'Forward', 174, 57, 'R');

INSERT INTO players VALUES ('ply1428', 'Bamba', 'Dieng', 'Senegal',    '2000-03-23');
INSERT INTO player_stats VALUES ('ply1428', 'tm41', 12, 'Forward', 178, 72, 'R');

INSERT INTO players VALUES ('ply1429', 'Pedro', 'Ruiz', 'Spain',    '2000-03-30');
INSERT INTO player_stats VALUES ('ply1429', 'tm41', NULL, 'Forward', 198, 89, 'L');

INSERT INTO players VALUES ('ply1430', 'Luis', 'Suárez', 'Colombia',    '1997-12-02');
INSERT INTO player_stats VALUES ('ply1430', 'tm41', 11, 'Forward', 185, 79, 'R');

INSERT INTO players VALUES ('ply1431', 'Cengiz', 'Ünder', 'Turkey',    '1997-07-14');
INSERT INTO player_stats VALUES ('ply1431', 'tm41', 17, 'Forward', 173, 66, 'L');

INSERT INTO players VALUES ('ply1432', 'Doğan', 'Alemdar', 'Turkey',    '2002-10-29');
INSERT INTO player_stats VALUES ('ply1432', 'tm42', 40, 'Goalkeeper', 189, 73, 'R');

INSERT INTO players VALUES ('ply1433', 'Elias', 'Damergy', 'Tunisia',    '2002-10-17');
INSERT INTO player_stats VALUES ('ply1433', 'tm42', 50, 'Goalkeeper', 187, 76, 'R');

INSERT INTO players VALUES ('ply1434', 'Alfred', 'Gomis', 'Senegal',    '1993-09-05');
INSERT INTO player_stats VALUES ('ply1434', 'tm42', 16, 'Goalkeeper', 196, 87, 'R');

INSERT INTO players VALUES ('ply1435', 'Steve', 'Mandanda', 'France',    '1985-03-28');
INSERT INTO player_stats VALUES ('ply1435', 'tm42', 30, 'Goalkeeper', 185, 82, 'R');

INSERT INTO players VALUES ('ply1436', 'Romain', 'Salin', 'France',    '1984-07-29');
INSERT INTO player_stats VALUES ('ply1436', 'tm42', 1, 'Goalkeeper', 185, 76, 'L');

INSERT INTO players VALUES ('ply1437', 'Lorenz', 'Assignon', 'France',    '2000-06-22');
INSERT INTO player_stats VALUES ('ply1437', 'tm42', 22, 'Defender', 179, 67, 'R');

INSERT INTO players VALUES ('ply1438', 'Jeanuël', 'Belocian', 'France',    '2005-02-17');
INSERT INTO player_stats VALUES ('ply1438', 'tm42', 33, 'Defender', 186, 73, 'L');

INSERT INTO players VALUES ('ply1439', 'Guela', 'Doué', 'France',    '2002-10-17');
INSERT INTO player_stats VALUES ('ply1439', 'tm42', 31, 'Defender', 184, NULL, '');

INSERT INTO players VALUES ('ply1440', 'Birger', 'Meling', 'Norway',    '1994-12-17');
INSERT INTO player_stats VALUES ('ply1440', 'tm42', 25, 'Defender', 173, 64, 'L');

INSERT INTO players VALUES ('ply1441', 'Warmed', 'Omari', 'France',    '2000-04-23');
INSERT INTO player_stats VALUES ('ply1441', 'tm42', 23, 'Defender', 185, 78, 'R');

INSERT INTO players VALUES ('ply1442', 'Joe', 'Rodon', 'Wales',    '1997-10-22');
INSERT INTO player_stats VALUES ('ply1442', 'tm42', 2, 'Defender', 193, 76, 'R');

INSERT INTO players VALUES ('ply1443', 'Arthur', 'Theate', 'Belgium',    '2000-05-25');
INSERT INTO player_stats VALUES ('ply1443', 'tm42', 5, 'Defender', 186, 79, 'L');

INSERT INTO players VALUES ('ply1444', 'Hamari', 'Traoré', 'Mali',    '1992-01-27');
INSERT INTO player_stats VALUES ('ply1444', 'tm42', 27, 'Defender', 175, 71, 'R');

INSERT INTO players VALUES ('ply1445', 'Adrien', 'Truffert', 'France',    '2001-11-20');
INSERT INTO player_stats VALUES ('ply1445', 'tm42', 3, 'Defender', 173, 63, 'L');

INSERT INTO players VALUES ('ply1446', 'Christopher', 'Wooh', 'France',    '2001-09-18');
INSERT INTO player_stats VALUES ('ply1446', 'tm42', 15, 'Defender', 190, 78, 'R');

INSERT INTO players VALUES ('ply1447', 'Benjamin', 'Bourigeaud', 'France',    '1994-01-14');
INSERT INTO player_stats VALUES ('ply1447', 'tm42', 14, 'Midfielder', 178, 68, 'R');

INSERT INTO players VALUES ('ply1448', 'Désiré', 'Doué', 'France',    '2005-06-03');
INSERT INTO player_stats VALUES ('ply1448', '', NULL, 'Midfielder', 177, NULL, 'R');

INSERT INTO players VALUES ('ply1449', 'Noah', 'Françoise', 'France',    '2003-07-05');
INSERT INTO player_stats VALUES ('ply1449', 'tm42', 35, 'Midfielder', 173, 59, 'R');

INSERT INTO players VALUES ('ply1450', 'Lovro', 'Majer', 'Croatia',    '1998-01-17');
INSERT INTO player_stats VALUES ('ply1450', 'tm42', 21, 'Midfielder', 179, 75, 'L');

INSERT INTO players VALUES ('ply1451', 'Baptiste', 'Santamaría', 'France',    '1995-03-09');
INSERT INTO player_stats VALUES ('ply1451', 'tm42', 8, 'Midfielder', 183, 73, 'R');

INSERT INTO players VALUES ('ply1452', 'Flavien', 'Tait', 'France',    '1993-02-02');
INSERT INTO player_stats VALUES ('ply1452', 'tm42', 20, 'Midfielder', 175, 70, 'R');

INSERT INTO players VALUES ('ply1453', 'Chimuanya', 'Ugochukwu', 'France',    '2004-03-26');
INSERT INTO player_stats VALUES ('ply1453', 'tm42', 26, 'Midfielder', 188, 83, 'R');

INSERT INTO players VALUES ('ply1454', '', 'Xeka', 'Portugal',    '1994-11-10');
INSERT INTO player_stats VALUES ('ply1454', 'tm42', NULL, 'Midfielder', 186, 79, '');

INSERT INTO players VALUES ('ply1455', 'Matthis', 'Abline', 'France',    '2003-03-28');
INSERT INTO player_stats VALUES ('ply1455', 'tm42', 28, 'Forward', 176, 70, 'R');

INSERT INTO players VALUES ('ply1456', 'Jérémy', 'Doku', 'Belgium',    '2002-05-27');
INSERT INTO player_stats VALUES ('ply1456', 'tm42', 11, 'Forward', 171, 61, 'R');

INSERT INTO players VALUES ('ply1457', 'Amine', 'Gouiri', 'France',    '2000-02-16');
INSERT INTO player_stats VALUES ('ply1457', 'tm42', 19, 'Forward', 180, 72, 'R');

INSERT INTO players VALUES ('ply1458', 'Arnaud', 'Kalimuendo', 'France',    '2002-01-20');
INSERT INTO player_stats VALUES ('ply1458', 'tm42', 9, 'Forward', 178, 78, 'R');

INSERT INTO players VALUES ('ply1459', 'Kamaldeen', 'Sulemana', 'Ghana',    '2002-02-15');
INSERT INTO player_stats VALUES ('ply1459', 'tm42', 10, 'Forward', 174, 68, 'R');

INSERT INTO players VALUES ('ply1460', 'Martin', 'Terrier', 'France',    '1997-03-04');
INSERT INTO player_stats VALUES ('ply1460', 'tm42', 7, 'Forward', 184, 73, 'R');

INSERT INTO players VALUES ('ply1461', 'Patson', 'Daka', 'Zambia',    '1998-10-09');
INSERT INTO player_stats VALUES ('ply1461', '', 20, 'Forward', 185, 81, 'R');

INSERT INTO players VALUES ('ply1462', 'Vitaliy', 'Lisakovich', 'Belarus',    '1998-02-08');
INSERT INTO player_stats VALUES ('ply1462', '', 44, 'Forward', 179, 73, 'L');

INSERT INTO players VALUES ('ply1463', 'Zé', 'Luís', 'Cape Verde',    '1991-01-24');
INSERT INTO player_stats VALUES ('ply1463', '', NULL, 'Forward', 184, 80, 'L');

INSERT INTO players VALUES ('ply1464', 'Javi', 'Martínez', 'Spain',    '1988-09-02');
INSERT INTO player_stats VALUES ('ply1464', '', 8, 'Midfielder', 192, 86, 'R');

INSERT INTO players VALUES ('ply1465', 'Mërgim', 'Berisha', 'Germany',    '1998-05-11');
INSERT INTO player_stats VALUES ('ply1465', '', 11, 'Forward', 188, 78, 'R');

INSERT INTO players VALUES ('ply1466', 'Héctor', 'Herrera', 'Mexico',    '1990-04-19');
INSERT INTO player_stats VALUES ('ply1466', '', 16, 'Midfielder', 185, 78, 'R');

INSERT INTO players VALUES ('ply1467', 'Masaya', 'Okugawa', 'Japan',    '1996-04-14');
INSERT INTO player_stats VALUES ('ply1467', '', 11, 'Midfielder', 177, 68, '');

INSERT INTO players VALUES ('ply1468', 'André', 'Ramalho', 'Brazil',    '1992-02-16');
INSERT INTO player_stats VALUES ('ply1468', '', 5, 'Defender', 182, 78, '');

INSERT INTO players VALUES ('ply1469', 'Jérôme', 'Boateng', 'Germany',    '1988-09-03');
INSERT INTO player_stats VALUES ('ply1469', '', 17, 'Defender', 192, 90, 'R');

INSERT INTO players VALUES ('ply1470', 'Enock', 'Mwepu', 'Zambia',    '1998-01-01');
INSERT INTO player_stats VALUES ('ply1470', '', 12, 'Midfielder', 184, 76, 'R');

INSERT INTO players VALUES ('ply1471', 'Douglas', 'Costa', 'Brazil',    '1990-09-14');
INSERT INTO player_stats VALUES ('ply1471', '', 10, 'Forward', 172, 70, 'L');

INSERT INTO players VALUES ('ply1472', '', 'Tetê', 'Brazil',    '2000-02-15');
INSERT INTO player_stats VALUES ('ply1472', '', 11, 'Forward', 175, 67, 'L');

INSERT INTO players VALUES ('ply1473', 'Manor', 'Solomon', 'Israel',    '1999-07-24');
INSERT INTO player_stats VALUES ('ply1473', '', 11, 'Midfielder', 167, 63, '');

INSERT INTO players VALUES ('ply1474', 'Breel', 'Embolo', 'Switzerland',    '1997-02-14');
INSERT INTO player_stats VALUES ('ply1474', '', 36, 'Forward', 187, 88, 'R');

INSERT INTO players VALUES ('ply1475', 'Oscar', 'Wendt', 'Sweden',    '1985-10-24');
INSERT INTO player_stats VALUES ('ply1475', '', 17, 'Defender', 181, 82, 'L');

INSERT INTO players VALUES ('ply1476', '', 'Dentinho', 'Brazil',    '1989-01-19');
INSERT INTO player_stats VALUES ('ply1476', '', 31, 'Forward', 176, 75, 'R');

INSERT INTO players VALUES ('ply1477', 'Valentino', 'Lazaro', 'Austria',    '1996-03-24');
INSERT INTO player_stats VALUES ('ply1477', '', 19, 'Defender', 180, 75, 'R');

INSERT INTO players VALUES ('ply1478', 'Ahmed', 'Hassan', 'Egypt',    '1993-03-05');
INSERT INTO player_stats VALUES ('ply1478', '', NULL, 'Forward', 191, 78, 'R');

INSERT INTO players VALUES ('ply1479', 'Moussa', 'Marega', 'Mali',    '1991-04-14');
INSERT INTO player_stats VALUES ('ply1479', '', 17, 'Arabia', 183, 83, 'R');

INSERT INTO players VALUES ('ply1480', 'Mady', 'Camara', 'Guinea',    '1997-02-28');
INSERT INTO player_stats VALUES ('ply1480', '', 20, 'Midfielder', 182, 76, 'R');

INSERT INTO players VALUES ('ply1481', 'Florian', 'Thauvin', 'France',    '1993-01-26');
INSERT INTO player_stats VALUES ('ply1481', '', 26, 'Midfielder', 181, 77, 'L');

INSERT INTO players VALUES ('ply1482', 'Álvaro', 'González', 'Spain',    '1990-01-08');
INSERT INTO player_stats VALUES ('ply1482', '', 21, 'Arabia', 183, 75, 'R');

INSERT INTO players VALUES ('ply1483', 'Cristian', 'Romero', 'Argentina',    '1998-04-27');
INSERT INTO player_stats VALUES ('ply1483', '', 17, 'Defender', 185, 79, 'R');

INSERT INTO players VALUES ('ply1484', 'Quincy', 'Promes', 'Netherlands',    '1992-01-04');
INSERT INTO player_stats VALUES ('ply1484', '', 10, 'Forward', 174, 72, 'R');

INSERT INTO players VALUES ('ply1485', 'Jens-Lys', 'Cajuste', 'Sweden',    '1999-08-10');
INSERT INTO player_stats VALUES ('ply1485', '', 8, 'Midfielder', 188, 77, 'R');

INSERT INTO players VALUES ('ply1486', 'Awer', 'Mabil', 'Australia',    '1995-09-15');
INSERT INTO player_stats VALUES ('ply1486', '', 17, 'Forward', 179, 65, 'R');

INSERT INTO players VALUES ('ply1487', 'Alexander', 'Scholz', 'Denmark',    '1992-10-24');
INSERT INTO player_stats VALUES ('ply1487', '', 28, 'Defender', 189, 84, 'R');

INSERT INTO players VALUES ('ply1488', 'Neco', 'Williams', 'Wales',    '2001-04-13');
INSERT INTO player_stats VALUES ('ply1488', '', 7, 'Defender', 183, 72, 'R');

INSERT INTO players VALUES ('ply1489', 'Serhou', 'Guirassy', 'France',    '1996-03-12');
INSERT INTO player_stats VALUES ('ply1489', '', 9, 'Forward', 187, 82, 'R');

INSERT INTO players VALUES ('ply1490', 'Tonny', 'Vilhena', 'Netherlands',    '1995-01-03');
INSERT INTO player_stats VALUES ('ply1490', '', 10, 'Midfielder', 175, 71, 'L');

INSERT INTO players VALUES ('ply1491', 'Tammy', 'Abraham', 'England',    '1997-10-02');
INSERT INTO player_stats VALUES ('ply1491', '', 9, 'Forward', 190, 80, 'R');

INSERT INTO players VALUES ('ply1492', 'Luuk de', 'Jong', 'Netherlands',    '1990-08-27');
INSERT INTO player_stats VALUES ('ply1492', '', 9, 'Forward', 188, 86, 'R');

INSERT INTO players VALUES ('ply1493', 'Shapi', 'Suleymanov', 'Russia',    '1999-12-16');
INSERT INTO player_stats VALUES ('ply1493', '', 93, 'Forward', 171, 69, 'L');

INSERT INTO players VALUES ('ply1494', 'Marcus', 'Berg', 'Sweden',    '1986-08-17');
INSERT INTO player_stats VALUES ('ply1494', '', 9, 'Forward', 184, 76, 'R');

INSERT INTO players VALUES ('ply1495', '', 'Wanderson', 'Brazil',    '1994-10-07');
INSERT INTO player_stats VALUES ('ply1495', '', 11, 'Forward', 175, 71, 'R');

INSERT INTO players VALUES ('ply1496', '', 'Munir', 'Morocco',    '1995-09-01');
INSERT INTO player_stats VALUES ('ply1496', '', 17, 'Forward', 175, 69, 'L');

INSERT INTO players VALUES ('ply1497', 'Aleksandr', 'Martinovich', 'Belarus',    '1987-08-26');
INSERT INTO player_stats VALUES ('ply1497', '', 4, 'Defender', 192, 85, 'R');

INSERT INTO players VALUES ('ply1498', 'Victor', 'Claesson', 'Sweden',    '1992-01-02');
INSERT INTO player_stats VALUES ('ply1498', '', 7, 'Midfielder', 183, 79, 'R');

INSERT INTO players VALUES ('ply1499', 'Oussama', 'Idrissi', 'Morocco',    '1996-02-26');
INSERT INTO player_stats VALUES ('ply1499', '', 26, 'Forward', 175, 78, 'R');

INSERT INTO players VALUES ('ply1500', '', 'Óscar', 'Spain',    '1998-06-28');
INSERT INTO player_stats VALUES ('ply1500', '', 5, 'Midfielder', 174, 67, 'R');

INSERT INTO players VALUES ('ply1501', 'Georginio', 'Rutter', 'France',    '2002-04-20');
INSERT INTO player_stats VALUES ('ply1501', '', 33, 'Forward', 182, 77, '');

INSERT INTO players VALUES ('ply1502', 'Emmanuel', 'Dennis', 'Nigeria',    '1997-11-15');
INSERT INTO player_stats VALUES ('ply1502', '', 25, 'Forward', 175, 67, 'R');

INSERT INTO players VALUES ('ply1503', 'Ethan', 'Horvath', 'USA',    '1995-06-09');
INSERT INTO player_stats VALUES ('ply1503', '', 34, 'Goalkeeper', 195, 90, 'R');

INSERT INTO players VALUES ('ply1504', 'Marwin', 'Hitz', 'Switzerland',    '1987-09-18');
INSERT INTO player_stats VALUES ('ply1504', '', 1, 'Goalkeeper', 194, 91, '');

INSERT INTO players VALUES ('ply1505', 'Jean-Daniel', 'Akpa-Akpro', 'Ivory Coast',    '1992-10-11');
INSERT INTO player_stats VALUES ('ply1505', '', 11, 'Midfielder', 180, 71, 'R');

INSERT INTO players VALUES ('ply1506', 'Felipe', 'Caicedo', 'Ecuador',    '1988-09-05');
INSERT INTO player_stats VALUES ('ply1506', '', 20, 'Arabia', 183, 78, 'L');

INSERT INTO players VALUES ('ply1507', 'Lucas', 'Leiva', 'Brazil',    '1987-01-09');
INSERT INTO player_stats VALUES ('ply1507', '', NULL, 'Midfielder', 179, 74, 'R');

INSERT INTO players VALUES ('ply1508', 'Sebastián', 'Driussi', 'Argentina',    '1996-02-09');
INSERT INTO player_stats VALUES ('ply1508', '', 7, 'Forward', 179, 78, '');

INSERT INTO players VALUES ('ply1509', '', 'Coutinho', 'Brazil',    '1992-06-12');
INSERT INTO player_stats VALUES ('ply1509', '', 23, 'Midfielder', 172, 66, 'R');

INSERT INTO players VALUES ('ply1510', 'Igor', 'Kharatin', 'Ukraine',    '1995-02-02');
INSERT INTO player_stats VALUES ('ply1510', '', 14, 'Midfielder', 188, 80, 'R');

INSERT INTO players VALUES ('ply1511', 'Carlos de', 'Pena', 'Uruguay',    '1992-03-11');
INSERT INTO player_stats VALUES ('ply1511', '', 14, 'Midfielder', 177, 69, 'L');

INSERT INTO players VALUES ('ply1512', 'Lasha', 'Dvali', 'Georgia',    '1995-05-14');
INSERT INTO player_stats VALUES ('ply1512', '', 5, 'Defender', 191, 80, 'L');

INSERT INTO players VALUES ('ply1513', 'Martin', 'Braithwaite', 'Denmark',    '1991-06-05');
INSERT INTO player_stats VALUES ('ply1513', '', 17, 'Forward', 177, 73, 'R');

INSERT INTO players VALUES ('ply1514', 'Óscar', 'Mingueza', 'Spain',    '1999-05-13');
INSERT INTO player_stats VALUES ('ply1514', '', 3, 'Defender', 184, 74, 'R');

INSERT INTO players VALUES ('ply1515', 'Myrto', 'Uzuni', 'Albania',    '1995-05-31');
INSERT INTO player_stats VALUES ('ply1515', '', 11, 'Forward', 178, 72, 'R');

INSERT INTO players VALUES ('ply1516', 'Edin', 'Višća', 'Bosnia-Herzegovina',    '1990-02-17');
INSERT INTO player_stats VALUES ('ply1516', '', 7, 'Forward', 172, 67, 'R');

INSERT INTO players VALUES ('ply1517', 'Daniel', 'James', 'Wales',    '1997-11-10');
INSERT INTO player_stats VALUES ('ply1517', '', 21, 'Midfielder', 170, 70, 'R');

INSERT INTO players VALUES ('ply1518', 'İrfan', 'Kahveci', 'Turkey',    '1995-07-15');
INSERT INTO player_stats VALUES ('ply1518', '', 17, 'Midfielder', 176, 67, 'L');

INSERT INTO players VALUES ('ply1519', 'Alexander', 'Sørloth', 'Norway',    '1995-12-05');
INSERT INTO player_stats VALUES ('ply1519', '', 19, 'Forward', 195, 94, 'L');

INSERT INTO players VALUES ('ply1520', '', 'Rafinha', 'Brazil',    '1993-02-12');
INSERT INTO player_stats VALUES ('ply1520', '', 10, 'Midfielder', 174, 71, 'L');

INSERT INTO players VALUES ('ply1521', 'Justin', 'Kluivert', 'Netherlands',    '1999-05-05');
INSERT INTO player_stats VALUES ('ply1521', '', 9, 'Forward', 172, 66, '');

INSERT INTO players VALUES ('ply1522', 'Andreas', 'Pereira', 'Brazil',    '1996-01-01');
INSERT INTO player_stats VALUES ('ply1522', '', 18, 'Midfielder', 178, 71, 'R');

INSERT INTO players VALUES ('ply1523', '', 'Emerson', 'Italy',    '1994-08-03');
INSERT INTO player_stats VALUES ('ply1523', '', 33, 'Defender', 176, 79, 'L');

INSERT INTO players VALUES ('ply1524', '', 'Nanu', 'Guinea-Bissau',    '1994-05-17');
INSERT INTO player_stats VALUES ('ply1524', '', 31, 'Defender', 177, 69, 'R');

INSERT INTO players VALUES ('ply1525', 'Lukáš', 'Hrádecký', 'Finland',    '1989-11-24');
INSERT INTO player_stats VALUES ('ply1525', 'tm43', 1, 'Goalkeeper', 192, 83, 'R');

INSERT INTO players VALUES ('ply1526', 'Niklas', 'Lomb', 'Germany',    '1993-07-28');
INSERT INTO player_stats VALUES ('ply1526', 'tm43', 36, 'Goalkeeper', 186, 84, 'R');

INSERT INTO players VALUES ('ply1527', 'Andrey', 'Lunev', 'Russia',    '1991-11-13');
INSERT INTO player_stats VALUES ('ply1527', 'tm43', 40, 'Goalkeeper', 190, 80, 'R');

INSERT INTO players VALUES ('ply1528', 'Maximilian', 'Neutgens', 'Germany',    '2004-03-03');
INSERT INTO player_stats VALUES ('ply1528', '', NULL, 'Goalkeeper', 188, 66, '');

INSERT INTO players VALUES ('ply1529', 'Mitchel', 'Bakker', 'Netherlands',    '2000-06-20');
INSERT INTO player_stats VALUES ('ply1529', 'tm43', 5, 'Defender', 185, 85, 'L');

INSERT INTO players VALUES ('ply1530', 'Timothy', 'Fosu-Mensah', 'Netherlands',    '1998-01-02');
INSERT INTO player_stats VALUES ('ply1530', 'tm43', 24, 'Defender', 185, 80, 'R');

INSERT INTO players VALUES ('ply1531', 'Jeremie', 'Frimpong', 'Netherlands',    '2000-12-10');
INSERT INTO player_stats VALUES ('ply1531', 'tm43', 30, 'Defender', 171, 63, 'R');

INSERT INTO players VALUES ('ply1532', 'Piero', 'Hincapié', 'Ecuador',    '2002-01-09');
INSERT INTO player_stats VALUES ('ply1532', 'tm43', 3, 'Defender', 183, 66, 'L');

INSERT INTO players VALUES ('ply1533', 'Odilon', 'Kossounou', 'Ivory Coast',    '2001-01-04');
INSERT INTO player_stats VALUES ('ply1533', 'tm43', 6, 'Defender', 191, 79, 'R');

INSERT INTO players VALUES ('ply1534', 'Daley', 'Sinkgraven', 'Netherlands',    '1995-07-04');
INSERT INTO player_stats VALUES ('ply1534', 'tm43', 22, 'Defender', 179, 66, 'L');

INSERT INTO players VALUES ('ply1535', 'Jonathan', 'Tah', 'Germany',    '1996-02-11');
INSERT INTO player_stats VALUES ('ply1535', 'tm43', 4, 'Defender', 195, 98, 'R');

INSERT INTO players VALUES ('ply1536', 'Edmond', 'Tapsoba', 'Burkina Faso',    '1999-02-02');
INSERT INTO player_stats VALUES ('ply1536', 'tm43', 12, 'Defender', 194, 85, 'R');

INSERT INTO players VALUES ('ply1537', 'Amine', 'Adli', 'France',    '2000-05-10');
INSERT INTO player_stats VALUES ('ply1537', 'tm43', 21, 'Midfielder', 174, 60, 'L');

INSERT INTO players VALUES ('ply1538', 'Nadiem', 'Amiri', 'Germany',    '1996-10-27');
INSERT INTO player_stats VALUES ('ply1538', 'tm43', 11, 'Midfielder', 180, 73, 'R');

INSERT INTO players VALUES ('ply1539', 'Robert', 'Andrich', 'Germany',    '1994-09-22');
INSERT INTO player_stats VALUES ('ply1539', 'tm43', 8, 'Midfielder', 187, 83, 'R');

INSERT INTO players VALUES ('ply1540', 'Charles', 'Aránguiz', 'Chile',    '1989-04-17');
INSERT INTO player_stats VALUES ('ply1540', 'tm43', 20, 'Midfielder', 171, 68, 'R');

INSERT INTO players VALUES ('ply1541', 'Ayman', 'Azhil', 'Morocco',    '2001-04-10');
INSERT INTO player_stats VALUES ('ply1541', 'tm43', 32, 'Midfielder', 170, 58, '');

INSERT INTO players VALUES ('ply1542', 'Kerem', 'Demirbay', 'Germany',    '1993-07-03');
INSERT INTO player_stats VALUES ('ply1542', 'tm43', 10, 'Midfielder', 183, 74, 'L');

INSERT INTO players VALUES ('ply1543', 'Joshua', 'Eze', 'Germany',    '2003-03-20');
INSERT INTO player_stats VALUES ('ply1543', 'tm43', 35, 'Midfielder', 182, 76, '');

INSERT INTO players VALUES ('ply1544', 'Exequiel', 'Palacios', 'Argentina',    '1998-10-05');
INSERT INTO player_stats VALUES ('ply1544', 'tm43', 25, 'Midfielder', 177, 67, 'R');

INSERT INTO players VALUES ('ply1545', 'Zidan', 'Sertdemir', 'Denmark',    '2005-02-04');
INSERT INTO player_stats VALUES ('ply1545', 'tm43', 29, 'Midfielder', 183, 71, 'L');

INSERT INTO players VALUES ('ply1546', 'Florian', 'Wirtz', 'Germany',    '2003-05-03');
INSERT INTO player_stats VALUES ('ply1546', 'tm43', 27, 'Midfielder', 176, 70, 'R');

INSERT INTO players VALUES ('ply1547', 'Karim', 'Bellarabi', 'Germany',    '1990-04-08');
INSERT INTO player_stats VALUES ('ply1547', 'tm43', 38, 'Forward', 184, 81, 'R');

INSERT INTO players VALUES ('ply1548', 'Moussa', 'Diaby', 'France',    '1999-07-07');
INSERT INTO player_stats VALUES ('ply1548', 'tm43', 19, 'Forward', 170, 67, 'L');

INSERT INTO players VALUES ('ply1549', 'Adam', 'Hložek', 'Czech Republic',    '2002-07-25');
INSERT INTO player_stats VALUES ('ply1549', 'tm43', 23, 'Forward', 188, 74, 'R');

INSERT INTO players VALUES ('ply1550', '', 'Paulinho', 'Brazil',    '2000-07-15');
INSERT INTO player_stats VALUES ('ply1550', 'tm43', 7, 'Forward', 177, 77, 'R');

INSERT INTO players VALUES ('ply1551', 'Patrik', 'Schick', 'Czech Republic',    '1996-01-24');
INSERT INTO player_stats VALUES ('ply1551', 'tm43', 14, 'Forward', 191, 85, 'L');

INSERT INTO players VALUES ('ply1552', 'Marcel', 'Daum', 'Germany',    '1986-07-20');
INSERT INTO player_stats VALUES ('ply1552', 'tm43', NULL, 'Chief', NULL, NULL, '');

INSERT INTO players VALUES ('ply1553', 'Schahriar', 'Bigdeli', 'Germany',    '1980-03-26');
INSERT INTO player_stats VALUES ('ply1553', 'tm43', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1554', 'Daniel', 'Jouvin', 'Germany',    '1978-06-16');
INSERT INTO player_stats VALUES ('ply1554', 'tm43', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1555', 'Malte', 'Krüger', 'Germany',    '1982-04-10');
INSERT INTO player_stats VALUES ('ply1555', 'tm43', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1556', 'Markus', 'Müller', 'Germany',    '1985-09-27');
INSERT INTO player_stats VALUES ('ply1556', 'tm43', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1557', 'Bob', 'Schoos', 'Luxembourg',    '1983-04-20');
INSERT INTO player_stats VALUES ('ply1557', 'tm43', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1558', 'Gregor', 'Stumpf', 'Germany',    '1979-02-15');
INSERT INTO player_stats VALUES ('ply1558', 'tm43', NULL, 'Rehab', NULL, NULL, '');

INSERT INTO players VALUES ('ply1559', 'Simon', 'Lackmann', 'Germany',    '1980-12-29');
INSERT INTO player_stats VALUES ('ply1559', 'tm43', NULL, 'Video', NULL, NULL, '');

INSERT INTO players VALUES ('ply1560', 'Milan', 'Borjan', 'Canada',    '1987-10-23');
INSERT INTO player_stats VALUES ('ply1560', 'tm44', 82, 'Goalkeeper', 195, 87, 'R');

INSERT INTO players VALUES ('ply1561', 'Zoran', 'Popović', 'Serbia',    '1988-05-28');
INSERT INTO player_stats VALUES ('ply1561', 'tm44', 1, 'Goalkeeper', 188, 81, 'R');

INSERT INTO players VALUES ('ply1562', 'Nikola', 'Vasiljević', 'Serbia',    '1996-06-24');
INSERT INTO player_stats VALUES ('ply1562', 'tm44', 27, 'Goalkeeper', 202, 93, 'R');

INSERT INTO players VALUES ('ply1563', 'Irakli', 'Azarov', 'Georgia',    '2002-02-21');
INSERT INTO player_stats VALUES ('ply1563', 'tm44', 16, 'Defender', NULL, NULL, 'L');

INSERT INTO players VALUES ('ply1564', 'Vuk', 'Bogdanović', 'Serbia',    '2002-04-03');
INSERT INTO player_stats VALUES ('ply1564', 'tm44', 16, 'Defender', 189, NULL, 'R');

INSERT INTO players VALUES ('ply1565', 'Aleksandar', 'Dragović', 'Austria',    '1991-03-06');
INSERT INTO player_stats VALUES ('ply1565', 'tm44', 15, 'Defender', 186, 84, 'R');

INSERT INTO players VALUES ('ply1566', 'Strahinja', 'Eraković', 'Serbia',    '2001-01-22');
INSERT INTO player_stats VALUES ('ply1566', 'tm44', 25, 'Defender', 184, 75, 'R');

INSERT INTO players VALUES ('ply1567', 'Marko', 'Gobeljić', 'Serbia',    '1992-09-13');
INSERT INTO player_stats VALUES ('ply1567', 'tm44', 77, 'Defender', 185, 80, 'R');

INSERT INTO players VALUES ('ply1568', 'Stefan', 'Leković', 'Serbia',    '2004-01-09');
INSERT INTO player_stats VALUES ('ply1568', 'tm44', 44, 'Defender', 192, NULL, 'R');

INSERT INTO players VALUES ('ply1569', 'Nemanja', 'Milunović', 'Serbia',    '1989-05-31');
INSERT INTO player_stats VALUES ('ply1569', 'tm44', 19, 'Defender', 195, 86, '');

INSERT INTO players VALUES ('ply1570', 'Radovan', 'Pankov', 'Serbia',    '1995-08-05');
INSERT INTO player_stats VALUES ('ply1570', 'tm44', 6, 'Defender', 185, 83, 'R');

INSERT INTO players VALUES ('ply1571', 'Milan', 'Rodić', 'Serbia',    '1991-04-02');
INSERT INTO player_stats VALUES ('ply1571', 'tm44', 23, 'Defender', 185, 81, 'L');

INSERT INTO players VALUES ('ply1572', 'Mirko', 'Ivanić', 'Montenegro',    '1993-09-13');
INSERT INTO player_stats VALUES ('ply1572', 'tm44', 4, 'Midfielder', 183, 70, '');

INSERT INTO players VALUES ('ply1573', 'Guélor', 'Kanga', 'Gabon',    '1990-09-01');
INSERT INTO player_stats VALUES ('ply1573', 'tm44', 8, 'Midfielder', 167, 63, 'R');

INSERT INTO players VALUES ('ply1574', 'Kings', 'Kangwa', 'Zambia',    '1999-06-04');
INSERT INTO player_stats VALUES ('ply1574', 'tm44', 20, 'Midfielder', 170, 64, 'R');

INSERT INTO players VALUES ('ply1575', 'Nenad', 'Krstičić', 'Serbia',    '1990-07-03');
INSERT INTO player_stats VALUES ('ply1575', 'tm44', 7, 'Midfielder', 182, 75, '');

INSERT INTO players VALUES ('ply1576', 'Srđan', 'Mijailović', 'Serbia',    '1993-11-10');
INSERT INTO player_stats VALUES ('ply1576', 'tm44', 33, 'Midfielder', 182, 70, 'R');

INSERT INTO players VALUES ('ply1577', 'Jovan', 'Mijatović', 'Serbia',    '2005-07-11');
INSERT INTO player_stats VALUES ('ply1577', 'tm44', NULL, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply1578', 'Stefan', 'Mitrović', 'Serbia',    '2002-08-15');
INSERT INTO player_stats VALUES ('ply1578', 'tm44', 80, 'Midfielder', 181, 70, 'R');

INSERT INTO players VALUES ('ply1579', 'Veljko', 'Nikolić', 'Serbia',    '1999-08-29');
INSERT INTO player_stats VALUES ('ply1579', 'tm44', 22, 'Midfielder', 178, 72, 'R');

INSERT INTO players VALUES ('ply1580', 'Egor', 'Prutsev', 'Russia',    '2002-12-23');
INSERT INTO player_stats VALUES ('ply1580', 'tm44', 29, 'Midfielder', 174, 60, '');

INSERT INTO players VALUES ('ply1581', 'Sékou', 'Sanogo', 'Ivory Coast',    '1989-05-05');
INSERT INTO player_stats VALUES ('ply1581', 'tm44', 35, 'Midfielder', 182, 81, 'L');

INSERT INTO players VALUES ('ply1582', 'Slavoljub', 'Srnić', 'Serbia',    '1992-01-12');
INSERT INTO player_stats VALUES ('ply1582', 'tm44', 55, 'Midfielder', 174, 67, '');

INSERT INTO players VALUES ('ply1583', 'Nikola', 'Stanković', 'Serbia',    '2003-04-24');
INSERT INTO player_stats VALUES ('ply1583', 'tm44', 38, 'Midfielder', 181, 70, 'R');

INSERT INTO players VALUES ('ply1584', 'El Fardou', 'Ben', 'Comoros',    '1989-06-10');
INSERT INTO player_stats VALUES ('ply1584', 'tm44', 31, 'Forward', 173, 70, 'L');

INSERT INTO players VALUES ('ply1585', 'Osman', 'Bukari', 'Ghana',    '1998-12-13');
INSERT INTO player_stats VALUES ('ply1585', 'tm44', 11, 'Forward', 170, 68, '');

INSERT INTO players VALUES ('ply1586', 'Kalifa', 'Coulibaly', 'Mali',    '1991-08-21');
INSERT INTO player_stats VALUES ('ply1586', 'tm44', 70, 'Forward', 197, 87, 'R');

INSERT INTO players VALUES ('ply1587', 'Aleksandar', 'Katai', 'Serbia',    '1991-02-06');
INSERT INTO player_stats VALUES ('ply1587', 'tm44', 10, 'Forward', 182, 71, 'R');

INSERT INTO players VALUES ('ply1588', 'Nemanja', 'Motika', 'Serbia',    '2003-03-20');
INSERT INTO player_stats VALUES ('ply1588', 'tm44', 17, 'Forward', 179, 71, '');

INSERT INTO players VALUES ('ply1589', 'Ibrahim', 'Mustapha', 'Ghana',    '2000-06-18');
INSERT INTO player_stats VALUES ('ply1589', 'tm44', 18, 'Forward', 180, NULL, 'R');

INSERT INTO players VALUES ('ply1590', 'Aleksandar', 'Pešić', 'Serbia',    '1992-05-21');
INSERT INTO player_stats VALUES ('ply1590', 'tm44', 72, 'Forward', 190, 87, 'R');

INSERT INTO players VALUES ('ply1591', 'Srđan', 'Spiridonović', 'Austria',    '1993-10-13');
INSERT INTO player_stats VALUES ('ply1591', 'tm44', 70, 'Forward', 173, 69, '');

INSERT INTO players VALUES ('ply1592', 'Pierluigi', 'Brivio', 'Italy',    '1969-05-21');
INSERT INTO player_stats VALUES ('ply1592', 'tm44', NULL, 'Goalkeeping', 185, 78, '');

INSERT INTO players VALUES ('ply1593', 'Dominik', 'Livaković', 'Croatia',    '1995-01-09');
INSERT INTO player_stats VALUES ('ply1593', 'tm45', 40, 'Goalkeeper', 188, 79, 'R');

INSERT INTO players VALUES ('ply1594', 'Ivan', 'Nevistić', 'Croatia',    '1998-07-31');
INSERT INTO player_stats VALUES ('ply1594', 'tm45', 33, 'Goalkeeper', 195, 88, 'R');

INSERT INTO players VALUES ('ply1595', 'Danijel', 'Zagorac', 'Croatia',    '1987-02-07');
INSERT INTO player_stats VALUES ('ply1595', 'tm45', 1, 'Goalkeeper', 186, 80, 'R');

INSERT INTO players VALUES ('ply1596', 'Emir', 'Dilaver', 'Austria',    '1991-05-07');
INSERT INTO player_stats VALUES ('ply1596', 'tm45', 66, 'Defender', 184, 82, 'R');

INSERT INTO players VALUES ('ply1597', 'Maro', 'Katinić', 'Croatia',    '2004-04-13');
INSERT INTO player_stats VALUES ('ply1597', 'tm45', NULL, 'Defender', 186, NULL, 'R');

INSERT INTO players VALUES ('ply1598', 'Rasmus', 'Lauritsen', 'Denmark',    '1996-02-27');
INSERT INTO player_stats VALUES ('ply1598', 'tm45', 6, 'Defender', 188, 78, 'R');

INSERT INTO players VALUES ('ply1599', 'Sadegh', 'Moharrami', 'Iran',    '1996-03-01');
INSERT INTO player_stats VALUES ('ply1599', 'tm45', 2, 'Defender', 174, 71, 'R');

INSERT INTO players VALUES ('ply1600', 'Dino', 'Perić', 'Croatia',    '1994-07-12');
INSERT INTO player_stats VALUES ('ply1600', 'tm45', 55, 'Defender', 197, 84, 'L');

INSERT INTO players VALUES ('ply1601', 'Stefan', 'Ristovski', 'North Macedonia',    '1992-02-12');
INSERT INTO player_stats VALUES ('ply1601', 'tm45', 13, 'Defender', 180, 72, 'R');

INSERT INTO players VALUES ('ply1602', 'Daniel', 'Štefulj', 'Croatia',    '1999-11-08');
INSERT INTO player_stats VALUES ('ply1602', 'tm45', 3, 'Defender', 186, 77, 'L');

INSERT INTO players VALUES ('ply1603', 'Boško', 'Šutalo', 'Croatia',    '2000-01-01');
INSERT INTO player_stats VALUES ('ply1603', 'tm45', 4, 'Defender', 188, 81, 'R');

INSERT INTO players VALUES ('ply1604', 'Josip', 'Šutalo', 'Croatia',    '2000-02-28');
INSERT INTO player_stats VALUES ('ply1604', 'tm45', 37, 'Defender', 184, 82, 'R');

INSERT INTO players VALUES ('ply1605', 'Kévin', 'Théophile-Catherine', 'Martinique',    '1989-10-28');
INSERT INTO player_stats VALUES ('ply1605', 'tm45', 28, 'Defender', 183, 86, 'R');

INSERT INTO players VALUES ('ply1606', 'Arijan', 'Ademi', 'North Macedonia',    '1991-05-29');
INSERT INTO player_stats VALUES ('ply1606', 'tm45', 5, 'Midfielder', 185, 79, 'R');

INSERT INTO players VALUES ('ply1607', 'Martin', 'Baturina', 'Croatia',    '2003-02-16');
INSERT INTO player_stats VALUES ('ply1607', 'tm45', 10, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply1608', 'Marko', 'Bulat', 'Croatia',    '2001-09-26');
INSERT INTO player_stats VALUES ('ply1608', 'tm45', 31, 'Midfielder', 178, 68, 'R');

INSERT INTO players VALUES ('ply1609', 'Marko', 'Đira', 'Croatia',    '1999-05-05');
INSERT INTO player_stats VALUES ('ply1609', 'tm45', 36, 'Midfielder', 171, 69, 'L');

INSERT INTO players VALUES ('ply1610', 'Luka', 'Ivanušec', 'Croatia',    '1998-11-26');
INSERT INTO player_stats VALUES ('ply1610', 'tm45', 7, 'Midfielder', 175, 76, 'R');

INSERT INTO players VALUES ('ply1611', 'Robert', 'Ljubičić', 'Austria',    '1999-07-14');
INSERT INTO player_stats VALUES ('ply1611', 'tm45', 14, 'Midfielder', 178, 75, 'L');

INSERT INTO players VALUES ('ply1612', 'Josip', 'Mišić', 'Croatia',    '1994-06-28');
INSERT INTO player_stats VALUES ('ply1612', 'tm45', 27, 'Midfielder', 187, 71, 'R');

INSERT INTO players VALUES ('ply1613', 'Marko', 'Soldo', 'Bosnia-Herzegovina',    '2003-11-22');
INSERT INTO player_stats VALUES ('ply1613', 'tm45', 8, 'Midfielder', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply1614', 'Petar', 'Bočkaj', 'Croatia',    '1996-07-23');
INSERT INTO player_stats VALUES ('ply1614', 'tm45', 12, 'Forward', 179, 75, 'L');

INSERT INTO players VALUES ('ply1615', 'Josip', 'Drmić', 'Switzerland',    '1992-08-08');
INSERT INTO player_stats VALUES ('ply1615', 'tm45', 18, 'Forward', 183, 81, 'R');

INSERT INTO players VALUES ('ply1616', 'Mahir', 'Emreli', 'Azerbaijan',    '1997-07-01');
INSERT INTO player_stats VALUES ('ply1616', 'tm45', 11, 'Forward', 187, 78, 'L');

INSERT INTO players VALUES ('ply1617', 'Antonio', 'Marin', 'Croatia',    '2001-01-09');
INSERT INTO player_stats VALUES ('ply1617', 'tm45', 20, 'Forward', 182, 78, 'R');

INSERT INTO players VALUES ('ply1618', 'Luka', 'Menalo', 'Bosnia-Herzegovina',    '1996-07-22');
INSERT INTO player_stats VALUES ('ply1618', 'tm45', 70, 'Forward', 181, 73, 'R');

INSERT INTO players VALUES ('ply1619', 'Mislav', 'Oršić', 'Croatia',    '1992-12-29');
INSERT INTO player_stats VALUES ('ply1619', 'tm45', 99, 'Forward', 179, 69, '');

INSERT INTO players VALUES ('ply1620', 'Bruno', 'Petković', 'Croatia',    '1994-09-16');
INSERT INTO player_stats VALUES ('ply1620', 'tm45', 9, 'Forward', 193, 88, 'R');

INSERT INTO players VALUES ('ply1621', 'Gabriel', 'Rukavina', 'Croatia',    '2004-01-16');
INSERT INTO player_stats VALUES ('ply1621', 'tm45', 41, 'Forward', 180, NULL, 'R');

INSERT INTO players VALUES ('ply1622', 'Dario', 'Špikić', 'Croatia',    '1999-03-22');
INSERT INTO player_stats VALUES ('ply1622', 'tm45', 77, 'Forward', 183, 79, 'R');

INSERT INTO players VALUES ('ply1623', 'İsmail', 'Çipe', 'Turkey',    '1995-01-05');
INSERT INTO player_stats VALUES ('ply1623', 'tm46', 13, 'Goalkeeper', 197, 85, 'R');

INSERT INTO players VALUES ('ply1624', 'Okan', 'Koçuk', 'Turkey',    '1995-07-27');
INSERT INTO player_stats VALUES ('ply1624', 'tm46', 34, 'Goalkeeper', 187, 78, 'R');

INSERT INTO players VALUES ('ply1625', 'Fernando', 'Muslera', 'Uruguay',    '1986-06-16');
INSERT INTO player_stats VALUES ('ply1625', 'tm46', 1, 'Goalkeeper', 190, 74, 'R');

INSERT INTO players VALUES ('ply1626', 'Jankat', 'Yılmaz', 'Turkey',    '2004-08-16');
INSERT INTO player_stats VALUES ('ply1626', 'tm46', 50, 'Goalkeeper', 188, NULL, 'L');

INSERT INTO players VALUES ('ply1627', 'Metehan', 'Baltacı', 'Turkey',    '2002-11-03');
INSERT INTO player_stats VALUES ('ply1627', 'tm46', 90, 'Defender', 189, NULL, 'R');

INSERT INTO players VALUES ('ply1628', 'Abdülkerim', 'Bardakçı', 'Turkey',    '1994-09-07');
INSERT INTO player_stats VALUES ('ply1628', 'tm46', 42, 'Defender', 184, 81, 'L');

INSERT INTO players VALUES ('ply1629', 'Emin', 'Bayram', 'Turkey',    '2003-04-02');
INSERT INTO player_stats VALUES ('ply1629', 'tm46', 40, 'Defender', 186, 71, 'R');

INSERT INTO players VALUES ('ply1630', 'Sacha', 'Boey', 'Cameroon',    '2000-09-13');
INSERT INTO player_stats VALUES ('ply1630', 'tm46', 93, 'Defender', 178, 70, 'R');

INSERT INTO players VALUES ('ply1631', 'Ali', 'Bülbül', 'Turkey',    '2005-01-25');
INSERT INTO player_stats VALUES ('ply1631', 'tm46', 72, 'Defender', 179, NULL, 'R');

INSERT INTO players VALUES ('ply1632', 'Léo', 'Dubois', 'France',    '1994-09-14');
INSERT INTO player_stats VALUES ('ply1632', 'tm46', 2, 'Defender', 178, 65, 'R');

INSERT INTO players VALUES ('ply1633', 'Gökay', 'Güney', 'Turkey',    '1999-05-19');
INSERT INTO player_stats VALUES ('ply1633', 'tm46', 46, 'Defender', 180, 74, 'R');

INSERT INTO players VALUES ('ply1634', 'Kazımcan', 'Karataş', 'Turkey',    '2003-01-16');
INSERT INTO player_stats VALUES ('ply1634', 'tm46', 88, 'Defender', 182, 74, 'L');

INSERT INTO players VALUES ('ply1635', 'Victor', 'Nelsson', 'Denmark',    '1998-10-14');
INSERT INTO player_stats VALUES ('ply1635', 'tm46', 25, 'Defender', 185, 74, 'R');

INSERT INTO players VALUES ('ply1636', 'Mathias Ross', 'Jensen', 'Denmark',    '2001-01-15');
INSERT INTO player_stats VALUES ('ply1636', 'tm46', NULL, 'Defender', 190, 80, 'R');

INSERT INTO players VALUES ('ply1637', 'Emre', 'Taşdemir', 'Turkey',    '1995-08-08');
INSERT INTO player_stats VALUES ('ply1637', 'tm46', 26, 'Defender', 176, 70, 'L');

INSERT INTO players VALUES ('ply1638', 'Patrick van', 'Aanholt', 'Netherlands',    '1990-08-29');
INSERT INTO player_stats VALUES ('ply1638', 'tm46', 3, 'Defender', 176, 73, 'L');

INSERT INTO players VALUES ('ply1639', 'Yunus', 'Akgün', 'Turkey',    '2000-07-07');
INSERT INTO player_stats VALUES ('ply1639', 'tm46', 11, 'Midfielder', 173, 65, 'L');

INSERT INTO players VALUES ('ply1640', 'Hamza', 'Akman', 'Turkey',    '2004-09-27');
INSERT INTO player_stats VALUES ('ply1640', 'tm46', 81, 'Midfielder', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply1641', 'Baran', 'Aksaka', 'Turkey',    '2003-01-29');
INSERT INTO player_stats VALUES ('ply1641', 'tm46', 63, 'Midfielder', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply1642', 'Berkan', 'Kutlu', 'Turkey',    '1998-01-25');
INSERT INTO player_stats VALUES ('ply1642', 'tm46', 22, 'Midfielder', 186, 77, 'L');

INSERT INTO players VALUES ('ply1643', '', 'Mata', 'Spain',    '1988-04-28');
INSERT INTO player_stats VALUES ('ply1643', 'tm46', NULL, 'Midfielder', 170, 63, 'L');

INSERT INTO players VALUES ('ply1644', 'Fredrik', 'Midtsjø', 'Norway',    '1993-08-11');
INSERT INTO player_stats VALUES ('ply1644', 'tm46', 6, 'Midfielder', 176, 70, 'R');

INSERT INTO players VALUES ('ply1645', 'Lucas', 'Torreira', 'Uruguay',    '1996-02-11');
INSERT INTO player_stats VALUES ('ply1645', 'tm46', 5, 'Midfielder', 166, 64, 'R');

INSERT INTO players VALUES ('ply1646', 'Kerem', 'Aktürkoğlu', 'Turkey',    '1998-10-21');
INSERT INTO player_stats VALUES ('ply1646', 'tm46', 7, 'Forward', 173, 71, 'R');

INSERT INTO players VALUES ('ply1647', 'Yusuf', 'Demir', 'Austria',    '2003-06-02');
INSERT INTO player_stats VALUES ('ply1647', 'tm46', NULL, 'Forward', 173, 69, 'L');

INSERT INTO players VALUES ('ply1648', 'Bafétimbi', 'Gomis', 'France',    '1985-08-06');
INSERT INTO player_stats VALUES ('ply1648', 'tm46', 18, 'Forward', 184, 77, 'R');

INSERT INTO players VALUES ('ply1649', 'Mauro', 'Icardi', 'Argentina',    '1993-02-19');
INSERT INTO player_stats VALUES ('ply1649', 'tm46', NULL, 'Forward', 181, 75, 'R');

INSERT INTO players VALUES ('ply1650', 'Dries', 'Mertens', 'Belgium',    '1987-05-06');
INSERT INTO player_stats VALUES ('ply1650', 'tm46', 10, 'Forward', 169, 61, 'R');

INSERT INTO players VALUES ('ply1651', 'Milot', 'Rashica', 'Kosovo',    '1996-06-28');
INSERT INTO player_stats VALUES ('ply1651', 'tm46', NULL, 'Forward', 177, 73, 'R');

INSERT INTO players VALUES ('ply1652', 'Haris', 'Seferović', 'Switzerland',    '1992-02-22');
INSERT INTO player_stats VALUES ('ply1652', 'tm46', 9, 'Forward', 186, 83, 'L');

INSERT INTO players VALUES ('ply1653', 'Barış', 'Yılmaz', 'Turkey',    '2000-05-23');
INSERT INTO player_stats VALUES ('ply1653', 'tm46', 53, 'Forward', 186, 75, 'R');

INSERT INTO players VALUES ('ply1654', 'Vic', 'Chambaere', 'Belgium',    '2003-01-10');
INSERT INTO player_stats VALUES ('ply1654', '', NULL, 'Goalkeeper', 190, 71, 'R');

INSERT INTO players VALUES ('ply1655', 'Tobe', 'Leysen', 'Belgium',    '2002-03-09');
INSERT INTO player_stats VALUES ('ply1655', 'tm47', 40, 'Goalkeeper', 189, 83, 'L');

INSERT INTO players VALUES ('ply1656', 'Mike', 'Penders', 'Belgium',    '2005-07-31');
INSERT INTO player_stats VALUES ('ply1656', '', NULL, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply1657', 'Brent', 'Stevens', 'Belgium',    '2003-08-11');
INSERT INTO player_stats VALUES ('ply1657', 'tm47', 51, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply1658', 'Maarten', 'Vandevoordt', 'Belgium',    '2002-02-26');
INSERT INTO player_stats VALUES ('ply1658', 'tm47', 26, 'Goalkeeper', 192, 76, 'R');

INSERT INTO players VALUES ('ply1659', 'Gerardo', 'Arteaga', 'Mexico',    '1998-09-07');
INSERT INTO player_stats VALUES ('ply1659', 'tm47', 5, 'Defender', 174, 65, 'L');

INSERT INTO players VALUES ('ply1660', 'Rasmus', 'Carstensen', 'Denmark',    '2000-11-10');
INSERT INTO player_stats VALUES ('ply1660', 'tm47', 22, 'Defender', 183, 75, '');

INSERT INTO players VALUES ('ply1661', 'Carlos', 'Cuesta', 'Colombia',    '1999-03-09');
INSERT INTO player_stats VALUES ('ply1661', 'tm47', 46, 'Defender', 182, 80, 'R');

INSERT INTO players VALUES ('ply1662', 'Sébastien', 'Dewaest', 'Belgium',    '1991-05-27');
INSERT INTO player_stats VALUES ('ply1662', 'tm47', NULL, 'Defender', 188, 88, 'R');

INSERT INTO players VALUES ('ply1663', 'Mark', 'McKenzie', 'USA',    '1999-02-25');
INSERT INTO player_stats VALUES ('ply1663', 'tm47', 2, 'Defender', 184, 83, 'L');

INSERT INTO players VALUES ('ply1664', '', 'Mujaid', 'Spain',    '2000-03-14');
INSERT INTO player_stats VALUES ('ply1664', 'tm47', 3, 'Defender', 183, 81, 'R');

INSERT INTO players VALUES ('ply1665', 'Daniel', 'Muñoz', 'Colombia',    '1996-05-25');
INSERT INTO player_stats VALUES ('ply1665', 'tm47', 23, 'Defender', 183, 73, 'R');

INSERT INTO players VALUES ('ply1666', 'Aziz', 'Ouattara', 'Ivory Coast',    '2001-01-04');
INSERT INTO player_stats VALUES ('ply1666', 'tm47', 4, 'Defender', 189, NULL, 'R');

INSERT INTO players VALUES ('ply1667', 'Ángelo', 'Preciado', 'Ecuador',    '1998-02-18');
INSERT INTO player_stats VALUES ('ply1667', 'tm47', 77, 'Defender', 173, 73, 'R');

INSERT INTO players VALUES ('ply1668', 'Tuur', 'Rommens', 'Belgium',    '2003-03-26');
INSERT INTO player_stats VALUES ('ply1668', 'tm47', 25, 'Defender', 181, NULL, 'L');

INSERT INTO players VALUES ('ply1669', 'Nicolás', 'Castro', 'Argentina',    '2000-11-01');
INSERT INTO player_stats VALUES ('ply1669', 'tm47', 10, 'Midfielder', 181, 75, '');

INSERT INTO players VALUES ('ply1670', 'Matisse', 'Didden', 'Belgium',    '2001-10-08');
INSERT INTO player_stats VALUES ('ply1670', '', NULL, 'Midfielder', 197, 80, 'R');

INSERT INTO players VALUES ('ply1671', 'Bilal El', 'Khannouss', 'Belgium',    '2004-05-10');
INSERT INTO player_stats VALUES ('ply1671', 'tm47', 34, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply1672', 'Matías', 'Galarza', 'Argentina',    '2002-03-04');
INSERT INTO player_stats VALUES ('ply1672', 'tm47', 25, 'Midfielder', 180, 71, 'R');

INSERT INTO players VALUES ('ply1673', 'Jay-Dee', 'Geusens', 'Belgium',    '2002-03-05');
INSERT INTO player_stats VALUES ('ply1673', 'tm47', 15, 'Midfielder', 185, 72, 'R');

INSERT INTO players VALUES ('ply1674', 'Bryan', 'Heynen', 'Belgium',    '1997-02-06');
INSERT INTO player_stats VALUES ('ply1674', 'tm47', 8, 'Midfielder', 183, 73, 'R');

INSERT INTO players VALUES ('ply1675', 'Patrik', 'Hrošovský', 'Slovakia',    '1992-04-22');
INSERT INTO player_stats VALUES ('ply1675', 'tm47', 17, 'Midfielder', 172, 67, 'R');

INSERT INTO players VALUES ('ply1676', 'Eboue', 'Kouassi', 'Ivory Coast',    '1997-12-13');
INSERT INTO player_stats VALUES ('ply1676', 'tm47', NULL, 'Midfielder', 185, 71, 'R');

INSERT INTO players VALUES ('ply1677', 'Luca', 'Oyen', 'Belgium',    '2003-03-14');
INSERT INTO player_stats VALUES ('ply1677', 'tm47', 24, 'Midfielder', 173, 64, 'R');

INSERT INTO players VALUES ('ply1678', 'Mike', 'Trésor', 'Belgium',    '1999-05-28');
INSERT INTO player_stats VALUES ('ply1678', 'tm47', 11, 'Midfielder', 172, 64, 'R');

INSERT INTO players VALUES ('ply1679', 'Adnane', 'Abid', 'Belgium',    '2003-08-23');
INSERT INTO player_stats VALUES ('ply1679', 'tm47', NULL, 'Forward', 165, NULL, 'R');

INSERT INTO players VALUES ('ply1680', 'Kelvin', 'John', 'Tanzania',    '2003-06-10');
INSERT INTO player_stats VALUES ('ply1680', 'tm47', 20, 'Forward', 175, NULL, 'R');

INSERT INTO players VALUES ('ply1681', 'András', 'Németh', 'Hungary',    '2002-11-09');
INSERT INTO player_stats VALUES ('ply1681', 'tm47', 35, 'Forward', 187, 78, 'R');

INSERT INTO players VALUES ('ply1682', 'Paul', 'Onuachu', 'Nigeria',    '1994-05-28');
INSERT INTO player_stats VALUES ('ply1682', 'tm47', 18, 'Forward', 201, 93, 'R');

INSERT INTO players VALUES ('ply1683', 'Joseph', 'Paintsil', 'Ghana',    '1998-02-01');
INSERT INTO player_stats VALUES ('ply1683', 'tm47', 28, 'Forward', 168, 66, 'R');

INSERT INTO players VALUES ('ply1684', 'Ally', 'Samatta', 'Tanzania',    '1992-12-23');
INSERT INTO player_stats VALUES ('ply1684', 'tm47', 7, 'Forward', 183, 78, 'R');

INSERT INTO players VALUES ('ply1685', 'Guy', 'Martens', 'Belgium',    '1958-12-06');
INSERT INTO player_stats VALUES ('ply1685', 'tm47', NULL, 'Goalkeeping', NULL, NULL, '');

INSERT INTO players VALUES ('ply1686', 'Anthony', 'Lopes', 'Portugal',    '1990-10-01');
INSERT INTO player_stats VALUES ('ply1686', 'tm48', 1, 'Goalkeeper', 184, 81, 'L');

INSERT INTO players VALUES ('ply1687', 'Kayne', 'Bonnevie', 'France',    '2001-07-22');
INSERT INTO player_stats VALUES ('ply1687', 'tm48', 40, 'Goalkeeper', 191, 76, 'L');

INSERT INTO players VALUES ('ply1688', 'Julian', 'Pollersbeck', 'Germany',    '1994-08-16');
INSERT INTO player_stats VALUES ('ply1688', 'tm48', 30, 'Goalkeeper', 195, 87, 'R');

INSERT INTO players VALUES ('ply1689', 'Rémy', 'Riou', 'France',    '1987-08-06');
INSERT INTO player_stats VALUES ('ply1689', 'tm48', 35, 'Goalkeeper', 191, 81, 'R');

INSERT INTO players VALUES ('ply1690', 'Damien Da', 'Silva', 'France',    '1988-05-17');
INSERT INTO player_stats VALUES ('ply1690', 'tm48', 21, 'Defender', 184, 82, 'R');

INSERT INTO players VALUES ('ply1691', 'Sinaly', 'Diomandé', 'Ivory Coast',    '2001-04-09');
INSERT INTO player_stats VALUES ('ply1691', 'tm48', 2, 'Defender', 184, 74, 'R');

INSERT INTO players VALUES ('ply1692', 'Malo', 'Gusto', 'France',    '2003-05-19');
INSERT INTO player_stats VALUES ('ply1692', 'tm48', 27, 'Defender', 179, 76, 'R');

INSERT INTO players VALUES ('ply1693', '', 'Henrique', 'Brazil',    '1994-04-25');
INSERT INTO player_stats VALUES ('ply1693', 'tm48', 12, 'Defender', 173, 71, 'L');

INSERT INTO players VALUES ('ply1694', 'Saël', 'Kumbedi', 'France',    '2005-03-26');
INSERT INTO player_stats VALUES ('ply1694', 'tm48', 20, 'Defender', 179, NULL, 'R');

INSERT INTO players VALUES ('ply1695', 'Irvyn', 'Lomami', 'France',    '2003-12-30');
INSERT INTO player_stats VALUES ('ply1695', '', NULL, 'Defender', 169, NULL, 'R');

INSERT INTO players VALUES ('ply1696', 'Castello', 'Lukeba', 'France',    '2002-12-17');
INSERT INTO player_stats VALUES ('ply1696', 'tm48', 4, 'Defender', 184, 73, 'L');

INSERT INTO players VALUES ('ply1697', 'Houssem', 'Aouar', 'France',    '1998-06-30');
INSERT INTO player_stats VALUES ('ply1697', 'tm48', 8, 'Midfielder', 175, 70, 'R');

INSERT INTO players VALUES ('ply1698', 'Maxence', 'Caqueret', 'France',    '2000-02-15');
INSERT INTO player_stats VALUES ('ply1698', 'tm48', 25, 'Midfielder', 174, 63, 'R');

INSERT INTO players VALUES ('ply1699', 'Florent Da', 'Silva', 'France',    '2003-04-02');
INSERT INTO player_stats VALUES ('ply1699', 'tm48', NULL, 'Midfielder', 178, 67, 'R');

INSERT INTO players VALUES ('ply1700', 'Mohamed El', 'Arouch', 'France',    '2004-04-06');
INSERT INTO player_stats VALUES ('ply1700', 'tm48', 32, 'Midfielder', 166, 56, 'R');

INSERT INTO players VALUES ('ply1701', 'Romain', 'Faivre', 'France',    '1998-07-14');
INSERT INTO player_stats VALUES ('ply1701', 'tm48', 15, 'Midfielder', 180, 75, 'L');

INSERT INTO players VALUES ('ply1702', 'Johann', 'Lepenant', 'France',    '2002-10-22');
INSERT INTO player_stats VALUES ('ply1702', 'tm48', 24, 'Midfielder', 176, 65, 'R');

INSERT INTO players VALUES ('ply1703', 'Jeff', 'Reine-Adélaïde', 'France',    '1998-01-17');
INSERT INTO player_stats VALUES ('ply1703', 'tm48', 22, 'Midfielder', 188, 75, 'R');

INSERT INTO players VALUES ('ply1704', 'Thiago', 'Mendes', 'Brazil',    '1992-03-15');
INSERT INTO player_stats VALUES ('ply1704', 'tm48', 23, 'Midfielder', 177, 72, 'R');

INSERT INTO players VALUES ('ply1705', 'Bradley', 'Barcola', 'France',    '2002-09-02');
INSERT INTO player_stats VALUES ('ply1705', 'tm48', 26, 'Forward', 182, 66, 'R');

INSERT INTO players VALUES ('ply1706', 'Rayan', 'Cherki', 'France',    '2003-08-17');
INSERT INTO player_stats VALUES ('ply1706', 'tm48', 18, 'Forward', 176, 71, '');

INSERT INTO players VALUES ('ply1707', 'Moussa', 'Dembélé', 'France',    '1996-07-12');
INSERT INTO player_stats VALUES ('ply1707', 'tm48', 9, 'Forward', 183, 74, 'R');

INSERT INTO players VALUES ('ply1708', 'Alexandre', 'Lacazette', 'France',    '1991-05-28');
INSERT INTO player_stats VALUES ('ply1708', 'tm48', 91, 'Forward', 176, 73, 'R');

INSERT INTO players VALUES ('ply1709', 'Sekou', 'Lega', 'France',    '2003-01-21');
INSERT INTO player_stats VALUES ('ply1709', '', NULL, 'Forward', 190, 65, 'R');

INSERT INTO players VALUES ('ply1710', 'Karl Toko', 'Ekambi', 'Cameroon',    '1992-09-14');
INSERT INTO player_stats VALUES ('ply1710', 'tm48', 7, 'Forward', 185, 78, 'R');

INSERT INTO players VALUES ('ply1711', 'Rémy', 'Vercoutre', 'France',    '1980-06-26');
INSERT INTO player_stats VALUES ('ply1711', 'tm48', NULL, 'Goalkeeping', 185, 78, 'R');

INSERT INTO players VALUES ('ply1712', 'Terry', 'Peters', 'Netherlands',    '1986-06-30');
INSERT INTO player_stats VALUES ('ply1712', 'tm48', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1713', 'Adam', 'Dvořák', 'Czech Republic',    '2004-07-28');
INSERT INTO player_stats VALUES ('ply1713', 'tm49', 31, 'Republic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1714', 'Ondřej', 'Kolář', 'Czech Republic',    '1994-10-17');
INSERT INTO player_stats VALUES ('ply1714', 'tm49', 1, 'Republic', 193, 81, 'R');

INSERT INTO players VALUES ('ply1715', 'Přemysl', 'Kovář', 'Czech Republic',    '1985-10-14');
INSERT INTO player_stats VALUES ('ply1715', 'tm49', 31, 'Republic', 187, 89, 'R');

INSERT INTO players VALUES ('ply1716', 'Aleš', 'Mandous', 'Czech Republic',    '1992-04-21');
INSERT INTO player_stats VALUES ('ply1716', 'tm49', 28, 'Republic', 188, 85, 'R');

INSERT INTO players VALUES ('ply1717', 'Jan', 'Sirotník', 'Czech Republic',    '2002-02-16');
INSERT INTO player_stats VALUES ('ply1717', 'tm49', 34, 'Republic', 188, NULL, '');

INSERT INTO players VALUES ('ply1718', 'Jan', 'Bořil', 'Czech Republic',    '1991-01-11');
INSERT INTO player_stats VALUES ('ply1718', 'tm49', 18, 'Republic', 175, 75, 'R');

INSERT INTO players VALUES ('ply1719', 'Eduardo', 'Santos', 'Brazil',    '1997-11-28');
INSERT INTO player_stats VALUES ('ply1719', 'tm49', 12, 'Republic', 196, 90, 'R');

INSERT INTO players VALUES ('ply1720', 'Michal', 'Hošek', 'Czech Republic',    '2001-04-22');
INSERT INTO player_stats VALUES ('ply1720', 'tm49', NULL, 'Republic', 189, 77, 'R');

INSERT INTO players VALUES ('ply1721', 'David', 'Hovorka', 'Czech Republic',    '1993-08-07');
INSERT INTO player_stats VALUES ('ply1721', 'tm49', 2, 'Republic', 179, 73, 'R');

INSERT INTO players VALUES ('ply1722', 'Taras', 'Kacharaba', 'Ukraine',    '1995-01-07');
INSERT INTO player_stats VALUES ('ply1722', 'tm49', 30, 'Republic', 189, 79, 'R');

INSERT INTO players VALUES ('ply1723', 'Aiham', 'Ousou', 'Sweden',    '2000-01-09');
INSERT INTO player_stats VALUES ('ply1723', 'tm49', 4, 'Republic', 186, 77, 'R');

INSERT INTO players VALUES ('ply1724', 'Oscar', 'Dorley', 'Liberia',    '1998-07-19');
INSERT INTO player_stats VALUES ('ply1724', 'tm49', 19, 'Republic', 174, 66, 'L');

INSERT INTO players VALUES ('ply1725', 'David', 'Douděra', 'Czech Republic',    '1998-05-31');
INSERT INTO player_stats VALUES ('ply1725', 'tm49', 21, 'Republic', 175, 66, '');

INSERT INTO players VALUES ('ply1726', 'Tomáš', 'Holeš', 'Czech Republic',    '1993-03-31');
INSERT INTO player_stats VALUES ('ply1726', 'tm49', 3, 'Republic', 180, 73, 'R');

INSERT INTO players VALUES ('ply1727', 'Jakub', 'Hromada', 'Slovakia',    '1996-05-25');
INSERT INTO player_stats VALUES ('ply1727', 'tm49', 25, 'Republic', 180, 76, 'R');

INSERT INTO players VALUES ('ply1728', 'David', 'Jurásek', 'Czech Republic',    '2000-08-07');
INSERT INTO player_stats VALUES ('ply1728', 'tm49', 33, 'Republic', 182, 77, 'R');

INSERT INTO players VALUES ('ply1729', 'Jakub', 'Kopáček', 'Czech Republic',    '2002-01-23');
INSERT INTO player_stats VALUES ('ply1729', 'tm49', 49, 'Republic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1730', 'Ondřej', 'Kričfaluši', 'Czech Republic',    '2004-03-29');
INSERT INTO player_stats VALUES ('ply1730', 'tm49', 41, 'Republic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1731', 'Albert', 'Labík', 'Czech Republic',    '2004-05-13');
INSERT INTO player_stats VALUES ('ply1731', 'tm49', 52, 'Republic', 178, NULL, 'L');

INSERT INTO players VALUES ('ply1732', 'Ondřej', 'Lingr', 'Czech Republic',    '1998-10-07');
INSERT INTO player_stats VALUES ('ply1732', 'tm49', 32, 'Republic', 175, 70, 'R');

INSERT INTO players VALUES ('ply1733', 'Lukáš', 'Masopust', 'Czech Republic',    '1993-02-12');
INSERT INTO player_stats VALUES ('ply1733', 'tm49', 8, 'Republic', 179, 76, 'R');

INSERT INTO players VALUES ('ply1734', 'Matouš', 'Nikl', 'Czech Republic',    '2002-02-02');
INSERT INTO player_stats VALUES ('ply1734', 'tm49', 42, 'Republic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1735', 'Petr', 'Ševčík', 'Czech Republic',    '1994-05-04');
INSERT INTO player_stats VALUES ('ply1735', 'tm49', 23, 'Republic', 172, 66, 'R');

INSERT INTO players VALUES ('ply1736', 'Martin', 'Šubert', 'Czech Republic',    '2002-02-11');
INSERT INTO player_stats VALUES ('ply1736', 'tm49', 45, 'Republic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1737', 'Christ', 'Tiehi', 'Ivory Coast',    '1998-06-16');
INSERT INTO player_stats VALUES ('ply1737', 'tm49', 5, 'Republic', 180, 76, 'R');

INSERT INTO players VALUES ('ply1738', 'Ibrahim', 'Traoré', 'Ivory Coast',    '1988-09-16');
INSERT INTO player_stats VALUES ('ply1738', 'tm49', 27, 'Republic', 186, 80, 'R');

INSERT INTO players VALUES ('ply1739', 'Štěpán', 'Beran', 'Czech Republic',    '2004-03-10');
INSERT INTO player_stats VALUES ('ply1739', 'tm49', 53, 'Republic', 176, NULL, '');

INSERT INTO players VALUES ('ply1740', 'Erik', 'Biegon', 'Czech Republic',    '2004-04-29');
INSERT INTO player_stats VALUES ('ply1740', 'tm49', 44, 'Republic', 179, NULL, '');

INSERT INTO players VALUES ('ply1741', '', 'Ewerton', 'Brazil',    '1996-12-28');
INSERT INTO player_stats VALUES ('ply1741', 'tm49', 22, 'Republic', 175, 73, 'R');

INSERT INTO players VALUES ('ply1742', 'Matěj', 'Jurásek', 'Czech Republic',    '2003-08-30');
INSERT INTO player_stats VALUES ('ply1742', 'tm49', 35, 'Republic', 181, 73, 'R');

INSERT INTO players VALUES ('ply1743', 'Václav', 'Jurečka', 'Czech Republic',    '1994-06-26');
INSERT INTO player_stats VALUES ('ply1743', 'tm49', 15, 'Republic', 182, 78, 'R');

INSERT INTO players VALUES ('ply1744', 'Peter', 'Olayinka', 'Nigeria',    '1995-11-16');
INSERT INTO player_stats VALUES ('ply1744', 'tm49', 9, 'Republic', 188, 77, 'R');

INSERT INTO players VALUES ('ply1745', 'Lukáš', 'Provod', 'Czech Republic',    '1996-10-23');
INSERT INTO player_stats VALUES ('ply1745', 'tm49', 17, 'Republic', 189, 84, 'L');

INSERT INTO players VALUES ('ply1746', 'Ivan', 'Schranz', 'Slovakia',    '1993-09-13');
INSERT INTO player_stats VALUES ('ply1746', 'tm49', 26, 'Republic', 185, 75, 'R');

INSERT INTO players VALUES ('ply1747', 'Daniel', 'Šmiga', 'Czech Republic',    '2004-01-02');
INSERT INTO player_stats VALUES ('ply1747', 'tm49', 35, 'Republic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1748', 'Yira', 'Sor', 'Nigeria',    '2000-07-24');
INSERT INTO player_stats VALUES ('ply1748', 'tm49', 20, 'Republic', 174, 69, 'R');

INSERT INTO players VALUES ('ply1749', 'Stanislav', 'Tecl', 'Czech Republic',    '1990-09-01');
INSERT INTO player_stats VALUES ('ply1749', 'tm49', 11, 'Republic', 181, 82, 'R');

INSERT INTO players VALUES ('ply1750', 'Moses', 'Usor', 'Nigeria',    '2002-02-05');
INSERT INTO player_stats VALUES ('ply1750', 'tm49', 16, 'Republic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1751', 'Jindřich', 'Trpišovský', 'Czech Republic',    '1976-02-27');
INSERT INTO player_stats VALUES ('ply1751', 'tm49', NULL, 'Republic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1752', 'Hubert', 'Idasiak', 'Poland',    '2002-02-03');
INSERT INTO player_stats VALUES ('ply1752', 'tm50', 16, 'Goalkeeper', 188, 74, 'R');

INSERT INTO players VALUES ('ply1753', 'Davide', 'Marfella', 'Italy',    '1999-09-15');
INSERT INTO player_stats VALUES ('ply1753', 'tm50', 12, 'Goalkeeper', 183, 79, 'R');

INSERT INTO players VALUES ('ply1754', 'Alex', 'Meret', 'Italy',    '1997-03-22');
INSERT INTO player_stats VALUES ('ply1754', 'tm50', 1, 'Goalkeeper', 190, 82, 'L');

INSERT INTO players VALUES ('ply1755', 'Salvatore', 'Sirigu', 'Italy',    '1987-01-12');
INSERT INTO player_stats VALUES ('ply1755', 'tm50', 30, 'Goalkeeper', 192, 80, 'R');

INSERT INTO players VALUES ('ply1756', 'Giovanni Di', 'Lorenzo', 'Italy',    '1993-08-04');
INSERT INTO player_stats VALUES ('ply1756', 'tm50', 22, 'Defender', 183, 83, 'R');

INSERT INTO players VALUES ('ply1757', 'Juan', 'Jesus', 'Brazil',    '1991-06-10');
INSERT INTO player_stats VALUES ('ply1757', 'tm50', 5, 'Defender', 185, 83, 'L');

INSERT INTO players VALUES ('ply1758', 'Min-jae', 'Kim', 'South Korea',    '1996-11-15');
INSERT INTO player_stats VALUES ('ply1758', 'tm50', 3, 'Defender', 190, 88, 'R');

INSERT INTO players VALUES ('ply1759', 'Mário', 'Rui', 'Portugal',    '1991-05-27');
INSERT INTO player_stats VALUES ('ply1759', 'tm50', 6, 'Defender', 170, 67, 'L');

INSERT INTO players VALUES ('ply1760', 'Mathías', 'Olivera', 'Uruguay',    '1997-10-31');
INSERT INTO player_stats VALUES ('ply1760', 'tm50', 17, 'Defender', 185, 78, 'L');

INSERT INTO players VALUES ('ply1761', 'Leo', 'Østigård', 'Norway',    '1999-11-28');
INSERT INTO player_stats VALUES ('ply1761', 'tm50', 55, 'Defender', 184, 80, 'R');

INSERT INTO players VALUES ('ply1762', 'Amir', 'Rrahmani', 'Kosovo',    '1994-02-24');
INSERT INTO player_stats VALUES ('ply1762', 'tm50', 13, 'Defender', 192, 87, '');

INSERT INTO players VALUES ('ply1763', 'Alessandro', 'Zanoli', 'Italy',    '2000-10-03');
INSERT INTO player_stats VALUES ('ply1763', 'tm50', 59, 'Defender', 188, 76, 'R');

INSERT INTO players VALUES ('ply1764', 'Frank', 'Anguissa', 'Cameroon',    '1995-11-16');
INSERT INTO player_stats VALUES ('ply1764', 'tm50', 99, 'Midfielder', 184, 78, 'R');

INSERT INTO players VALUES ('ply1765', 'Diego', 'Demme', 'Germany',    '1991-11-21');
INSERT INTO player_stats VALUES ('ply1765', 'tm50', 4, 'Midfielder', 170, 68, 'R');

INSERT INTO players VALUES ('ply1766', 'Eljif', 'Elmas', 'North Macedonia',    '1999-09-24');
INSERT INTO player_stats VALUES ('ply1766', 'tm50', 7, 'Midfielder', 182, 74, 'R');

INSERT INTO players VALUES ('ply1767', 'Gianluca', 'Gaetano', 'Italy',    '2000-05-05');
INSERT INTO player_stats VALUES ('ply1767', 'tm50', 70, 'Midfielder', 183, 70, 'R');

INSERT INTO players VALUES ('ply1768', 'Stanislav', 'Lobotka', 'Slovakia',    '1994-11-25');
INSERT INTO player_stats VALUES ('ply1768', 'tm50', 68, 'Midfielder', 172, 64, '');

INSERT INTO players VALUES ('ply1769', 'Tanguy', 'NDombèlé', 'France',    '1996-12-28');
INSERT INTO player_stats VALUES ('ply1769', 'tm50', 91, 'Midfielder', 181, 76, 'R');

INSERT INTO players VALUES ('ply1770', 'Karim', 'Zedadka', 'France',    '2000-06-09');
INSERT INTO player_stats VALUES ('ply1770', 'tm50', 31, 'Midfielder', 182, 67, 'R');

INSERT INTO players VALUES ('ply1771', 'Piotr', 'Zieliński', 'Poland',    '1994-05-20');
INSERT INTO player_stats VALUES ('ply1771', 'tm50', 20, 'Midfielder', 177, 69, '');

INSERT INTO players VALUES ('ply1772', 'Khvicha', 'Kvaratskhelia', 'Georgia',    '2001-02-12');
INSERT INTO player_stats VALUES ('ply1772', 'tm50', 77, 'Forward', 183, 70, '');

INSERT INTO players VALUES ('ply1773', 'Hirving', 'Lozano', 'Mexico',    '1995-07-30');
INSERT INTO player_stats VALUES ('ply1773', 'tm50', 11, 'Forward', 175, 70, 'R');

INSERT INTO players VALUES ('ply1774', 'Victor', 'Osimhen', 'Nigeria',    '1998-12-29');
INSERT INTO player_stats VALUES ('ply1774', 'tm50', 9, 'Forward', 185, 78, 'R');

INSERT INTO players VALUES ('ply1775', 'Matteo', 'Politano', 'Italy',    '1993-08-03');
INSERT INTO player_stats VALUES ('ply1775', 'tm50', 21, 'Forward', 171, 66, 'L');

INSERT INTO players VALUES ('ply1776', 'Giacomo', 'Raspadori', 'Italy',    '2000-02-18');
INSERT INTO player_stats VALUES ('ply1776', 'tm50', 81, 'Forward', 172, 69, '');

INSERT INTO players VALUES ('ply1777', 'Giovanni', 'Simeone', 'Argentina',    '1995-07-05');
INSERT INTO player_stats VALUES ('ply1777', 'tm50', 18, 'Forward', 181, 81, 'R');

INSERT INTO players VALUES ('ply1778', 'Alessio', 'Zerbin', 'Italy',    '1999-03-03');
INSERT INTO player_stats VALUES ('ply1778', 'tm50', 23, 'Forward', 182, 75, 'R');

INSERT INTO players VALUES ('ply1779', 'Alejandro', 'Rosalen', 'Spain',    '1977-02-25');
INSERT INTO player_stats VALUES ('ply1779', 'tm50', NULL, 'Goalkeeping', NULL, NULL, '');

INSERT INTO players VALUES ('ply1780', 'Brandon', 'Austin', 'England',    '1999-01-08');
INSERT INTO player_stats VALUES ('ply1780', '', NULL, 'Goalkeeper', 188, 82, 'R');

INSERT INTO players VALUES ('ply1781', 'Fraser', 'Forster', 'England',    '1988-03-17');
INSERT INTO player_stats VALUES ('ply1781', 'tm51', 20, 'Goalkeeper', 201, 93, 'R');

INSERT INTO players VALUES ('ply1782', 'Hugo', 'Lloris', 'France',    '1986-12-26');
INSERT INTO player_stats VALUES ('ply1782', 'tm51', 1, 'Goalkeeper', 188, 82, 'L');

INSERT INTO players VALUES ('ply1783', 'Ben', 'Davies', 'Wales',    '1993-04-24');
INSERT INTO player_stats VALUES ('ply1783', 'tm51', 33, 'Defender', 181, 76, 'L');

INSERT INTO players VALUES ('ply1784', 'Eric', 'Dier', 'England',    '1994-01-15');
INSERT INTO player_stats VALUES ('ply1784', 'tm51', 15, 'Defender', 188, 88, 'R');

INSERT INTO players VALUES ('ply1785', 'Matt', 'Doherty', 'Ireland',    '1992-01-16');
INSERT INTO player_stats VALUES ('ply1785', 'tm51', 2, 'Defender', 186, 87, 'R');

INSERT INTO players VALUES ('ply1786', 'Emerson', 'Royal', 'Brazil',    '1999-01-14');
INSERT INTO player_stats VALUES ('ply1786', 'tm51', 12, 'Defender', 183, 79, 'R');

INSERT INTO players VALUES ('ply1787', 'Malachi', 'Fagan-Walcott', 'England',    '2002-03-11');
INSERT INTO player_stats VALUES ('ply1787', 'tm51', 46, 'Defender', 189, 77, 'R');

INSERT INTO players VALUES ('ply1788', 'Clément', 'Lenglet', 'France',    '1995-06-17');
INSERT INTO player_stats VALUES ('ply1788', 'tm51', 34, 'Defender', 186, 81, 'L');

INSERT INTO players VALUES ('ply1789', 'Brooklyn', 'Lyons-Foster', 'England',    '2000-12-01');
INSERT INTO player_stats VALUES ('ply1789', 'tm51', 53, 'Defender', 181, 70, 'R');

INSERT INTO players VALUES ('ply1790', 'Maksim', 'Paskotši', 'Estonia',    '2003-01-19');
INSERT INTO player_stats VALUES ('ply1790', 'tm51', 48, 'Defender', 170, NULL, 'R');

INSERT INTO players VALUES ('ply1791', 'Davinson', 'Sánchez', 'Colombia',    '1996-06-12');
INSERT INTO player_stats VALUES ('ply1791', 'tm51', 6, 'Defender', 187, 81, 'R');

INSERT INTO players VALUES ('ply1792', 'Djed', 'Spence', 'England',    '2000-08-09');
INSERT INTO player_stats VALUES ('ply1792', 'tm51', 24, 'Defender', 184, 71, 'R');

INSERT INTO players VALUES ('ply1793', 'Japhet', 'Tanganga', 'England',    '1999-03-31');
INSERT INTO player_stats VALUES ('ply1793', 'tm51', 25, 'Defender', 184, 73, 'R');

INSERT INTO players VALUES ('ply1794', 'Yves', 'Bissouma', 'Mali',    '1996-08-30');
INSERT INTO player_stats VALUES ('ply1794', 'tm51', 38, 'Midfielder', 182, 78, 'R');

INSERT INTO players VALUES ('ply1795', 'Jamie', 'Bowden', 'England',    '2001-07-09');
INSERT INTO player_stats VALUES ('ply1795', 'tm51', 54, 'Midfielder', 175, 64, 'R');

INSERT INTO players VALUES ('ply1796', 'Pierre-Emile', 'Højbjerg', 'Denmark',    '1995-08-05');
INSERT INTO player_stats VALUES ('ply1796', 'tm51', 5, 'Midfielder', 185, 81, 'R');

INSERT INTO players VALUES ('ply1797', 'Pape', 'Sarr', 'Senegal',    '2002-09-14');
INSERT INTO player_stats VALUES ('ply1797', 'tm51', 29, 'Midfielder', 180, 68, 'R');

INSERT INTO players VALUES ('ply1798', 'Oliver', 'Skipp', 'England',    '2000-09-16');
INSERT INTO player_stats VALUES ('ply1798', 'tm51', 4, 'Midfielder', 175, 70, 'R');

INSERT INTO players VALUES ('ply1799', 'Harvey', 'White', 'England',    '2001-09-19');
INSERT INTO player_stats VALUES ('ply1799', 'tm51', 42, 'Midfielder', 168, 60, 'L');

INSERT INTO players VALUES ('ply1800', 'Bryan', 'Gil', 'Spain',    '2001-02-11');
INSERT INTO player_stats VALUES ('ply1800', 'tm51', 11, 'Forward', 175, 67, 'L');

INSERT INTO players VALUES ('ply1801', 'Harry', 'Kane', 'England',    '1993-07-28');
INSERT INTO player_stats VALUES ('ply1801', 'tm51', 10, 'Forward', 188, 86, 'R');

INSERT INTO players VALUES ('ply1802', 'Lucas', 'Moura', 'Brazil',    '1992-08-13');
INSERT INTO player_stats VALUES ('ply1802', 'tm51', 27, 'Forward', 172, 70, 'R');

INSERT INTO players VALUES ('ply1803', '', 'Richarlison', 'Brazil',    '1997-05-10');
INSERT INTO player_stats VALUES ('ply1803', 'tm51', 9, 'Forward', 184, 83, 'R');

INSERT INTO players VALUES ('ply1804', 'Ryan', 'Sessegnon', 'England',    '2000-05-18');
INSERT INTO player_stats VALUES ('ply1804', 'tm51', 19, 'Forward', 178, 70, 'L');

INSERT INTO players VALUES ('ply1805', 'Heung-min', 'Son', 'South Korea',    '1992-07-08');
INSERT INTO player_stats VALUES ('ply1805', 'tm51', 7, 'Forward', 184, 78, '');

INSERT INTO players VALUES ('ply1806', 'Marco', 'Savorani', 'Italy',    '1965-03-31');
INSERT INTO player_stats VALUES ('ply1806', 'tm51', NULL, 'Goalkeeping', 183, 72, '');

INSERT INTO players VALUES ('ply1807', 'Stefano', 'Bruno', 'Italy',    '1975-09-05');
INSERT INTO player_stats VALUES ('ply1807', 'tm51', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1808', 'Costantino', 'Coratti', 'Italy',    '1967-11-12');
INSERT INTO player_stats VALUES ('ply1808', 'tm51', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply1809', 'Giampiero', 'Ventrone', 'Italy',    '1960-04-14');
INSERT INTO player_stats VALUES ('ply1809', 'tm51', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply1810', 'Gianluca', 'Conte', 'Italy',    '1972-05-28');
INSERT INTO player_stats VALUES ('ply1810', 'tm51', NULL, 'Technique', NULL, NULL, '');

INSERT INTO players VALUES ('ply1811', 'Ryan', 'Mason', 'England',    '1991-06-13');
INSERT INTO player_stats VALUES ('ply1811', 'tm51', NULL, 'Technique', 175, 71, 'R');

INSERT INTO players VALUES ('ply1812', 'Gianni', 'Vio', 'Italy',    '1953-04-06');
INSERT INTO player_stats VALUES ('ply1812', 'tm51', NULL, 'Technique', NULL, NULL, '');

INSERT INTO players VALUES ('ply1813', 'Charlie', 'Pérez', 'Spain',    '2002-06-07');
INSERT INTO player_stats VALUES ('ply1813', 'tm52', 26, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply1814', 'Cristian', 'Rivero', 'Spain',    '1998-03-21');
INSERT INTO player_stats VALUES ('ply1814', 'tm52', 13, 'Goalkeeper', 188, 75, 'R');

INSERT INTO players VALUES ('ply1815', 'Emilio', 'Bernad', 'Spain',    '1999-09-22');
INSERT INTO player_stats VALUES ('ply1815', 'tm52', 42, 'Goalkeeper', 184, 72, 'L');

INSERT INTO players VALUES ('ply1816', 'Iago', 'Herrerín', 'Spain',    '1988-01-25');
INSERT INTO player_stats VALUES ('ply1816', 'tm52', 1, 'Goalkeeper', 187, 89, 'R');

INSERT INTO players VALUES ('ply1817', '', 'Jaume', 'Spain',    '1990-11-05');
INSERT INTO player_stats VALUES ('ply1817', 'tm52', NULL, 'Goalkeeper', 185, 76, 'R');

INSERT INTO players VALUES ('ply1818', 'Giorgi', 'Mamardashvili', 'Georgia',    '2000-09-29');
INSERT INTO player_stats VALUES ('ply1818', 'tm52', 25, 'Goalkeeper', 199, 93, 'L');

INSERT INTO players VALUES ('ply1819', 'César', 'Tarrega', 'Spain',    '2002-02-26');
INSERT INTO player_stats VALUES ('ply1819', 'tm52', 38, 'Defender', 193, NULL, 'R');

INSERT INTO players VALUES ('ply1820', 'Eray', 'Cömert', 'Switzerland',    '1998-02-04');
INSERT INTO player_stats VALUES ('ply1820', 'tm52', 24, 'Defender', 183, 80, 'R');

INSERT INTO players VALUES ('ply1821', 'Cristhian', 'Mosquera', 'Spain',    '2004-06-27');
INSERT INTO player_stats VALUES ('ply1821', 'tm52', 33, 'Defender', 191, NULL, 'R');

INSERT INTO players VALUES ('ply1822', 'Mouctar', 'Diakhaby', 'France',    '1996-12-19');
INSERT INTO player_stats VALUES ('ply1822', 'tm52', 12, 'Defender', 192, 78, 'R');

INSERT INTO players VALUES ('ply1823', 'Dimitri', 'Foulquier', 'Guadeloupe',    '1993-03-23');
INSERT INTO player_stats VALUES ('ply1823', 'tm52', 20, 'Defender', 183, 78, 'R');

INSERT INTO players VALUES ('ply1824', 'Gabriel', 'Paulista', 'Brazil',    '1990-11-26');
INSERT INTO player_stats VALUES ('ply1824', 'tm52', 5, 'Defender', 187, 72, 'R');

INSERT INTO players VALUES ('ply1825', '', 'Gayà', 'Spain',    '1995-05-25');
INSERT INTO player_stats VALUES ('ply1825', 'tm52', 14, 'Defender', 172, 66, 'L');

INSERT INTO players VALUES ('ply1826', 'Jesús', 'Vázquez', 'Spain',    '2003-01-02');
INSERT INTO player_stats VALUES ('ply1826', 'tm52', 21, 'Defender', 182, 79, 'L');

INSERT INTO players VALUES ('ply1827', '', 'Joseda', 'Spain',    '2002-05-01');
INSERT INTO player_stats VALUES ('ply1827', 'tm52', 34, 'Defender', 181, 75, 'R');

INSERT INTO players VALUES ('ply1828', 'Cenk', 'Özkaçar', 'Turkey',    '2000-10-06');
INSERT INTO player_stats VALUES ('ply1828', 'tm52', 15, 'Defender', 190, 90, 'L');

INSERT INTO players VALUES ('ply1829', 'Rubén', 'Iranzo', 'Spain',    '2003-03-14');
INSERT INTO player_stats VALUES ('ply1829', 'tm52', 39, 'Defender', 182, 63, 'R');

INSERT INTO players VALUES ('ply1830', 'Thierry', 'Correia', 'Portugal',    '1999-03-09');
INSERT INTO player_stats VALUES ('ply1830', 'tm52', 2, 'Defender', 179, 69, 'R');

INSERT INTO players VALUES ('ply1831', 'Toni', 'Lato', 'Spain',    '1997-11-21');
INSERT INTO player_stats VALUES ('ply1831', 'tm52', 3, 'Defender', 171, 64, 'L');

INSERT INTO players VALUES ('ply1832', 'André', 'Almeida', 'Portugal',    '2000-05-30');
INSERT INTO player_stats VALUES ('ply1832', 'tm52', 18, 'Midfielder', 172, 62, 'R');

INSERT INTO players VALUES ('ply1833', 'Hugo', 'Guillamón', 'Spain',    '2000-01-31');
INSERT INTO player_stats VALUES ('ply1833', 'tm52', 6, 'Midfielder', 178, 65, 'R');

INSERT INTO players VALUES ('ply1834', 'Ilaix', 'Moriba', 'Guinea',    '2003-01-19');
INSERT INTO player_stats VALUES ('ply1834', 'tm52', 8, 'Midfielder', 185, 73, 'R');

INSERT INTO players VALUES ('ply1835', 'Mario', 'Domínguez', 'Spain',    '2004-02-10');
INSERT INTO player_stats VALUES ('ply1835', 'tm52', 46, 'Midfielder', 175, NULL, '');

INSERT INTO players VALUES ('ply1836', 'Yunus', 'Musah', 'USA',    '2002-11-29');
INSERT INTO player_stats VALUES ('ply1836', 'tm52', 4, 'Midfielder', 178, 75, 'R');

INSERT INTO players VALUES ('ply1837', '', 'Nico', 'Spain',    '2002-01-03');
INSERT INTO player_stats VALUES ('ply1837', 'tm52', 17, 'Midfielder', 188, 85, 'R');

INSERT INTO players VALUES ('ply1838', 'Tiago', 'Ribeiro', 'Portugal',    '2002-03-14');
INSERT INTO player_stats VALUES ('ply1838', '', NULL, 'Midfielder', 185, 77, 'L');

INSERT INTO players VALUES ('ply1839', '', 'Yellu', 'Spain',    '2004-05-25');
INSERT INTO player_stats VALUES ('ply1839', 'tm52', 35, 'Midfielder', 192, NULL, 'R');

INSERT INTO players VALUES ('ply1840', 'Edinson', 'Cavani', 'Uruguay',    '1987-02-14');
INSERT INTO player_stats VALUES ('ply1840', 'tm52', 7, 'Forward', 184, 77, 'R');

INSERT INTO players VALUES ('ply1841', 'Diego', 'López', 'Spain',    '2002-05-13');
INSERT INTO player_stats VALUES ('ply1841', '', NULL, 'Forward', 172, 63, '');

INSERT INTO players VALUES ('ply1842', 'Fran', 'Pérez', 'Spain',    '2002-09-09');
INSERT INTO player_stats VALUES ('ply1842', 'tm52', 29, 'Forward', 176, NULL, '');

INSERT INTO players VALUES ('ply1843', 'Hugo', 'Duro', 'Spain',    '1999-11-10');
INSERT INTO player_stats VALUES ('ply1843', 'tm52', 19, 'Forward', 182, 76, 'L');

INSERT INTO players VALUES ('ply1844', 'Hugo', 'González', 'Spain',    '2003-02-07');
INSERT INTO player_stats VALUES ('ply1844', 'tm52', 31, 'Forward', 180, NULL, '');

INSERT INTO players VALUES ('ply1845', 'Marcos', 'André', 'Brazil',    '1996-10-20');
INSERT INTO player_stats VALUES ('ply1845', 'tm52', 22, 'Forward', 185, 78, 'R');

INSERT INTO players VALUES ('ply1846', 'Samu', 'Castillejo', 'Spain',    '1995-01-18');
INSERT INTO player_stats VALUES ('ply1846', 'tm52', 11, 'Forward', 182, 67, 'L');

INSERT INTO players VALUES ('ply1847', 'Samuel', 'Lino', 'Brazil',    '1999-12-23');
INSERT INTO player_stats VALUES ('ply1847', 'tm52', 16, 'Forward', 178, 69, 'R');

INSERT INTO players VALUES ('ply1848', '', 'Ochotorena', 'Spain',    '1961-01-16');
INSERT INTO player_stats VALUES ('ply1848', 'tm52', NULL, 'Goalkeeping', 182, 78, '');

INSERT INTO players VALUES ('ply1849', 'Percy', 'Tau', 'South Africa',    '1994-05-13');
INSERT INTO player_stats VALUES ('ply1849', '', 23, 'Forward', 175, 70, 'L');

INSERT INTO players VALUES ('ply1850', 'Colin', 'Dagba', 'France',    '1998-09-09');
INSERT INTO player_stats VALUES ('ply1850', '', 2, 'Defender', 170, 62, 'R');

INSERT INTO players VALUES ('ply1851', 'Adem', 'Büyük', 'Turkey',    '1987-08-30');
INSERT INTO player_stats VALUES ('ply1851', '', 99, 'Forward', 177, 70, 'R');

INSERT INTO players VALUES ('ply1852', 'Ömer', 'Bayram', 'Turkey',    '1991-07-27');
INSERT INTO player_stats VALUES ('ply1852', '', NULL, 'Defender', 175, 70, 'L');

INSERT INTO players VALUES ('ply1853', 'Krépin', 'Diatta', 'Senegal',    '1999-02-25');
INSERT INTO player_stats VALUES ('ply1853', '', 27, 'Forward', 175, 68, 'R');

INSERT INTO players VALUES ('ply1854', 'Daniel', 'Podence', 'Portugal',    '1995-10-21');
INSERT INTO player_stats VALUES ('ply1854', '', 10, 'Forward', 165, 62, 'R');

INSERT INTO players VALUES ('ply1855', 'Rúben', 'Semedo', 'Portugal',    '1994-04-04');
INSERT INTO player_stats VALUES ('ply1855', '', 35, 'Defender', 189, 84, 'R');

INSERT INTO players VALUES ('ply1856', 'Miloš', 'Vulić', 'Serbia',    '1996-08-19');
INSERT INTO player_stats VALUES ('ply1856', '', 7, 'Midfielder', 183, 74, 'R');

INSERT INTO players VALUES ('ply1857', 'Richmond', 'Boakye', 'Ghana',    '1993-01-28');
INSERT INTO player_stats VALUES ('ply1857', '', NULL, 'Forward', 186, 81, 'R');

INSERT INTO players VALUES ('ply1858', '', 'Guilherme', 'Brazil',    '1991-04-05');
INSERT INTO player_stats VALUES ('ply1858', '', 18, 'Midfielder', 178, 77, 'R');

INSERT INTO players VALUES ('ply1859', 'Marin', 'Leovac', 'Croatia',    '1988-08-07');
INSERT INTO player_stats VALUES ('ply1859', '', 4, 'Defender', 180, 71, 'L');

INSERT INTO players VALUES ('ply1860', 'Petar', 'Stojanović', 'Slovenia',    '1995-10-07');
INSERT INTO player_stats VALUES ('ply1860', '', 30, 'Defender', 178, 72, 'R');

INSERT INTO players VALUES ('ply1861', 'Júnior', 'Moraes', 'Ukraine',    '1987-04-04');
INSERT INTO player_stats VALUES ('ply1861', '', 18, 'Forward', 176, 70, 'R');

INSERT INTO players VALUES ('ply1862', '', 'Dodô', 'Brazil',    '1998-11-17');
INSERT INTO player_stats VALUES ('ply1862', '', 2, 'Defender', 166, 68, 'R');

INSERT INTO players VALUES ('ply1863', 'Yevgen', 'Konoplyanka', 'Ukraine',    '1989-09-29');
INSERT INTO player_stats VALUES ('ply1863', '', 10, 'Forward', 178, 72, 'R');

INSERT INTO players VALUES ('ply1864', '', 'Marlos', 'Ukraine',    '1988-06-07');
INSERT INTO player_stats VALUES ('ply1864', '', 10, 'Midfielder', 174, 69, 'L');

INSERT INTO players VALUES ('ply1865', 'Mario', 'Gavranović', 'Switzerland',    '1989-11-24');
INSERT INTO player_stats VALUES ('ply1865', '', 19, 'Forward', 175, 76, 'R');

INSERT INTO players VALUES ('ply1866', 'Viktor', 'Kovalenko', 'Ukraine',    '1996-02-14');
INSERT INTO player_stats VALUES ('ply1866', '', 24, 'Midfielder', 182, 75, 'R');

INSERT INTO players VALUES ('ply1867', 'Timothy', 'Castagne', 'Belgium',    '1995-12-05');
INSERT INTO player_stats VALUES ('ply1867', '', 27, 'Defender', 185, 80, 'R');

INSERT INTO players VALUES ('ply1868', 'Damian', 'Kądzior', 'Poland',    '1992-06-16');
INSERT INTO player_stats VALUES ('ply1868', '', 92, 'Forward', 174, 70, 'L');

INSERT INTO players VALUES ('ply1869', 'Gonzalo', 'Higuaín', 'Argentina',    '1987-12-10');
INSERT INTO player_stats VALUES ('ply1869', '', 10, 'Forward', 186, 85, '');

INSERT INTO players VALUES ('ply1870', 'Blaise', 'Matuidi', 'France',    '1987-04-09');
INSERT INTO player_stats VALUES ('ply1870', '', 8, 'Midfielder', 175, 75, 'L');

INSERT INTO players VALUES ('ply1871', 'Kieran', 'Trippier', 'England',    '1990-09-19');
INSERT INTO player_stats VALUES ('ply1871', '', 2, 'Defender', 173, 69, 'R');

INSERT INTO players VALUES ('ply1872', 'Grzegorz', 'Krychowiak', 'Poland',    '1990-01-29');
INSERT INTO player_stats VALUES ('ply1872', '', 23, 'Arabia', 187, 83, 'R');

INSERT INTO players VALUES ('ply1873', 'Thomas', 'Partey', 'Ghana',    '1993-06-13');
INSERT INTO player_stats VALUES ('ply1873', '', 5, 'Midfielder', 185, 77, 'R');

INSERT INTO players VALUES ('ply1874', 'Diego', 'Costa', 'Spain',    '1988-10-07');
INSERT INTO player_stats VALUES ('ply1874', '', 29, 'Forward', 188, 83, 'R');

INSERT INTO players VALUES ('ply1875', 'Aaron', 'Ramsey', 'Wales',    '1990-12-26');
INSERT INTO player_stats VALUES ('ply1875', '', 16, 'Midfielder', 182, 76, '');

INSERT INTO players VALUES ('ply1876', 'Kevin', 'Volland', 'Germany',    '1992-07-30');
INSERT INTO player_stats VALUES ('ply1876', '', 31, 'Forward', 179, 85, 'L');

INSERT INTO players VALUES ('ply1877', 'José', 'Callejón', 'Spain',    '1987-02-11');
INSERT INTO player_stats VALUES ('ply1877', '', 9, 'Forward', 178, 73, 'R');

INSERT INTO players VALUES ('ply1878', 'Takumi', 'Minamino', 'Japan',    '1995-01-16');
INSERT INTO player_stats VALUES ('ply1878', '', 18, 'Midfielder', 174, 68, 'R');

INSERT INTO players VALUES ('ply1879', 'Hee-chan', 'Hwang', 'South Korea',    '1996-01-26');
INSERT INTO player_stats VALUES ('ply1879', '', 11, 'Forward', 177, 77, 'R');

INSERT INTO players VALUES ('ply1880', 'Jhon', 'Lucumí', 'Colombia',    '1998-06-26');
INSERT INTO player_stats VALUES ('ply1880', '', 26, 'Defender', 187, 84, 'L');

INSERT INTO players VALUES ('ply1881', 'Dieumerci', 'Ndongala', 'Congo DR',    '1991-06-14');
INSERT INTO player_stats VALUES ('ply1881', '', 77, 'Forward', 170, 60, 'R');

INSERT INTO players VALUES ('ply1882', 'Théo', 'Bongonda', 'Belgium',    '1995-11-20');
INSERT INTO player_stats VALUES ('ply1882', '', 10, 'Forward', 177, 73, 'L');

INSERT INTO players VALUES ('ply1883', 'Kévin', 'Malcuit', 'France',    '1991-07-31');
INSERT INTO player_stats VALUES ('ply1883', '', NULL, 'Defender', 180, 76, 'R');

INSERT INTO players VALUES ('ply1884', 'Lorenzo', 'Insigne', 'Italy',    '1991-06-04');
INSERT INTO player_stats VALUES ('ply1884', '', 24, 'Forward', 163, 59, 'R');

INSERT INTO players VALUES ('ply1885', 'Stephen', 'Odey', 'Nigeria',    '1998-01-15');
INSERT INTO player_stats VALUES ('ply1885', '', 90, 'Forward', 182, 72, 'R');

INSERT INTO players VALUES ('ply1886', 'Antonio', 'Candreva', 'Italy',    '1987-02-28');
INSERT INTO player_stats VALUES ('ply1886', '', 87, 'Midfielder', 180, 72, 'R');

INSERT INTO players VALUES ('ply1887', 'Diego', 'Godín', 'Uruguay',    '1986-02-16');
INSERT INTO player_stats VALUES ('ply1887', '', 2, 'Defender', 187, 80, 'R');

INSERT INTO players VALUES ('ply1888', 'Mario', 'Götze', 'Germany',    '1992-06-03');
INSERT INTO player_stats VALUES ('ply1888', '', 27, 'Midfielder', 176, 75, 'R');

INSERT INTO players VALUES ('ply1889', 'Tomáš', 'Souček', 'Czech Republic',    '1995-02-27');
INSERT INTO player_stats VALUES ('ply1889', '', 28, 'Midfielder', 192, 86, 'R');

INSERT INTO players VALUES ('ply1890', 'Milan', 'Škoda', 'Czech Republic',    '1986-01-16');
INSERT INTO player_stats VALUES ('ply1890', '', 21, 'Republic', 190, 85, 'R');

INSERT INTO players VALUES ('ply1891', 'Carles', 'Pérez', 'Spain',    '1998-02-16');
INSERT INTO player_stats VALUES ('ply1891', '', 7, 'Forward', 173, 75, 'L');

INSERT INTO players VALUES ('ply1892', 'Raúl de', 'Tomás', 'Spain',    '1994-10-17');
INSERT INTO player_stats VALUES ('ply1892', '', NULL, 'Forward', 180, 79, 'R');

INSERT INTO players VALUES ('ply1893', 'Franco', 'Cervi', 'Argentina',    '1994-05-26');
INSERT INTO player_stats VALUES ('ply1893', '', 11, 'Midfielder', 165, 62, 'L');

INSERT INTO players VALUES ('ply1894', '', 'Pizzi', 'Portugal',    '1989-10-06');
INSERT INTO player_stats VALUES ('ply1894', '', NULL, 'Emirates', 177, 72, 'R');

INSERT INTO players VALUES ('ply1895', 'Joachim', 'Andersen', 'Denmark',    '1996-05-31');
INSERT INTO player_stats VALUES ('ply1895', '', 16, 'Defender', 192, 90, 'R');

INSERT INTO players VALUES ('ply1896', 'Adel', 'Taarabt', 'Morocco',    '1989-05-24');
INSERT INTO player_stats VALUES ('ply1896', '', NULL, 'Emirates', 178, 76, 'R');

INSERT INTO players VALUES ('ply1897', 'Carlos', 'Vinícius', 'Brazil',    '1995-03-25');
INSERT INTO player_stats VALUES ('ply1897', '', 30, 'Forward', 190, 83, 'L');

INSERT INTO players VALUES ('ply1898', 'Lucas', 'Tousart', 'France',    '1997-04-29');
INSERT INTO player_stats VALUES ('ply1898', '', 29, 'Midfielder', 185, 83, 'R');

INSERT INTO players VALUES ('ply1899', '', 'Rodrigo', 'Spain',    '1991-03-06');
INSERT INTO player_stats VALUES ('ply1899', '', 19, 'Forward', 182, 77, 'L');

INSERT INTO players VALUES ('ply1900', '', 'Willian', 'Brazil',    '1988-08-09');
INSERT INTO player_stats VALUES ('ply1900', '', 20, 'Midfielder', 175, 75, 'R');

INSERT INTO players VALUES ('ply1901', 'Michy', 'Batshuayi', 'Belgium',    '1993-10-02');
INSERT INTO player_stats VALUES ('ply1901', '', NULL, 'Forward', 185, 83, 'R');

INSERT INTO players VALUES ('ply1902', 'Denis', 'Cheryshev', 'Russia',    '1990-12-26');
INSERT INTO player_stats VALUES ('ply1902', '', 21, 'Forward', 179, 74, 'L');

INSERT INTO players VALUES ('ply1903', 'Kevin', 'Gameiro', 'France',    '1987-05-09');
INSERT INTO player_stats VALUES ('ply1903', '', 9, 'Forward', 172, 70, 'R');

INSERT INTO players VALUES ('ply1904', 'Adama', 'Soumaoro', 'France',    '1992-06-18');
INSERT INTO player_stats VALUES ('ply1904', '', 5, 'Defender', 186, 93, 'R');

INSERT INTO players VALUES ('ply1905', 'Kurt', 'Zouma', 'France',    '1994-10-27');
INSERT INTO player_stats VALUES ('ply1905', '', 4, 'Defender', 190, 95, 'R');

INSERT INTO players VALUES ('ply1906', 'Daniel', 'Wass', 'Denmark',    '1989-05-31');
INSERT INTO player_stats VALUES ('ply1906', '', 10, 'Defender', 178, 74, 'R');

INSERT INTO players VALUES ('ply1907', 'Nélson', 'Semedo', 'Portugal',    '1993-11-16');
INSERT INTO player_stats VALUES ('ply1907', '', 22, 'Defender', 177, 69, 'R');

INSERT INTO players VALUES ('ply1908', 'Tyler', 'Adams', 'USA',    '1999-02-14');
INSERT INTO player_stats VALUES ('ply1908', '', 12, 'Midfielder', 175, 72, 'R');

INSERT INTO players VALUES ('ply1909', 'Maxwel', 'Cornet', 'Ivory Coast',    '1996-09-27');
INSERT INTO player_stats VALUES ('ply1909', '', 14, 'Midfielder', 179, 69, 'L');

INSERT INTO players VALUES ('ply1910', 'Oliver', 'Baumann', 'Germany',    '1990-06-02');
INSERT INTO player_stats VALUES ('ply1910', 'tm53', 1, 'Goalkeeper', 187, 82, 'R');

INSERT INTO players VALUES ('ply1911', 'Nahuel', 'Noll', 'Germany',    '2003-03-17');
INSERT INTO player_stats VALUES ('ply1911', 'tm53', 36, 'Goalkeeper', 188, 75, '');

INSERT INTO players VALUES ('ply1912', 'Philipp', 'Pentke', 'Germany',    '1985-05-01');
INSERT INTO player_stats VALUES ('ply1912', 'tm53', 12, 'Goalkeeper', 191, 84, 'R');

INSERT INTO players VALUES ('ply1913', 'Luca', 'Philipp', 'Germany',    '2000-11-28');
INSERT INTO player_stats VALUES ('ply1913', '', 1, 'Goalkeeper', 192, 83, 'R');

INSERT INTO players VALUES ('ply1914', 'Kevin', 'Akpoguma', 'Nigeria',    '1995-04-19');
INSERT INTO player_stats VALUES ('ply1914', 'tm53', 25, 'Defender', 192, 85, 'R');

INSERT INTO players VALUES ('ply1915', 'Ermin', 'Bičakčić', 'Bosnia-Herzegovina',    '1990-01-24');
INSERT INTO player_stats VALUES ('ply1915', 'tm53', 4, 'Defender', 185, 85, 'R');

INSERT INTO players VALUES ('ply1916', 'Justin', 'Che', 'USA',    '2003-11-18');
INSERT INTO player_stats VALUES ('ply1916', '', 12, 'Defender', 185, 79, 'R');

INSERT INTO players VALUES ('ply1917', 'Eduardo', 'Quaresma', 'Portugal',    '2002-03-02');
INSERT INTO player_stats VALUES ('ply1917', '', 23, 'Defender', 185, 76, '');

INSERT INTO players VALUES ('ply1918', 'Benjamin', 'Hübner', 'Germany',    '1989-07-04');
INSERT INTO player_stats VALUES ('ply1918', 'tm53', 21, 'Defender', 193, 86, 'L');

INSERT INTO players VALUES ('ply1919', 'Ozan', 'Kabak', 'Turkey',    '2000-03-25');
INSERT INTO player_stats VALUES ('ply1919', 'tm53', 5, 'Defender', 186, 86, 'R');

INSERT INTO players VALUES ('ply1920', 'Pavel', 'Kadeřábek', 'Czech Republic',    '1992-04-25');
INSERT INTO player_stats VALUES ('ply1920', 'tm53', 3, 'Defender', 182, 81, 'R');

INSERT INTO players VALUES ('ply1921', 'Noah', 'König', 'Germany',    '2003-05-17');
INSERT INTO player_stats VALUES ('ply1921', '', 2, 'Defender', 188, 83, 'R');

INSERT INTO players VALUES ('ply1922', 'Stanley', 'N''Soki', 'France',    '1999-04-09');
INSERT INTO player_stats VALUES ('ply1922', 'tm53', 34, 'Defender', 184, 83, 'L');

INSERT INTO players VALUES ('ply1923', 'Kevin', 'Vogt', 'Germany',    '1991-09-23');
INSERT INTO player_stats VALUES ('ply1923', 'tm53', 22, 'Defender', 194, 87, 'R');

INSERT INTO players VALUES ('ply1924', 'Christoph', 'Baumgartner', 'Austria',    '1999-08-01');
INSERT INTO player_stats VALUES ('ply1924', 'tm53', 14, 'Midfielder', 180, 73, 'R');

INSERT INTO players VALUES ('ply1925', 'Finn', 'Becker', 'Germany',    '2000-06-08');
INSERT INTO player_stats VALUES ('ply1925', 'tm53', 20, 'Midfielder', 177, 74, 'L');

INSERT INTO players VALUES ('ply1926', 'Tom', 'Bischof', 'Germany',    '2005-06-28');
INSERT INTO player_stats VALUES ('ply1926', 'tm53', 39, 'Midfielder', 176, 66, '');

INSERT INTO players VALUES ('ply1927', 'Muhammed', 'Damar', 'Germany',    '2004-04-09');
INSERT INTO player_stats VALUES ('ply1927', '', 7, 'Midfielder', 185, NULL, '');

INSERT INTO players VALUES ('ply1928', 'Dennis', 'Geiger', 'Germany',    '1998-06-10');
INSERT INTO player_stats VALUES ('ply1928', 'tm53', 8, 'Midfielder', 173, 65, 'R');

INSERT INTO players VALUES ('ply1929', 'Grischa', 'Prömel', 'Germany',    '1995-01-09');
INSERT INTO player_stats VALUES ('ply1929', 'tm53', 6, 'Midfielder', 184, 81, '');

INSERT INTO players VALUES ('ply1930', 'Sebastian', 'Rudy', 'Germany',    '1990-02-28');
INSERT INTO player_stats VALUES ('ply1930', 'tm53', 16, 'Midfielder', 180, 74, 'R');

INSERT INTO players VALUES ('ply1931', 'Robert', 'Skov', 'Denmark',    '1996-05-20');
INSERT INTO player_stats VALUES ('ply1931', 'tm53', 29, 'Midfielder', 185, 81, '');

INSERT INTO players VALUES ('ply1932', 'Angelo', 'Stiller', 'Germany',    '2001-04-04');
INSERT INTO player_stats VALUES ('ply1932', 'tm53', 13, 'Midfielder', 183, 73, 'L');

INSERT INTO players VALUES ('ply1933', 'Umut', 'Tohumcu', 'Germany',    '2004-08-11');
INSERT INTO player_stats VALUES ('ply1933', '', 8, 'Midfielder', 175, 71, '');

INSERT INTO players VALUES ('ply1934', 'Fisnik', 'Asllani', 'Germany',    '2002-08-08');
INSERT INTO player_stats VALUES ('ply1934', 'tm53', 44, 'Forward', 189, 82, '');

INSERT INTO players VALUES ('ply1935', 'Ihlas', 'Bebou', 'Togo',    '1994-04-23');
INSERT INTO player_stats VALUES ('ply1935', 'tm53', 9, 'Forward', 185, 78, 'R');

INSERT INTO players VALUES ('ply1936', 'Jacob Bruun', 'Larsen', 'Denmark',    '1998-09-19');
INSERT INTO player_stats VALUES ('ply1936', 'tm53', 7, 'Forward', 183, 75, 'R');

INSERT INTO players VALUES ('ply1937', 'Munas', 'Dabbur', 'Israel',    '1992-05-14');
INSERT INTO player_stats VALUES ('ply1937', 'tm53', 10, 'Forward', 182, 76, 'R');

INSERT INTO players VALUES ('ply1938', 'Andrej', 'Kramarić', 'Croatia',    '1991-06-19');
INSERT INTO player_stats VALUES ('ply1938', 'tm53', 27, 'Forward', 177, 73, 'R');

INSERT INTO players VALUES ('ply1939', 'Michael', 'Rechner', 'Germany',    '1980-05-27');
INSERT INTO player_stats VALUES ('ply1939', 'tm53', NULL, 'Goalkeeping', 186, 83, 'R');

INSERT INTO players VALUES ('ply1940', 'Philipp', 'Lussi', 'Germany',    '1994-02-11');
INSERT INTO player_stats VALUES ('ply1940', 'tm53', NULL, 'Athletic', 189, 87, '');

INSERT INTO players VALUES ('ply1941', 'Martin', 'Seiler', 'Germany',    '1989-04-03');
INSERT INTO player_stats VALUES ('ply1941', 'tm53', NULL, 'Athletic', 187, 81, '');

INSERT INTO players VALUES ('ply1942', 'Christian', 'Weigl', 'Germany',    '1976-06-13');
INSERT INTO player_stats VALUES ('ply1942', 'tm53', NULL, 'Athletic', 184, 84, '');

INSERT INTO players VALUES ('ply1943', 'Christian', 'Neitzert', 'Germany',    '1984-08-13');
INSERT INTO player_stats VALUES ('ply1943', 'tm53', NULL, 'Rehab', 178, 78, '');

INSERT INTO players VALUES ('ply1944', 'Bernd', 'Steinhoff', 'Germany',    '1980-03-19');
INSERT INTO player_stats VALUES ('ply1944', 'tm53', NULL, 'Rehab', NULL, NULL, '');

INSERT INTO players VALUES ('ply1945', 'Niklas', 'Mayer', 'Germany',    '1991-12-13');
INSERT INTO player_stats VALUES ('ply1945', 'tm53', NULL, 'Game', 182, NULL, '');

INSERT INTO players VALUES ('ply1946', 'Timo', 'Gross', 'Germany',    '1990-08-27');
INSERT INTO player_stats VALUES ('ply1946', 'tm53', NULL, 'Chief', 180, 78, '');

INSERT INTO players VALUES ('ply1947', 'Hans-Dieter', 'Hermann', 'Germany',    '1960-05-14');
INSERT INTO player_stats VALUES ('ply1947', 'tm53', NULL, '07/2006', NULL, NULL, '');

INSERT INTO players VALUES ('ply1948', 'Jan', 'Mayer', 'Germany',    '1972-08-05');
INSERT INTO player_stats VALUES ('ply1948', 'tm53', NULL, '07/2010', NULL, NULL, '');

INSERT INTO players VALUES ('ply1949', 'Georgios', 'Athanasiadis', 'Greece',    '1993-04-07');
INSERT INTO player_stats VALUES ('ply1949', 'tm54', NULL, 'Goalkeeper', 191, 85, 'R');

INSERT INTO players VALUES ('ply1950', 'Vasilios', 'Chatziemmanouil', 'Greece',    '1999-08-09');
INSERT INTO player_stats VALUES ('ply1950', '', 61, 'Goalkeeper', 186, 79, 'L');

INSERT INTO players VALUES ('ply1951', 'Cican', 'Stanković', 'Austria',    '1992-11-04');
INSERT INTO player_stats VALUES ('ply1951', 'tm54', 23, 'Goalkeeper', 186, 80, 'R');

INSERT INTO players VALUES ('ply1952', 'Georgios', 'Theocharis', 'Greece',    '2002-06-30');
INSERT INTO player_stats VALUES ('ply1952', '', 99, 'Goalkeeper', 187, 90, '');

INSERT INTO players VALUES ('ply1953', 'Panagiotis', 'Tsintotas', 'Greece',    '1993-07-04');
INSERT INTO player_stats VALUES ('ply1953', 'tm54', 1, 'Goalkeeper', 192, 87, 'R');

INSERT INTO players VALUES ('ply1954', 'Gerasimos', 'Mitoglou', 'Greece',    '1999-10-20');
INSERT INTO player_stats VALUES ('ply1954', 'tm54', 24, 'Defender', 195, 85, 'R');

INSERT INTO players VALUES ('ply1955', 'Milad', 'Mohammadi', 'Iran',    '1993-09-29');
INSERT INTO player_stats VALUES ('ply1955', 'tm54', 3, 'Defender', 178, 79, 'L');

INSERT INTO players VALUES ('ply1956', 'Harold', 'Moukoudi', 'Cameroon',    '1997-11-27');
INSERT INTO player_stats VALUES ('ply1956', 'tm54', NULL, 'Defender', 191, 74, 'R');

INSERT INTO players VALUES ('ply1957', 'Alexandros', 'Parras', 'Greece',    '1998-05-12');
INSERT INTO player_stats VALUES ('ply1957', 'tm54', 18, 'Defender', 182, 67, 'L');

INSERT INTO players VALUES ('ply1958', 'Vedad', 'Radonja', 'Bosnia-Herzegovina',    '2001-09-06');
INSERT INTO player_stats VALUES ('ply1958', '', 37, 'Defender', 182, 72, 'R');

INSERT INTO players VALUES ('ply1959', 'Lazaros', 'Rota', 'Greece',    '1997-08-23');
INSERT INTO player_stats VALUES ('ply1959', 'tm54', 12, 'Defender', 180, NULL, 'R');

INSERT INTO players VALUES ('ply1960', 'Djibril', 'Sidibé', 'France',    '1992-07-29');
INSERT INTO player_stats VALUES ('ply1960', 'tm54', NULL, 'Defender', 182, 71, 'R');

INSERT INTO players VALUES ('ply1961', 'Giorgos', 'Tzavellas', 'Greece',    '1987-11-26');
INSERT INTO player_stats VALUES ('ply1961', 'tm54', 31, 'Defender', 183, 77, 'L');

INSERT INTO players VALUES ('ply1962', 'Domagoj', 'Vida', 'Croatia',    '1989-04-29');
INSERT INTO player_stats VALUES ('ply1962', 'tm54', NULL, 'Defender', 184, 76, 'R');

INSERT INTO players VALUES ('ply1963', 'Nordin', 'Amrabat', 'Morocco',    '1987-03-31');
INSERT INTO player_stats VALUES ('ply1963', 'tm54', 7, 'Midfielder', 179, 73, 'R');

INSERT INTO players VALUES ('ply1964', 'Niclas', 'Eliasson', 'Sweden',    '1995-12-07');
INSERT INTO player_stats VALUES ('ply1964', 'tm54', NULL, 'Midfielder', 178, 72, 'L');

INSERT INTO players VALUES ('ply1965', 'Alexander', 'Fransson', 'Sweden',    '1994-04-02');
INSERT INTO player_stats VALUES ('ply1965', 'tm54', 14, 'Midfielder', 180, 74, 'R');

INSERT INTO players VALUES ('ply1966', 'Mijat', 'Gaćinović', 'Serbia',    '1995-02-08');
INSERT INTO player_stats VALUES ('ply1966', 'tm54', NULL, 'Midfielder', 175, 66, 'R');

INSERT INTO players VALUES ('ply1967', 'Konstantinos', 'Galanopoulos', 'Greece',    '1997-12-28');
INSERT INTO player_stats VALUES ('ply1967', 'tm54', 25, 'Midfielder', 172, 72, 'R');

INSERT INTO players VALUES ('ply1968', 'Ehsan', 'Hajsafi', 'Iran',    '1990-02-25');
INSERT INTO player_stats VALUES ('ply1968', 'tm54', 26, 'Midfielder', 176, 74, 'L');

INSERT INTO players VALUES ('ply1969', 'Jens', 'Jønsson', 'Denmark',    '1993-01-10');
INSERT INTO player_stats VALUES ('ply1969', 'tm54', NULL, 'Midfielder', 182, 78, 'R');

INSERT INTO players VALUES ('ply1970', 'Petros', 'Mantalos', 'Greece',    '1991-08-31');
INSERT INTO player_stats VALUES ('ply1970', 'tm54', 20, 'Midfielder', 176, 73, 'R');

INSERT INTO players VALUES ('ply1971', 'Georgios', 'Moustakopoulos', 'Greece',    '1998-08-13');
INSERT INTO player_stats VALUES ('ply1971', 'tm54', 80, 'Midfielder', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply1972', 'Konstantinos', 'Roukounakis', 'Greece',    '2001-07-17');
INSERT INTO player_stats VALUES ('ply1972', 'tm54', 46, 'Midfielder', 183, 77, 'L');

INSERT INTO players VALUES ('ply1973', 'Anel', 'Šabanadžović', 'Bosnia-Herzegovina',    '1999-05-24');
INSERT INTO player_stats VALUES ('ply1973', 'tm54', 44, 'Midfielder', 182, 70, 'R');

INSERT INTO players VALUES ('ply1974', 'Damian', 'Szymański', 'Poland',    '1995-06-16');
INSERT INTO player_stats VALUES ('ply1974', 'tm54', 4, 'Midfielder', 183, 76, 'R');

INSERT INTO players VALUES ('ply1975', 'Steven', 'Zuber', 'Switzerland',    '1991-08-17');
INSERT INTO player_stats VALUES ('ply1975', 'tm54', 17, 'Midfielder', 182, 72, 'R');

INSERT INTO players VALUES ('ply1976', 'Sergio', 'Araujo', 'Argentina',    '1992-01-28');
INSERT INTO player_stats VALUES ('ply1976', 'tm54', 11, 'Forward', 180, 81, 'R');

INSERT INTO players VALUES ('ply1977', 'Efthymios', 'Christopoulos', 'Greece',    '2000-09-20');
INSERT INTO player_stats VALUES ('ply1977', '', 70, 'Forward', 181, 76, 'R');

INSERT INTO players VALUES ('ply1978', 'Levi', 'García', 'Trinidad & Tobago',    '1997-11-20');
INSERT INTO player_stats VALUES ('ply1978', 'tm54', 9, 'Forward', 182, 78, 'L');

INSERT INTO players VALUES ('ply1979', 'Michalis', 'Kosidis', 'Greece',    '2002-02-09');
INSERT INTO player_stats VALUES ('ply1979', '', 35, 'Forward', 191, 80, '');

INSERT INTO players VALUES ('ply1980', 'Theodosis', 'Macheras', 'Greece',    '2000-05-09');
INSERT INTO player_stats VALUES ('ply1980', 'tm54', NULL, 'Forward', 179, 74, '');

INSERT INTO players VALUES ('ply1981', 'Orbelín', 'Pineda', 'Mexico',    '1996-03-24');
INSERT INTO player_stats VALUES ('ply1981', 'tm54', NULL, 'Forward', 169, 64, 'R');

INSERT INTO players VALUES ('ply1982', 'Tom van', 'Weert', 'Netherlands',    '1990-06-07');
INSERT INTO player_stats VALUES ('ply1982', 'tm54', NULL, 'Forward', 182, 79, 'R');

INSERT INTO players VALUES ('ply1983', '', 'Zini', 'Angola',    '2002-07-03');
INSERT INTO player_stats VALUES ('ply1983', 'tm54', NULL, 'Forward', 181, NULL, 'R');

INSERT INTO players VALUES ('ply1984', 'Carlos', 'Roa', 'Argentina',    '1969-08-15');
INSERT INTO player_stats VALUES ('ply1984', 'tm54', NULL, 'Goalkeeping', 192, 87, '');

INSERT INTO players VALUES ('ply1985', 'Guido', 'Bonini', 'Argentina',    '1986-08-26');
INSERT INTO player_stats VALUES ('ply1985', 'tm54', NULL, 'Fitness', 188, 91, '');

INSERT INTO players VALUES ('ply1986', 'Thomas', 'Didillon', 'France',    '1995-11-28');
INSERT INTO player_stats VALUES ('ply1986', 'tm55', 30, 'Goalkeeper', 193, 84, 'L');

INSERT INTO players VALUES ('ply1987', 'Yann', 'Lienard', 'France',    '2003-03-16');
INSERT INTO player_stats VALUES ('ply1987', 'tm55', 50, 'Goalkeeper', 192, 82, 'R');

INSERT INTO players VALUES ('ply1988', 'Alexander', 'Nübel', 'Germany',    '1996-09-30');
INSERT INTO player_stats VALUES ('ply1988', 'tm55', 16, 'Goalkeeper', 193, 86, 'R');

INSERT INTO players VALUES ('ply1989', 'Ruben', 'Aguilar', 'France',    '1993-04-26');
INSERT INTO player_stats VALUES ('ply1989', 'tm55', 26, 'Defender', 172, 71, 'R');

INSERT INTO players VALUES ('ply1990', 'Benoît', 'Badiashile', 'France',    '2001-03-26');
INSERT INTO player_stats VALUES ('ply1990', 'tm55', 5, 'Defender', 194, 75, 'L');

INSERT INTO players VALUES ('ply1991', 'Caio', 'Henrique', 'Brazil',    '1997-07-31');
INSERT INTO player_stats VALUES ('ply1991', 'tm55', 12, 'Defender', 179, 70, 'L');

INSERT INTO players VALUES ('ply1992', 'Axel', 'Disasi', 'France',    '1998-03-11');
INSERT INTO player_stats VALUES ('ply1992', 'tm55', 6, 'Defender', 190, 86, 'R');

INSERT INTO players VALUES ('ply1993', 'Ismail', 'Jakobs', 'Germany',    '1999-08-17');
INSERT INTO player_stats VALUES ('ply1993', 'tm55', 14, 'Defender', 183, 75, 'L');

INSERT INTO players VALUES ('ply1994', 'Guillermo', 'Maripán', 'Chile',    '1994-05-06');
INSERT INTO player_stats VALUES ('ply1994', 'tm55', 3, 'Defender', 194, 83, 'R');

INSERT INTO players VALUES ('ply1995', 'Yllan', 'Okou', 'France',    '2002-12-23');
INSERT INTO player_stats VALUES ('ply1995', 'tm55', 38, 'Defender', 180, 65, 'L');

INSERT INTO players VALUES ('ply1996', 'Malang', 'Sarr', 'France',    '1999-01-23');
INSERT INTO player_stats VALUES ('ply1996', 'tm55', 23, 'Defender', 182, 73, 'L');

INSERT INTO players VALUES ('ply1997', '', 'Vanderson', 'Brazil',    '2001-06-21');
INSERT INTO player_stats VALUES ('ply1997', 'tm55', 2, 'Defender', 174, 69, 'R');

INSERT INTO players VALUES ('ply1998', 'Maghnes', 'Akliouche', 'Algeria',    '2002-02-25');
INSERT INTO player_stats VALUES ('ply1998', 'tm55', 21, 'Midfielder', 175, 63, 'L');

INSERT INTO players VALUES ('ply1999', 'Eliesse Ben', 'Seghir', 'France',    '2005-02-14');
INSERT INTO player_stats VALUES ('ply1999', 'tm55', 99, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply2000', 'Mohamed', 'Camara', 'Mali',    '2000-01-06');
INSERT INTO player_stats VALUES ('ply2000', 'tm55', 4, 'Midfielder', 175, 69, 'R');

INSERT INTO players VALUES ('ply2001', 'Youssouf', 'Fofana', 'France',    '1999-01-10');
INSERT INTO player_stats VALUES ('ply2001', 'tm55', 19, 'Midfielder', 176, 74, 'R');

INSERT INTO players VALUES ('ply2002', 'Aleksandr', 'Golovin', 'Russia',    '1996-05-30');
INSERT INTO player_stats VALUES ('ply2002', 'tm55', 17, 'Midfielder', 180, 69, 'R');

INSERT INTO players VALUES ('ply2003', 'Jean', 'Lucas', 'Brazil',    '1998-06-22');
INSERT INTO player_stats VALUES ('ply2003', 'tm55', 11, 'Midfielder', 181, 78, 'R');

INSERT INTO players VALUES ('ply2004', 'Félix', 'Lemaréchal', 'France',    '2003-08-07');
INSERT INTO player_stats VALUES ('ply2004', 'tm55', 29, 'Midfielder', 181, 73, 'R');

INSERT INTO players VALUES ('ply2005', 'Soungoutou', 'Magassa', 'France',    '2003-10-08');
INSERT INTO player_stats VALUES ('ply2005', 'tm55', 41, 'Midfielder', 188, NULL, 'R');

INSERT INTO players VALUES ('ply2006', 'Eliot', 'Matazo', 'Belgium',    '2002-02-15');
INSERT INTO player_stats VALUES ('ply2006', 'tm55', 15, 'Midfielder', 174, 67, 'R');

INSERT INTO players VALUES ('ply2007', 'Wissam Ben', 'Yedder', 'France',    '1990-08-12');
INSERT INTO player_stats VALUES ('ply2007', 'tm55', 10, 'Forward', 170, 68, '');

INSERT INTO players VALUES ('ply2008', 'Myron', 'Boadu', 'Netherlands',    '2001-01-14');
INSERT INTO player_stats VALUES ('ply2008', 'tm55', 9, 'Forward', 181, 67, 'R');

INSERT INTO players VALUES ('ply2009', 'Gelson', 'Martins', 'Portugal',    '1995-05-11');
INSERT INTO player_stats VALUES ('ply2009', 'tm55', 77, 'Forward', 173, 74, 'R');

INSERT INTO players VALUES ('ply2010', 'Willem', 'Geubbels', 'France',    '2001-08-16');
INSERT INTO player_stats VALUES ('ply2010', 'tm55', 53, 'Forward', 185, 72, 'R');

INSERT INTO players VALUES ('ply2011', 'Frederic De', 'Boever', 'Qatar',    '1980-09-23');
INSERT INTO player_stats VALUES ('ply2011', 'tm55', NULL, 'Goalkeeping', NULL, NULL, '');

INSERT INTO players VALUES ('ply2012', 'Pietro', 'Boer', 'Italy',    '2002-05-12');
INSERT INTO player_stats VALUES ('ply2012', 'tm56', 63, 'Goalkeeper', 193, 80, 'R');

INSERT INTO players VALUES ('ply2013', 'Rui', 'Patrício', 'Portugal',    '1988-02-15');
INSERT INTO player_stats VALUES ('ply2013', 'tm56', 1, 'Goalkeeper', 190, 84, 'L');

INSERT INTO players VALUES ('ply2014', 'Mile', 'Svilar', 'Belgium',    '1999-08-27');
INSERT INTO player_stats VALUES ('ply2014', 'tm56', 99, 'Goalkeeper', 189, 82, 'R');

INSERT INTO players VALUES ('ply2015', 'William', 'Bianda', 'France',    '2000-04-30');
INSERT INTO player_stats VALUES ('ply2015', 'tm56', NULL, 'Defender', 186, 82, 'L');

INSERT INTO players VALUES ('ply2016', '', 'Ibañez', 'Brazil',    '1998-11-23');
INSERT INTO player_stats VALUES ('ply2016', 'tm56', 3, 'Defender', 187, 80, 'R');

INSERT INTO players VALUES ('ply2017', 'Jan', 'Oliveras', 'Spain',    '2004-07-07');
INSERT INTO player_stats VALUES ('ply2017', 'tm56', 74, 'Defender', 172, NULL, 'L');

INSERT INTO players VALUES ('ply2018', 'Rick', 'Karsdorp', 'Netherlands',    '1995-02-11');
INSERT INTO player_stats VALUES ('ply2018', 'tm56', 2, 'Defender', 184, 80, 'R');

INSERT INTO players VALUES ('ply2019', 'Dimitrios', 'Keramitsis', 'Italy',    '2004-07-01');
INSERT INTO player_stats VALUES ('ply2019', 'tm56', 60, 'Defender', 193, 78, '');

INSERT INTO players VALUES ('ply2020', 'Marash', 'Kumbulla', 'Albania',    '2000-02-08');
INSERT INTO player_stats VALUES ('ply2020', 'tm56', 24, 'Defender', 190, 78, 'R');

INSERT INTO players VALUES ('ply2021', 'Gianluca', 'Mancini', 'Italy',    '1996-04-17');
INSERT INTO player_stats VALUES ('ply2021', 'tm56', 23, 'Defender', 191, 82, 'R');

INSERT INTO players VALUES ('ply2022', 'Filippo', 'Missori', 'Italy',    '2004-03-24');
INSERT INTO player_stats VALUES ('ply2022', 'tm56', 58, 'Defender', 182, NULL, 'R');

INSERT INTO players VALUES ('ply2023', 'Chris', 'Smalling', 'England',    '1989-11-22');
INSERT INTO player_stats VALUES ('ply2023', 'tm56', 6, 'Defender', 194, 90, 'R');

INSERT INTO players VALUES ('ply2024', 'Leonardo', 'Spinazzola', 'Italy',    '1993-03-25');
INSERT INTO player_stats VALUES ('ply2024', 'tm56', 37, 'Defender', 186, 75, 'R');

INSERT INTO players VALUES ('ply2025', 'Matías', 'Viña', 'Uruguay',    '1997-11-09');
INSERT INTO player_stats VALUES ('ply2025', 'tm56', 17, 'Defender', 180, 73, 'L');

INSERT INTO players VALUES ('ply2026', 'Edoardo', 'Bove', 'Italy',    '2002-05-16');
INSERT INTO player_stats VALUES ('ply2026', 'tm56', 52, 'Midfielder', 176, 63, 'R');

INSERT INTO players VALUES ('ply2027', 'Ante', 'Ćorić', 'Croatia',    '1997-04-14');
INSERT INTO player_stats VALUES ('ply2027', 'tm56', NULL, 'Midfielder', 177, 75, '');

INSERT INTO players VALUES ('ply2028', 'Bryan', 'Cristante', 'Italy',    '1995-03-03');
INSERT INTO player_stats VALUES ('ply2028', 'tm56', 4, 'Midfielder', 187, 85, 'R');

INSERT INTO players VALUES ('ply2029', 'Ebrima', 'Darboe', 'Gambia',    '2001-06-06');
INSERT INTO player_stats VALUES ('ply2029', 'tm56', 55, 'Midfielder', 178, 69, 'R');

INSERT INTO players VALUES ('ply2030', 'Giacomo', 'Faticanti', 'Italy',    '2004-07-31');
INSERT INTO player_stats VALUES ('ply2030', 'tm56', 73, 'Midfielder', 175, NULL, 'R');

INSERT INTO players VALUES ('ply2031', 'Nemanja', 'Matić', 'Serbia',    '1988-08-01');
INSERT INTO player_stats VALUES ('ply2031', 'tm56', 8, 'Midfielder', 194, 85, 'L');

INSERT INTO players VALUES ('ply2032', 'Lorenzo', 'Pellegrini', 'Italy',    '1996-06-19');
INSERT INTO player_stats VALUES ('ply2032', 'tm56', 7, 'Midfielder', 186, 77, '');

INSERT INTO players VALUES ('ply2033', 'Filippo', 'Tripi', 'Italy',    '2002-01-06');
INSERT INTO player_stats VALUES ('ply2033', 'tm56', 65, 'Midfielder', 179, 69, 'R');

INSERT INTO players VALUES ('ply2034', 'Cristian', 'Volpato', 'Australia',    '2003-11-15');
INSERT INTO player_stats VALUES ('ply2034', 'tm56', 62, 'Midfielder', 187, 75, 'L');

INSERT INTO players VALUES ('ply2035', 'Nicola', 'Zalewski', 'Poland',    '2002-01-23');
INSERT INTO player_stats VALUES ('ply2035', 'tm56', 59, 'Midfielder', 175, 65, 'R');

INSERT INTO players VALUES ('ply2036', 'Andrea', 'Belotti', 'Italy',    '1993-12-20');
INSERT INTO player_stats VALUES ('ply2036', 'tm56', 11, 'Forward', 181, 84, 'R');

INSERT INTO players VALUES ('ply2037', 'Stephan El', 'Shaarawy', 'Italy',    '1992-10-27');
INSERT INTO player_stats VALUES ('ply2037', 'tm56', 92, 'Forward', 178, 72, 'R');

INSERT INTO players VALUES ('ply2038', 'Eldor', 'Shomurodov', 'Uzbekistan',    '1995-06-29');
INSERT INTO player_stats VALUES ('ply2038', 'tm56', 14, 'Forward', 190, 76, 'R');

INSERT INTO players VALUES ('ply2039', 'Nicolò', 'Zaniolo', 'Italy',    '1999-07-02');
INSERT INTO player_stats VALUES ('ply2039', 'tm56', 22, 'Forward', 190, 79, 'L');

INSERT INTO players VALUES ('ply2040', 'Nuno', 'Santos', 'Portugal',    '1973-04-20');
INSERT INTO player_stats VALUES ('ply2040', 'tm56', NULL, 'Goalkeeping', 185, 81, '');

INSERT INTO players VALUES ('ply2041', 'Igor', 'Akinfeev', 'Russia',    '1986-04-08');
INSERT INTO player_stats VALUES ('ply2041', 'tm57', 35, 'Goalkeeper', 186, 82, 'R');

INSERT INTO players VALUES ('ply2042', 'Danila', 'Bokov', 'Russia',    '2002-08-09');
INSERT INTO player_stats VALUES ('ply2042', 'tm57', 45, 'Goalkeeper', 185, 77, 'R');

INSERT INTO players VALUES ('ply2043', 'Vladislav', 'Torop', 'Russia',    '2003-11-07');
INSERT INTO player_stats VALUES ('ply2043', 'tm57', 49, 'Goalkeeper', 189, 84, 'L');

INSERT INTO players VALUES ('ply2044', 'Bruno', 'Fuchs', 'Brazil',    '1999-04-01');
INSERT INTO player_stats VALUES ('ply2044', 'tm57', 3, 'Defender', 190, 82, 'R');

INSERT INTO players VALUES ('ply2045', 'Igor', 'Diveev', 'Russia',    '1999-09-27');
INSERT INTO player_stats VALUES ('ply2045', 'tm57', 78, 'Defender', 193, 85, 'R');

INSERT INTO players VALUES ('ply2046', 'Milan', 'Gajić', 'Serbia',    '1996-01-28');
INSERT INTO player_stats VALUES ('ply2046', 'tm57', 22, 'Defender', 178, 74, '');

INSERT INTO players VALUES ('ply2047', 'Vadim', 'Karpov', 'Russia',    '2002-07-14');
INSERT INTO player_stats VALUES ('ply2047', 'tm57', 62, 'Defender', 190, 77, 'R');

INSERT INTO players VALUES ('ply2048', 'Matvey', 'Lukin', 'Russia',    '2004-04-27');
INSERT INTO player_stats VALUES ('ply2048', 'tm57', 90, 'Defender', 177, 72, 'L');

INSERT INTO players VALUES ('ply2049', '', 'Moisés', 'Brazil',    '1995-03-11');
INSERT INTO player_stats VALUES ('ply2049', 'tm57', 27, 'Defender', 183, 79, 'L');

INSERT INTO players VALUES ('ply2050', 'Kirill', 'Nababkin', 'Russia',    '1986-09-08');
INSERT INTO player_stats VALUES ('ply2050', 'tm57', 14, 'Defender', 184, 77, '');

INSERT INTO players VALUES ('ply2051', 'Georgiy', 'Shchennikov', 'Russia',    '1991-04-27');
INSERT INTO player_stats VALUES ('ply2051', 'tm57', 42, 'Defender', 178, 75, 'L');

INSERT INTO players VALUES ('ply2052', 'Willyan', 'Rocha', 'Brazil',    '1995-01-27');
INSERT INTO player_stats VALUES ('ply2052', 'tm57', 4, 'Defender', 193, 86, 'R');

INSERT INTO players VALUES ('ply2053', 'Jorge', 'Carrascal', 'Colombia',    '1998-05-25');
INSERT INTO player_stats VALUES ('ply2053', 'tm57', 8, 'Midfielder', 179, 70, 'R');

INSERT INTO players VALUES ('ply2054', 'Nikita', 'Ermakov', 'Russia',    '2003-01-19');
INSERT INTO player_stats VALUES ('ply2054', 'tm57', 72, 'Midfielder', 181, 70, '');

INSERT INTO players VALUES ('ply2055', 'Dmitri', 'Kaptilovikh', 'Russia',    '2003-02-22');
INSERT INTO player_stats VALUES ('ply2055', 'tm57', 48, 'Midfielder', 186, 80, 'R');

INSERT INTO players VALUES ('ply2056', 'Konstantin', 'Kuchaev', 'Russia',    '1998-03-18');
INSERT INTO player_stats VALUES ('ply2056', 'tm57', 20, 'Midfielder', 182, 74, 'R');

INSERT INTO players VALUES ('ply2057', 'Jesús', 'Medina', 'Paraguay',    '1997-04-30');
INSERT INTO player_stats VALUES ('ply2057', 'tm57', 28, 'Midfielder', 177, 70, 'L');

INSERT INTO players VALUES ('ply2058', 'Víctor', 'Méndez', 'Chile',    '1999-09-23');
INSERT INTO player_stats VALUES ('ply2058', 'tm57', 88, 'Midfielder', 170, 66, 'R');

INSERT INTO players VALUES ('ply2059', 'Maksim', 'Mukhin', 'Russia',    '2001-11-04');
INSERT INTO player_stats VALUES ('ply2059', 'tm57', 6, 'Midfielder', 181, 67, 'R');

INSERT INTO players VALUES ('ply2060', 'Ivan', 'Oblyakov', 'Russia',    '1998-07-05');
INSERT INTO player_stats VALUES ('ply2060', 'tm57', 10, 'Midfielder', 175, 74, 'L');

INSERT INTO players VALUES ('ply2061', 'Baktiyor', 'Zaynutdinov', 'Kazakhstan',    '1998-04-02');
INSERT INTO player_stats VALUES ('ply2061', 'tm57', 19, 'Midfielder', 183, 75, 'L');

INSERT INTO players VALUES ('ply2062', 'Saša', 'Zdjelar', 'Serbia',    '1995-03-20');
INSERT INTO player_stats VALUES ('ply2062', 'tm57', 5, 'Midfielder', 183, 75, 'R');

INSERT INTO players VALUES ('ply2063', 'Fedor', 'Chalov', 'Russia',    '1998-04-10');
INSERT INTO player_stats VALUES ('ply2063', 'tm57', 9, 'Forward', 183, 75, 'R');

INSERT INTO players VALUES ('ply2064', 'Adolfo', 'Gaich', 'Argentina',    '1999-02-26');
INSERT INTO player_stats VALUES ('ply2064', 'tm57', 21, 'Forward', 190, 82, 'R');

INSERT INTO players VALUES ('ply2065', 'Egor', 'Ushakov', 'Russia',    '2002-12-02');
INSERT INTO player_stats VALUES ('ply2065', 'tm57', 41, 'Forward', 176, 65, 'R');

INSERT INTO players VALUES ('ply2066', 'Vladislav', 'Yakovlev', 'Russia',    '2002-02-14');
INSERT INTO player_stats VALUES ('ply2066', 'tm57', 46, 'Forward', 185, 77, '');

INSERT INTO players VALUES ('ply2067', 'Anton', 'Zabolotny', 'Russia',    '1991-06-13');
INSERT INTO player_stats VALUES ('ply2067', 'tm57', 91, 'Forward', 191, 84, 'R');

INSERT INTO players VALUES ('ply2068', 'Ralf', 'Fährmann', 'Germany',    '1988-09-27');
INSERT INTO player_stats VALUES ('ply2068', 'tm58', 1, 'Goalkeeper', 197, 98, 'R');

INSERT INTO players VALUES ('ply2069', 'Justin', 'Heekeren', 'Germany',    '2000-11-27');
INSERT INTO player_stats VALUES ('ply2069', 'tm58', 28, 'Goalkeeper', 193, 86, '');

INSERT INTO players VALUES ('ply2070', 'Michael', 'Langer', 'Austria',    '1985-01-06');
INSERT INTO player_stats VALUES ('ply2070', 'tm58', 34, 'Goalkeeper', 195, 93, 'R');

INSERT INTO players VALUES ('ply2071', 'Alexander', 'Schwolow', 'Germany',    '1992-06-02');
INSERT INTO player_stats VALUES ('ply2071', 'tm58', 13, 'Goalkeeper', 190, 84, 'R');

INSERT INTO players VALUES ('ply2072', 'Cédric', 'Brunner', 'Switzerland',    '1994-02-17');
INSERT INTO player_stats VALUES ('ply2072', 'tm58', 27, 'Defender', 180, 75, 'R');

INSERT INTO players VALUES ('ply2073', 'Ibrahima', 'Cissé', 'France',    '2001-02-15');
INSERT INTO player_stats VALUES ('ply2073', 'tm58', 22, 'Defender', 196, 84, 'R');

INSERT INTO players VALUES ('ply2074', 'Leo', 'Greiml', 'Austria',    '2001-07-03');
INSERT INTO player_stats VALUES ('ply2074', 'tm58', 3, 'Defender', 186, 77, 'R');

INSERT INTO players VALUES ('ply2075', 'Marcin', 'Kamiński', 'Poland',    '1992-01-15');
INSERT INTO player_stats VALUES ('ply2075', 'tm58', 35, 'Defender', 192, 84, '');

INSERT INTO players VALUES ('ply2076', 'Henning', 'Matriciani', 'Germany',    '2000-03-14');
INSERT INTO player_stats VALUES ('ply2076', '', 12, 'Defender', 187, 76, 'R');

INSERT INTO players VALUES ('ply2077', 'Thomas', 'Ouwejan', 'Netherlands',    '1996-09-30');
INSERT INTO player_stats VALUES ('ply2077', 'tm58', 2, 'Defender', 183, 76, 'L');

INSERT INTO players VALUES ('ply2078', 'Sepp van den', 'Berg', 'Netherlands',    '2001-12-20');
INSERT INTO player_stats VALUES ('ply2078', 'tm58', 5, 'Defender', 189, 78, 'R');

INSERT INTO players VALUES ('ply2079', 'Maya', 'Yoshida', 'Japan',    '1988-08-24');
INSERT INTO player_stats VALUES ('ply2079', 'tm58', 4, 'Defender', 189, 79, 'R');

INSERT INTO players VALUES ('ply2080', 'Mehmet-Can', 'Aydın', 'Germany',    '2002-02-09');
INSERT INTO player_stats VALUES ('ply2080', 'tm58', 23, 'Midfielder', 179, 75, 'R');

INSERT INTO players VALUES ('ply2081', 'Kerim', 'Çalhanoğlu', 'Germany',    '2002-08-26');
INSERT INTO player_stats VALUES ('ply2081', '', 20, 'Midfielder', 183, 80, 'L');

INSERT INTO players VALUES ('ply2082', 'Dominick', 'Drexler', 'Germany',    '1990-05-26');
INSERT INTO player_stats VALUES ('ply2082', 'tm58', 24, 'Midfielder', 183, 71, 'R');

INSERT INTO players VALUES ('ply2083', 'Florian', 'Flick', 'Germany',    '2000-05-01');
INSERT INTO player_stats VALUES ('ply2083', 'tm58', 17, 'Midfielder', 188, 79, '');

INSERT INTO players VALUES ('ply2084', 'Alex', 'Král', 'Czech Republic',    '1998-05-19');
INSERT INTO player_stats VALUES ('ply2084', 'tm58', 30, 'Midfielder', 187, 80, 'R');

INSERT INTO players VALUES ('ply2085', 'Tom', 'Krauß', 'Germany',    '2001-06-22');
INSERT INTO player_stats VALUES ('ply2085', 'tm58', 6, 'Midfielder', 182, 72, 'R');

INSERT INTO players VALUES ('ply2086', 'Danny', 'Latza', 'Germany',    '1989-12-07');
INSERT INTO player_stats VALUES ('ply2086', 'tm58', 8, 'Midfielder', 179, 76, 'R');

INSERT INTO players VALUES ('ply2087', 'Tobias', 'Mohr', 'Germany',    '1995-08-24');
INSERT INTO player_stats VALUES ('ply2087', 'tm58', 29, 'Midfielder', 183, 78, 'L');

INSERT INTO players VALUES ('ply2088', 'Florent', 'Mollet', 'France',    '1991-11-19');
INSERT INTO player_stats VALUES ('ply2088', 'tm58', 20, 'Midfielder', 174, 67, 'R');

INSERT INTO players VALUES ('ply2089', 'Rodrigo', 'Zalazar', 'Uruguay',    '1999-08-12');
INSERT INTO player_stats VALUES ('ply2089', 'tm58', 10, 'Midfielder', 178, 72, 'R');

INSERT INTO players VALUES ('ply2090', 'Marius', 'Bülter', 'Germany',    '1993-03-29');
INSERT INTO player_stats VALUES ('ply2090', 'tm58', 11, 'Forward', 190, 85, 'R');

INSERT INTO players VALUES ('ply2091', 'Kenan', 'Karaman', 'Turkey',    '1994-03-05');
INSERT INTO player_stats VALUES ('ply2091', 'tm58', 19, 'Forward', 189, 83, 'R');

INSERT INTO players VALUES ('ply2092', 'Jordan', 'Larsson', 'Sweden',    '1997-06-20');
INSERT INTO player_stats VALUES ('ply2092', 'tm58', 7, 'Forward', 175, 69, 'L');

INSERT INTO players VALUES ('ply2093', 'Sebastian', 'Polter', 'Germany',    '1991-04-01');
INSERT INTO player_stats VALUES ('ply2093', 'tm58', 40, 'Forward', 192, 94, 'R');

INSERT INTO players VALUES ('ply2094', 'Sidi', 'Sané', 'Germany',    '2003-04-21');
INSERT INTO player_stats VALUES ('ply2094', '', 21, 'Forward', 187, NULL, 'R');

INSERT INTO players VALUES ('ply2095', 'Simon', 'Terodde', 'Germany',    '1988-03-02');
INSERT INTO player_stats VALUES ('ply2095', 'tm58', 9, 'Forward', 192, 87, 'R');

INSERT INTO players VALUES ('ply2096', 'Simon', 'Henzler', 'Germany',    '1976-12-01');
INSERT INTO player_stats VALUES ('ply2096', 'tm58', NULL, 'Goalkeeping', 188, 83, 'R');

INSERT INTO players VALUES ('ply2097', 'Jörn', 'Menger', 'Germany',    '1978-05-09');
INSERT INTO player_stats VALUES ('ply2097', 'tm58', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply2098', 'Alexander', 'Storck', 'Germany',    '1988-08-30');
INSERT INTO player_stats VALUES ('ply2098', 'tm58', NULL, 'Athletic', NULL, NULL, '');

INSERT INTO players VALUES ('ply2099', 'David', 'Gröger', 'Germany',    '1980-08-13');
INSERT INTO player_stats VALUES ('ply2099', 'tm58', NULL, 'Rehab', NULL, NULL, '');

INSERT INTO players VALUES ('ply2100', 'Lars', 'Gerling', 'Germany',    '1983-01-09');
INSERT INTO player_stats VALUES ('ply2100', 'tm58', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply2101', 'Walter', 'Benítez', 'Argentina',    '1993-01-19');
INSERT INTO player_stats VALUES ('ply2101', 'tm59', 1, 'Goalkeeper', 191, 91, 'R');

INSERT INTO players VALUES ('ply2102', 'Joël', 'Drommel', 'Netherlands',    '1996-11-16');
INSERT INTO player_stats VALUES ('ply2102', 'tm59', 16, 'Goalkeeper', 192, 89, 'R');

INSERT INTO players VALUES ('ply2103', 'Kjell', 'Peersman', 'Belgium',    '2004-05-21');
INSERT INTO player_stats VALUES ('ply2103', 'tm59', 41, 'Goalkeeper', 194, NULL, '');

INSERT INTO players VALUES ('ply2104', 'Boy', 'Waterman', 'Netherlands',    '1984-01-24');
INSERT INTO player_stats VALUES ('ply2104', 'tm59', 24, 'Goalkeeper', 188, 83, 'R');

INSERT INTO players VALUES ('ply2105', 'Olivier', 'Boscagli', 'France',    '1997-11-18');
INSERT INTO player_stats VALUES ('ply2105', 'tm59', 18, 'Defender', 181, 68, 'L');

INSERT INTO players VALUES ('ply2106', 'Jarrad', 'Branthwaite', 'England',    '2002-06-27');
INSERT INTO player_stats VALUES ('ply2106', 'tm59', 22, 'Defender', 195, 85, 'L');

INSERT INTO players VALUES ('ply2107', 'Ki-Jana', 'Hoever', 'Netherlands',    '2002-01-18');
INSERT INTO player_stats VALUES ('ply2107', 'tm59', 2, 'Defender', 183, 72, 'R');

INSERT INTO players VALUES ('ply2108', 'Mauro', 'Júnior', 'Brazil',    '1999-05-06');
INSERT INTO player_stats VALUES ('ply2108', 'tm59', 17, 'Defender', 171, 62, 'L');

INSERT INTO players VALUES ('ply2109', 'Philipp', 'Max', 'Germany',    '1993-09-30');
INSERT INTO player_stats VALUES ('ply2109', 'tm59', 31, 'Defender', 177, 75, 'L');

INSERT INTO players VALUES ('ply2110', 'Phillipp', 'Mwene', 'Austria',    '1994-01-29');
INSERT INTO player_stats VALUES ('ply2110', 'tm59', 29, 'Defender', 170, 68, 'R');

INSERT INTO players VALUES ('ply2111', 'Armando', 'Obispo', 'Netherlands',    '1999-03-05');
INSERT INTO player_stats VALUES ('ply2111', 'tm59', 4, 'Defender', 185, 72, 'L');

INSERT INTO players VALUES ('ply2112', 'Fredrik', 'Oppegård', 'Norway',    '2002-08-07');
INSERT INTO player_stats VALUES ('ply2112', 'tm59', 35, 'Defender', 175, NULL, 'L');

INSERT INTO players VALUES ('ply2113', 'Jordan', 'Teze', 'Netherlands',    '1999-09-30');
INSERT INTO player_stats VALUES ('ply2113', 'tm59', 3, 'Defender', 183, 68, 'R');

INSERT INTO players VALUES ('ply2114', 'Erick', 'Gutiérrez', 'Mexico',    '1995-06-15');
INSERT INTO player_stats VALUES ('ply2114', 'tm59', 15, 'Midfielder', 177, 69, 'L');

INSERT INTO players VALUES ('ply2115', 'Richie', 'Ledezma', 'USA',    '2000-09-06');
INSERT INTO player_stats VALUES ('ply2115', 'tm59', 37, 'Midfielder', 168, 64, 'R');

INSERT INTO players VALUES ('ply2116', 'Ibrahim', 'Sangaré', 'Ivory Coast',    '1997-12-02');
INSERT INTO player_stats VALUES ('ply2116', 'tm59', 6, 'Midfielder', 191, 77, 'R');

INSERT INTO players VALUES ('ply2117', 'Xavi', 'Simons', 'Netherlands',    '2003-04-21');
INSERT INTO player_stats VALUES ('ply2117', 'tm59', 7, 'Midfielder', 168, 58, 'R');

INSERT INTO players VALUES ('ply2118', 'Guus', 'Til', 'Netherlands',    '1997-12-22');
INSERT INTO player_stats VALUES ('ply2118', 'tm59', 20, 'Midfielder', 186, 79, 'R');

INSERT INTO players VALUES ('ply2119', 'Marco van', 'Ginkel', 'Netherlands',    '1992-12-01');
INSERT INTO player_stats VALUES ('ply2119', 'tm59', 8, 'Midfielder', 186, 82, 'R');

INSERT INTO players VALUES ('ply2120', 'Joey', 'Veerman', 'Netherlands',    '1998-11-19');
INSERT INTO player_stats VALUES ('ply2120', 'tm59', 23, 'Midfielder', 185, 81, 'R');

INSERT INTO players VALUES ('ply2121', 'Johan', 'Bakayoko', 'Belgium',    '2003-04-20');
INSERT INTO player_stats VALUES ('ply2121', 'tm59', 27, 'Forward', NULL, NULL, 'L');

INSERT INTO players VALUES ('ply2122', 'Anwar El', 'Ghazi', 'Netherlands',    '1995-05-03');
INSERT INTO player_stats VALUES ('ply2122', 'tm59', 21, 'Forward', 189, 87, 'R');

INSERT INTO players VALUES ('ply2123', 'Cody', 'Gakpo', 'Netherlands',    '1999-05-07');
INSERT INTO player_stats VALUES ('ply2123', 'tm59', 11, 'Forward', 187, 76, 'R');

INSERT INTO players VALUES ('ply2124', 'Ismael', 'Saibari', 'Morocco',    '2001-01-28');
INSERT INTO player_stats VALUES ('ply2124', 'tm59', 28, 'Forward', 185, NULL, 'R');

INSERT INTO players VALUES ('ply2125', 'Noni', 'Madueke', 'England',    '2002-03-10');
INSERT INTO player_stats VALUES ('ply2125', 'tm59', 10, 'Forward', 182, 65, 'L');

INSERT INTO players VALUES ('ply2126', '', 'Sávio', 'Brazil',    '2004-04-10');
INSERT INTO player_stats VALUES ('ply2126', 'tm59', 33, 'Forward', 176, 66, 'L');

INSERT INTO players VALUES ('ply2127', 'Yorbe', 'Vertessen', 'Belgium',    '2001-01-08');
INSERT INTO player_stats VALUES ('ply2127', 'tm59', 32, 'Forward', 176, NULL, 'R');

INSERT INTO players VALUES ('ply2128', 'Abe', 'Knoop', 'Netherlands',    '1963-08-28');
INSERT INTO player_stats VALUES ('ply2128', 'tm59', NULL, 'Goalkeeping', NULL, NULL, '');

INSERT INTO players VALUES ('ply2129', 'Martin', 'Jedlička', 'Czech Republic',    '1998-01-24');
INSERT INTO player_stats VALUES ('ply2129', 'tm60', 16, 'Republic', 187, 78, 'R');

INSERT INTO players VALUES ('ply2130', 'Jindřich', 'Staněk', 'Czech Republic',    '1996-04-27');
INSERT INTO player_stats VALUES ('ply2130', 'tm60', 36, 'Republic', 191, 93, 'R');

INSERT INTO players VALUES ('ply2131', 'Marián', 'Tvrdoň', 'Slovakia',    '1994-08-18');
INSERT INTO player_stats VALUES ('ply2131', 'tm60', 13, 'Republic', 194, 86, 'R');

INSERT INTO players VALUES ('ply2132', 'Milan', 'Havel', 'Czech Republic',    '1994-08-07');
INSERT INTO player_stats VALUES ('ply2132', 'tm60', 24, 'Republic', 183, 76, 'R');

INSERT INTO players VALUES ('ply2133', 'Lukáš', 'Hejda', 'Czech Republic',    '1990-03-09');
INSERT INTO player_stats VALUES ('ply2133', 'tm60', 2, 'Republic', 189, 85, 'R');

INSERT INTO players VALUES ('ply2134', 'Libor', 'Holík', 'Czech Republic',    '1998-05-12');
INSERT INTO player_stats VALUES ('ply2134', 'tm60', 44, 'Republic', 174, 72, 'R');

INSERT INTO players VALUES ('ply2135', 'Václav', 'Jemelka', 'Czech Republic',    '1995-06-23');
INSERT INTO player_stats VALUES ('ply2135', 'tm60', 21, 'Republic', 186, 77, 'L');

INSERT INTO players VALUES ('ply2136', 'Filip', 'Kaša', 'Czech Republic',    '1994-01-01');
INSERT INTO player_stats VALUES ('ply2136', 'tm60', 35, 'Republic', 190, 84, 'R');

INSERT INTO players VALUES ('ply2137', 'Luděk', 'Pernica', 'Czech Republic',    '1990-06-16');
INSERT INTO player_stats VALUES ('ply2137', 'tm60', 4, 'Republic', 187, 90, 'R');

INSERT INTO players VALUES ('ply2138', 'Radim', 'Řezník', 'Czech Republic',    '1989-01-20');
INSERT INTO player_stats VALUES ('ply2138', 'tm60', 14, 'Republic', 183, 82, 'R');

INSERT INTO players VALUES ('ply2139', 'Mohamed', 'Tijani', 'Benin',    '1997-07-10');
INSERT INTO player_stats VALUES ('ply2139', 'tm60', 3, 'Republic', 188, 78, 'L');

INSERT INTO players VALUES ('ply2140', 'Adam', 'Alexandr', 'Czech Republic',    '2000-05-03');
INSERT INTO player_stats VALUES ('ply2140', 'tm60', NULL, 'Republic', 178, 72, '');

INSERT INTO players VALUES ('ply2141', 'Marko', 'Alvir', 'Croatia',    '1994-04-19');
INSERT INTO player_stats VALUES ('ply2141', 'tm60', NULL, 'Republic', 181, 78, 'R');

INSERT INTO players VALUES ('ply2142', 'Pavel', 'Bucha', 'Czech Republic',    '1998-03-11');
INSERT INTO player_stats VALUES ('ply2142', 'tm60', 20, 'Republic', 177, 73, 'R');

INSERT INTO players VALUES ('ply2143', 'Aleš', 'Čermák', 'Czech Republic',    '1994-10-01');
INSERT INTO player_stats VALUES ('ply2143', 'tm60', 25, 'Republic', 181, 74, 'R');

INSERT INTO players VALUES ('ply2144', 'Erik', 'Jirka', 'Slovakia',    '1997-09-19');
INSERT INTO player_stats VALUES ('ply2144', 'tm60', 77, 'Republic', 184, 73, 'R');

INSERT INTO players VALUES ('ply2145', 'Lukáš', 'Kalvach', 'Czech Republic',    '1995-07-19');
INSERT INTO player_stats VALUES ('ply2145', 'tm60', 23, 'Republic', 183, 77, 'R');

INSERT INTO players VALUES ('ply2146', 'Jan', 'Kopic', 'Czech Republic',    '1990-06-04');
INSERT INTO player_stats VALUES ('ply2146', 'tm60', 10, 'Republic', 180, 81, 'R');

INSERT INTO players VALUES ('ply2147', 'Dominik', 'Kříž', 'Czech Republic',    '1999-09-25');
INSERT INTO player_stats VALUES ('ply2147', 'tm60', NULL, 'Republic', 177, 68, '');

INSERT INTO players VALUES ('ply2148', 'Modou', 'N''Diaye', 'Senegal',    '1996-10-29');
INSERT INTO player_stats VALUES ('ply2148', 'tm60', 99, 'Republic', 184, 71, 'L');

INSERT INTO players VALUES ('ply2149', 'Václav', 'Pilař', 'Czech Republic',    '1988-10-13');
INSERT INTO player_stats VALUES ('ply2149', 'tm60', 6, 'Republic', 171, 71, '');

INSERT INTO players VALUES ('ply2150', 'Adam', 'Vlkanova', 'Czech Republic',    '1994-09-04');
INSERT INTO player_stats VALUES ('ply2150', 'tm60', 88, 'Republic', 169, 60, '');

INSERT INTO players VALUES ('ply2151', 'Fortune', 'Bassey', 'Nigeria',    '1998-10-06');
INSERT INTO player_stats VALUES ('ply2151', 'tm60', 90, 'Republic', 186, 77, 'R');

INSERT INTO players VALUES ('ply2152', 'Tomáš', 'Chorý', 'Czech Republic',    '1995-01-26');
INSERT INTO player_stats VALUES ('ply2152', 'tm60', 15, 'Republic', 199, 101, 'R');

INSERT INTO players VALUES ('ply2153', 'René', 'Dedič', 'Slovakia',    '1993-08-07');
INSERT INTO player_stats VALUES ('ply2153', 'tm60', 33, 'Republic', 193, 87, '');

INSERT INTO players VALUES ('ply2154', 'Jan', 'Kliment', 'Czech Republic',    '1993-09-01');
INSERT INTO player_stats VALUES ('ply2154', 'tm60', 9, 'Republic', 185, 76, 'R');

INSERT INTO players VALUES ('ply2155', 'Jhon', 'Mosquera', 'Colombia',    '1990-05-08');
INSERT INTO player_stats VALUES ('ply2155', 'tm60', 18, 'Republic', 186, 78, 'L');

INSERT INTO players VALUES ('ply2156', 'Petr', 'Pejša', 'Czech Republic',    '1997-08-13');
INSERT INTO player_stats VALUES ('ply2156', 'tm60', NULL, 'Republic', NULL, NULL, '');

INSERT INTO players VALUES ('ply2157', 'Jan', 'Sýkora', 'Czech Republic',    '1993-12-29');
INSERT INTO player_stats VALUES ('ply2157', 'tm60', 7, 'Republic', 171, 64, 'L');

INSERT INTO players VALUES ('ply2158', 'Michal', 'Bílek', 'Czech Republic',    '1965-04-13');
INSERT INTO player_stats VALUES ('ply2158', 'tm60', NULL, 'Republic', 177, 70, '');

INSERT INTO players VALUES ('ply2159', 'Samuel', 'Grandsir', 'France',    '1996-08-14');
INSERT INTO player_stats VALUES ('ply2159', '', 11, 'Forward', 170, 65, 'R');

INSERT INTO players VALUES ('ply2160', 'Moussa', 'Sylla', 'France',    '1999-11-25');
INSERT INTO player_stats VALUES ('ply2160', '', 29, 'Forward', 181, 70, 'R');

INSERT INTO players VALUES ('ply2161', '', 'Wesley', 'Brazil',    '1996-11-24');
INSERT INTO player_stats VALUES ('ply2161', '', 7, 'Forward', 191, 93, 'R');

INSERT INTO players VALUES ('ply2162', 'Kaveh', 'Rezaei', 'Iran',    '1992-04-05');
INSERT INTO player_stats VALUES ('ply2162', '', NULL, 'Forward', 185, 74, 'R');

INSERT INTO players VALUES ('ply2163', 'Filipe', 'Luís', 'Brazil',    '1985-08-09');
INSERT INTO player_stats VALUES ('ply2163', '', 16, 'Defender', 182, 74, 'L');

INSERT INTO players VALUES ('ply2164', 'Pablo', 'Rosario', 'Netherlands',    '1997-01-07');
INSERT INTO player_stats VALUES ('ply2164', '', 8, 'Midfielder', 179, 73, 'R');

INSERT INTO players VALUES ('ply2165', 'Radja', 'Nainggolan', 'Belgium',    '1988-05-04');
INSERT INTO player_stats VALUES ('ply2165', '', 4, 'Midfielder', 176, 65, 'R');

INSERT INTO players VALUES ('ply2166', 'Gastón', 'Pereiro', 'Uruguay',    '1995-06-11');
INSERT INTO player_stats VALUES ('ply2166', '', 20, 'Midfielder', 188, 76, 'L');

INSERT INTO players VALUES ('ply2167', 'Xherdan', 'Shaqiri', 'Switzerland',    '1991-10-10');
INSERT INTO player_stats VALUES ('ply2167', '', 10, 'Forward', 169, 72, 'L');

INSERT INTO players VALUES ('ply2168', 'Milan', 'Pavkov', 'Serbia',    '1994-02-09');
INSERT INTO player_stats VALUES ('ply2168', '', 23, 'Arabia', 193, 78, 'R');

INSERT INTO players VALUES ('ply2169', 'Marek', 'Hamšík', 'Slovakia',    '1987-07-27');
INSERT INTO player_stats VALUES ('ply2169', '', 17, 'Midfielder', 183, 79, '');

INSERT INTO players VALUES ('ply2170', 'Emre', 'Akbaba', 'Turkey',    '1992-10-04');
INSERT INTO player_stats VALUES ('ply2170', '', NULL, 'Midfielder', 180, 73, 'L');

INSERT INTO players VALUES ('ply2171', 'Eren', 'Derdiyok', 'Switzerland',    '1988-06-12');
INSERT INTO player_stats VALUES ('ply2171', '', 9, 'Forward', 191, 83, 'R');

INSERT INTO players VALUES ('ply2172', 'Yacine', 'Brahimi', 'Algeria',    '1990-02-08');
INSERT INTO player_stats VALUES ('ply2172', '', 8, 'Forward', 175, 68, 'R');

INSERT INTO players VALUES ('ply2173', 'Jefferson', 'Farfán', 'Peru',    '1984-10-26');
INSERT INTO player_stats VALUES ('ply2173', '', 10, 'Forward', 178, 84, 'R');

INSERT INTO players VALUES ('ply2174', 'Guido', 'Burgstaller', 'Austria',    '1989-04-29');
INSERT INTO player_stats VALUES ('ply2174', '', 9, 'Forward', 187, 80, '');

INSERT INTO players VALUES ('ply2175', 'Mark', 'Uth', 'Germany',    '1991-08-24');
INSERT INTO player_stats VALUES ('ply2175', '', 13, 'Forward', 185, 72, 'L');

INSERT INTO players VALUES ('ply2176', 'Ryan', 'Donk', 'Suriname',    '1986-03-30');
INSERT INTO player_stats VALUES ('ply2176', '', 4, 'Defender', 192, 89, 'R');

INSERT INTO players VALUES ('ply2177', 'Fedor', 'Smolov', 'Russia',    '1990-02-09');
INSERT INTO player_stats VALUES ('ply2177', '', 10, 'Forward', 186, 80, 'R');

INSERT INTO players VALUES ('ply2178', 'Nabil', 'Bentaleb', 'Algeria',    '1994-11-24');
INSERT INTO player_stats VALUES ('ply2178', '', 6, 'Midfielder', 187, 78, 'L');

INSERT INTO players VALUES ('ply2179', 'Alessandro', 'Schöpf', 'Austria',    '1994-02-07');
INSERT INTO player_stats VALUES ('ply2179', '', 18, 'Midfielder', 178, 74, 'R');

INSERT INTO players VALUES ('ply2180', '', 'Hernâni', 'Portugal',    '1991-08-20');
INSERT INTO player_stats VALUES ('ply2180', '', 27, 'Forward', 180, 70, 'L');

INSERT INTO players VALUES ('ply2181', 'Carel', 'Eiting', 'Netherlands',    '1998-02-11');
INSERT INTO player_stats VALUES ('ply2181', '', 8, 'Midfielder', 178, 72, 'L');

INSERT INTO players VALUES ('ply2182', 'Viktor', 'Klonaridis', 'Belgium',    '1992-07-28');
INSERT INTO player_stats VALUES ('ply2182', '', 22, 'Midfielder', 178, 70, 'R');

INSERT INTO players VALUES ('ply2183', 'Niklas', 'Hult', 'Sweden',    '1990-02-13');
INSERT INTO player_stats VALUES ('ply2183', '', 23, 'Defender', 173, 63, 'L');

INSERT INTO players VALUES ('ply2184', 'Marios', 'Oikonomou', 'Greece',    '1992-10-06');
INSERT INTO player_stats VALUES ('ply2184', '', 26, 'Defender', 189, 85, 'L');

INSERT INTO players VALUES ('ply2185', 'Alfa', 'Semedo', 'Guinea-Bissau',    '1997-08-30');
INSERT INTO player_stats VALUES ('ply2185', '', 30, 'Arabia', 190, 82, 'R');

INSERT INTO players VALUES ('ply2186', '', 'Rafinha', 'Brazil',    '1985-09-07');
INSERT INTO player_stats VALUES ('ply2186', '', 13, 'Defender', 172, 66, 'R');

INSERT INTO players VALUES ('ply2187', 'Eduardo', 'Salvio', 'Argentina',    '1990-07-13');
INSERT INTO player_stats VALUES ('ply2187', '', 10, 'Forward', 173, 71, 'R');

INSERT INTO players VALUES ('ply2188', 'Franck', 'Ribéry', 'France',    '1983-04-07');
INSERT INTO player_stats VALUES ('ply2188', '', 7, 'Forward', 170, 62, 'R');

INSERT INTO players VALUES ('ply2189', 'Leonardo', 'Bittencourt', 'Germany',    '1993-12-19');
INSERT INTO player_stats VALUES ('ply2189', '', 10, 'Midfielder', 171, 63, 'R');

INSERT INTO players VALUES ('ply2190', '', 'Maycon', 'Brazil',    '1997-07-15');
INSERT INTO player_stats VALUES ('ply2190', '', 5, 'Midfielder', 173, 71, 'L');

INSERT INTO players VALUES ('ply2191', 'Nabil', 'Fekir', 'France',    '1993-07-18');
INSERT INTO player_stats VALUES ('ply2191', '', 8, 'Midfielder', 173, 72, 'L');

INSERT INTO players VALUES ('ply2192', 'Ishak', 'Belfodil', 'Algeria',    '1992-01-12');
INSERT INTO player_stats VALUES ('ply2192', '', 99, 'Forward', 192, 86, 'R');

INSERT INTO players VALUES ('ply2193', 'David', 'Silva', 'Spain',    '1986-01-08');
INSERT INTO player_stats VALUES ('ply2193', '', 21, 'Midfielder', 170, 67, 'L');

INSERT INTO players VALUES ('ply2194', 'Kenny', 'Tete', 'Netherlands',    '1995-10-09');
INSERT INTO player_stats VALUES ('ply2194', '', 2, 'Defender', 180, 71, 'R');

INSERT INTO players VALUES ('ply2195', '', 'Joelinton', 'Brazil',    '1996-08-14');
INSERT INTO player_stats VALUES ('ply2195', '', 7, 'Forward', 186, 81, 'R');

INSERT INTO players VALUES ('ply2196', '', 'Taison', 'Brazil',    '1988-01-13');
INSERT INTO player_stats VALUES ('ply2196', '', 7, 'Forward', 172, 64, 'R');

INSERT INTO players VALUES ('ply2197', 'Gareth', 'Bale', 'Wales',    '1989-07-16');
INSERT INTO player_stats VALUES ('ply2197', '', 11, 'Forward', 185, 82, 'L');

INSERT INTO players VALUES ('ply2198', 'Michael', 'Krmenčík', 'Czech Republic',    '1993-03-15');
INSERT INTO player_stats VALUES ('ply2198', '', 27, 'Forward', 191, 84, 'R');

INSERT INTO players VALUES ('ply2199', 'Nikola', 'Vlašić', 'Croatia',    '1997-10-04');
INSERT INTO player_stats VALUES ('ply2199', '', 16, 'Midfielder', 178, 80, 'R');

INSERT INTO players VALUES ('ply2200', 'Kostas', 'Manolas', 'Greece',    '1991-06-14');
INSERT INTO player_stats VALUES ('ply2200', '', NULL, 'Emirates', 189, 83, 'R');

INSERT INTO players VALUES ('ply2201', 'Arnór', 'Sigurðsson', 'Iceland',    '1999-05-15');
INSERT INTO player_stats VALUES ('ply2201', '', 8, 'Midfielder', 177, 75, 'R');

INSERT INTO players VALUES ('ply2202', 'Roman', 'Procházka', 'Slovakia',    '1989-03-14');
INSERT INTO player_stats VALUES ('ply2202', '', 15, 'Midfielder', 183, 76, 'R');

INSERT INTO players VALUES ('ply2203', 'Jan', 'Kovařík', 'Czech Republic',    '1988-06-19');
INSERT INTO player_stats VALUES ('ply2203', '', 12, 'Republic', 183, 80, 'L');

INSERT INTO players VALUES ('ply2204', 'Guillaume', 'Hoarau', 'France',    '1984-03-05');
INSERT INTO player_stats VALUES ('ply2204', '', NULL, 'Forward', 192, 85, 'R');

INSERT INTO players VALUES ('ply2205', 'Djibril', 'Sow', 'Switzerland',    '1997-02-06');
INSERT INTO player_stats VALUES ('ply2205', '', 8, 'Midfielder', 184, 77, 'R');

INSERT INTO players VALUES ('ply2206', 'Santi', 'Mina', 'Spain',    '1995-12-07');
INSERT INTO player_stats VALUES ('ply2206', '', 77, 'Arabia', 181, 77, 'R');

INSERT INTO players VALUES ('ply2207', 'Roger', 'Assalé', 'Ivory Coast',    '1993-11-13');
INSERT INTO player_stats VALUES ('ply2207', '', 77, 'Forward', 167, 65, 'R');

INSERT INTO players VALUES ('ply2208', 'Marouane', 'Fellaini', 'Belgium',    '1987-11-22');
INSERT INTO player_stats VALUES ('ply2208', '', 25, 'Midfielder', 194, 85, 'R');

INSERT INTO players VALUES ('ply2209', 'Ashley', 'Young', 'England',    '1985-07-09');
INSERT INTO player_stats VALUES ('ply2209', '', 18, 'Defender', 175, 65, '');

INSERT INTO players VALUES ('ply2210', '', 'Adrián', 'Spain',    '1988-01-08');
INSERT INTO player_stats VALUES ('ply2210', '', 7, 'Forward', 183, 73, 'R');

INSERT INTO players VALUES ('ply2211', 'Tiquinho', 'Soares', 'Brazil',    '1991-01-17');
INSERT INTO player_stats VALUES ('ply2211', '', NULL, 'Forward', 187, 89, 'R');

INSERT INTO players VALUES ('ply2212', 'Jan', 'Vertonghen', 'Belgium',    '1987-04-24');
INSERT INTO player_stats VALUES ('ply2212', '', 14, 'Defender', 189, 86, 'L');

INSERT INTO players VALUES ('ply2213', 'Moussa', 'Sissoko', 'France',    '1989-08-16');
INSERT INTO player_stats VALUES ('ply2213', '', 17, 'Midfielder', 187, 83, 'R');

INSERT INTO players VALUES ('ply2214', 'Lasse', 'Schöne', 'Denmark',    '1986-05-27');
INSERT INTO player_stats VALUES ('ply2214', '', 20, 'Midfielder', 178, 75, 'R');

INSERT INTO players VALUES ('ply2215', 'Vid', 'Belec', 'Slovenia',    '1990-06-06');
INSERT INTO player_stats VALUES ('ply2215', 'tm61', 27, 'Goalkeeper', 193, 84, 'R');

INSERT INTO players VALUES ('ply2216', 'Andreas', 'Christodoulou', 'Cyprus',    '1997-03-26');
INSERT INTO player_stats VALUES ('ply2216', 'tm61', 22, 'Goalkeeper', 188, NULL, 'R');

INSERT INTO players VALUES ('ply2217', 'Stefanos', 'Kittos', 'Cyprus',    '2002-02-23');
INSERT INTO player_stats VALUES ('ply2217', 'tm61', 88, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply2218', 'Apostolos', 'Tsilingiris', 'Greece',    '2000-09-06');
INSERT INTO player_stats VALUES ('ply2218', 'tm61', 75, 'Goalkeeper', 190, NULL, '');

INSERT INTO players VALUES ('ply2219', 'Ángel', 'Crespo', 'Spain',    '1987-02-09');
INSERT INTO player_stats VALUES ('ply2219', 'tm61', 15, 'Defender', 183, 72, 'R');

INSERT INTO players VALUES ('ply2220', 'Issam', 'Chebake', 'Morocco',    '1989-10-12');
INSERT INTO player_stats VALUES ('ply2220', 'tm61', 14, 'Defender', 175, 73, 'R');

INSERT INTO players VALUES ('ply2221', 'Daniel', 'Dumbrăvanu', 'Moldova',    '2001-07-22');
INSERT INTO player_stats VALUES ('ply2221', 'tm61', NULL, 'Defender', 192, 72, 'L');

INSERT INTO players VALUES ('ply2222', 'Franco', 'Ferrari', 'Argentina',    '1992-05-09');
INSERT INTO player_stats VALUES ('ply2222', 'tm61', 3, 'Defender', 167, 67, 'L');

INSERT INTO players VALUES ('ply2223', 'Konstantinos', 'Giannakou', 'Cyprus',    '2005-04-25');
INSERT INTO player_stats VALUES ('ply2223', 'tm61', 69, 'Defender', NULL, NULL, '');

INSERT INTO players VALUES ('ply2224', 'Andreas', 'Karo', 'Cyprus',    '1996-09-09');
INSERT INTO player_stats VALUES ('ply2224', 'tm61', 2, 'Defender', 190, 80, 'R');

INSERT INTO players VALUES ('ply2225', 'Mateo', 'Sušić', 'Bosnia-Herzegovina',    '1990-11-18');
INSERT INTO player_stats VALUES ('ply2225', 'tm61', 16, 'Defender', 181, 75, '');

INSERT INTO players VALUES ('ply2226', 'Christos', 'Wheeler', 'Cyprus',    '1997-06-29');
INSERT INTO player_stats VALUES ('ply2226', 'tm61', 42, 'Defender', 171, NULL, 'L');

INSERT INTO players VALUES ('ply2227', 'Danny', 'Blum', 'Germany',    '1991-01-07');
INSERT INTO player_stats VALUES ('ply2227', 'tm61', 17, 'Midfielder', 183, 83, 'L');

INSERT INTO players VALUES ('ply2228', 'Carlos', 'Eduardo', 'Brazil',    '2000-01-23');
INSERT INTO player_stats VALUES ('ply2228', 'tm61', NULL, 'Midfielder', 179, NULL, 'R');

INSERT INTO players VALUES ('ply2229', 'Stavros', 'Charalambous', 'Cyprus',    '2005-02-23');
INSERT INTO player_stats VALUES ('ply2229', 'tm61', 79, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply2230', '', 'Dálcio', 'Portugal',    '1996-05-22');
INSERT INTO player_stats VALUES ('ply2230', 'tm61', 20, 'Midfielder', 180, 79, 'L');

INSERT INTO players VALUES ('ply2231', 'Murtaz', 'Daushvili', 'Georgia',    '1989-05-01');
INSERT INTO player_stats VALUES ('ply2231', 'tm61', 8, 'Midfielder', 178, 77, 'R');

INSERT INTO players VALUES ('ply2232', 'Giorgos', 'Efrem', 'Cyprus',    '1989-07-05');
INSERT INTO player_stats VALUES ('ply2232', 'tm61', 7, 'Midfielder', 171, 65, '');

INSERT INTO players VALUES ('ply2233', 'Stavros', 'Gavriel', 'Cyprus',    '2002-01-29');
INSERT INTO player_stats VALUES ('ply2233', 'tm61', 25, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply2234', 'Georgi', 'Kostadinov', 'Bulgaria',    '1990-09-07');
INSERT INTO player_stats VALUES ('ply2234', 'tm61', 70, 'Midfielder', 184, 75, '');

INSERT INTO players VALUES ('ply2235', 'Amel', 'Mujanić', 'Sweden',    '2001-04-01');
INSERT INTO player_stats VALUES ('ply2235', 'tm61', 23, 'Midfielder', 180, 74, 'R');

INSERT INTO players VALUES ('ply2236', 'Paris', 'Polykarpou', 'Cyprus',    '2000-09-23');
INSERT INTO player_stats VALUES ('ply2236', 'tm61', 35, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply2237', 'Rafael', 'Moreira', 'Portugal',    '2002-04-05');
INSERT INTO player_stats VALUES ('ply2237', 'tm61', 90, 'Midfielder', 177, 64, 'R');

INSERT INTO players VALUES ('ply2238', 'Kingsley', 'Sarfo', 'Ghana',    '1995-02-13');
INSERT INTO player_stats VALUES ('ply2238', 'tm61', 44, 'Midfielder', 166, 66, 'L');

INSERT INTO players VALUES ('ply2239', 'Giannis', 'Satsias', 'Cyprus',    '2002-12-28');
INSERT INTO player_stats VALUES ('ply2239', 'tm61', 18, 'Midfielder', 181, NULL, 'R');

INSERT INTO players VALUES ('ply2240', 'Lucas', 'Villafáñez', 'Argentina',    '1991-10-04');
INSERT INTO player_stats VALUES ('ply2240', 'tm61', 10, 'Midfielder', 171, 65, 'R');

INSERT INTO players VALUES ('ply2241', 'Anastasios', 'Donis', 'Greece',    '1996-08-29');
INSERT INTO player_stats VALUES ('ply2241', 'tm61', NULL, 'Forward', 178, 76, 'R');

INSERT INTO players VALUES ('ply2242', 'Marios', 'Elia', 'Cyprus',    '1996-05-19');
INSERT INTO player_stats VALUES ('ply2242', 'tm61', 19, 'Forward', 186, NULL, 'R');

INSERT INTO players VALUES ('ply2243', 'Stavros', 'Georgiou', 'Cyprus',    '2004-10-19');
INSERT INTO player_stats VALUES ('ply2243', 'tm61', 74, 'Forward', 188, NULL, 'R');

INSERT INTO players VALUES ('ply2244', 'Nicolas', 'Koutsakos', 'Cyprus',    '2003-11-14');
INSERT INTO player_stats VALUES ('ply2244', 'tm61', 89, 'Forward', 180, NULL, 'R');

INSERT INTO players VALUES ('ply2245', 'Giorgi', 'Kvilitaia', 'Georgia',    '1993-10-01');
INSERT INTO player_stats VALUES ('ply2245', 'tm61', 11, 'Forward', 193, 82, 'R');

INSERT INTO players VALUES ('ply2246', 'Anton', 'Maglica', 'Croatia',    '1991-11-11');
INSERT INTO player_stats VALUES ('ply2246', 'tm61', 9, 'Forward', 180, 76, '');

INSERT INTO players VALUES ('ply2247', '', 'Marquinhos', 'Brazil',    '1997-01-26');
INSERT INTO player_stats VALUES ('ply2247', 'tm61', 36, 'Forward', 173, 81, 'R');

INSERT INTO players VALUES ('ply2248', 'Dimitris', 'Theodorou', 'Cyprus',    '1997-09-10');
INSERT INTO player_stats VALUES ('ply2248', 'tm61', 21, 'Forward', 175, NULL, 'R');

INSERT INTO players VALUES ('ply2249', 'Georgios', 'Skiathitis', 'Greece',    '1983-06-26');
INSERT INTO player_stats VALUES ('ply2249', 'tm61', NULL, 'Goalkeeping', NULL, NULL, '');

INSERT INTO players VALUES ('ply2250', 'Scott', 'Bain', 'Scotland',    '1991-11-22');
INSERT INTO player_stats VALUES ('ply2250', 'tm62', 29, 'Goalkeeper', 183, 84, 'R');

INSERT INTO players VALUES ('ply2251', 'Joe', 'Hart', 'England',    '1987-04-19');
INSERT INTO player_stats VALUES ('ply2251', 'tm62', 1, 'Goalkeeper', 196, 91, 'R');

INSERT INTO players VALUES ('ply2252', 'Benjamin', 'Siegrist', 'Switzerland',    '1992-01-31');
INSERT INTO player_stats VALUES ('ply2252', 'tm62', 31, 'Goalkeeper', 196, 94, 'R');

INSERT INTO players VALUES ('ply2253', 'Alexandro', 'Bernabei', 'Argentina',    '2000-09-24');
INSERT INTO player_stats VALUES ('ply2253', 'tm62', 25, 'Defender', 169, 65, 'L');

INSERT INTO players VALUES ('ply2254', 'Cameron', 'Carter-Vickers', 'USA',    '1997-12-31');
INSERT INTO player_stats VALUES ('ply2254', 'tm62', 20, 'Defender', 183, 92, 'R');

INSERT INTO players VALUES ('ply2255', 'Reo', 'Hatate', 'Japan',    '1997-11-21');
INSERT INTO player_stats VALUES ('ply2255', 'tm62', 41, 'Defender', 172, 70, 'R');

INSERT INTO players VALUES ('ply2256', 'Moritz', 'Jenz', 'Germany',    '1999-04-30');
INSERT INTO player_stats VALUES ('ply2256', 'tm62', 6, 'Defender', 190, 86, 'R');

INSERT INTO players VALUES ('ply2257', 'Josip', 'Juranović', 'Croatia',    '1995-08-16');
INSERT INTO player_stats VALUES ('ply2257', 'tm62', 88, 'Defender', 173, 69, 'R');

INSERT INTO players VALUES ('ply2258', 'Tony', 'Ralston', 'Scotland',    '1998-11-16');
INSERT INTO player_stats VALUES ('ply2258', 'tm62', 56, 'Defender', 178, 70, 'R');

INSERT INTO players VALUES ('ply2259', 'Carl', 'Starfelt', 'Sweden',    '1995-06-01');
INSERT INTO player_stats VALUES ('ply2259', 'tm62', 4, 'Defender', 187, 83, 'R');

INSERT INTO players VALUES ('ply2260', 'Greg', 'Taylor', 'Scotland',    '1997-11-05');
INSERT INTO player_stats VALUES ('ply2260', 'tm62', 3, 'Defender', 173, 68, 'L');

INSERT INTO players VALUES ('ply2261', 'Stephen', 'Welsh', 'Scotland',    '2000-01-19');
INSERT INTO player_stats VALUES ('ply2261', 'tm62', 57, 'Defender', 188, 78, 'R');

INSERT INTO players VALUES ('ply2262', 'Oliver', 'Abildgaard', 'Denmark',    '1996-06-10');
INSERT INTO player_stats VALUES ('ply2262', 'tm62', 28, 'Midfielder', 192, 86, 'L');

INSERT INTO players VALUES ('ply2263', 'James', 'Forrest', 'Scotland',    '1991-07-07');
INSERT INTO player_stats VALUES ('ply2263', 'tm62', 49, 'Midfielder', 175, 75, 'R');

INSERT INTO players VALUES ('ply2264', 'Sead', 'Hakšabanović', 'Montenegro',    '1999-05-04');
INSERT INTO player_stats VALUES ('ply2264', 'tm62', 9, 'Midfielder', 174, 69, 'R');

INSERT INTO players VALUES ('ply2265', 'Yosuke', 'Ideguchi', 'Japan',    '1996-08-23');
INSERT INTO player_stats VALUES ('ply2265', 'tm62', 21, 'Midfielder', 171, 71, 'R');

INSERT INTO players VALUES ('ply2266', 'James', 'McCarthy', 'Ireland',    '1990-11-12');
INSERT INTO player_stats VALUES ('ply2266', 'tm62', 16, 'Midfielder', 180, 72, 'R');

INSERT INTO players VALUES ('ply2267', 'Callum', 'McGregor', 'Scotland',    '1993-06-14');
INSERT INTO player_stats VALUES ('ply2267', 'tm62', 42, 'Midfielder', 178, 73, 'L');

INSERT INTO players VALUES ('ply2268', 'Aaron', 'Mooy', 'Australia',    '1990-09-15');
INSERT INTO player_stats VALUES ('ply2268', 'tm62', 13, 'Midfielder', 174, 75, 'R');

INSERT INTO players VALUES ('ply2269', 'Dane', 'Murray', 'Scotland',    '2003-06-26');
INSERT INTO player_stats VALUES ('ply2269', 'tm62', 47, 'Midfielder', 193, NULL, 'R');

INSERT INTO players VALUES ('ply2270', 'Matt', 'O''Riley', 'England',    '2000-11-21');
INSERT INTO player_stats VALUES ('ply2270', 'tm62', 33, 'Midfielder', 187, 77, 'L');

INSERT INTO players VALUES ('ply2271', 'Scott', 'Robertson', 'Scotland',    '2001-07-27');
INSERT INTO player_stats VALUES ('ply2271', 'tm62', 35, 'Midfielder', 185, NULL, '');

INSERT INTO players VALUES ('ply2272', 'David', 'Turnbull', 'Scotland',    '1999-07-10');
INSERT INTO player_stats VALUES ('ply2272', 'tm62', 14, 'Midfielder', 185, 75, '');

INSERT INTO players VALUES ('ply2273', 'Liel', 'Abada', 'Israel',    '2001-10-03');
INSERT INTO player_stats VALUES ('ply2273', 'tm62', 11, 'Forward', 168, NULL, 'R');

INSERT INTO players VALUES ('ply2274', 'Kyogo', 'Furuhashi', 'Japan',    '1995-01-20');
INSERT INTO player_stats VALUES ('ply2274', 'tm62', 8, 'Forward', 170, 63, 'R');

INSERT INTO players VALUES ('ply2275', 'Georgios', 'Giakoumakis', 'Greece',    '1994-12-09');
INSERT INTO player_stats VALUES ('ply2275', 'tm62', 7, 'Forward', 186, 86, 'R');

INSERT INTO players VALUES ('ply2276', '', 'Jota', 'Portugal',    '1999-03-30');
INSERT INTO player_stats VALUES ('ply2276', 'tm62', 17, 'Forward', 175, 60, '');

INSERT INTO players VALUES ('ply2277', 'Daizen', 'Maeda', 'Japan',    '1997-10-20');
INSERT INTO player_stats VALUES ('ply2277', 'tm62', 38, 'Forward', 173, 67, 'R');

INSERT INTO players VALUES ('ply2278', 'Stevie', 'Woods', 'Scotland',    '1970-02-23');
INSERT INTO player_stats VALUES ('ply2278', 'tm62', NULL, 'Goalkeeping', 188, 76, '');

INSERT INTO players VALUES ('ply2279', 'Nils De', 'Mol', 'Switzerland',    '2001-05-03');
INSERT INTO player_stats VALUES ('ply2279', 'tm63', 16, 'Goalkeeper', 183, 84, 'R');

INSERT INTO players VALUES ('ply2280', 'Mirko', 'Salvi', 'Switzerland',    '1994-02-14');
INSERT INTO player_stats VALUES ('ply2280', 'tm63', 13, 'Goalkeeper', 188, 82, 'R');

INSERT INTO players VALUES ('ply2281', 'Kasim', 'Adams', 'Ghana',    '1995-06-22');
INSERT INTO player_stats VALUES ('ply2281', 'tm63', 15, 'Defender', 190, 86, 'R');

INSERT INTO players VALUES ('ply2282', 'Arnau', 'Comas', 'Spain',    '2000-04-11');
INSERT INTO player_stats VALUES ('ply2282', 'tm63', 4, 'Defender', 191, 83, 'R');

INSERT INTO players VALUES ('ply2283', 'Riccardo', 'Calafiori', 'Italy',    '2002-05-19');
INSERT INTO player_stats VALUES ('ply2283', 'tm63', NULL, 'Defender', 186, 76, 'L');

INSERT INTO players VALUES ('ply2284', 'Noah', 'Katterbach', 'Germany',    '2001-04-13');
INSERT INTO player_stats VALUES ('ply2284', 'tm63', 3, 'Defender', 180, 73, 'L');

INSERT INTO players VALUES ('ply2285', 'Michael', 'Lang', 'Switzerland',    '1991-02-08');
INSERT INTO player_stats VALUES ('ply2285', 'tm63', 5, 'Defender', 185, 79, 'R');

INSERT INTO players VALUES ('ply2286', 'Andy', 'Pelmard', 'France',    '2000-03-12');
INSERT INTO player_stats VALUES ('ply2286', 'tm63', 21, 'Defender', 180, 68, 'R');

INSERT INTO players VALUES ('ply2287', 'Sergio', 'López', 'Spain',    '1999-04-08');
INSERT INTO player_stats VALUES ('ply2287', 'tm63', 22, 'Defender', 179, 70, 'R');

INSERT INTO players VALUES ('ply2288', 'Hugo', 'Vogel', 'France',    '2004-01-04');
INSERT INTO player_stats VALUES ('ply2288', 'tm63', 28, 'Defender', 177, 74, 'L');

INSERT INTO players VALUES ('ply2289', 'Wouter', 'Burger', 'Netherlands',    '2001-02-16');
INSERT INTO player_stats VALUES ('ply2289', 'tm63', 23, 'Midfielder', 190, 83, 'L');

INSERT INTO players VALUES ('ply2290', 'Liam', 'Chipperfield', 'Switzerland',    '2004-02-14');
INSERT INTO player_stats VALUES ('ply2290', 'tm63', 40, 'Midfielder', 178, 74, '');

INSERT INTO players VALUES ('ply2291', 'Andy', 'Diouf', 'France',    '2003-05-17');
INSERT INTO player_stats VALUES ('ply2291', 'tm63', 8, 'Midfielder', 181, 68, 'L');

INSERT INTO players VALUES ('ply2292', 'Emmanuel', 'Essiam', 'Ghana',    '2003-12-19');
INSERT INTO player_stats VALUES ('ply2292', 'tm63', 18, 'Midfielder', 183, 72, 'R');

INSERT INTO players VALUES ('ply2293', 'Fabian', 'Frei', 'Switzerland',    '1989-01-08');
INSERT INTO player_stats VALUES ('ply2293', 'tm63', 20, 'Midfielder', 183, 80, 'R');

INSERT INTO players VALUES ('ply2294', 'Sayfallah', 'Ltaief', 'Switzerland',    '2000-04-22');
INSERT INTO player_stats VALUES ('ply2294', 'tm63', 42, 'Midfielder', 178, 77, 'R');

INSERT INTO players VALUES ('ply2295', 'Yannick', 'Marchand', 'Switzerland',    '2000-02-09');
INSERT INTO player_stats VALUES ('ply2295', 'tm63', 38, 'Midfielder', 183, 70, 'R');

INSERT INTO players VALUES ('ply2296', 'Taulant', 'Xhaka', 'Albania',    '1991-03-28');
INSERT INTO player_stats VALUES ('ply2296', 'tm63', 34, 'Midfielder', 172, 72, 'R');

INSERT INTO players VALUES ('ply2297', 'Zeki', 'Amdouni', 'Switzerland',    '2000-12-04');
INSERT INTO player_stats VALUES ('ply2297', 'tm63', 9, 'Forward', 185, 79, '');

INSERT INTO players VALUES ('ply2298', 'Jean-Kévin', 'Augustin', 'France',    '1997-06-16');
INSERT INTO player_stats VALUES ('ply2298', 'tm63', 10, 'Forward', 180, 80, 'R');

INSERT INTO players VALUES ('ply2299', 'Bradley', 'Fink', 'Switzerland',    '2003-04-17');
INSERT INTO player_stats VALUES ('ply2299', 'tm63', 14, 'Forward', 193, 85, '');

INSERT INTO players VALUES ('ply2300', 'Anton', 'Kade', 'Germany',    '2004-01-17');
INSERT INTO player_stats VALUES ('ply2300', 'tm63', 30, 'Forward', 183, 62, 'R');

INSERT INTO players VALUES ('ply2301', 'Darian', 'Males', 'Switzerland',    '2001-05-03');
INSERT INTO player_stats VALUES ('ply2301', '', NULL, 'Forward', 189, 77, 'L');

INSERT INTO players VALUES ('ply2302', 'Liam', 'Millar', 'Canada',    '1999-09-27');
INSERT INTO player_stats VALUES ('ply2302', 'tm63', 7, 'Forward', 181, 75, 'R');

INSERT INTO players VALUES ('ply2303', 'Dan', 'Ndoye', 'Switzerland',    '2000-10-25');
INSERT INTO player_stats VALUES ('ply2303', 'tm63', 27, 'Forward', 184, 78, 'R');

INSERT INTO players VALUES ('ply2304', 'Kaly', 'Sène', 'Senegal',    '2001-05-28');
INSERT INTO player_stats VALUES ('ply2304', 'tm63', 26, 'Forward', 180, 72, 'R');

INSERT INTO players VALUES ('ply2305', 'Ádám', 'Szalai', 'Hungary',    '1987-12-09');
INSERT INTO player_stats VALUES ('ply2305', 'tm63', 11, 'Forward', 193, 93, 'R');

INSERT INTO players VALUES ('ply2306', 'Tician', 'Tushi', 'Switzerland',    '2001-04-02');
INSERT INTO player_stats VALUES ('ply2306', 'tm63', 24, 'Forward', 180, 77, 'R');

INSERT INTO players VALUES ('ply2307', 'Andi', 'Zeqiri', 'Switzerland',    '1999-06-22');
INSERT INTO player_stats VALUES ('ply2307', 'tm63', 17, 'Forward', 185, 80, 'L');

INSERT INTO players VALUES ('ply2308', 'Justin', 'Bijlow', 'Netherlands',    '1998-01-22');
INSERT INTO player_stats VALUES ('ply2308', 'tm64', 1, 'Goalkeeper', 188, 76, 'R');

INSERT INTO players VALUES ('ply2309', 'Ofir', 'Marciano', 'Israel',    '1989-10-07');
INSERT INTO player_stats VALUES ('ply2309', 'tm64', 21, 'Goalkeeper', 193, 87, 'R');

INSERT INTO players VALUES ('ply2310', 'Devin', 'Remie', 'Netherlands',    '2003-03-13');
INSERT INTO player_stats VALUES ('ply2310', 'tm64', 51, 'Goalkeeper', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply2311', 'Timon', 'Wellenreuther', 'Germany',    '1995-12-03');
INSERT INTO player_stats VALUES ('ply2311', 'tm64', 22, 'Goalkeeper', 188, 80, 'R');

INSERT INTO players VALUES ('ply2312', 'Mimeirhel', 'Benita', 'Netherlands',    '2003-11-17');
INSERT INTO player_stats VALUES ('ply2312', 'tm64', 24, 'Defender', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply2313', 'Fredrik', 'Bjørkan', 'Norway',    '1998-08-21');
INSERT INTO player_stats VALUES ('ply2313', 'tm64', 5, 'Defender', 180, 74, 'L');

INSERT INTO players VALUES ('ply2314', 'Lutsharel', 'Geertruida', 'Netherlands',    '2000-07-18');
INSERT INTO player_stats VALUES ('ply2314', 'tm64', 4, 'Defender', 184, 69, 'R');

INSERT INTO players VALUES ('ply2315', 'Dávid', 'Hancko', 'Slovakia',    '1997-12-13');
INSERT INTO player_stats VALUES ('ply2315', 'tm64', 33, 'Defender', 188, 79, 'L');

INSERT INTO players VALUES ('ply2316', 'Quilindschy', 'Hartman', 'Netherlands',    '2001-11-14');
INSERT INTO player_stats VALUES ('ply2316', 'tm64', 19, 'Defender', 183, NULL, 'L');

INSERT INTO players VALUES ('ply2317', 'Marcos', 'López', 'Peru',    '1999-11-20');
INSERT INTO player_stats VALUES ('ply2317', 'tm64', 15, 'Defender', 178, 67, 'L');

INSERT INTO players VALUES ('ply2318', 'Marcus', 'Pedersen', 'Norway',    '2000-07-16');
INSERT INTO player_stats VALUES ('ply2318', 'tm64', 2, 'Defender', 183, 76, 'R');

INSERT INTO players VALUES ('ply2319', 'Jacob', 'Rasmussen', 'Denmark',    '1997-05-28');
INSERT INTO player_stats VALUES ('ply2319', 'tm64', 6, 'Defender', 190, 81, 'L');

INSERT INTO players VALUES ('ply2320', 'Gernot', 'Trauner', 'Austria',    '1992-03-25');
INSERT INTO player_stats VALUES ('ply2320', 'tm64', 18, 'Defender', 183, 82, 'R');

INSERT INTO players VALUES ('ply2321', 'Ezequiel', 'Bullaude', 'Argentina',    '2000-10-26');
INSERT INTO player_stats VALUES ('ply2321', 'tm64', 30, 'Midfielder', 184, 71, 'R');

INSERT INTO players VALUES ('ply2322', 'Orkun', 'Kökçü', 'Turkey',    '2000-12-29');
INSERT INTO player_stats VALUES ('ply2322', 'tm64', 10, 'Midfielder', 175, 67, 'R');

INSERT INTO players VALUES ('ply2323', 'Noah', 'Naujoks', 'Netherlands',    '2002-05-02');
INSERT INTO player_stats VALUES ('ply2323', 'tm64', 27, 'Midfielder', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply2324', 'Sebastian', 'Szymański', 'Poland',    '1999-05-10');
INSERT INTO player_stats VALUES ('ply2324', 'tm64', 17, 'Midfielder', 174, 60, 'L');

INSERT INTO players VALUES ('ply2325', 'Mo', 'Taabouni', 'Netherlands',    '2002-03-29');
INSERT INTO player_stats VALUES ('ply2325', 'tm64', 25, 'Midfielder', 178, NULL, 'R');

INSERT INTO players VALUES ('ply2326', 'Quinten', 'Timber', 'Netherlands',    '2001-06-17');
INSERT INTO player_stats VALUES ('ply2326', 'tm64', 8, 'Midfielder', 177, 71, 'R');

INSERT INTO players VALUES ('ply2327', 'Mats', 'Wieffer', 'Netherlands',    '1999-11-16');
INSERT INTO player_stats VALUES ('ply2327', 'tm64', 20, 'Midfielder', 188, NULL, 'R');

INSERT INTO players VALUES ('ply2328', '', 'Danilo', 'Brazil',    '1999-04-07');
INSERT INTO player_stats VALUES ('ply2328', 'tm64', 9, 'Forward', 174, 66, 'R');

INSERT INTO players VALUES ('ply2329', 'Javairô', 'Dilrosun', 'Netherlands',    '1998-06-22');
INSERT INTO player_stats VALUES ('ply2329', 'tm64', 11, 'Forward', 174, 74, 'L');

INSERT INTO players VALUES ('ply2330', 'Santiago', 'Giménez', 'Mexico',    '2001-04-18');
INSERT INTO player_stats VALUES ('ply2330', 'tm64', 29, 'Forward', 183, 69, 'L');

INSERT INTO players VALUES ('ply2331', 'Igor', 'Paixão', 'Brazil',    '2000-06-28');
INSERT INTO player_stats VALUES ('ply2331', 'tm64', 14, 'Forward', 167, NULL, 'R');

INSERT INTO players VALUES ('ply2332', 'Alireza', 'Jahanbakhsh', 'Iran',    '1993-08-11');
INSERT INTO player_stats VALUES ('ply2332', 'tm64', 7, 'Forward', 180, 78, 'R');

INSERT INTO players VALUES ('ply2333', 'Patrik', 'Wålemark', 'Sweden',    '2001-10-14');
INSERT INTO player_stats VALUES ('ply2333', 'tm64', 23, 'Forward', 184, 75, 'L');

INSERT INTO players VALUES ('ply2334', 'Khalid', 'Benlahsen', 'Netherlands',    '1974-04-22');
INSERT INTO player_stats VALUES ('ply2334', 'tm64', NULL, 'Goalkeeping', NULL, NULL, '');

INSERT INTO players VALUES ('ply2335', 'Robin van', 'Persie', 'Netherlands',    '1983-08-06');
INSERT INTO player_stats VALUES ('ply2335', 'tm64', NULL, 'Individual', 183, 71, 'L');

INSERT INTO players VALUES ('ply2336', 'Roderick van der', 'Ham', 'Netherlands',  NULL);
INSERT INTO player_stats VALUES ('ply2336', 'tm64', NULL, 'Video', NULL, NULL, '');

INSERT INTO players VALUES ('ply2337', 'Menno', 'Bergsen', 'Netherlands',    '1999-08-26');
INSERT INTO player_stats VALUES ('ply2337', 'tm65', 81, 'Goalkeeper', 186, 76, 'R');

INSERT INTO players VALUES ('ply2338', 'Ažbe', 'Jug', 'Slovenia',    '1992-03-03');
INSERT INTO player_stats VALUES ('ply2338', 'tm65', 1, 'Goalkeeper', 192, 96, 'R');

INSERT INTO players VALUES ('ply2339', 'Samo', 'Pridgar', 'Slovenia',    '2003-03-10');
INSERT INTO player_stats VALUES ('ply2339', 'tm65', 59, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply2340', 'Marko', 'Zalokar', 'Slovenia',    '1990-06-18');
INSERT INTO player_stats VALUES ('ply2340', 'tm65', 52, 'Goalkeeper', 191, NULL, 'R');

INSERT INTO players VALUES ('ply2341', 'Ignacio', 'Guerrico', 'Argentina',    '1998-07-09');
INSERT INTO player_stats VALUES ('ply2341', 'tm65', 40, 'Defender', 175, 71, 'L');

INSERT INTO players VALUES ('ply2342', 'Sven', 'Karič', 'Slovenia',    '1998-03-07');
INSERT INTO player_stats VALUES ('ply2342', 'tm65', 25, 'Defender', 186, 81, 'L');

INSERT INTO players VALUES ('ply2343', 'Vid', 'Koderman', 'Slovenia',    '2003-04-18');
INSERT INTO player_stats VALUES ('ply2343', 'tm65', 42, 'Defender', 177, 71, 'L');

INSERT INTO players VALUES ('ply2344', 'Martin', 'Milec', 'Slovenia',    '1991-09-20');
INSERT INTO player_stats VALUES ('ply2344', 'tm65', 22, 'Defender', 174, 70, 'R');

INSERT INTO players VALUES ('ply2345', 'Nemanja', 'Mitrovič', 'Slovenia',    '1992-10-15');
INSERT INTO player_stats VALUES ('ply2345', 'tm65', 32, 'Defender', 192, 88, 'R');

INSERT INTO players VALUES ('ply2346', 'Žiga', 'Obreht', 'Slovenia',    '2002-07-25');
INSERT INTO player_stats VALUES ('ply2346', 'tm65', NULL, 'Defender', NULL, NULL, '');

INSERT INTO players VALUES ('ply2347', 'Gregor', 'Sikošek', 'Slovenia',    '1994-02-13');
INSERT INTO player_stats VALUES ('ply2347', 'tm65', 12, 'Defender', 176, 74, 'R');

INSERT INTO players VALUES ('ply2348', 'Luka', 'Uskoković', 'Montenegro',    '1996-04-10');
INSERT INTO player_stats VALUES ('ply2348', 'tm65', 23, 'Defender', 193, 87, 'R');

INSERT INTO players VALUES ('ply2349', 'Max', 'Watson', 'Sweden',    '1996-02-03');
INSERT INTO player_stats VALUES ('ply2349', 'tm65', 20, 'Defender', 186, 82, 'R');

INSERT INTO players VALUES ('ply2350', 'Andraž', 'Žinič', 'Slovenia',    '1999-02-12');
INSERT INTO player_stats VALUES ('ply2350', 'tm65', 29, 'Defender', 179, 76, 'R');

INSERT INTO players VALUES ('ply2351', 'Aljaž', 'Antolin', 'Slovenia',    '2002-08-02');
INSERT INTO player_stats VALUES ('ply2351', 'tm65', 16, 'Midfielder', 179, NULL, 'R');

INSERT INTO players VALUES ('ply2352', 'Marko', 'Božič', 'Austria',    '1998-05-14');
INSERT INTO player_stats VALUES ('ply2352', 'tm65', 8, 'Midfielder', 182, 78, 'R');

INSERT INTO players VALUES ('ply2353', 'Luka', 'Božičković', 'Bosnia-Herzegovina',    '2003-09-02');
INSERT INTO player_stats VALUES ('ply2353', 'tm65', 21, 'Midfielder', 182, NULL, 'R');

INSERT INTO players VALUES ('ply2354', 'Tine', 'Čuk', 'Slovenia',    '2005-02-15');
INSERT INTO player_stats VALUES ('ply2354', 'tm65', 97, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply2355', 'Rok', 'Kronaveter', 'Slovenia',    '1986-12-07');
INSERT INTO player_stats VALUES ('ply2355', 'tm65', 7, 'Midfielder', 187, 83, 'R');

INSERT INTO players VALUES ('ply2356', 'Marcel', 'Lorber', 'Slovenia',    '2004-04-26');
INSERT INTO player_stats VALUES ('ply2356', 'tm65', 55, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply2357', 'Aleks', 'Pihler', 'Slovenia',    '1994-01-15');
INSERT INTO player_stats VALUES ('ply2357', 'tm65', 6, 'Midfielder', 183, 75, 'R');

INSERT INTO players VALUES ('ply2358', 'Jan', 'Repas', 'Slovenia',    '1997-03-19');
INSERT INTO player_stats VALUES ('ply2358', 'tm65', 15, 'Midfielder', 171, 69, 'R');

INSERT INTO players VALUES ('ply2359', 'Danijel', 'Šturm', 'Slovenia',    '1999-01-04');
INSERT INTO player_stats VALUES ('ply2359', 'tm65', 11, 'Midfielder', 182, 75, 'R');

INSERT INTO players VALUES ('ply2360', 'Marko', 'Tolić', 'Croatia',    '1996-07-05');
INSERT INTO player_stats VALUES ('ply2360', 'tm65', 44, 'Midfielder', 189, 77, 'R');

INSERT INTO players VALUES ('ply2361', 'Vladan', 'Vidaković', 'Serbia',    '1999-03-14');
INSERT INTO player_stats VALUES ('ply2361', 'tm65', 14, 'Midfielder', 193, 80, 'R');

INSERT INTO players VALUES ('ply2362', 'Roko', 'Baturina', 'Croatia',    '2000-06-20');
INSERT INTO player_stats VALUES ('ply2362', 'tm65', 18, 'Forward', 187, 82, 'L');

INSERT INTO players VALUES ('ply2363', 'Ivan', 'Brnić', 'Croatia',    '2001-08-23');
INSERT INTO player_stats VALUES ('ply2363', 'tm65', 17, 'Forward', 175, 68, 'R');

INSERT INTO players VALUES ('ply2364', 'Marin', 'Laušić', 'Croatia',    '2001-06-26');
INSERT INTO player_stats VALUES ('ply2364', 'tm65', 30, 'Forward', 187, 75, 'R');

INSERT INTO players VALUES ('ply2365', 'Ishaq', 'Rafiu', 'Nigeria',    '2000-12-16');
INSERT INTO player_stats VALUES ('ply2365', 'tm65', 31, 'Forward', 178, NULL, 'L');

INSERT INTO players VALUES ('ply2366', 'Rok', 'Sirk', 'Slovenia',    '1993-09-10');
INSERT INTO player_stats VALUES ('ply2366', 'tm65', 13, 'Forward', 183, 77, 'R');

INSERT INTO players VALUES ('ply2367', 'Marcos', 'Tavares', 'Slovenia',    '2004-06-01');
INSERT INTO player_stats VALUES ('ply2367', 'tm65', 90, 'Forward', NULL, NULL, '');

INSERT INTO players VALUES ('ply2368', 'Žan', 'Vipotnik', 'Slovenia',    '2002-03-18');
INSERT INTO player_stats VALUES ('ply2368', 'tm65', 77, 'Forward', 185, 81, 'R');

INSERT INTO players VALUES ('ply2369', 'Ayhan', 'Arazli', 'Azerbaijan',    '2001-03-29');
INSERT INTO player_stats VALUES ('ply2369', 'tm66', 94, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply2370', 'Luka', 'Gugeshashvili', 'Georgia',    '1999-04-29');
INSERT INTO player_stats VALUES ('ply2370', 'tm66', 23, 'Goalkeeper', 196, 85, 'L');

INSERT INTO players VALUES ('ply2371', 'Şahrudin', 'Mahammadaliyev', 'Azerbaijan',    '1994-06-12');
INSERT INTO player_stats VALUES ('ply2371', 'tm66', 1, 'Goalkeeper', 188, 82, 'R');

INSERT INTO players VALUES ('ply2372', 'Amin', 'Ramazanov', 'Azerbaijan',    '2003-01-20');
INSERT INTO player_stats VALUES ('ply2372', 'tm66', 89, 'Goalkeeper', 192, NULL, 'R');

INSERT INTO players VALUES ('ply2373', 'Toral', 'Bayramov', 'Azerbaijan',    '2001-02-23');
INSERT INTO player_stats VALUES ('ply2373', 'tm66', 27, 'Defender', NULL, NULL, 'L');

INSERT INTO players VALUES ('ply2374', 'Abbas', 'Hüseynov', 'Azerbaijan',    '1995-06-13');
INSERT INTO player_stats VALUES ('ply2374', 'tm66', 30, 'Defender', 179, NULL, 'R');

INSERT INTO players VALUES ('ply2375', 'Bədavi', 'Hüseynov', 'Azerbaijan',    '1991-07-11');
INSERT INTO player_stats VALUES ('ply2375', 'tm66', 55, 'Defender', 185, NULL, 'R');

INSERT INTO players VALUES ('ply2376', 'Rahil', 'Mammadov', 'Azerbaijan',    '1995-11-24');
INSERT INTO player_stats VALUES ('ply2376', 'tm66', 4, 'Defender', 191, 75, 'R');

INSERT INTO players VALUES ('ply2377', 'Kevin', 'Medina', 'Colombia',    '1993-03-09');
INSERT INTO player_stats VALUES ('ply2377', 'tm66', 81, 'Defender', 185, NULL, 'L');

INSERT INTO players VALUES ('ply2378', 'Maksim', 'Medvedev', 'Azerbaijan',    '1989-09-29');
INSERT INTO player_stats VALUES ('ply2378', 'tm66', 5, 'Defender', 175, 71, 'R');

INSERT INTO players VALUES ('ply2379', 'Bahlul', 'Mustafazada', 'Azerbaijan',    '1997-02-27');
INSERT INTO player_stats VALUES ('ply2379', 'tm66', 13, 'Defender', 190, NULL, 'R');

INSERT INTO players VALUES ('ply2380', 'Marko', 'Vešović', 'Montenegro',    '1991-08-28');
INSERT INTO player_stats VALUES ('ply2380', 'tm66', 29, 'Defender', 180, 75, 'R');

INSERT INTO players VALUES ('ply2381', 'Nariman', 'Akhundzade', 'Azerbaijan',    '2004-04-23');
INSERT INTO player_stats VALUES ('ply2381', 'tm66', 90, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply2382', 'Nəriman', 'Axundzadə', 'Azerbaijan',    '2004-04-23');
INSERT INTO player_stats VALUES ('ply2382', 'tm66', 90, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply2383', 'Elvin', 'Cəfərquliyev', 'Azerbaijan',    '2000-10-26');
INSERT INTO player_stats VALUES ('ply2383', 'tm66', 44, 'Midfielder', NULL, NULL, 'L');

INSERT INTO players VALUES ('ply2384', 'Gaspar', 'Panadero', 'Spain',    '1997-12-09');
INSERT INTO player_stats VALUES ('ply2384', 'tm66', NULL, 'Midfielder', 170, 60, 'L');

INSERT INTO players VALUES ('ply2385', 'Ismayil', 'Ibrahimli', 'Azerbaijan',    '1998-02-13');
INSERT INTO player_stats VALUES ('ply2385', 'tm66', 18, 'Midfielder', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply2386', 'Júlio', 'Romão', 'Brazil',    '1998-03-29');
INSERT INTO player_stats VALUES ('ply2386', 'tm66', 6, 'Midfielder', 193, 81, 'R');

INSERT INTO players VALUES ('ply2387', '', 'Kady', 'Brazil',    '1996-05-02');
INSERT INTO player_stats VALUES ('ply2387', 'tm66', 20, 'Midfielder', 170, 65, 'L');

INSERT INTO players VALUES ('ply2388', 'Leandro', 'Andrade', 'Portugal',    '1999-09-24');
INSERT INTO player_stats VALUES ('ply2388', 'tm66', 15, 'Midfielder', 177, 75, 'R');

INSERT INTO players VALUES ('ply2389', 'Filip', 'Ozobić', 'Azerbaijan',    '1991-04-08');
INSERT INTO player_stats VALUES ('ply2389', 'tm66', 19, 'Midfielder', 178, 70, 'R');

INSERT INTO players VALUES ('ply2390', 'Qara', 'Qarayev', 'Azerbaijan',    '1992-10-12');
INSERT INTO player_stats VALUES ('ply2390', 'tm66', 2, 'Midfielder', 177, NULL, '');

INSERT INTO players VALUES ('ply2391', '', 'Richard', 'Azerbaijan',    '1989-03-20');
INSERT INTO player_stats VALUES ('ply2391', 'tm66', 7, 'Midfielder', 177, 68, 'L');

INSERT INTO players VALUES ('ply2392', 'Marko', 'Janković', 'Montenegro',    '1995-07-09');
INSERT INTO player_stats VALUES ('ply2392', 'tm66', 8, 'Forward', 172, 67, 'L');

INSERT INTO players VALUES ('ply2393', 'Owusu', 'Kwabena', 'Ghana',    '1997-06-18');
INSERT INTO player_stats VALUES ('ply2393', 'tm66', 11, 'Forward', 182, 73, 'R');

INSERT INTO players VALUES ('ply2394', 'Musa', 'Qurbanlı', 'Azerbaijan',    '2002-04-13');
INSERT INTO player_stats VALUES ('ply2394', 'tm66', 22, 'Forward', 183, NULL, 'R');

INSERT INTO players VALUES ('ply2395', 'Ramil', 'Sheydaev', 'Azerbaijan',    '1996-03-15');
INSERT INTO player_stats VALUES ('ply2395', 'tm66', 77, 'Forward', 187, 77, 'R');

INSERT INTO players VALUES ('ply2396', 'Abdellah', 'Zoubir', 'France',    '1991-12-05');
INSERT INTO player_stats VALUES ('ply2396', 'tm66', 10, 'Forward', 180, 75, 'R');

INSERT INTO players VALUES ('ply2397', 'Colin', 'Coosemans', 'Belgium',    '1992-08-03');
INSERT INTO player_stats VALUES ('ply2397', 'tm67', 26, 'Goalkeeper', 186, 84, 'R');

INSERT INTO players VALUES ('ply2398', 'Hendrik Van', 'Crombrugge', 'Belgium',    '1993-04-30');
INSERT INTO player_stats VALUES ('ply2398', 'tm67', 30, 'Goalkeeper', 188, 86, 'L');

INSERT INTO players VALUES ('ply2399', 'Timon', 'Vanhoutte', 'Belgium',    '2004-01-29');
INSERT INTO player_stats VALUES ('ply2399', 'tm67', 98, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply2400', 'Bart', 'Verbruggen', 'Netherlands',    '2002-08-18');
INSERT INTO player_stats VALUES ('ply2400', 'tm67', 16, 'Goalkeeper', 193, 75, 'R');

INSERT INTO players VALUES ('ply2401', 'Zeno', 'Debast', 'Belgium',    '2003-10-24');
INSERT INTO player_stats VALUES ('ply2401', 'tm67', 56, 'Defender', 191, NULL, 'R');

INSERT INTO players VALUES ('ply2402', 'Hannes', 'Delcroix', 'Belgium',    '1999-02-28');
INSERT INTO player_stats VALUES ('ply2402', 'tm67', 3, 'Defender', 185, 78, 'L');

INSERT INTO players VALUES ('ply2403', 'Wesley', 'Hoedt', 'Netherlands',    '1994-03-06');
INSERT INTO player_stats VALUES ('ply2403', 'tm67', 4, 'Defender', 188, 77, 'L');

INSERT INTO players VALUES ('ply2404', 'Lucas', 'Lissens', 'Belgium',    '2001-07-25');
INSERT INTO player_stats VALUES ('ply2404', 'tm67', 47, 'Defender', 184, 74, 'R');

INSERT INTO players VALUES ('ply2405', 'Michael', 'Murillo', 'Panama',    '1996-02-11');
INSERT INTO player_stats VALUES ('ply2405', 'tm67', 62, 'Defender', 183, 75, 'R');

INSERT INTO players VALUES ('ply2406', 'Moussa', 'N''Diaye', 'Senegal',    '2002-06-18');
INSERT INTO player_stats VALUES ('ply2406', 'tm67', NULL, 'Defender', 178, NULL, 'L');

INSERT INTO players VALUES ('ply2407', 'Killian', 'Sardella', 'Belgium',    '2002-05-02');
INSERT INTO player_stats VALUES ('ply2407', 'tm67', 54, 'Defender', 177, 64, 'R');

INSERT INTO players VALUES ('ply2408', 'Ishaq', 'Abdulrazak', 'Nigeria',    '2002-05-05');
INSERT INTO player_stats VALUES ('ply2408', 'tm67', 24, 'Midfielder', 176, NULL, '');

INSERT INTO players VALUES ('ply2409', 'Anouar Ait El', 'Hadj', 'Belgium',    '2002-04-20');
INSERT INTO player_stats VALUES ('ply2409', 'tm67', 46, 'Midfielder', 168, 70, 'R');

INSERT INTO players VALUES ('ply2410', 'Kristian', 'Arnstad', 'Norway',    '2003-09-07');
INSERT INTO player_stats VALUES ('ply2410', 'tm67', 61, 'Midfielder', 168, 60, 'R');

INSERT INTO players VALUES ('ply2411', 'Majeed', 'Ashimeru', 'Ghana',    '1997-10-10');
INSERT INTO player_stats VALUES ('ply2411', 'tm67', 18, 'Midfielder', 182, 72, 'R');

INSERT INTO players VALUES ('ply2412', 'Amadou', 'Diawara', 'Guinea',    '1997-07-17');
INSERT INTO player_stats VALUES ('ply2412', 'tm67', 21, 'Midfielder', 182, 76, 'R');

INSERT INTO players VALUES ('ply2413', 'Marco', 'Kana', 'Belgium',    '2002-08-08');
INSERT INTO player_stats VALUES ('ply2413', 'tm67', 55, 'Midfielder', 182, 62, 'R');

INSERT INTO players VALUES ('ply2414', 'Théo', 'Leoni', 'Belgium',    '2000-04-21');
INSERT INTO player_stats VALUES ('ply2414', 'tm67', 71, 'Midfielder', 180, 70, 'L');

INSERT INTO players VALUES ('ply2415', 'Aristote', 'Nkaka', 'Belgium',    '1996-03-27');
INSERT INTO player_stats VALUES ('ply2415', 'tm67', NULL, 'Midfielder', 184, 79, 'R');

INSERT INTO players VALUES ('ply2416', 'Lior', 'Refaelov', 'Israel',    '1986-04-26');
INSERT INTO player_stats VALUES ('ply2416', 'tm67', 11, 'Midfielder', 175, 70, 'R');

INSERT INTO players VALUES ('ply2417', 'Noah', 'Sadiki', 'Belgium',    '2004-12-17');
INSERT INTO player_stats VALUES ('ply2417', 'tm67', 27, 'Midfielder', NULL, NULL, '');

INSERT INTO players VALUES ('ply2418', 'Mario', 'Stroeykens', 'Belgium',    '2004-09-29');
INSERT INTO player_stats VALUES ('ply2418', 'tm67', 29, 'Midfielder', 183, 77, 'R');

INSERT INTO players VALUES ('ply2419', 'Adrien', 'Trebel', 'France',    '1991-03-03');
INSERT INTO player_stats VALUES ('ply2419', 'tm67', 25, 'Midfielder', 174, 70, 'L');

INSERT INTO players VALUES ('ply2420', 'Yari', 'Verschaeren', 'Belgium',    '2001-07-12');
INSERT INTO player_stats VALUES ('ply2420', 'tm67', 10, 'Midfielder', 172, 69, 'R');

INSERT INTO players VALUES ('ply2421', 'Francis', 'Amuzu', 'Belgium',    '1999-08-23');
INSERT INTO player_stats VALUES ('ply2421', 'tm67', 7, 'Forward', 170, 65, 'R');

INSERT INTO players VALUES ('ply2422', 'Nilson', 'Angulo', 'Ecuador',    '2003-06-19');
INSERT INTO player_stats VALUES ('ply2422', 'tm67', 32, 'Forward', 182, 64, '');

INSERT INTO players VALUES ('ply2423', 'Julien', 'Duranville', 'Belgium',    '2006-05-05');
INSERT INTO player_stats VALUES ('ply2423', '', NULL, 'Forward', 170, NULL, 'R');

INSERT INTO players VALUES ('ply2424', 'Sebastiano', 'Esposito', 'Italy',    '2002-07-02');
INSERT INTO player_stats VALUES ('ply2424', 'tm67', 70, 'Forward', 187, 79, 'R');

INSERT INTO players VALUES ('ply2425', 'Fábio', 'Silva', 'Portugal',    '2002-07-19');
INSERT INTO player_stats VALUES ('ply2425', 'tm67', 99, 'Forward', 185, 75, 'R');

INSERT INTO players VALUES ('ply2426', 'Benito', 'Raman', 'Belgium',    '1994-11-07');
INSERT INTO player_stats VALUES ('ply2426', 'tm67', 9, 'Forward', 172, 67, 'R');

INSERT INTO players VALUES ('ply2427', 'Aleksandr', 'Maksimenko', 'Russia',    '1998-03-19');
INSERT INTO player_stats VALUES ('ply2427', 'tm68', 98, 'Goalkeeper', 187, 81, 'L');

INSERT INTO players VALUES ('ply2428', 'Aleksandr', 'Selikhov', 'Russia',    '1994-04-07');
INSERT INTO player_stats VALUES ('ply2428', 'tm68', 57, 'Goalkeeper', 190, 85, 'R');

INSERT INTO players VALUES ('ply2429', 'Anton', 'Shitov', 'Russia',    '2000-01-29');
INSERT INTO player_stats VALUES ('ply2429', 'tm68', 31, 'Goalkeeper', 190, 85, 'L');

INSERT INTO players VALUES ('ply2430', 'Mikhail', 'Volkov', 'Russia',    '2003-04-10');
INSERT INTO player_stats VALUES ('ply2430', 'tm68', 95, 'Goalkeeper', 185, 81, 'R');

INSERT INTO players VALUES ('ply2431', 'Nikita', 'Chernov', 'Russia',    '1996-01-14');
INSERT INTO player_stats VALUES ('ply2431', 'tm68', 23, 'Defender', 188, 80, 'R');

INSERT INTO players VALUES ('ply2432', 'Georgi', 'Dzhikiya', 'Russia',    '1993-11-21');
INSERT INTO player_stats VALUES ('ply2432', 'tm68', 14, 'Defender', 188, 86, 'L');

INSERT INTO players VALUES ('ply2433', 'Dmitriy', 'Ivannikov', 'Russia',    '2005-02-26');
INSERT INTO player_stats VALUES ('ply2433', 'tm68', 83, 'Defender', NULL, NULL, 'L');

INSERT INTO players VALUES ('ply2434', 'Leon', 'Klassen', 'Russia',    '2000-05-29');
INSERT INTO player_stats VALUES ('ply2434', 'tm68', 5, 'Defender', 174, 70, 'L');

INSERT INTO players VALUES ('ply2435', 'Pavel', 'Maslov', 'Russia',    '2000-04-14');
INSERT INTO player_stats VALUES ('ply2435', 'tm68', 29, 'Defender', 184, 75, 'R');

INSERT INTO players VALUES ('ply2436', 'Miha', 'Mevlja', 'Slovenia',    '1990-06-12');
INSERT INTO player_stats VALUES ('ply2436', 'tm68', 32, 'Defender', 190, 83, 'R');

INSERT INTO players VALUES ('ply2437', 'Nikolai', 'Rasskazov', 'Russia',    '1998-01-04');
INSERT INTO player_stats VALUES ('ply2437', 'tm68', 92, 'Defender', 180, 73, 'R');

INSERT INTO players VALUES ('ply2438', 'Maciej', 'Rybus', 'Poland',    '1989-08-19');
INSERT INTO player_stats VALUES ('ply2438', 'tm68', 13, 'Defender', 173, 75, 'L');

INSERT INTO players VALUES ('ply2439', 'Danil', 'Denisov', 'Russia',    '2002-10-21');
INSERT INTO player_stats VALUES ('ply2439', 'tm68', 97, 'Midfielder', 185, 72, 'R');

INSERT INTO players VALUES ('ply2440', 'Mikhail', 'Ignatov', 'Russia',    '2000-05-04');
INSERT INTO player_stats VALUES ('ply2440', 'tm68', 22, 'Midfielder', 187, 78, 'R');

INSERT INTO players VALUES ('ply2441', 'Daniil', 'Khlusevich', 'Russia',    '2001-02-26');
INSERT INTO player_stats VALUES ('ply2441', 'tm68', 82, 'Midfielder', 182, 80, 'R');

INSERT INTO players VALUES ('ply2442', 'Ruslan', 'Litvinov', 'Russia',    '2001-08-18');
INSERT INTO player_stats VALUES ('ply2442', 'tm68', 68, 'Midfielder', 184, 74, 'R');

INSERT INTO players VALUES ('ply2443', 'Christopher', 'Martins', 'Luxembourg',    '1997-02-19');
INSERT INTO player_stats VALUES ('ply2443', 'tm68', 35, 'Midfielder', 187, 80, 'R');

INSERT INTO players VALUES ('ply2444', 'Victor', 'Moses', 'Nigeria',    '1990-12-12');
INSERT INTO player_stats VALUES ('ply2444', 'tm68', 8, 'Midfielder', 177, 79, 'R');

INSERT INTO players VALUES ('ply2445', 'Danil', 'Prutsev', 'Russia',    '2000-03-25');
INSERT INTO player_stats VALUES ('ply2445', 'tm68', 25, 'Midfielder', 174, 64, 'R');

INSERT INTO players VALUES ('ply2446', 'Nail', 'Umyarov', 'Russia',    '2000-06-27');
INSERT INTO player_stats VALUES ('ply2446', 'tm68', 18, 'Midfielder', 182, 73, 'R');

INSERT INTO players VALUES ('ply2447', 'Roman', 'Zobnin', 'Russia',    '1994-02-11');
INSERT INTO player_stats VALUES ('ply2447', 'tm68', 47, 'Midfielder', 185, 78, 'R');

INSERT INTO players VALUES ('ply2448', 'Daniil', 'Zorin', 'Russia',    '2004-02-22');
INSERT INTO player_stats VALUES ('ply2448', 'tm68', 87, 'Midfielder', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply2449', 'Keita', 'Baldé', 'Senegal',    '1995-03-08');
INSERT INTO player_stats VALUES ('ply2449', 'tm68', 9, 'Forward', 184, 80, '');

INSERT INTO players VALUES ('ply2450', 'Pavel', 'Meleshin', 'Russia',    '2004-03-25');
INSERT INTO player_stats VALUES ('ply2450', 'tm68', 70, 'Forward', 188, 81, 'R');

INSERT INTO players VALUES ('ply2451', 'Shamar', 'Nicholson', 'Jamaica',    '1997-03-16');
INSERT INTO player_stats VALUES ('ply2451', 'tm68', 11, 'Forward', 192, 85, 'R');

INSERT INTO players VALUES ('ply2452', 'Vitaliy', 'Shitov', 'Russia',    '2003-05-07');
INSERT INTO player_stats VALUES ('ply2452', 'tm68', 76, 'Forward', 176, 70, 'R');

INSERT INTO players VALUES ('ply2453', 'Aleksandr', 'Sobolev', 'Russia',    '1997-03-07');
INSERT INTO player_stats VALUES ('ply2453', 'tm68', 7, 'Forward', 195, 85, 'R');

INSERT INTO players VALUES ('ply2454', 'Anton', 'Zinkovskiy', 'Russia',    '1996-04-14');
INSERT INTO player_stats VALUES ('ply2454', 'tm68', 17, 'Forward', 170, 60, 'R');

INSERT INTO players VALUES ('ply2455', 'Andrija', 'Živković', 'Serbia',    '1996-07-11');
INSERT INTO player_stats VALUES ('ply2455', '', 14, 'Forward', 169, 66, 'L');

INSERT INTO players VALUES ('ply2456', '', 'Vitinho', 'Brazil',    '1993-10-09');
INSERT INTO player_stats VALUES ('ply2456', '', 27, 'Arabia', 180, 75, 'R');

INSERT INTO players VALUES ('ply2457', 'Timur', 'Zhamaletdinov', 'Russia',    '1997-05-21');
INSERT INTO player_stats VALUES ('ply2457', '', 75, 'Forward', 182, 74, 'R');

INSERT INTO players VALUES ('ply2458', 'Dimitri', 'Oberlin', 'Switzerland',    '1997-09-27');
INSERT INTO player_stats VALUES ('ply2458', '', 10, 'Forward', 182, 74, 'R');

INSERT INTO players VALUES ('ply2459', 'Ricky van', 'Wolfswinkel', 'Netherlands',    '1989-01-27');
INSERT INTO player_stats VALUES ('ply2459', '', 9, 'Forward', 186, 72, 'R');

INSERT INTO players VALUES ('ply2460', 'Blas', 'Riveros', 'Paraguay',    '1998-02-03');
INSERT INTO player_stats VALUES ('ply2460', '', 15, 'Defender', 178, 79, 'L');

INSERT INTO players VALUES ('ply2461', 'Luca', 'Zuffi', 'Switzerland',    '1990-03-27');
INSERT INTO player_stats VALUES ('ply2461', '', 7, 'Midfielder', 182, 76, 'L');

INSERT INTO players VALUES ('ply2462', 'Alan', 'Dzagoev', 'Russia',    '1990-06-17');
INSERT INTO player_stats VALUES ('ply2462', '', 6, 'Midfielder', 179, 70, 'R');

INSERT INTO players VALUES ('ply2463', 'Bibras', 'Natcho', 'Israel',    '1988-02-18');
INSERT INTO player_stats VALUES ('ply2463', '', 10, 'Midfielder', 177, 73, 'R');

INSERT INTO players VALUES ('ply2464', 'Raoul', 'Petretta', 'Italy',    '1997-03-24');
INSERT INTO player_stats VALUES ('ply2464', '', 28, 'Defender', 176, 70, 'L');

INSERT INTO players VALUES ('ply2465', 'Mohamed', 'Elyounoussi', 'Norway',    '1994-08-04');
INSERT INTO player_stats VALUES ('ply2465', '', 24, 'Forward', 178, 70, 'R');

INSERT INTO players VALUES ('ply2466', 'Mikael', 'Lustig', 'Sweden',    '1986-12-13');
INSERT INTO player_stats VALUES ('ply2466', '', 33, 'Defender', 189, 77, 'R');

INSERT INTO players VALUES ('ply2467', 'Layvin', 'Kurzawa', 'France',    '1992-09-04');
INSERT INTO player_stats VALUES ('ply2467', '', 3, 'Defender', 182, 74, 'L');

INSERT INTO players VALUES ('ply2468', 'Dani', 'Alves', 'Brazil',    '1983-05-06');
INSERT INTO player_stats VALUES ('ply2468', '', 33, 'Defender', 172, 70, 'R');

INSERT INTO players VALUES ('ply2469', 'Kieran', 'Tierney', 'Scotland',    '1997-06-05');
INSERT INTO player_stats VALUES ('ply2469', '', 3, 'Defender', 180, 70, 'L');

INSERT INTO players VALUES ('ply2470', 'Patrick', 'Roberts', 'England',    '1997-02-05');
INSERT INTO player_stats VALUES ('ply2470', '', 10, 'Forward', 167, 66, 'L');

INSERT INTO players VALUES ('ply2471', 'Olivier', 'Ntcham', 'France',    '1996-02-09');
INSERT INTO player_stats VALUES ('ply2471', '', 10, 'Midfielder', 180, 80, 'R');

INSERT INTO players VALUES ('ply2472', 'Stuart', 'Armstrong', 'Scotland',    '1992-03-30');
INSERT INTO player_stats VALUES ('ply2472', '', 17, 'Midfielder', 183, 75, 'R');

INSERT INTO players VALUES ('ply2473', 'Sofiane', 'Hanni', 'Algeria',    '1990-12-29');
INSERT INTO player_stats VALUES ('ply2473', '', 94, 'Midfielder', 178, 72, 'R');

INSERT INTO players VALUES ('ply2474', 'Cesc', 'Fàbregas', 'Spain',    '1987-05-04');
INSERT INTO player_stats VALUES ('ply2474', '', 4, 'Midfielder', 179, 76, 'R');

INSERT INTO players VALUES ('ply2475', 'Pedro', 'Henrique', 'Brazil',    '1990-06-16');
INSERT INTO player_stats VALUES ('ply2475', '', 15, 'Forward', 179, 72, '');

INSERT INTO players VALUES ('ply2476', 'Dino', 'Ndlovu', 'South Africa',    '1990-02-15');
INSERT INTO player_stats VALUES ('ply2476', '', NULL, 'Forward', 183, NULL, 'L');

INSERT INTO players VALUES ('ply2477', 'David', 'Luiz', 'Brazil',    '1987-04-22');
INSERT INTO player_stats VALUES ('ply2477', '', 23, 'Defender', 189, 86, 'R');

INSERT INTO players VALUES ('ply2478', 'Federico', 'Fazio', 'Argentina',    '1987-03-17');
INSERT INTO player_stats VALUES ('ply2478', '', 17, 'Defender', 195, 90, 'R');

INSERT INTO players VALUES ('ply2479', 'Wilde-Donald', 'Guerrier', 'Haiti',    '1989-03-31');
INSERT INTO player_stats VALUES ('ply2479', '', 10, 'Defender', 175, 72, 'L');

INSERT INTO players VALUES ('ply2480', '', 'Iniesta', 'Spain',    '1984-05-11');
INSERT INTO player_stats VALUES ('ply2480', '', 8, 'Midfielder', 171, 68, '');

INSERT INTO players VALUES ('ply2481', 'Felipe', 'Pardo', 'Colombia',    '1990-08-17');
INSERT INTO player_stats VALUES ('ply2481', '', 17, 'Midfielder', 179, 84, 'R');

INSERT INTO players VALUES ('ply2482', 'Dimitrios', 'Nikolaou', 'Greece',    '1998-08-13');
INSERT INTO player_stats VALUES ('ply2482', '', 43, 'Defender', 188, 82, 'L');

INSERT INTO players VALUES ('ply2483', 'Lucas', 'Digne', 'France',    '1993-07-20');
INSERT INTO player_stats VALUES ('ply2483', '', 27, 'Defender', 178, 74, 'L');

INSERT INTO players VALUES ('ply2484', 'Bruno', 'César', 'Brazil',    '1988-11-03');
INSERT INTO player_stats VALUES ('ply2484', '', 10, 'Midfielder', 178, 73, 'L');

INSERT INTO players VALUES ('ply2485', 'Bas', 'Dost', 'Netherlands',    '1989-05-31');
INSERT INTO player_stats VALUES ('ply2485', '', 28, 'Forward', 196, 78, 'R');

INSERT INTO players VALUES ('ply2486', 'Vadis', 'Odjidja-Ofoe', 'Belgium',    '1989-02-21');
INSERT INTO player_stats VALUES ('ply2486', '', 8, 'Midfielder', 185, 79, 'R');

INSERT INTO players VALUES ('ply2487', 'Denis', 'Suárez', 'Spain',    '1994-01-06');
INSERT INTO player_stats VALUES ('ply2487', '', 6, 'Midfielder', 178, 66, 'R');

INSERT INTO players VALUES ('ply2488', 'Sergio', 'Escudero', 'Spain',    '1989-09-02');
INSERT INTO player_stats VALUES ('ply2488', '', 18, 'Defender', 176, 65, 'L');

INSERT INTO players VALUES ('ply2489', 'Damjan', 'Bohar', 'Slovenia',    '1991-10-18');
INSERT INTO player_stats VALUES ('ply2489', '', 39, 'Forward', 172, 69, 'R');

INSERT INTO players VALUES ('ply2490', 'Martin', 'Kramarič', 'Slovenia',    '1997-11-14');
INSERT INTO player_stats VALUES ('ply2490', '', 10, 'Midfielder', 178, 72, 'R');

INSERT INTO players VALUES ('ply2491', '', 'Fernando', 'Brazil',    '1992-03-03');
INSERT INTO player_stats VALUES ('ply2491', '', 8, 'Midfielder', 175, 80, 'R');

INSERT INTO players VALUES ('ply2492', 'Franco', 'Vázquez', 'Argentina',    '1989-02-22');
INSERT INTO player_stats VALUES ('ply2492', '', 10, 'Midfielder', 187, 87, 'L');

INSERT INTO players VALUES ('ply2493', 'Sébastien', 'Corchia', 'France',    '1990-11-01');
INSERT INTO player_stats VALUES ('ply2493', '', 24, 'Defender', 176, 69, 'R');

INSERT INTO players VALUES ('ply2494', 'Lorenzo', 'Melgarejo', 'Paraguay',    '1990-08-10');
INSERT INTO player_stats VALUES ('ply2494', '', 35, 'Forward', 177, 75, 'R');

INSERT INTO players VALUES ('ply2495', 'Denis', 'Glushakov', 'Russia',    '1987-01-27');
INSERT INTO player_stats VALUES ('ply2495', '', 8, 'Midfielder', 182, 82, 'R');

INSERT INTO players VALUES ('ply2496', 'Luiz', 'Adriano', 'Brazil',    '1987-04-12');
INSERT INTO player_stats VALUES ('ply2496', '', 10, 'Forward', 184, 78, 'R');

INSERT INTO players VALUES ('ply2497', 'Éver', 'Banega', 'Argentina',    '1988-06-29');
INSERT INTO player_stats VALUES ('ply2497', '', 10, 'Arabia', 174, 71, 'R');

INSERT INTO players VALUES ('ply2498', 'Jasmin', 'Mešanović', 'Bosnia-Herzegovina',    '1992-01-06');
INSERT INTO player_stats VALUES ('ply2498', '', 27, 'Forward', 183, 75, 'R');

INSERT INTO players VALUES ('ply2499', 'Guido', 'Pizarro', 'Argentina',    '1990-02-26');
INSERT INTO player_stats VALUES ('ply2499', '', 19, 'Midfielder', 185, 78, 'R');

INSERT INTO players VALUES ('ply2500', '', 'Ganso', 'Brazil',    '1989-10-12');
INSERT INTO player_stats VALUES ('ply2500', '', 10, 'Midfielder', 184, 79, 'L');

INSERT INTO players VALUES ('ply2501', 'Facundo', 'Ferreyra', 'Argentina',    '1991-03-14');
INSERT INTO player_stats VALUES ('ply2501', '', 16, 'Forward', 183, 80, 'R');

INSERT INTO players VALUES ('ply2502', 'Sofyan', 'Amrabat', 'Morocco',    '1996-08-21');
INSERT INTO player_stats VALUES ('ply2502', '', 34, 'Midfielder', 185, 70, 'R');

INSERT INTO players VALUES ('ply2503', '', 'Bernard', 'Brazil',    '1992-09-08');
INSERT INTO player_stats VALUES ('ply2503', '', NULL, 'Forward', 164, 54, 'R');

INSERT INTO players VALUES ('ply2504', 'Bogdan', 'Butko', 'Ukraine',    '1991-01-13');
INSERT INTO player_stats VALUES ('ply2504', '', 2, 'Defender', 182, 74, 'R');

INSERT INTO players VALUES ('ply2505', 'Renato', 'Tapia', 'Peru',    '1995-07-28');
INSERT INTO player_stats VALUES ('ply2505', '', 14, 'Midfielder', 185, 80, 'R');

INSERT INTO players VALUES ('ply2506', 'Anderson', 'Talisca', 'Brazil',    '1994-02-01');
INSERT INTO player_stats VALUES ('ply2506', '', 94, 'Arabia', 188, 74, 'R');

INSERT INTO players VALUES ('ply2507', 'Ryan', 'Babel', 'Netherlands',    '1986-12-19');
INSERT INTO player_stats VALUES ('ply2507', '', 10, 'Forward', 185, 79, 'R');

INSERT INTO players VALUES ('ply2508', 'Álvaro', 'Negredo', 'Spain',    '1985-08-20');
INSERT INTO player_stats VALUES ('ply2508', '', 18, 'Forward', 186, 84, 'L');

INSERT INTO players VALUES ('ply2509', 'Youri', 'Tielemans', 'Belgium',    '1997-05-07');
INSERT INTO player_stats VALUES ('ply2509', '', 8, 'Midfielder', 176, 72, '');

INSERT INTO players VALUES ('ply2510', 'Vincent', 'Aboubakar', 'Cameroon',    '1992-01-22');
INSERT INTO player_stats VALUES ('ply2510', '', 9, 'Arabia', 184, 82, 'R');

INSERT INTO players VALUES ('ply2511', 'Miguel', 'Layún', 'Mexico',    '1988-06-25');
INSERT INTO player_stats VALUES ('ply2511', '', 19, 'Defender', 183, 75, '');

INSERT INTO players VALUES ('ply2512', 'Radamel', 'Falcao', 'Colombia',    '1986-02-10');
INSERT INTO player_stats VALUES ('ply2512', '', 9, 'Forward', 177, 72, 'R');

INSERT INTO players VALUES ('ply2513', 'Rony', 'Lopes', 'Portugal',    '1995-12-28');
INSERT INTO player_stats VALUES ('ply2513', '', 11, 'Forward', 174, 68, 'L');

INSERT INTO players VALUES ('ply2514', 'João', 'Moutinho', 'Portugal',    '1986-09-08');
INSERT INTO player_stats VALUES ('ply2514', '', 28, 'Midfielder', 170, 61, 'R');

INSERT INTO players VALUES ('ply2515', 'Maximiliano', 'Pereira', 'Uruguay',    '1984-06-08');
INSERT INTO player_stats VALUES ('ply2515', '', 16, 'Defender', 173, 73, 'R');

INSERT INTO players VALUES ('ply2516', 'Ricardo', 'Pereira', 'Portugal',    '1993-10-06');
INSERT INTO player_stats VALUES ('ply2516', '', 21, 'Defender', 175, 70, 'R');

INSERT INTO players VALUES ('ply2517', '', 'Jemerson', 'Brazil',    '1992-08-24');
INSERT INTO player_stats VALUES ('ply2517', '', NULL, 'Defender', 184, 77, 'R');

INSERT INTO players VALUES ('ply2518', 'Kamil', 'Glik', 'Poland',    '1988-02-03');
INSERT INTO player_stats VALUES ('ply2518', '', 15, 'Defender', 190, 80, 'R');

INSERT INTO players VALUES ('ply2519', 'Jeremain', 'Lens', 'Netherlands',    '1987-11-24');
INSERT INTO player_stats VALUES ('ply2519', '', NULL, 'Forward', 178, 75, 'R');

INSERT INTO players VALUES ('ply2520', 'Andrey', 'Yarmolenko', 'Ukraine',    '1989-10-23');
INSERT INTO player_stats VALUES ('ply2520', '', NULL, 'Emirates', 190, 81, 'L');

INSERT INTO players VALUES ('ply2521', 'Shinji', 'Kagawa', 'Japan',    '1989-03-17');
INSERT INTO player_stats VALUES ('ply2521', '', 10, 'Midfielder', 175, 68, '');

INSERT INTO players VALUES ('ply2522', 'Toby', 'Alderweireld', 'Belgium',    '1989-03-02');
INSERT INTO player_stats VALUES ('ply2522', '', 23, 'Defender', 186, 81, 'R');

INSERT INTO players VALUES ('ply2523', 'Borja', 'Mayoral', 'Spain',    '1997-04-05');
INSERT INTO player_stats VALUES ('ply2523', '', 19, 'Forward', 182, 73, 'R');

INSERT INTO players VALUES ('ply2524', '', 'Carlão', 'Brazil',    '1986-01-19');
INSERT INTO player_stats VALUES ('ply2524', '', NULL, 'Defender', 183, 73, 'L');

INSERT INTO players VALUES ('ply2525', 'Danny', 'Ings', 'England',    '1992-07-23');
INSERT INTO player_stats VALUES ('ply2525', '', 9, 'Forward', 178, 73, 'R');

INSERT INTO players VALUES ('ply2526', 'Kevin', 'Strootman', 'Netherlands',    '1990-02-13');
INSERT INTO player_stats VALUES ('ply2526', '', 8, 'Midfielder', 187, 78, 'L');

INSERT INTO players VALUES ('ply2527', 'Gökhan', 'Gönül', 'Turkey',    '1985-01-04');
INSERT INTO player_stats VALUES ('ply2527', '', 77, 'Defender', 175, 75, 'R');

INSERT INTO players VALUES ('ply2528', 'Vágner', 'Love', 'Brazil',    '1984-06-11');
INSERT INTO player_stats VALUES ('ply2528', '', NULL, 'Forward', 172, 72, 'R');

INSERT INTO players VALUES ('ply2529', 'Karl', 'Hein', 'Estonia',    '2002-04-13');
INSERT INTO player_stats VALUES ('ply2529', 'tm69', 31, 'Goalkeeper', 193, 76, 'R');

INSERT INTO players VALUES ('ply2530', 'Aaron', 'Ramsdale', 'England',    '1998-05-14');
INSERT INTO player_stats VALUES ('ply2530', 'tm69', 1, 'Goalkeeper', 190, 77, 'R');

INSERT INTO players VALUES ('ply2531', 'Matt', 'Turner', 'USA',    '1994-06-24');
INSERT INTO player_stats VALUES ('ply2531', 'tm69', 30, 'Goalkeeper', 191, 88, 'R');

INSERT INTO players VALUES ('ply2532', '', 'Cédric', 'Portugal',    '1991-08-31');
INSERT INTO player_stats VALUES ('ply2532', 'tm69', 17, 'Defender', 171, 67, 'R');

INSERT INTO players VALUES ('ply2533', '', 'Gabriel', 'Brazil',    '1997-12-19');
INSERT INTO player_stats VALUES ('ply2533', 'tm69', 6, 'Defender', 190, 78, 'L');

INSERT INTO players VALUES ('ply2534', 'Rob', 'Holding', 'England',    '1995-09-20');
INSERT INTO player_stats VALUES ('ply2534', 'tm69', 16, 'Defender', 189, 81, 'R');

INSERT INTO players VALUES ('ply2535', 'William', 'Saliba', 'France',    '2001-03-24');
INSERT INTO player_stats VALUES ('ply2535', 'tm69', 12, 'Defender', 192, 87, 'R');

INSERT INTO players VALUES ('ply2536', 'Lino', 'Sousa', 'England',    '2005-01-19');
INSERT INTO player_stats VALUES ('ply2536', 'tm69', 96, 'Defender', 185, NULL, 'L');

INSERT INTO players VALUES ('ply2537', 'Takehiro', 'Tomiyasu', 'Japan',    '1998-11-05');
INSERT INTO player_stats VALUES ('ply2537', 'tm69', 18, 'Defender', 188, 84, 'R');

INSERT INTO players VALUES ('ply2538', 'Ben', 'White', 'England',    '1997-10-08');
INSERT INTO player_stats VALUES ('ply2538', 'tm69', 4, 'Defender', 186, 77, 'R');

INSERT INTO players VALUES ('ply2539', 'Cătălin', 'Cîrjan', 'Romania',    '2002-12-01');
INSERT INTO player_stats VALUES ('ply2539', 'tm69', 44, 'Midfielder', 178, 62, 'R');

INSERT INTO players VALUES ('ply2540', 'Amario', 'Cozier-Duberry', 'England',    '2005-05-29');
INSERT INTO player_stats VALUES ('ply2540', 'tm69', 85, 'Midfielder', 171, NULL, 'L');

INSERT INTO players VALUES ('ply2541', 'Mohamed', 'Elneny', 'Egypt',    '1992-07-11');
INSERT INTO player_stats VALUES ('ply2541', 'tm69', 25, 'Midfielder', 179, 70, 'R');

INSERT INTO players VALUES ('ply2542', 'Albert', 'Lokonga', 'Belgium',    '1999-10-22');
INSERT INTO player_stats VALUES ('ply2542', 'tm69', 23, 'Midfielder', 183, 67, 'R');

INSERT INTO players VALUES ('ply2543', 'Ethan', 'Nwaneri', 'England',    '2007-03-21');
INSERT INTO player_stats VALUES ('ply2543', 'tm69', 83, 'Midfielder', NULL, NULL, 'L');

INSERT INTO players VALUES ('ply2544', 'Martin', 'Ødegaard', 'Norway',    '1998-12-17');
INSERT INTO player_stats VALUES ('ply2544', 'tm69', 8, 'Midfielder', 178, 68, 'L');

INSERT INTO players VALUES ('ply2545', 'Bukayo', 'Saka', 'England',    '2001-09-05');
INSERT INTO player_stats VALUES ('ply2545', 'tm69', 7, 'Midfielder', 178, 65, 'L');

INSERT INTO players VALUES ('ply2546', 'Matt', 'Smith', 'England',    '2000-10-05');
INSERT INTO player_stats VALUES ('ply2546', 'tm69', 72, 'Midfielder', 176, 70, 'R');

INSERT INTO players VALUES ('ply2547', 'Emile Smith', 'Rowe', 'England',    '2000-07-28');
INSERT INTO player_stats VALUES ('ply2547', 'tm69', 10, 'Midfielder', 182, 76, 'R');

INSERT INTO players VALUES ('ply2548', 'Granit', 'Xhaka', 'Switzerland',    '1992-09-27');
INSERT INTO player_stats VALUES ('ply2548', 'tm69', 34, 'Midfielder', 186, 82, 'L');

INSERT INTO players VALUES ('ply2549', 'Gabriel', 'Martinelli', 'Brazil',    '2001-06-18');
INSERT INTO player_stats VALUES ('ply2549', 'tm69', 11, 'Forward', 178, 75, 'R');

INSERT INTO players VALUES ('ply2550', '', 'Marquinhos', 'Brazil',    '2003-04-07');
INSERT INTO player_stats VALUES ('ply2550', 'tm69', 27, 'Forward', 175, 76, 'L');

INSERT INTO players VALUES ('ply2551', 'Reiss', 'Nelson', 'England',    '1999-12-10');
INSERT INTO player_stats VALUES ('ply2551', 'tm69', 24, 'Forward', 175, 71, 'R');

INSERT INTO players VALUES ('ply2552', 'Eddie', 'Nketiah', 'England',    '1999-05-30');
INSERT INTO player_stats VALUES ('ply2552', 'tm69', 14, 'Forward', 180, 73, 'R');

INSERT INTO players VALUES ('ply2553', 'Iñaki', 'Caña', 'Spain',    '1975-09-19');
INSERT INTO player_stats VALUES ('ply2553', 'tm69', NULL, 'Goalkeeping', 175, NULL, '');

INSERT INTO players VALUES ('ply2554', 'Simon', 'Bitcon', 'England',    '1975-03-01');
INSERT INTO player_stats VALUES ('ply2554', 'tm69', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply2555', 'Barry', 'Solan', 'England',    '1980-09-03');
INSERT INTO player_stats VALUES ('ply2555', 'tm69', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply2556', 'Sam', 'Wilson', 'England',    '1991-09-05');
INSERT INTO player_stats VALUES ('ply2556', 'tm69', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply2557', 'Nicolas', 'Jover', 'France',    '1981-10-28');
INSERT INTO player_stats VALUES ('ply2557', 'tm69', NULL, 'Technique', NULL, NULL, '');

INSERT INTO players VALUES ('ply2558', 'Sam', 'Hayball', 'England',    '1992-12-28');
INSERT INTO player_stats VALUES ('ply2558', 'tm69', NULL, 'Game', NULL, NULL, '');

INSERT INTO players VALUES ('ply2559', 'James', 'Krause', 'England',    '1987-01-09');
INSERT INTO player_stats VALUES ('ply2559', 'tm69', NULL, 'Game', 180, 65, '');

INSERT INTO players VALUES ('ply2560', 'Kevin', 'Balvers', 'Netherlands',    '1990-02-20');
INSERT INTO player_stats VALUES ('ply2560', 'tm69', NULL, 'Video', NULL, NULL, '');

INSERT INTO players VALUES ('ply2561', 'Andreas', 'Dithmer', 'Denmark',    '2005-08-01');
INSERT INTO player_stats VALUES ('ply2561', 'tm70', 41, 'Goalkeeper', 198, NULL, 'R');

INSERT INTO players VALUES ('ply2562', 'Kamil', 'Grabara', 'Poland',    '1999-01-08');
INSERT INTO player_stats VALUES ('ply2562', 'tm70', 1, 'Goalkeeper', 195, 80, 'R');

INSERT INTO players VALUES ('ply2563', 'Kalle', 'Johnsson', 'Sweden',    '1990-01-28');
INSERT INTO player_stats VALUES ('ply2563', 'tm70', 21, 'Goalkeeper', 188, 84, 'R');

INSERT INTO players VALUES ('ply2564', 'Mathew', 'Ryan', 'Australia',    '1992-04-08');
INSERT INTO player_stats VALUES ('ply2564', 'tm70', 51, 'Goalkeeper', 184, 82, 'R');

INSERT INTO players VALUES ('ply2565', 'Peter', 'Ankersen', 'Denmark',    '1990-09-22');
INSERT INTO player_stats VALUES ('ply2565', 'tm70', 22, 'Defender', 180, 73, 'R');

INSERT INTO players VALUES ('ply2566', 'Nicolai', 'Boilesen', 'Denmark',    '1992-02-16');
INSERT INTO player_stats VALUES ('ply2566', 'tm70', 20, 'Defender', 186, 75, 'L');

INSERT INTO players VALUES ('ply2567', 'Kevin', 'Diks', 'Netherlands',    '1996-10-06');
INSERT INTO player_stats VALUES ('ply2567', 'tm70', 2, 'Defender', 182, 78, 'R');

INSERT INTO players VALUES ('ply2568', 'Elias', 'Jelert', 'Denmark',    '2003-06-12');
INSERT INTO player_stats VALUES ('ply2568', 'tm70', 19, 'Defender', NULL, NULL, 'R');

INSERT INTO players VALUES ('ply2569', 'Davit', 'Khotcholava', 'Georgia',    '1993-02-08');
INSERT INTO player_stats VALUES ('ply2569', 'tm70', 5, 'Defender', 192, 80, 'R');

INSERT INTO players VALUES ('ply2570', 'Victor', 'Kristiansen', 'Denmark',    '2002-12-16');
INSERT INTO player_stats VALUES ('ply2570', 'tm70', 34, 'Defender', NULL, NULL, 'L');

INSERT INTO players VALUES ('ply2571', 'Valdemar Lund', 'Jensen', 'Denmark',    '2003-05-28');
INSERT INTO player_stats VALUES ('ply2571', 'tm70', 27, 'Defender', NULL, NULL, 'L');

INSERT INTO players VALUES ('ply2572', 'Christian', 'Sørensen', 'Denmark',    '1992-08-06');
INSERT INTO player_stats VALUES ('ply2572', 'tm70', 6, 'Defender', 179, 74, 'L');

INSERT INTO players VALUES ('ply2573', 'Denis', 'Vavro', 'Slovakia',    '1996-04-10');
INSERT INTO player_stats VALUES ('ply2573', 'tm70', 3, 'Defender', 189, 81, 'R');

INSERT INTO players VALUES ('ply2574', 'Akinkunmi', 'Amoo', 'Nigeria',    '2002-06-07');
INSERT INTO player_stats VALUES ('ply2574', 'tm70', 23, 'Midfielder', 163, NULL, 'L');

INSERT INTO players VALUES ('ply2575', 'Roony', 'Bardagji', 'Sweden',    '2005-11-15');
INSERT INTO player_stats VALUES ('ply2575', 'tm70', 40, 'Midfielder', 173, NULL, 'L');

INSERT INTO players VALUES ('ply2576', 'Rasmus', 'Falk', 'Denmark',    '1992-01-15');
INSERT INTO player_stats VALUES ('ply2576', 'tm70', 33, 'Midfielder', 177, 65, 'R');

INSERT INTO players VALUES ('ply2577', 'Hákon', 'Haraldsson', 'Iceland',    '2003-04-10');
INSERT INTO player_stats VALUES ('ply2577', 'tm70', 30, 'Midfielder', 180, NULL, 'R');

INSERT INTO players VALUES ('ply2578', 'Ísak', 'Jóhannesson', 'Iceland',    '2003-03-23');
INSERT INTO player_stats VALUES ('ply2578', 'tm70', 8, 'Midfielder', 184, NULL, 'L');

INSERT INTO players VALUES ('ply2579', 'Lukas', 'Lerager', 'Denmark',    '1993-07-12');
INSERT INTO player_stats VALUES ('ply2579', 'tm70', 12, 'Midfielder', 188, 80, 'R');

INSERT INTO players VALUES ('ply2580', 'Paul', 'Mukairu', 'Nigeria',    '2000-01-18');
INSERT INTO player_stats VALUES ('ply2580', 'tm70', 17, 'Midfielder', 182, 72, 'R');

INSERT INTO players VALUES ('ply2581', 'Marko', 'Stamenić', 'New Zealand',    '2002-02-19');
INSERT INTO player_stats VALUES ('ply2581', 'tm70', 35, 'Midfielder', 188, NULL, 'R');

INSERT INTO players VALUES ('ply2582', '', 'Zeca', 'Greece',    '1988-08-31');
INSERT INTO player_stats VALUES ('ply2582', 'tm70', 10, 'Midfielder', 182, 65, '');

INSERT INTO players VALUES ('ply2583', 'Khouma', 'Babacar', 'Senegal',    '1993-03-17');
INSERT INTO player_stats VALUES ('ply2583', 'tm70', 11, 'Forward', 185, 85, 'R');

INSERT INTO players VALUES ('ply2584', 'Andreas', 'Cornelius', 'Denmark',    '1993-03-16');
INSERT INTO player_stats VALUES ('ply2584', 'tm70', 14, 'Forward', 195, 91, 'L');

INSERT INTO players VALUES ('ply2585', 'Mohamed', 'Daramy', 'Denmark',    '2002-01-07');
INSERT INTO player_stats VALUES ('ply2585', 'tm70', 15, 'Forward', 180, 71, 'R');

INSERT INTO players VALUES ('ply2586', 'Mamoudou', 'Karamoko', 'France',    '1999-09-08');
INSERT INTO player_stats VALUES ('ply2586', 'tm70', 29, 'Forward', 188, 88, 'L');

INSERT INTO players VALUES ('ply2587', 'Orri', 'Óskarsson', 'Iceland',    '2004-08-29');
INSERT INTO player_stats VALUES ('ply2587', 'tm70', 18, 'Forward', 186, NULL, 'L');

INSERT INTO players VALUES ('ply2588', 'Kim', 'Christensen', 'Denmark',    '1979-07-16');
INSERT INTO player_stats VALUES ('ply2588', 'tm70', NULL, 'Goalkeeping', 185, 85, 'R');

INSERT INTO players VALUES ('ply2589', 'Andrew', 'Clark', 'Australia',    '1974-08-24');
INSERT INTO player_stats VALUES ('ply2589', 'tm70', NULL, 'Fitness', 180, 74, '');

INSERT INTO players VALUES ('ply2590', 'Nikita', 'Medvedev', 'Russia',    '1994-12-17');
INSERT INTO player_stats VALUES ('ply2590', 'tm71', 1, 'Goalkeeper', 192, 80, 'R');

INSERT INTO players VALUES ('ply2591', 'Ruslan', 'Murtazov', 'Russia',    '2003-03-11');
INSERT INTO player_stats VALUES ('ply2591', 'tm71', 68, 'Goalkeeper', 187, 75, 'R');

INSERT INTO players VALUES ('ply2592', 'Sergey', 'Pesyakov', 'Russia',    '1988-12-16');
INSERT INTO player_stats VALUES ('ply2592', 'tm71', 30, 'Goalkeeper', 199, 90, 'R');

INSERT INTO players VALUES ('ply2593', 'Mikhail', 'Tsulaya', 'Russia',    '2005-02-08');
INSERT INTO player_stats VALUES ('ply2593', 'tm71', 78, 'Goalkeeper', 190, 80, 'R');

INSERT INTO players VALUES ('ply2594', 'Evgeniy', 'Chernov', 'Russia',    '1992-10-23');
INSERT INTO player_stats VALUES ('ply2594', 'tm71', 28, 'Defender', 180, 73, 'L');

INSERT INTO players VALUES ('ply2595', 'Konstantin', 'Kovalev', 'Russia',    '2000-01-14');
INSERT INTO player_stats VALUES ('ply2595', 'tm71', 24, 'Defender', 178, 69, 'R');

INSERT INTO players VALUES ('ply2596', 'Andrey', 'Langovich', 'Russia',    '2003-05-28');
INSERT INTO player_stats VALUES ('ply2596', 'tm71', 87, 'Defender', 180, 70, 'R');

INSERT INTO players VALUES ('ply2597', 'Viktor', 'Melekhin', 'Russia',    '2003-12-16');
INSERT INTO player_stats VALUES ('ply2597', 'tm71', 92, 'Defender', 180, 70, 'R');

INSERT INTO players VALUES ('ply2598', 'Aleksandr', 'Mukhin', 'Russia',    '2002-04-29');
INSERT INTO player_stats VALUES ('ply2598', 'tm71', 29, 'Defender', 185, 73, 'L');

INSERT INTO players VALUES ('ply2599', 'Maksim', 'Osipenko', 'Russia',    '1994-05-16');
INSERT INTO player_stats VALUES ('ply2599', 'tm71', 55, 'Defender', 190, 80, 'R');

INSERT INTO players VALUES ('ply2600', 'Nikolay', 'Poyarkov', 'Russia',    '1999-10-16');
INSERT INTO player_stats VALUES ('ply2600', 'tm71', 71, 'Defender', 180, 71, 'L');

INSERT INTO players VALUES ('ply2601', 'Danila', 'Prokhin', 'Russia',    '2001-05-24');
INSERT INTO player_stats VALUES ('ply2601', 'tm71', 18, 'Defender', 187, 74, 'R');

INSERT INTO players VALUES ('ply2602', 'Aleksandr', 'Silyanov', 'Russia',    '2001-02-17');
INSERT INTO player_stats VALUES ('ply2602', 'tm71', 45, 'Defender', 185, 81, 'R');

INSERT INTO players VALUES ('ply2603', 'Aleksandr', 'Smirnov', 'Russia',    '1996-04-12');
INSERT INTO player_stats VALUES ('ply2603', 'tm71', 12, 'Defender', 178, 76, '');

INSERT INTO players VALUES ('ply2604', 'Denis', 'Terentyev', 'Russia',    '1992-08-13');
INSERT INTO player_stats VALUES ('ply2604', 'tm71', 5, 'Defender', 180, 73, 'R');

INSERT INTO players VALUES ('ply2605', 'Khoren', 'Bairamyan', 'Armenia',    '1992-01-07');
INSERT INTO player_stats VALUES ('ply2605', 'tm71', 19, 'Midfielder', 169, 63, 'R');

INSERT INTO players VALUES ('ply2606', 'Danil', 'Glebov', 'Russia',    '1999-11-03');
INSERT INTO player_stats VALUES ('ply2606', 'tm71', 15, 'Midfielder', 178, 68, 'R');

INSERT INTO players VALUES ('ply2607', 'Pavel', 'Gorelov', 'Russia',    '2003-01-22');
INSERT INTO player_stats VALUES ('ply2607', 'tm71', 60, 'Midfielder', 176, 65, 'R');

INSERT INTO players VALUES ('ply2608', 'Nikita', 'Kolotievsky', 'Russia',    '2001-03-04');
INSERT INTO player_stats VALUES ('ply2608', 'tm71', NULL, 'Midfielder', 182, 74, 'L');

INSERT INTO players VALUES ('ply2609', 'Aleksey', 'Mironov', 'Russia',    '2000-01-01');
INSERT INTO player_stats VALUES ('ply2609', 'tm71', 8, 'Midfielder', 175, 70, 'R');

INSERT INTO players VALUES ('ply2610', 'Aleksandr', 'Selyava', 'Belarus',    '1992-05-17');
INSERT INTO player_stats VALUES ('ply2610', 'tm71', 38, 'Midfielder', 180, 73, 'R');

INSERT INTO players VALUES ('ply2611', 'Daniil', 'Utkin', 'Russia',    '1999-10-12');
INSERT INTO player_stats VALUES ('ply2611', 'tm71', 47, 'Midfielder', 183, 72, 'L');

INSERT INTO players VALUES ('ply2612', 'Egor', 'Golenkov', 'Russia',    '1999-07-07');
INSERT INTO player_stats VALUES ('ply2612', 'tm71', 69, 'Forward', 189, 82, 'R');

INSERT INTO players VALUES ('ply2613', 'Nikolay', 'Komlichenko', 'Russia',    '1995-06-29');
INSERT INTO player_stats VALUES ('ply2613', 'tm71', 27, 'Forward', 193, 91, 'R');

INSERT INTO players VALUES ('ply2614', 'Stepan', 'Melnikov', 'Russia',    '2002-04-25');
INSERT INTO player_stats VALUES ('ply2614', 'tm71', 77, 'Forward', 180, 69, 'L');

INSERT INTO players VALUES ('ply2615', 'Artem', 'Ntumba', 'Russia',    '2003-04-19');
INSERT INTO player_stats VALUES ('ply2615', 'tm71', 89, 'Forward', 185, 79, '');

INSERT INTO players VALUES ('ply2616', 'Dmitriy', 'Poloz', 'Russia',    '1991-07-12');
INSERT INTO player_stats VALUES ('ply2616', 'tm71', 7, 'Forward', 183, 74, 'R');

INSERT INTO players VALUES ('ply2617', 'Kirill', 'Shchetinin', 'Russia',    '2002-01-17');
INSERT INTO player_stats VALUES ('ply2617', 'tm71', 88, 'Forward', 178, 70, 'R');

INSERT INTO players VALUES ('ply2618', 'David', 'Tosevski', 'North Macedonia',    '2001-07-16');
INSERT INTO player_stats VALUES ('ply2618', 'tm71', NULL, 'Forward', 186, 75, 'R');

INSERT INTO players VALUES ('ply2619', 'Roman', 'Tugarev', 'Russia',    '1998-07-22');
INSERT INTO player_stats VALUES ('ply2619', 'tm71', 23, 'Forward', 170, 63, 'R');

INSERT INTO players VALUES ('ply2620', 'Dominik', 'Hładun', 'Poland',    '1995-09-17');
INSERT INTO player_stats VALUES ('ply2620', 'tm72', 30, 'Goalkeeper', 190, 77, 'L');

INSERT INTO players VALUES ('ply2621', 'Cezary', 'Miszta', 'Poland',    '2001-10-30');
INSERT INTO player_stats VALUES ('ply2621', 'tm72', 31, 'Goalkeeper', 192, 80, '');

INSERT INTO players VALUES ('ply2622', 'Wojciech', 'Muzyk', 'Poland',    '1998-11-07');
INSERT INTO player_stats VALUES ('ply2622', 'tm72', 19, 'Goalkeeper', 195, 83, 'R');

INSERT INTO players VALUES ('ply2623', 'Kacper', 'Tobiasz', 'Poland',    '2002-11-04');
INSERT INTO player_stats VALUES ('ply2623', 'tm72', 1, 'Goalkeeper', 191, 80, 'L');

INSERT INTO players VALUES ('ply2624', 'Artur', 'Jędrzejczyk', 'Poland',    '1987-11-04');
INSERT INTO player_stats VALUES ('ply2624', 'tm72', 55, 'Defender', 189, 78, 'R');

INSERT INTO players VALUES ('ply2625', 'Mattias', 'Johansson', 'Sweden',    '1992-02-16');
INSERT INTO player_stats VALUES ('ply2625', 'tm72', 6, 'Defender', 174, 64, 'R');

INSERT INTO players VALUES ('ply2626', 'Filip', 'Mladenović', 'Serbia',    '1991-08-15');
INSERT INTO player_stats VALUES ('ply2626', 'tm72', 25, 'Defender', 180, 65, 'L');

INSERT INTO players VALUES ('ply2627', 'Maik', 'Nawrocki', 'Poland',    '2001-02-07');
INSERT INTO player_stats VALUES ('ply2627', 'tm72', 17, 'Defender', 185, 74, '');

INSERT INTO players VALUES ('ply2628', 'Nikodem', 'Niski', 'Poland',    '2002-04-14');
INSERT INTO player_stats VALUES ('ply2628', 'tm72', NULL, 'Defender', 178, 70, 'R');

INSERT INTO players VALUES ('ply2629', 'Lindsay', 'Rose', 'Mauritius',    '1992-02-08');
INSERT INTO player_stats VALUES ('ply2629', 'tm72', 29, 'Defender', 184, 79, 'R');

INSERT INTO players VALUES ('ply2630', 'Yuri', 'Ribeiro', 'Portugal',    '1997-01-24');
INSERT INTO player_stats VALUES ('ply2630', 'tm72', 5, 'Defender', 175, 72, 'L');

INSERT INTO players VALUES ('ply2631', 'Rafał', 'Augustyniak', 'Poland',    '1993-10-14');
INSERT INTO player_stats VALUES ('ply2631', 'tm72', 8, 'Midfielder', 185, 79, 'R');

INSERT INTO players VALUES ('ply2632', 'Jurgen', 'Çelhaka', 'Albania',    '2000-12-06');
INSERT INTO player_stats VALUES ('ply2632', 'tm72', 16, 'Midfielder', 183, 77, 'R');

INSERT INTO players VALUES ('ply2633', '', 'Josué', 'Portugal',    '1990-09-17');
INSERT INTO player_stats VALUES ('ply2633', 'tm72', 27, 'Midfielder', 174, 75, 'L');

INSERT INTO players VALUES ('ply2634', 'Bartosz', 'Kapustka', 'Poland',    '1996-12-23');
INSERT INTO player_stats VALUES ('ply2634', 'tm72', 67, 'Midfielder', 179, 62, 'R');

INSERT INTO players VALUES ('ply2635', 'Jakub', 'Kisiel', 'Poland',    '2003-02-05');
INSERT INTO player_stats VALUES ('ply2635', 'tm72', 63, 'Midfielder', 184, 74, 'R');

INSERT INTO players VALUES ('ply2636', 'Karol', 'Noiszewski', 'Poland',    '1999-11-13');
INSERT INTO player_stats VALUES ('ply2636', 'tm72', 62, 'Midfielder', 193, 92, 'R');

INSERT INTO players VALUES ('ply2637', 'Bartosz', 'Slisz', 'Poland',    '1999-03-29');
INSERT INTO player_stats VALUES ('ply2637', 'tm72', 99, 'Midfielder', 179, 70, 'R');

INSERT INTO players VALUES ('ply2638', 'Patryk', 'Sokołowski', 'Poland',    '1994-09-25');
INSERT INTO player_stats VALUES ('ply2638', 'tm72', 18, 'Midfielder', 182, 73, 'R');

INSERT INTO players VALUES ('ply2639', 'Makana', 'Baku', 'Germany',    '1998-04-08');
INSERT INTO player_stats VALUES ('ply2639', 'tm72', 28, 'Forward', 177, 72, 'R');

INSERT INTO players VALUES ('ply2640', '', 'Carlitos', 'Spain',    '1990-06-12');
INSERT INTO player_stats VALUES ('ply2640', 'tm72', 19, 'Forward', 176, 70, 'R');

INSERT INTO players VALUES ('ply2641', 'Wiktor', 'Kamiński', 'Poland',    '2004-02-23');
INSERT INTO player_stats VALUES ('ply2641', 'tm72', 97, 'Forward', 177, 57, '');

INSERT INTO players VALUES ('ply2642', 'Blaž', 'Kramer', 'Slovenia',    '1996-06-01');
INSERT INTO player_stats VALUES ('ply2642', 'tm72', 9, 'Forward', 191, 87, 'R');

INSERT INTO players VALUES ('ply2643', 'Ernest', 'Muçi', 'Albania',    '2001-03-19');
INSERT INTO player_stats VALUES ('ply2643', 'tm72', 20, 'Forward', 180, 75, '');

INSERT INTO players VALUES ('ply2644', 'Róbert', 'Pich', 'Slovakia',    '1988-11-12');
INSERT INTO player_stats VALUES ('ply2644', 'tm72', 11, 'Forward', 173, 68, '');

INSERT INTO players VALUES ('ply2645', 'Maciej', 'Rosołek', 'Poland',    '2001-09-02');
INSERT INTO player_stats VALUES ('ply2645', 'tm72', 39, 'Forward', 183, 78, '');

INSERT INTO players VALUES ('ply2646', 'Kacper', 'Skibicki', 'Poland',    '2001-10-11');
INSERT INTO player_stats VALUES ('ply2646', 'tm72', 22, 'Forward', 174, 64, '');

INSERT INTO players VALUES ('ply2647', 'Kacper', 'Skwierczyński', 'Poland',    '2003-01-11');
INSERT INTO player_stats VALUES ('ply2647', 'tm72', 77, 'Forward', 170, 58, '');

INSERT INTO players VALUES ('ply2648', 'Igor', 'Strzalek', 'Poland',    '2004-01-19');
INSERT INTO player_stats VALUES ('ply2648', 'tm72', 86, 'Forward', 183, NULL, '');

INSERT INTO players VALUES ('ply2649', 'Paweł', 'Wszołek', 'Poland',    '1992-04-30');
INSERT INTO player_stats VALUES ('ply2649', 'tm72', 13, 'Forward', 186, 77, 'R');

INSERT INTO players VALUES ('ply2650', 'Daniel', 'Iversen', 'Denmark',    '1997-07-19');
INSERT INTO player_stats VALUES ('ply2650', 'tm73', 31, 'Goalkeeper', 191, 80, 'R');

INSERT INTO players VALUES ('ply2651', 'Alex', 'Smithies', 'England',    '1990-03-05');
INSERT INTO player_stats VALUES ('ply2651', 'tm73', NULL, 'Goalkeeper', 189, 84, 'R');

INSERT INTO players VALUES ('ply2652', 'Danny', 'Ward', 'Wales',    '1993-06-22');
INSERT INTO player_stats VALUES ('ply2652', 'tm73', 1, 'Goalkeeper', 191, 88, 'R');

INSERT INTO players VALUES ('ply2653', 'Ryan', 'Bertrand', 'England',    '1989-08-05');
INSERT INTO player_stats VALUES ('ply2653', 'tm73', 5, 'Defender', 179, 85, 'L');

INSERT INTO players VALUES ('ply2654', 'Jonny', 'Evans', 'Northern Ireland',    '1988-01-03');
INSERT INTO player_stats VALUES ('ply2654', 'tm73', 6, 'Defender', 188, 77, '');

INSERT INTO players VALUES ('ply2655', 'Wout', 'Faes', 'Belgium',    '1998-04-03');
INSERT INTO player_stats VALUES ('ply2655', 'tm73', 3, 'Defender', 187, 84, 'R');

INSERT INTO players VALUES ('ply2656', 'James', 'Justin', 'England',    '1998-02-23');
INSERT INTO player_stats VALUES ('ply2656', 'tm73', 2, 'Defender', 183, 80, 'R');

INSERT INTO players VALUES ('ply2657', 'Çağlar', 'Söyüncü', 'Turkey',    '1996-05-23');
INSERT INTO player_stats VALUES ('ply2657', 'tm73', 4, 'Defender', 187, 82, 'R');

INSERT INTO players VALUES ('ply2658', 'Luke', 'Thomas', 'England',    '2001-06-10');
INSERT INTO player_stats VALUES ('ply2658', 'tm73', 33, 'Defender', 181, 68, 'L');

INSERT INTO players VALUES ('ply2659', 'Jannik', 'Vestergaard', 'Denmark',    '1992-08-03');
INSERT INTO player_stats VALUES ('ply2659', 'tm73', 23, 'Defender', 199, 98, '');

INSERT INTO players VALUES ('ply2660', 'Marc', 'Albrighton', 'England',    '1989-11-18');
INSERT INTO player_stats VALUES ('ply2660', 'tm73', 11, 'Midfielder', 175, 74, 'R');

INSERT INTO players VALUES ('ply2661', 'Daniel', 'Amartey', 'Ghana',    '1994-12-21');
INSERT INTO player_stats VALUES ('ply2661', 'tm73', 18, 'Midfielder', 186, 79, 'R');

INSERT INTO players VALUES ('ply2662', 'Harvey', 'Barnes', 'England',    '1997-12-09');
INSERT INTO player_stats VALUES ('ply2662', 'tm73', 7, 'Midfielder', 182, 66, 'R');

INSERT INTO players VALUES ('ply2663', 'Lewis', 'Brunt', 'England',    '2000-11-06');
INSERT INTO player_stats VALUES ('ply2663', 'tm73', 34, 'Midfielder', 187, 68, 'R');

INSERT INTO players VALUES ('ply2664', 'Kiernan', 'Dewsbury-Hall', 'England',    '1998-09-06');
INSERT INTO player_stats VALUES ('ply2664', 'tm73', 22, 'Midfielder', 178, 70, 'L');

INSERT INTO players VALUES ('ply2665', 'James', 'Maddison', 'England',    '1996-11-23');
INSERT INTO player_stats VALUES ('ply2665', 'tm73', 10, 'Midfielder', 175, 73, 'R');

INSERT INTO players VALUES ('ply2666', 'Nampalys', 'Mendy', 'Senegal',    '1992-06-23');
INSERT INTO player_stats VALUES ('ply2666', 'tm73', 24, 'Midfielder', 167, 73, 'R');

INSERT INTO players VALUES ('ply2667', 'Wilfred', 'Ndidi', 'Nigeria',    '1996-12-16');
INSERT INTO player_stats VALUES ('ply2667', 'tm73', 25, 'Midfielder', 183, 74, 'R');

INSERT INTO players VALUES ('ply2668', 'Dennis', 'Praet', 'Belgium',    '1994-05-14');
INSERT INTO player_stats VALUES ('ply2668', 'tm73', 26, 'Midfielder', 181, 78, 'R');

INSERT INTO players VALUES ('ply2669', 'Boubakary', 'Soumaré', 'France',    '1999-02-27');
INSERT INTO player_stats VALUES ('ply2669', 'tm73', 42, 'Midfielder', 188, 82, 'R');

INSERT INTO players VALUES ('ply2670', 'Ayoze', 'Pérez', 'Spain',    '1993-07-29');
INSERT INTO player_stats VALUES ('ply2670', 'tm73', 17, 'Forward', 178, 72, 'R');

INSERT INTO players VALUES ('ply2671', 'Kelechi', 'Iheanacho', 'Nigeria',    '1996-10-03');
INSERT INTO player_stats VALUES ('ply2671', 'tm73', 14, 'Forward', 185, 82, 'L');

INSERT INTO players VALUES ('ply2672', 'Jamie', 'Vardy', 'England',    '1987-01-11');
INSERT INTO player_stats VALUES ('ply2672', 'tm73', 9, 'Forward', 179, 76, 'R');

INSERT INTO players VALUES ('ply2673', 'Mike', 'Stowell', 'England',    '1965-04-19');
INSERT INTO player_stats VALUES ('ply2673', 'tm73', NULL, 'Goalkeeping', 188, 74, '');

INSERT INTO players VALUES ('ply2674', 'Glen', 'Driscoll', 'England',    '1973-07-13');
INSERT INTO player_stats VALUES ('ply2674', 'tm73', NULL, 'Fitness', NULL, NULL, '');

INSERT INTO players VALUES ('ply2675', 'Andy', 'Blake', 'England',    '1981-09-26');
INSERT INTO player_stats VALUES ('ply2675', 'tm73', NULL, 'Chief', NULL, NULL, '');

INSERT INTO players VALUES ('ply2676', 'Damyan', 'Hristov', 'Bulgaria',    '2002-11-10');
INSERT INTO player_stats VALUES ('ply2676', 'tm74', 67, 'Goalkeeper', NULL, NULL, '');

INSERT INTO players VALUES ('ply2677', 'Sergio', 'Padt', 'Netherlands',    '1990-06-06');
INSERT INTO player_stats VALUES ('ply2677', 'tm74', 1, 'Goalkeeper', 197, 82, 'R');

INSERT INTO players VALUES ('ply2678', 'Simon', 'Sluga', 'Croatia',    '1993-03-17');
INSERT INTO player_stats VALUES ('ply2678', 'tm74', 12, 'Goalkeeper', 191, 81, 'R');

INSERT INTO players VALUES ('ply2679', '', 'Cicinho', 'Bulgaria',    '1988-12-26');
INSERT INTO player_stats VALUES ('ply2679', 'tm74', 4, 'Defender', 168, 65, 'R');

INSERT INTO players VALUES ('ply2680', 'Tihomir', 'Dimitrov', 'Bulgaria',    '2000-02-04');
INSERT INTO player_stats VALUES ('ply2680', 'tm74', 79, 'Defender', 176, NULL, 'R');

INSERT INTO players VALUES ('ply2681', 'Aleksandar', 'Ganchev', 'Bulgaria',    '2001-07-09');
INSERT INTO player_stats VALUES ('ply2681', 'tm74', 91, 'Defender', 185, NULL, '');

INSERT INTO players VALUES ('ply2682', 'Žan', 'Karničnik', 'Slovenia',    '1994-09-18');
INSERT INTO player_stats VALUES ('ply2682', 'tm74', 21, 'Defender', 184, 69, 'R');

INSERT INTO players VALUES ('ply2683', 'Anton', 'Nedyalkov', 'Bulgaria',    '1993-04-30');
INSERT INTO player_stats VALUES ('ply2683', 'tm74', 3, 'Defender', 181, 70, '');

INSERT INTO players VALUES ('ply2684', 'Igor', 'Plastun', 'Ukraine',    '1990-08-20');
INSERT INTO player_stats VALUES ('ply2684', 'tm74', 32, 'Defender', 193, 80, 'R');

INSERT INTO players VALUES ('ply2685', '', 'Show', 'Angola',    '1999-03-06');
INSERT INTO player_stats VALUES ('ply2685', 'tm74', 23, 'Defender', 180, 75, 'R');

INSERT INTO players VALUES ('ply2686', 'Georgi', 'Terziev', 'Bulgaria',    '1992-04-18');
INSERT INTO player_stats VALUES ('ply2686', 'tm74', 5, 'Defender', 186, 79, '');

INSERT INTO players VALUES ('ply2687', 'Olivier', 'Verdon', 'Benin',    '1995-10-05');
INSERT INTO player_stats VALUES ('ply2687', 'tm74', 24, 'Defender', 190, 85, 'R');

INSERT INTO players VALUES ('ply2688', 'Aslak', 'Witry', 'Norway',    '1996-03-10');
INSERT INTO player_stats VALUES ('ply2688', 'tm74', 16, 'Defender', 176, NULL, 'R');

INSERT INTO players VALUES ('ply2689', '', 'Cauly', 'Brazil',    '1995-09-15');
INSERT INTO player_stats VALUES ('ply2689', 'tm74', 95, 'Midfielder', 172, 68, '');

INSERT INTO players VALUES ('ply2690', 'Claude', 'Gonçalves', 'Portugal',    '1994-04-09');
INSERT INTO player_stats VALUES ('ply2690', 'tm74', 8, 'Midfielder', 174, 69, 'R');

INSERT INTO players VALUES ('ply2691', 'Petar', 'Georgiev', 'Bulgaria',    '2002-05-10');
INSERT INTO player_stats VALUES ('ply2691', 'tm74', 75, 'Midfielder', 170, NULL, '');

INSERT INTO players VALUES ('ply2692', 'Danny', 'Gruper', 'Israel',    '1999-03-16');
INSERT INTO player_stats VALUES ('ply2692', 'tm74', 14, 'Midfielder', NULL, NULL, 'L');

INSERT INTO players VALUES ('ply2693', '', 'Nonato', 'Brazil',    '1998-03-03');
INSERT INTO player_stats VALUES ('ply2693', 'tm74', 20, 'Midfielder', 174, 68, 'R');

INSERT INTO players VALUES ('ply2694', 'Pedro', 'Naressi', 'Brazil',    '1998-01-10');
INSERT INTO player_stats VALUES ('ply2694', 'tm74', 30, 'Midfielder', 178, 78, 'R');

INSERT INTO players VALUES ('ply2695', 'Jakub', 'Piotrowski', 'Poland',    '1997-10-04');
INSERT INTO player_stats VALUES ('ply2695', 'tm74', 6, 'Midfielder', 188, 81, 'R');

INSERT INTO players VALUES ('ply2696', 'Dominik', 'Yankov', 'Bulgaria',    '2000-07-28');
INSERT INTO player_stats VALUES ('ply2696', 'tm74', 64, 'Midfielder', 180, NULL, 'R');

INSERT INTO players VALUES ('ply2697', 'Ivan', 'Yordanov', 'Bulgaria',    '2000-11-07');
INSERT INTO player_stats VALUES ('ply2697', 'tm74', 82, 'Midfielder', 170, NULL, 'R');

INSERT INTO players VALUES ('ply2698', 'Spas', 'Delev', 'Bulgaria',    '1989-09-22');
INSERT INTO player_stats VALUES ('ply2698', 'tm74', 90, 'Forward', 169, 68, '');

INSERT INTO players VALUES ('ply2699', 'Kiril', 'Despodov', 'Bulgaria',    '1996-11-11');
INSERT INTO player_stats VALUES ('ply2699', 'tm74', 11, 'Forward', 179, 74, 'R');

INSERT INTO players VALUES ('ply2700', '', 'Jorghinho', 'Guinea-Bissau',    '1995-09-21');
INSERT INTO player_stats VALUES ('ply2700', 'tm74', 17, 'Forward', 171, 68, 'R');

INSERT INTO players VALUES ('ply2701', 'Hyusein', 'Kelyovluev', 'Bulgaria',    '2000-05-11');
INSERT INTO player_stats VALUES ('ply2701', 'tm74', 74, 'Forward', NULL, NULL, '');

INSERT INTO players VALUES ('ply2702', 'Vladislav', 'Naydenov', 'Bulgaria',    '2001-11-29');
INSERT INTO player_stats VALUES ('ply2702', 'tm74', 38, 'Forward', 167, NULL, '');

INSERT INTO players VALUES ('ply2703', '', 'Rick', 'Brazil',    '1999-09-02');
INSERT INTO player_stats VALUES ('ply2703', 'tm74', 73, 'Forward', 170, 66, '');

INSERT INTO players VALUES ('ply2704', 'Bernard', 'Tekpetey', 'Ghana',    '1997-09-03');
INSERT INTO player_stats VALUES ('ply2704', 'tm74', 37, 'Forward', 172, 69, 'R');

INSERT INTO players VALUES ('ply2705', '', 'Thiago', 'Brazil',    '2001-06-26');
INSERT INTO player_stats VALUES ('ply2705', 'tm74', 9, 'Forward', 188, 85, 'R');

INSERT INTO players VALUES ('ply2706', 'Matías', 'Tissera', 'Argentina',    '1996-09-06');
INSERT INTO player_stats VALUES ('ply2706', 'tm74', 10, 'Forward', 180, 72, 'R');

INSERT INTO players VALUES ('ply2707', 'Jonathan', 'Cafú', 'Brazil',    '1991-07-10');
INSERT INTO player_stats VALUES ('ply2707', '', 21, 'Forward', 175, 65, 'R');

INSERT INTO players VALUES ('ply2708', '', 'Marcelinho', 'Bulgaria',    '1984-08-24');
INSERT INTO player_stats VALUES ('ply2708', '', NULL, 'Midfielder', 177, 70, 'R');

INSERT INTO players VALUES ('ply2709', 'Theo', 'Walcott', 'England',    '1989-03-16');
INSERT INTO player_stats VALUES ('ply2709', '', 32, 'Forward', 175, 68, '');

INSERT INTO players VALUES ('ply2710', 'Natanael', 'Pimenta', 'Brazil',    '1990-12-25');
INSERT INTO player_stats VALUES ('ply2710', '', 25, 'Defender', 168, 65, 'L');

INSERT INTO players VALUES ('ply2711', 'Santi', 'Cazorla', 'Spain',    '1984-12-13');
INSERT INTO player_stats VALUES ('ply2711', '', 19, 'Midfielder', 168, 65, '');

INSERT INTO players VALUES ('ply2712', 'Lucas', 'Pérez', 'Spain',    '1988-09-10');
INSERT INTO player_stats VALUES ('ply2712', '', 15, 'Forward', 180, 82, 'L');

INSERT INTO players VALUES ('ply2713', '', 'Wanderson', 'Bulgaria',    '1988-01-02');
INSERT INTO player_stats VALUES ('ply2713', '', NULL, 'Forward', 167, 67, 'R');

INSERT INTO players VALUES ('ply2714', 'Claudiu', 'Keșerü', 'Romania',    '1986-12-02');
INSERT INTO player_stats VALUES ('ply2714', '', 28, 'Forward', 180, 81, 'L');

INSERT INTO players VALUES ('ply2715', 'Alex', 'Iwobi', 'Nigeria',    '1996-05-03');
INSERT INTO player_stats VALUES ('ply2715', '', 17, 'Forward', 183, 75, 'R');

INSERT INTO players VALUES ('ply2716', 'Kieran', 'Gibbs', 'England',    '1989-09-26');
INSERT INTO player_stats VALUES ('ply2716', '', 3, 'Defender', 180, 70, 'L');

INSERT INTO players VALUES ('ply2717', 'Virgil', 'Misidjan', 'Netherlands',    '1993-07-24');
INSERT INTO player_stats VALUES ('ply2717', '', 10, 'Forward', 173, 70, '');

INSERT INTO players VALUES ('ply2718', 'Serhiy', 'Rybalka', 'Ukraine',    '1990-04-01');
INSERT INTO player_stats VALUES ('ply2718', '', 37, 'Midfielder', 176, 70, 'R');

INSERT INTO players VALUES ('ply2719', 'Gonçalo', 'Guedes', 'Portugal',    '1996-11-29');
INSERT INTO player_stats VALUES ('ply2719', '', 17, 'Forward', 179, 68, 'R');

INSERT INTO players VALUES ('ply2720', 'Manolo', 'Gabbiadini', 'Italy',    '1991-11-26');
INSERT INTO player_stats VALUES ('ply2720', '', 23, 'Forward', 186, 81, 'L');

INSERT INTO players VALUES ('ply2721', 'Ljubomir', 'Fejsa', 'Serbia',    '1988-08-14');
INSERT INTO player_stats VALUES ('ply2721', '', 15, 'Midfielder', 183, 80, 'R');

INSERT INTO players VALUES ('ply2722', 'Derlis', 'González', 'Paraguay',    '1994-03-20');
INSERT INTO player_stats VALUES ('ply2722', '', 10, 'Forward', 172, 75, 'R');

INSERT INTO players VALUES ('ply2723', 'Raúl', 'Jiménez', 'Mexico',    '1991-05-05');
INSERT INTO player_stats VALUES ('ply2723', '', 9, 'Forward', 188, 81, 'R');

INSERT INTO players VALUES ('ply2724', '', 'Nolito', 'Spain',    '1986-10-15');
INSERT INTO player_stats VALUES ('ply2724', '', 9, 'Forward', 175, 73, 'R');

INSERT INTO players VALUES ('ply2725', 'André', 'Hahn', 'Germany',    '1990-08-13');
INSERT INTO player_stats VALUES ('ply2725', '', 28, 'Forward', 185, 80, 'R');

INSERT INTO players VALUES ('ply2726', 'Aleix', 'Vidal', 'Spain',    '1989-08-21');
INSERT INTO player_stats VALUES ('ply2726', '', 22, 'Defender', 177, 70, 'R');

INSERT INTO players VALUES ('ply2727', 'Luciano', 'Narsingh', 'Netherlands',    '1990-09-13');
INSERT INTO player_stats VALUES ('ply2727', '', 9, 'Forward', 175, 69, 'R');

INSERT INTO players VALUES ('ply2728', 'Christian', 'Noboa', 'Ecuador',    '1985-04-09');
INSERT INTO player_stats VALUES ('ply2728', '', 16, 'Midfielder', 182, 75, 'R');

INSERT INTO players VALUES ('ply2729', 'Admir', 'Mehmedi', 'Switzerland',    '1991-03-16');
INSERT INTO player_stats VALUES ('ply2729', '', 14, 'Forward', 183, 78, 'R');

INSERT INTO players VALUES ('ply2730', 'Roman', 'Eremenko', 'Finland',    '1987-03-19');
INSERT INTO player_stats VALUES ('ply2730', '', 18, 'Midfielder', 186, 80, 'R');

INSERT INTO players VALUES ('ply2731', 'Javier', 'Hernández', 'Mexico',    '1988-06-01');
INSERT INTO player_stats VALUES ('ply2731', '', 14, 'Forward', 175, 73, 'R');

INSERT INTO players VALUES ('ply2732', 'Guido', 'Carrillo', 'Argentina',    '1991-05-25');
INSERT INTO player_stats VALUES ('ply2732', '', NULL, 'Forward', 191, 87, 'R');

INSERT INTO players VALUES ('ply2733', 'Valère', 'Germain', 'France',    '1990-04-17');
INSERT INTO player_stats VALUES ('ply2733', '', 9, 'Forward', 180, 73, 'R');

INSERT INTO players VALUES ('ply2734', 'Vladlen', 'Yurchenko', 'Ukraine',    '1994-01-22');
INSERT INTO player_stats VALUES ('ply2734', '', 80, 'Midfielder', 181, 74, 'R');

INSERT INTO players VALUES ('ply2735', 'Zoran', 'Tošić', 'Serbia',    '1987-04-28');
INSERT INTO player_stats VALUES ('ply2735', '', 11, 'Forward', 171, 71, 'L');

INSERT INTO players VALUES ('ply2736', '', 'Bartra', 'Spain',    '1991-01-15');
INSERT INTO player_stats VALUES ('ply2736', '', 3, 'Defender', 184, 73, 'R');

INSERT INTO players VALUES ('ply2737', 'Bryan', 'Ruiz', 'Costa Rica',    '1985-08-18');
INSERT INTO player_stats VALUES ('ply2737', '', 10, 'Rica', 187, 81, 'L');

INSERT INTO players VALUES ('ply2738', 'Adrien', 'Silva', 'Portugal',    '1989-03-15');
INSERT INTO player_stats VALUES ('ply2738', '', 23, 'Emirates', 175, 75, 'R');

INSERT INTO players VALUES ('ply2739', 'Tomasz', 'Jodłowiec', 'Poland',    '1985-09-08');
INSERT INTO player_stats VALUES ('ply2739', '', 30, 'Midfielder', 190, 87, 'R');

INSERT INTO players VALUES ('ply2740', 'William', 'Carvalho', 'Portugal',    '1992-04-07');
INSERT INTO player_stats VALUES ('ply2740', '', 14, 'Midfielder', 187, 83, 'R');

INSERT INTO players VALUES ('ply2741', 'Adrián', 'Ramos', 'Colombia',    '1986-01-22');
INSERT INTO player_stats VALUES ('ply2741', '', 20, 'Forward', 186, 78, 'R');

INSERT INTO players VALUES ('ply2742', 'Matthias', 'Ginter', 'Germany',    '1994-01-19');
INSERT INTO player_stats VALUES ('ply2742', '', 28, 'Defender', 191, 86, 'R');

INSERT INTO players VALUES ('ply2743', '', 'Guilherme', 'Brazil',    '1991-05-21');
INSERT INTO player_stats VALUES ('ply2743', '', 12, 'Midfielder', 174, 70, 'L');

INSERT INTO players VALUES ('ply2744', 'Thibault', 'Moulin', 'France',    '1990-01-13');
INSERT INTO player_stats VALUES ('ply2744', '', NULL, 'Midfielder', 174, 68, 'R');

INSERT INTO players VALUES ('ply2745', 'Aleksandar', 'Prijović', 'Serbia',    '1990-04-21');
INSERT INTO player_stats VALUES ('ply2745', '', 99, 'Forward', 191, 83, 'R');

INSERT INTO players VALUES ('ply2746', 'Bartosz', 'Bereszyński', 'Poland',    '1992-07-12');
INSERT INTO player_stats VALUES ('ply2746', '', 24, 'Defender', 183, 77, 'R');

INSERT INTO players VALUES ('ply2747', 'Michał', 'Kucharczyk', 'Poland',    '1991-03-20');
INSERT INTO player_stats VALUES ('ply2747', '', 18, 'Forward', 178, 72, 'R');

INSERT INTO players VALUES ('ply2748', 'Nemanja', 'Nikolić', 'Hungary',    '1987-12-31');
INSERT INTO player_stats VALUES ('ply2748', '', 31, 'Forward', 180, 79, '');

INSERT INTO players VALUES ('ply2749', 'Jakub', 'Rzeźniczak', 'Poland',    '1986-10-26');
INSERT INTO player_stats VALUES ('ply2749', '', 25, 'Defender', 183, 82, 'R');

INSERT INTO players VALUES ('ply2750', 'Stefano', 'Denswil', 'Netherlands',    '1993-05-07');
INSERT INTO player_stats VALUES ('ply2750', '', 24, 'Defender', 188, 81, 'L');

INSERT INTO players VALUES ('ply2751', 'Benjamin', 'Verbič', 'Slovenia',    '1993-11-27');
INSERT INTO player_stats VALUES ('ply2751', '', NULL, 'Midfielder', 179, 70, 'R');

INSERT INTO players VALUES ('ply2752', 'Federico', 'Santander', 'Paraguay',    '1991-06-04');
INSERT INTO player_stats VALUES ('ply2752', '', 19, 'Forward', 187, 84, 'R');

INSERT INTO players VALUES ('ply2753', 'Ludwig', 'Augustinsson', 'Sweden',    '1994-04-21');
INSERT INTO player_stats VALUES ('ply2753', '', 17, 'Defender', 181, 76, 'L');

INSERT INTO players VALUES ('ply2754', '', 'Zanka', 'Denmark',    '1990-04-23');
INSERT INTO player_stats VALUES ('ply2754', '', 13, 'Defender', 191, 79, 'R');

INSERT INTO players VALUES ('ply2755', 'Islam', 'Slimani', 'Algeria',    '1988-06-18');
INSERT INTO player_stats VALUES ('ply2755', '', 13, 'Forward', 188, 83, 'R');

INSERT INTO players VALUES ('ply2756', 'Jelle', 'Vossen', 'Belgium',    '1989-03-22');
INSERT INTO player_stats VALUES ('ply2756', '', 9, 'Forward', 183, 70, 'R');

INSERT INTO players VALUES ('ply2757', 'Shinji', 'Okazaki', 'Japan',    '1986-04-16');
INSERT INTO player_stats VALUES ('ply2757', '', 30, 'Forward', 174, 70, '');

INSERT INTO players VALUES ('ply2758', 'Christian', 'Fuchs', 'Austria',    '1986-04-07');
INSERT INTO player_stats VALUES ('ply2758', '', 22, 'Defender', 187, 89, 'L');

INSERT INTO players VALUES ('ply2759', '', 'Rafael', 'Brazil',    '1990-07-09');
INSERT INTO player_stats VALUES ('ply2759', '', 7, 'Defender', 172, 78, 'R');

INSERT INTO players VALUES ('ply2760', 'Jordan', 'Ferri', 'France',    '1992-03-12');
INSERT INTO player_stats VALUES ('ply2760', '', 12, 'Midfielder', 173, 73, 'R');

INSERT INTO players VALUES ('ply2761', 'Luciano', 'Vietto', 'Argentina',    '1993-12-05');
INSERT INTO player_stats VALUES ('ply2761', '', 10, 'Arabia', 173, 69, 'R');

INSERT INTO players VALUES ('ply2762', '', 'Mariano', 'Brazil',    '1986-06-23');
INSERT INTO player_stats VALUES ('ply2762', '', 25, 'Defender', 177, 70, 'R');

INSERT INTO players VALUES ('ply2763', '', 'Vitolo', 'Spain',    '1989-11-02');
INSERT INTO player_stats VALUES ('ply2763', '', 7, 'Forward', 185, 78, 'R');

INSERT INTO players VALUES ('ply2764', 'Steven', 'N''Zonzi', 'France',    '1988-12-15');
INSERT INTO player_stats VALUES ('ply2764', '', 88, 'Midfielder', 196, 89, 'R');

INSERT INTO players VALUES ('ply2765', 'Mario', 'Lemina', 'Gabon',    '1993-09-01');
INSERT INTO player_stats VALUES ('ply2765', '', 99, 'Midfielder', 184, 84, 'R');

INSERT INTO players VALUES ('ply2766', 'Marko', 'Pjaca', 'Croatia',    '1995-05-06');
INSERT INTO player_stats VALUES ('ply2766', '', 14, 'Forward', 186, 82, 'R');

INSERT INTO players VALUES ('ply2767', 'Stevan', 'Jovetić', 'Montenegro',    '1989-11-02');
INSERT INTO player_stats VALUES ('ply2767', '', 19, 'Forward', 183, 79, 'R');

INSERT INTO players VALUES ('ply2768', 'Erik', 'Durm', 'Germany',    '1992-05-12');
INSERT INTO player_stats VALUES ('ply2768', '', 37, 'Defender', 182, 70, 'R');

INSERT INTO players VALUES ('ply2769', 'Giorgio', 'Chiellini', 'Italy',    '1984-08-14');
INSERT INTO player_stats VALUES ('ply2769', '', 14, 'Defender', 187, 85, 'L');



INSERT INTO managers VALUES ('mg1', 'Stefano', 'Pioli', 'Italy',   '1965-10-19', 'tm1');
INSERT INTO managers VALUES ('mg2', 'Alfred', 'Schreuder', 'Netherlands',   '1972-11-02', 'tm2');
INSERT INTO managers VALUES ('mg3', 'Gian Piero', 'Gasperini', 'Italy',   '1958-01-26', 'tm3');
INSERT INTO managers VALUES ('mg4', 'Diego', 'Simeone', 'Argentina',   '1970-04-28', 'tm4');
INSERT INTO managers VALUES ('mg5', 'Julian', 'Nagelsmann', 'Germany',   '1987-07-23', 'tm5');
INSERT INTO managers VALUES ('mg6', 'Valérien', 'Ismaël', 'France',   '1975-09-28', 'tm6');
INSERT INTO managers VALUES ('mg7', 'Edin', 'Terzić', 'Germany',   '1982-10-30', 'tm7');
INSERT INTO managers VALUES ('mg8', 'Raphaël', 'Wicky', 'Switzerland',   '1977-04-26', 'tm8');
INSERT INTO managers VALUES ('mg9', 'Graham', 'Potter', 'England',   '1975-05-20', 'tm9');
INSERT INTO managers VALUES ('mg10', 'Carl', 'Hoefkens', 'Belgium',   '1978-10-06', 'tm10');
INSERT INTO managers VALUES ('mg11', 'Mircea', 'Lucescu', 'Romania',   '1945-07-29', 'tm11');
INSERT INTO managers VALUES ('mg12', '', 'Xavi', 'Spain',   '1980-01-25', 'tm12');
INSERT INTO managers VALUES ('mg13', 'Sérgio', 'Conceição', 'Portugal',   '1974-11-15', 'tm13');
INSERT INTO managers VALUES ('mg14', 'Stjepan', 'Tomas', 'Croatia',   '1976-06-03', 'tm14');
INSERT INTO managers VALUES ('mg15', 'Simone', 'Inzaghi', 'Italy',   '1976-04-05', 'tm15');
INSERT INTO managers VALUES ('mg16', 'Massimiliano', 'Allegri', 'Italy',   '1967-08-11', 'tm16');
INSERT INTO managers VALUES ('mg17', 'Paulo', 'Fonseca', 'Portugal',   '1973-03-05', 'tm17');
INSERT INTO managers VALUES ('mg18', 'Jürgen', 'Klopp', 'Germany',   '1967-06-16', 'tm18');
INSERT INTO managers VALUES ('mg19', 'Åge', 'Hareide', 'Norway',   '1953-09-23', 'tm19');
INSERT INTO managers VALUES ('mg20', 'Pep', 'Guardiola', 'Spain',   '1971-01-18', 'tm20');
INSERT INTO managers VALUES ('mg21', 'Erik ten', 'Hag', 'Netherlands',   '1970-02-02', 'tm21');
INSERT INTO managers VALUES ('mg22', 'Christophe', 'Galtier', 'France',   '1966-08-26', 'tm22');
INSERT INTO managers VALUES ('mg23', 'Marco', 'Rose', 'Germany',   '1976-09-11', 'tm23');
INSERT INTO managers VALUES ('mg24', 'Matthias', 'Jaissle', 'Germany',   '1988-04-05', 'tm24');
INSERT INTO managers VALUES ('mg25', 'Carlo', 'Ancelotti', 'Italy',   '1959-06-10', 'tm25');
INSERT INTO managers VALUES ('mg26', '', 'Lopetegui', 'Spain',   '1966-09-28', 'tm26');
INSERT INTO managers VALUES ('mg27', 'Igor', 'Jovićević', 'Croatia',   '1973-11-30', 'tm27');
INSERT INTO managers VALUES ('mg28', 'Roger', 'Schmidt', 'Germany',   '1967-03-13', 'tm28');
INSERT INTO managers VALUES ('mg29', 'Rúben', 'Amorim', 'Portugal',   '1985-01-27', 'tm29');
INSERT INTO managers VALUES ('mg30', 'Niko', 'Kovač', 'Croatia',   '1971-10-15', 'tm30');
INSERT INTO managers VALUES ('mg31', 'Unai', 'Emery', 'Spain',   '1971-11-03', 'tm31');
INSERT INTO managers VALUES ('mg32', 'Sergey', 'Semak', 'Russia',   '1976-02-27', 'tm32');
INSERT INTO managers VALUES ('mg33', 'Daniel', 'Farke', 'Germany',   '1976-10-30', 'tm33');
INSERT INTO managers VALUES ('mg34', 'Albert', 'Capellas', 'Spain',   '1967-10-01', 'tm34');
INSERT INTO managers VALUES ('mg35', 'Stanislav', 'Cherchesov', 'Russia',   '1963-09-02', 'tm35');
INSERT INTO managers VALUES ('mg36', 'Aleksandr', 'Storozhuk', 'Russia',   '1981-08-10', 'tm36');
INSERT INTO managers VALUES ('mg37', 'Emre', 'Belözoğlu', 'Turkey',   '1980-09-07', 'tm37');
INSERT INTO managers VALUES ('mg38', 'Maurizio', 'Sarri', 'Italy',   '1959-01-10', 'tm38');
INSERT INTO managers VALUES ('mg39', 'Joe', 'Zinnbauer', 'Germany',   '1970-05-01', 'tm39');
INSERT INTO managers VALUES ('mg40', 'Carlos', 'Corberán', 'Spain',   '1983-04-07', 'tm40');
INSERT INTO managers VALUES ('mg41', '', 'Míchel', 'Spain',   '1963-03-23', 'tm40');
INSERT INTO managers VALUES ('mg42', 'Igor', 'Tudor', 'Croatia',   '1978-04-16', 'tm41');
INSERT INTO managers VALUES ('mg43', 'Bruno', 'Génésio', 'France',   '1966-09-01', 'tm42');
INSERT INTO managers VALUES ('mg44', 'Xabi', 'Alonso', 'Spain',   '1981-11-25', 'tm43');
INSERT INTO managers VALUES ('mg45', 'Miloš', 'Milojević', 'Serbia',   '1982-09-29', 'tm44');
INSERT INTO managers VALUES ('mg46', 'Ante', 'Čačić', 'Croatia',   '1953-09-29', 'tm45');
INSERT INTO managers VALUES ('mg47', 'Okan', 'Buruk', 'Turkey',   '1973-10-19', 'tm46');
INSERT INTO managers VALUES ('mg48', 'Wouter', 'Vrancken', 'Belgium',   '1979-02-03', 'tm47');
INSERT INTO managers VALUES ('mg49', 'Peter', 'Bosz', 'Netherlands',   '1963-11-21', 'tm48');
INSERT INTO managers VALUES ('mg50', 'Luciano', 'Spalletti', 'Italy',   '1959-03-07', 'tm50');
INSERT INTO managers VALUES ('mg51', 'Antonio', 'Conte', 'Italy',   '1969-07-31', 'tm51');
INSERT INTO managers VALUES ('mg52', 'Gennaro', 'Gattuso', 'Italy',   '1978-01-09', 'tm52');
INSERT INTO managers VALUES ('mg53', 'André', 'Breitenreiter', 'Germany',   '1973-10-02', 'tm53');
INSERT INTO managers VALUES ('mg54', 'Matías', 'Almeyda', 'Argentina',   '1973-12-21', 'tm54');
INSERT INTO managers VALUES ('mg55', 'Philippe', 'Clement', 'Belgium',   '1974-03-22', 'tm55');
INSERT INTO managers VALUES ('mg56', 'José', 'Mourinho', 'Portugal',   '1963-01-26', 'tm56');
INSERT INTO managers VALUES ('mg57', 'Vladimir', 'Fedotov', 'Russia',   '1966-08-12', 'tm57');
INSERT INTO managers VALUES ('mg58', 'Frank', 'Kramer', 'Germany',   '1972-05-03', 'tm58');
INSERT INTO managers VALUES ('mg59', 'Ruud van', 'Nistelrooy', 'Netherlands',   '1976-07-01', 'tm59');
INSERT INTO managers VALUES ('mg60', 'Sofronis', 'Avgousti', 'Cyprus',   '1977-03-09', 'tm61');
INSERT INTO managers VALUES ('mg61', 'Ange', 'Postecoglou', 'Australia',   '1965-08-27', 'tm62');
INSERT INTO managers VALUES ('mg62', 'Alexander', 'Frei', 'Switzerland',   '1979-07-15', 'tm63');
INSERT INTO managers VALUES ('mg63', 'Arne', 'Slot', 'Netherlands',   '1978-09-17', 'tm64');
INSERT INTO managers VALUES ('mg64', 'Damir', 'Krznar', 'Croatia',   '1972-07-10', 'tm65');
INSERT INTO managers VALUES ('mg65', 'Qurban', 'Qurbanov', 'Azerbaijan',   '1972-04-13', 'tm66');
INSERT INTO managers VALUES ('mg66', 'Felice', 'Mazzù', 'Belgium',   '1966-03-12', 'tm67');
INSERT INTO managers VALUES ('mg67', 'Guillermo', 'Abascal', 'Spain',   '1989-04-13', 'tm68');
INSERT INTO managers VALUES ('mg68', 'Fernando', 'Torres', 'Spain',   '1984-03-20', '');
INSERT INTO managers VALUES ('mg69', 'Dmitriy', 'Kombarov', 'Russia',   '1987-01-22', '');
INSERT INTO managers VALUES ('mg70', 'Sandro', 'Wagner', 'Germany',   '1987-11-29', '');
INSERT INTO managers VALUES ('mg71', 'Stephan', 'Lichtsteiner', 'Switzerland',   '1984-01-16', '');
INSERT INTO managers VALUES ('mg72', 'Mikel', 'Arteta', 'Spain',   '1982-03-26', 'tm69');
INSERT INTO managers VALUES ('mg73', 'Jacob', 'Neestrup', 'Denmark',   '1988-03-08', 'tm70');
INSERT INTO managers VALUES ('mg74', 'Valeriy', 'Karpin', 'Russia',   '1969-02-02', 'tm71');
INSERT INTO managers VALUES ('mg75', 'Kosta', 'Runjaic', 'Germany',   '1971-06-04', 'tm72');
INSERT INTO managers VALUES ('mg76', 'Brendan', 'Rodgers', 'Northern Ireland',   '1973-01-26', 'tm73');
INSERT INTO managers VALUES ('mg77', 'Ante', 'Šimundža', 'Slovenia',   '1971-09-28', 'tm74');
INSERT INTO managers VALUES ('mg78', 'Nuri', 'Şahin', 'Turkey',   '1988-09-05', '');



INSERT INTO matches VALUES ('mt1', 'uefa1',   '2021-09-15 20:00:00', 'tm20', 'tm23', 'st19');
INSERT INTO match_report VALUES ('mt1', 0, 6, 3, 38062);

INSERT INTO matches VALUES ('mt2', 'uefa1',   '2021-09-15 20:00:00', 'tm10', 'tm22', 'st10');
INSERT INTO match_report VALUES ('mt2', 0, 1, 1, 27546);

INSERT INTO matches VALUES ('mt3', 'uefa1',   '2021-09-28 20:00:00', 'tm22', 'tm20', 'st21');
INSERT INTO match_report VALUES ('mt3', 0, 2, 0, 37350);

INSERT INTO matches VALUES ('mt4', 'uefa1',   '2021-09-28 20:00:00', 'tm23', 'tm10', 'st22');
INSERT INTO match_report VALUES ('mt4', 0, 1, 2, 23500);

INSERT INTO matches VALUES ('mt5', 'uefa1',   '2021-10-19 17:45:00', 'tm10', 'tm20', 'st10');
INSERT INTO match_report VALUES ('mt5', 0, 1, 5, 24915);

INSERT INTO matches VALUES ('mt6', 'uefa1',   '2021-10-19 20:00:00', 'tm22', 'tm23', 'st21');
INSERT INTO match_report VALUES ('mt6', 0, 3, 2, 47359);

INSERT INTO matches VALUES ('mt7', 'uefa1',   '2021-11-3 20:00:00', 'tm23', 'tm22', 'st22');
INSERT INTO match_report VALUES ('mt7', 0, 2, 2, 39794);

INSERT INTO matches VALUES ('mt8', 'uefa1',   '2021-11-3 20:00:00', 'tm20', 'tm10', 'st19');
INSERT INTO match_report VALUES ('mt8', 0, 4, 1, 50228);

INSERT INTO matches VALUES ('mt9', 'uefa1',   '2021-11-24 20:00:00', 'tm20', 'tm22', 'st19');
INSERT INTO match_report VALUES ('mt9', 0, 2, 1, 52030);

INSERT INTO matches VALUES ('mt10', 'uefa1',   '2021-11-24 20:00:00', 'tm10', 'tm23', 'st10');
INSERT INTO match_report VALUES ('mt10', 0, 0, 5, 24072);

INSERT INTO matches VALUES ('mt11', 'uefa1',   '2021-12-7 17:45:00', 'tm23', 'tm20', 'st22');
INSERT INTO match_report VALUES ('mt11', 0, 2, 1, 0);

INSERT INTO matches VALUES ('mt12', 'uefa1',   '2021-12-7 17:45:00', 'tm22', 'tm10', 'st21');
INSERT INTO match_report VALUES ('mt12', 0, 4, 1, 47492);

INSERT INTO matches VALUES ('mt13', 'uefa1',   '2021-09-15 20:00:00', 'tm4', 'tm13', 'st4');
INSERT INTO match_report VALUES ('mt13', 0, 0, 0, 40098);

INSERT INTO matches VALUES ('mt14', 'uefa1',   '2021-09-15 20:00:00', 'tm18', 'tm1', 'st17');
INSERT INTO match_report VALUES ('mt14', 0, 3, 2, 51445);

INSERT INTO matches VALUES ('mt15', 'uefa1',   '2021-09-28 20:00:00', 'tm13', 'tm18', 'st13');
INSERT INTO match_report VALUES ('mt15', 0, 1, 5, 23520);

INSERT INTO matches VALUES ('mt16', 'uefa1',   '2021-09-28 20:00:00', 'tm1', 'tm4', 'st1');
INSERT INTO match_report VALUES ('mt16', 0, 1, 2, 35374);

INSERT INTO matches VALUES ('mt17', 'uefa1',   '2021-10-19 20:00:00', 'tm4', 'tm18', 'st4');
INSERT INTO match_report VALUES ('mt17', 0, 2, 3, 60725);

INSERT INTO matches VALUES ('mt18', 'uefa1',   '2021-10-19 20:00:00', 'tm13', 'tm1', 'st13');
INSERT INTO match_report VALUES ('mt18', 0, 1, 0, 32130);

INSERT INTO matches VALUES ('mt19', 'uefa1',   '2021-11-3 17:45:00', 'tm1', 'tm13', 'st1');
INSERT INTO match_report VALUES ('mt19', 0, 1, 1, 39675);

INSERT INTO matches VALUES ('mt20', 'uefa1',   '2021-11-3 20:00:00', 'tm18', 'tm4', 'st17');
INSERT INTO match_report VALUES ('mt20', 0, 2, 0, 51347);

INSERT INTO matches VALUES ('mt21', 'uefa1',   '2021-11-24 20:00:00', 'tm18', 'tm13', 'st17');
INSERT INTO match_report VALUES ('mt21', 0, 2, 0, 52209);

INSERT INTO matches VALUES ('mt22', 'uefa1',   '2021-11-24 20:00:00', 'tm4', 'tm1', 'st4');
INSERT INTO match_report VALUES ('mt22', 0, 0, 1, 61019);

INSERT INTO matches VALUES ('mt23', 'uefa1',   '2021-12-7 20:00:00', 'tm13', 'tm4', 'st13');
INSERT INTO match_report VALUES ('mt23', 0, 1, 3, 38830);

INSERT INTO matches VALUES ('mt24', 'uefa1',   '2021-12-7 20:00:00', 'tm1', 'tm18', 'st1');
INSERT INTO match_report VALUES ('mt24', 0, 1, 2, 56237);

INSERT INTO matches VALUES ('mt25', 'uefa1',   '2021-09-15 17:45:00', 'tm6', 'tm7', 'st6');
INSERT INTO match_report VALUES ('mt25', 0, 1, 2, 22445);

INSERT INTO matches VALUES ('mt26', 'uefa1',   '2021-09-15 20:00:00', 'tm29', 'tm2', 'st28');
INSERT INTO match_report VALUES ('mt26', 0, 1, 5, 20382);

INSERT INTO matches VALUES ('mt27', 'uefa1',   '2021-09-28 17:45:00', 'tm2', 'tm6', 'st2');
INSERT INTO match_report VALUES ('mt27', 0, 2, 0, 52628);

INSERT INTO matches VALUES ('mt28', 'uefa1',   '2021-09-28 20:00:00', 'tm7', 'tm29', 'st7');
INSERT INTO match_report VALUES ('mt28', 0, 1, 0, 25000);

INSERT INTO matches VALUES ('mt29', 'uefa1',   '2021-10-19 17:45:00', 'tm6', 'tm29', 'st6');
INSERT INTO match_report VALUES ('mt29', 0, 1, 4, 22936);

INSERT INTO matches VALUES ('mt30', 'uefa1',   '2021-10-19 20:00:00', 'tm2', 'tm7', 'st2');
INSERT INTO match_report VALUES ('mt30', 0, 4, 0, 54029);

INSERT INTO matches VALUES ('mt31', 'uefa1',   '2021-11-3 20:00:00', 'tm7', 'tm2', 'st7');
INSERT INTO match_report VALUES ('mt31', 0, 1, 3, 54820);

INSERT INTO matches VALUES ('mt32', 'uefa1',   '2021-11-3 20:00:00', 'tm29', 'tm6', 'st28');
INSERT INTO match_report VALUES ('mt32', 0, 4, 0, 40835);

INSERT INTO matches VALUES ('mt33', 'uefa1',   '2021-11-24 17:45:00', 'tm6', 'tm2', 'st6');
INSERT INTO match_report VALUES ('mt33', 0, 1, 2, 11712);

INSERT INTO matches VALUES ('mt34', 'uefa1',   '2021-11-24 20:00:00', 'tm29', 'tm7', 'st28');
INSERT INTO match_report VALUES ('mt34', 0, 3, 1, 41341);

INSERT INTO matches VALUES ('mt35', 'uefa1',   '2021-12-7 20:00:00', 'tm2', 'tm29', 'st2');
INSERT INTO match_report VALUES ('mt35', 0, 4, 2, 0);

INSERT INTO matches VALUES ('mt36', 'uefa1',   '2021-12-7 20:00:00', 'tm7', 'tm6', 'st7');
INSERT INTO match_report VALUES ('mt36', 0, 5, 0, 15000);

INSERT INTO matches VALUES ('mt37', 'uefa1',   '2021-09-15 17:45:00', 'tm14', 'tm27', 'st14');
INSERT INTO match_report VALUES ('mt37', 0, 2, 0, 5205);

INSERT INTO matches VALUES ('mt38', 'uefa1',   '2021-09-15 20:00:00', 'tm15', 'tm25', 'st1');
INSERT INTO match_report VALUES ('mt38', 0, 0, 1, 37082);

INSERT INTO matches VALUES ('mt39', 'uefa1',   '2021-09-28 17:45:00', 'tm27', 'tm15', 'st11');
INSERT INTO match_report VALUES ('mt39', 0, 0, 0, 26170);

INSERT INTO matches VALUES ('mt40', 'uefa1',   '2021-09-28 20:00:00', 'tm25', 'tm14', 'st24');
INSERT INTO match_report VALUES ('mt40', 0, 1, 2, 24522);

INSERT INTO matches VALUES ('mt41', 'uefa1',   '2021-10-19 20:00:00', 'tm27', 'tm25', 'st11');
INSERT INTO match_report VALUES ('mt41', 0, 0, 5, 34037);

INSERT INTO matches VALUES ('mt42', 'uefa1',   '2021-10-19 20:00:00', 'tm15', 'tm14', 'st1');
INSERT INTO match_report VALUES ('mt42', 0, 3, 1, 43305);

INSERT INTO matches VALUES ('mt43', 'uefa1',   '2021-11-3 17:45:00', 'tm25', 'tm27', 'st24');
INSERT INTO match_report VALUES ('mt43', 0, 2, 1, 38105);

INSERT INTO matches VALUES ('mt44', 'uefa1',   '2021-11-3 20:00:00', 'tm14', 'tm15', 'st14');
INSERT INTO match_report VALUES ('mt44', 0, 1, 3, 5930);

INSERT INTO matches VALUES ('mt45', 'uefa1',   '2021-11-24 17:45:00', 'tm15', 'tm27', 'st1');
INSERT INTO match_report VALUES ('mt45', 0, 2, 0, 46225);

INSERT INTO matches VALUES ('mt46', 'uefa1',   '2021-11-24 20:00:00', 'tm14', 'tm25', 'st14');
INSERT INTO match_report VALUES ('mt46', 0, 0, 3, 5932);

INSERT INTO matches VALUES ('mt47', 'uefa1',   '2021-12-7 20:00:00', 'tm25', 'tm15', 'st24');
INSERT INTO match_report VALUES ('mt47', 0, 2, 0, 46887);

INSERT INTO matches VALUES ('mt48', 'uefa1',   '2021-12-7 20:00:00', 'tm27', 'tm14', 'st11');
INSERT INTO match_report VALUES ('mt48', 0, 1, 1, 6841);

INSERT INTO matches VALUES ('mt49', 'uefa1',   '2021-09-14 20:00:00', 'tm12', 'tm5', 'st12');
INSERT INTO match_report VALUES ('mt49', 0, 0, 3, 39737);

INSERT INTO matches VALUES ('mt50', 'uefa1',   '2021-09-14 20:00:00', 'tm11', 'tm28', 'st11');
INSERT INTO match_report VALUES ('mt50', 0, 0, 0, 21657);

INSERT INTO matches VALUES ('mt51', 'uefa1',   '2021-09-29 20:00:00', 'tm28', 'tm12', 'st27');
INSERT INTO match_report VALUES ('mt51', 0, 3, 0, 29454);

INSERT INTO matches VALUES ('mt52', 'uefa1',   '2021-09-29 20:00:00', 'tm5', 'tm11', 'st5');
INSERT INTO match_report VALUES ('mt52', 0, 5, 0, 25000);

INSERT INTO matches VALUES ('mt53', 'uefa1',   '2021-10-20 17:45:00', 'tm12', 'tm11', 'st12');
INSERT INTO match_report VALUES ('mt53', 0, 1, 0, 45968);

INSERT INTO matches VALUES ('mt54', 'uefa1',   '2021-10-20 20:00:00', 'tm28', 'tm5', 'st27');
INSERT INTO match_report VALUES ('mt54', 0, 0, 4, 50000);

INSERT INTO matches VALUES ('mt55', 'uefa1',   '2021-11-2 20:00:00', 'tm5', 'tm28', 'st5');
INSERT INTO match_report VALUES ('mt55', 0, 5, 2, 50000);

INSERT INTO matches VALUES ('mt56', 'uefa1',   '2021-11-2 20:00:00', 'tm11', 'tm12', 'st11');
INSERT INTO match_report VALUES ('mt56', 0, 0, 1, 31378);

INSERT INTO matches VALUES ('mt57', 'uefa1',   '2021-11-23 17:45:00', 'tm11', 'tm5', 'st11');
INSERT INTO match_report VALUES ('mt57', 0, 1, 2, 28732);

INSERT INTO matches VALUES ('mt58', 'uefa1',   '2021-11-23 20:00:00', 'tm12', 'tm28', 'st12');
INSERT INTO match_report VALUES ('mt58', 0, 0, 0, 49572);

INSERT INTO matches VALUES ('mt59', 'uefa1',   '2021-12-8 20:00:00', 'tm5', 'tm12', 'st5');
INSERT INTO match_report VALUES ('mt59', 0, 3, 0, 0);

INSERT INTO matches VALUES ('mt60', 'uefa1',   '2021-12-8 20:00:00', 'tm28', 'tm11', 'st27');
INSERT INTO match_report VALUES ('mt60', 0, 2, 0, 37000);

INSERT INTO matches VALUES ('mt61', 'uefa1',   '2021-09-14 17:45:00', 'tm8', 'tm21', 'st8');
INSERT INTO match_report VALUES ('mt61', 0, 2, 1, 31120);

INSERT INTO matches VALUES ('mt62', 'uefa1',   '2021-09-14 20:00:00', 'tm31', 'tm3', 'st30');
INSERT INTO match_report VALUES ('mt62', 0, 2, 2, 12916);

INSERT INTO matches VALUES ('mt63', 'uefa1',   '2021-09-29 17:45:00', 'tm3', 'tm8', 'st3');
INSERT INTO match_report VALUES ('mt63', 0, 1, 0, 8536);

INSERT INTO matches VALUES ('mt64', 'uefa1',   '2021-09-29 20:00:00', 'tm21', 'tm31', 'st20');
INSERT INTO match_report VALUES ('mt64', 0, 2, 1, 73130);

INSERT INTO matches VALUES ('mt65', 'uefa1',   '2021-10-20 20:00:00', 'tm21', 'tm3', 'st20');
INSERT INTO match_report VALUES ('mt65', 0, 3, 2, 72279);

INSERT INTO matches VALUES ('mt66', 'uefa1',   '2021-10-20 20:00:00', 'tm8', 'tm31', 'st8');
INSERT INTO match_report VALUES ('mt66', 0, 1, 4, 27398);

INSERT INTO matches VALUES ('mt67', 'uefa1',   '2021-11-2 20:00:00', 'tm3', 'tm21', 'st3');
INSERT INTO match_report VALUES ('mt67', 0, 2, 2, 14443);

INSERT INTO matches VALUES ('mt68', 'uefa1',   '2021-11-2 20:00:00', 'tm31', 'tm8', 'st30');
INSERT INTO match_report VALUES ('mt68', 0, 2, 0, 14890);

INSERT INTO matches VALUES ('mt69', 'uefa1',   '2021-11-23 17:45:00', 'tm31', 'tm21', 'st30');
INSERT INTO match_report VALUES ('mt69', 0, 0, 2, 20875);

INSERT INTO matches VALUES ('mt70', 'uefa1',   '2021-11-23 20:00:00', 'tm8', 'tm3', 'st8');
INSERT INTO match_report VALUES ('mt70', 0, 3, 3, 31120);

INSERT INTO matches VALUES ('mt71', 'uefa1',   '2021-12-8 20:00:00', 'tm21', 'tm8', 'st20');
INSERT INTO match_report VALUES ('mt71', 0, 1, 1, 73156);

INSERT INTO matches VALUES ('mt72', 'uefa1',   '2021-12-9 18:00:00', 'tm3', 'tm31', 'st3');
INSERT INTO match_report VALUES ('mt72', 0, 2, 3, 11690);

INSERT INTO matches VALUES ('mt73', 'uefa1',   '2021-09-14 17:45:00', 'tm26', 'tm24', 'st25');
INSERT INTO match_report VALUES ('mt73', 0, 1, 1, 18373);

INSERT INTO matches VALUES ('mt74', 'uefa1',   '2021-09-14 20:00:00', 'tm17', 'tm30', 'st16');
INSERT INTO match_report VALUES ('mt74', 0, 0, 0, 34314);

INSERT INTO matches VALUES ('mt75', 'uefa1',   '2021-09-29 20:00:00', 'tm24', 'tm17', 'st23');
INSERT INTO match_report VALUES ('mt75', 0, 2, 1, 24207);

INSERT INTO matches VALUES ('mt76', 'uefa1',   '2021-09-29 20:00:00', 'tm30', 'tm26', 'st29');
INSERT INTO match_report VALUES ('mt76', 0, 1, 1, 11733);

INSERT INTO matches VALUES ('mt77', 'uefa1',   '2021-10-20 17:45:00', 'tm24', 'tm30', 'st23');
INSERT INTO match_report VALUES ('mt77', 0, 3, 1, 27500);

INSERT INTO matches VALUES ('mt78', 'uefa1',   '2021-10-20 20:00:00', 'tm17', 'tm26', 'st16');
INSERT INTO match_report VALUES ('mt78', 0, 0, 0, 34362);

INSERT INTO matches VALUES ('mt79', 'uefa1',   '2021-11-2 17:45:00', 'tm30', 'tm24', 'st29');
INSERT INTO match_report VALUES ('mt79', 0, 2, 1, 16112);

INSERT INTO matches VALUES ('mt80', 'uefa1',   '2021-11-2 20:00:00', 'tm26', 'tm17', 'st25');
INSERT INTO match_report VALUES ('mt80', 0, 1, 2, 29369);

INSERT INTO matches VALUES ('mt81', 'uefa1',   '2021-11-23 20:00:00', 'tm17', 'tm24', 'st16');
INSERT INTO match_report VALUES ('mt81', 0, 1, 0, 33573);

INSERT INTO matches VALUES ('mt82', 'uefa1',   '2021-11-23 20:00:00', 'tm26', 'tm30', 'st25');
INSERT INTO match_report VALUES ('mt82', 0, 2, 0, 28663);

INSERT INTO matches VALUES ('mt83', 'uefa1',   '2021-12-8 20:00:00', 'tm24', 'tm26', 'st23');
INSERT INTO match_report VALUES ('mt83', 0, 1, 0, 0);

INSERT INTO matches VALUES ('mt84', 'uefa1',   '2021-12-8 20:00:00', 'tm30', 'tm17', 'st29');
INSERT INTO match_report VALUES ('mt84', 0, 1, 3, 6544);

INSERT INTO matches VALUES ('mt85', 'uefa1',   '2021-09-14 20:00:00', 'tm9', 'tm32', 'st9');
INSERT INTO match_report VALUES ('mt85', 0, 1, 0, 39252);

INSERT INTO matches VALUES ('mt86', 'uefa1',   '2021-09-14 20:00:00', 'tm19', 'tm16', 'st18');
INSERT INTO match_report VALUES ('mt86', 0, 0, 3, 5832);

INSERT INTO matches VALUES ('mt87', 'uefa1',   '2021-09-29 17:45:00', 'tm32', 'tm19', 'st31');
INSERT INTO match_report VALUES ('mt87', 0, 4, 0, 15339);

INSERT INTO matches VALUES ('mt88', 'uefa1',   '2021-09-29 20:00:00', 'tm16', 'tm9', 'st15');
INSERT INTO match_report VALUES ('mt88', 0, 1, 0, 19934);

INSERT INTO matches VALUES ('mt89', 'uefa1',   '2021-10-20 20:00:00', 'tm32', 'tm16', 'st31');
INSERT INTO match_report VALUES ('mt89', 0, 0, 1, 18717);

INSERT INTO matches VALUES ('mt90', 'uefa1',   '2021-10-20 20:00:00', 'tm9', 'tm19', 'st9');
INSERT INTO match_report VALUES ('mt90', 0, 4, 0, 39095);

INSERT INTO matches VALUES ('mt91', 'uefa1',   '2021-11-2 17:45:00', 'tm19', 'tm9', 'st18');
INSERT INTO match_report VALUES ('mt91', 0, 0, 1, 19551);

INSERT INTO matches VALUES ('mt92', 'uefa1',   '2021-11-2 20:00:00', 'tm16', 'tm32', 'st15');
INSERT INTO match_report VALUES ('mt92', 0, 4, 2, 20053);

INSERT INTO matches VALUES ('mt93', 'uefa1',   '2021-11-23 20:00:00', 'tm9', 'tm16', 'st9');
INSERT INTO match_report VALUES ('mt93', 0, 4, 0, 39513);

INSERT INTO matches VALUES ('mt94', 'uefa1',   '2021-11-23 20:00:00', 'tm19', 'tm32', 'st18');
INSERT INTO match_report VALUES ('mt94', 0, 1, 1, 19551);

INSERT INTO matches VALUES ('mt95', 'uefa1',   '2021-12-8 17:45:00', 'tm32', 'tm9', 'st31');
INSERT INTO match_report VALUES ('mt95', 0, 3, 3, 29349);

INSERT INTO matches VALUES ('mt96', 'uefa1',   '2021-12-8 17:45:00', 'tm16', 'tm19', 'st15');
INSERT INTO match_report VALUES ('mt96', 0, 1, 0, 17501);

INSERT INTO matches VALUES ('mt97', 'uefa1',   '2022-02-15 20:00:00', 'tm29', 'tm20', 'st28');
INSERT INTO match_report VALUES ('mt97', 0, 0, 5, 48129);

INSERT INTO matches VALUES ('mt98', 'uefa1',   '2022-02-15 20:00:00', 'tm22', 'tm25', 'st21');
INSERT INTO match_report VALUES ('mt98', 0, 1, 0, 47443);

INSERT INTO matches VALUES ('mt99', 'uefa1',   '2022-02-16 20:00:00', 'tm24', 'tm5', 'st23');
INSERT INTO match_report VALUES ('mt99', 0, 1, 1, 29520);

INSERT INTO matches VALUES ('mt100', 'uefa1',   '2022-02-16 20:00:00', 'tm15', 'tm18', 'st1');
INSERT INTO match_report VALUES ('mt100', 0, 0, 2, 37918);

INSERT INTO matches VALUES ('mt101', 'uefa1',   '2022-02-22 20:00:00', 'tm9', 'tm17', 'st9');
INSERT INTO match_report VALUES ('mt101', 0, 2, 0, 38832);

INSERT INTO matches VALUES ('mt102', 'uefa1',   '2022-02-22 20:00:00', 'tm31', 'tm16', 'st30');
INSERT INTO match_report VALUES ('mt102', 0, 1, 1, 17686);

INSERT INTO matches VALUES ('mt103', 'uefa1',   '2022-02-23 20:00:00', 'tm28', 'tm2', 'st27');
INSERT INTO match_report VALUES ('mt103', 0, 2, 2, 54760);

INSERT INTO matches VALUES ('mt104', 'uefa1',   '2022-02-23 20:00:00', 'tm4', 'tm21', 'st4');
INSERT INTO match_report VALUES ('mt104', 0, 1, 1, 63273);

INSERT INTO matches VALUES ('mt105', 'uefa1',   '2022-03-8 20:00:00', 'tm5', 'tm24', 'st5');
INSERT INTO match_report VALUES ('mt105', 0, 7, 1, 25000);

INSERT INTO matches VALUES ('mt106', 'uefa1',   '2022-03-8 20:00:00', 'tm18', 'tm15', 'st17');
INSERT INTO match_report VALUES ('mt106', 0, 0, 1, 51747);

INSERT INTO matches VALUES ('mt107', 'uefa1',   '2022-03-9 20:00:00', 'tm20', 'tm29', 'st19');
INSERT INTO match_report VALUES ('mt107', 0, 0, 0, 51213);

INSERT INTO matches VALUES ('mt108', 'uefa1',   '2022-03-9 20:00:00', 'tm25', 'tm22', 'st24');
INSERT INTO match_report VALUES ('mt108', 0, 3, 1, 59895);

INSERT INTO matches VALUES ('mt109', 'uefa1',   '2022-03-15 20:00:00', 'tm2', 'tm28', 'st2');
INSERT INTO match_report VALUES ('mt109', 0, 0, 1, 54066);

INSERT INTO matches VALUES ('mt110', 'uefa1',   '2022-03-15 20:00:00', 'tm21', 'tm4', 'st20');
INSERT INTO match_report VALUES ('mt110', 0, 0, 1, 73008);

INSERT INTO matches VALUES ('mt111', 'uefa1',   '2022-03-16 20:00:00', 'tm17', 'tm9', 'st16');
INSERT INTO match_report VALUES ('mt111', 0, 1, 2, 49048);

INSERT INTO matches VALUES ('mt112', 'uefa1',   '2022-03-16 20:00:00', 'tm16', 'tm31', 'st15');
INSERT INTO match_report VALUES ('mt112', 0, 0, 3, 30385);

INSERT INTO matches VALUES ('mt113', 'uefa1',   '2022-04-5 20:00:00', 'tm20', 'tm4', 'st19');
INSERT INTO match_report VALUES ('mt113', 0, 1, 0, 52018);

INSERT INTO matches VALUES ('mt114', 'uefa1',   '2022-04-5 20:00:00', 'tm28', 'tm18', 'st27');
INSERT INTO match_report VALUES ('mt114', 0, 1, 3, 59633);

INSERT INTO matches VALUES ('mt115', 'uefa1',   '2022-04-6 20:00:00', 'tm9', 'tm25', 'st9');
INSERT INTO match_report VALUES ('mt115', 0, 1, 3, 38689);

INSERT INTO matches VALUES ('mt116', 'uefa1',   '2022-04-6 20:00:00', 'tm31', 'tm5', 'st30');
INSERT INTO match_report VALUES ('mt116', 0, 1, 0, 21626);

INSERT INTO matches VALUES ('mt117', 'uefa1',   '2022-04-12 20:00:00', 'tm25', 'tm9', 'st24');
INSERT INTO match_report VALUES ('mt117', 0, 2, 3, 59839);

INSERT INTO matches VALUES ('mt118', 'uefa1',   '2022-04-12 20:00:00', 'tm5', 'tm31', 'st5');
INSERT INTO match_report VALUES ('mt118', 0, 1, 1, 70000);

INSERT INTO matches VALUES ('mt119', 'uefa1',   '2022-04-13 20:00:00', 'tm4', 'tm20', 'st4');
INSERT INTO match_report VALUES ('mt119', 0, 0, 0, 65675);

INSERT INTO matches VALUES ('mt120', 'uefa1',   '2022-04-13 20:00:00', 'tm18', 'tm28', 'st17');
INSERT INTO match_report VALUES ('mt120', 0, 3, 3, 51373);

INSERT INTO matches VALUES ('mt121', 'uefa1',   '2022-04-26 20:00:00', 'tm20', 'tm25', 'st19');
INSERT INTO match_report VALUES ('mt121', 0, 4, 3, 55097);

INSERT INTO matches VALUES ('mt122', 'uefa1',   '2022-04-27 20:00:00', 'tm18', 'tm31', 'st17');
INSERT INTO match_report VALUES ('mt122', 0, 2, 0, 51586);

INSERT INTO matches VALUES ('mt123', 'uefa1',   '2022-05-3 20:00:00', 'tm31', 'tm18', 'st30');
INSERT INTO match_report VALUES ('mt123', 0, 2, 3, 23665);

INSERT INTO matches VALUES ('mt124', 'uefa1',   '2022-05-4 20:00:00', 'tm25', 'tm20', 'st24');
INSERT INTO match_report VALUES ('mt124', 0, 3, 1, 61416);

INSERT INTO matches VALUES ('mt125', 'uefa1',   '2022-05-28 20:35:00', 'tm18', 'tm25', 'st32');
INSERT INTO match_report VALUES ('mt125', 0, 0, 1, 0);

INSERT INTO matches VALUES ('mt126', 'uefa2',   '2020-10-21 17:55:00', 'tm24', 'tm39', 'st23');
INSERT INTO match_report VALUES ('mt126', 0, 2, 2, 3000);

INSERT INTO matches VALUES ('mt127', 'uefa2',   '2020-10-21 20:00:00', 'tm5', 'tm4', 'st5');
INSERT INTO match_report VALUES ('mt127', 0, 4, 0, 0);

INSERT INTO matches VALUES ('mt128', 'uefa2',   '2020-10-27 17:55:00', 'tm39', 'tm5', 'st39');
INSERT INTO match_report VALUES ('mt128', 0, 1, 2, 8196);

INSERT INTO matches VALUES ('mt129', 'uefa2',   '2020-10-27 20:00:00', 'tm4', 'tm24', 'st4');
INSERT INTO match_report VALUES ('mt129', 0, 3, 2, 0);

INSERT INTO matches VALUES ('mt130', 'uefa2',   '2020-11-3 17:55:00', 'tm39', 'tm4', 'st39');
INSERT INTO match_report VALUES ('mt130', 0, 1, 1, 8147);

INSERT INTO matches VALUES ('mt131', 'uefa2',   '2020-11-3 20:00:00', 'tm24', 'tm5', 'st23');
INSERT INTO match_report VALUES ('mt131', 0, 2, 6, 0);

INSERT INTO matches VALUES ('mt132', 'uefa2',   '2020-11-25 20:00:00', 'tm4', 'tm39', 'st4');
INSERT INTO match_report VALUES ('mt132', 0, 0, 0, 0);

INSERT INTO matches VALUES ('mt133', 'uefa2',   '2020-11-25 20:00:00', 'tm5', 'tm24', 'st5');
INSERT INTO match_report VALUES ('mt133', 0, 3, 1, 0);

INSERT INTO matches VALUES ('mt134', 'uefa2',   '2020-12-1 17:55:00', 'tm39', 'tm24', 'st39');
INSERT INTO match_report VALUES ('mt134', 0, 1, 3, 6759);

INSERT INTO matches VALUES ('mt135', 'uefa2',   '2020-12-1 20:00:00', 'tm4', 'tm5', 'st4');
INSERT INTO match_report VALUES ('mt135', 0, 1, 1, 0);

INSERT INTO matches VALUES ('mt136', 'uefa2',   '2020-12-9 20:00:00', 'tm5', 'tm39', 'st5');
INSERT INTO match_report VALUES ('mt136', 0, 2, 0, 0);

INSERT INTO matches VALUES ('mt137', 'uefa2',   '2020-12-9 20:00:00', 'tm24', 'tm4', 'st23');
INSERT INTO match_report VALUES ('mt137', 0, 0, 2, 0);

INSERT INTO matches VALUES ('mt138', 'uefa2',   '2020-10-21 17:55:00', 'tm25', 'tm27', 'st43');
INSERT INTO match_report VALUES ('mt138', 0, 2, 3, 0);

INSERT INTO matches VALUES ('mt139', 'uefa2',   '2020-10-21 20:00:00', 'tm15', 'tm33', 'st1');
INSERT INTO match_report VALUES ('mt139', 0, 2, 2, 1000);

INSERT INTO matches VALUES ('mt140', 'uefa2',   '2020-10-27 17:55:00', 'tm27', 'tm15', 'st11');
INSERT INTO match_report VALUES ('mt140', 0, 0, 0, 10178);

INSERT INTO matches VALUES ('mt141', 'uefa2',   '2020-10-27 20:00:00', 'tm33', 'tm25', 'st33');
INSERT INTO match_report VALUES ('mt141', 0, 2, 2, 0);

INSERT INTO matches VALUES ('mt142', 'uefa2',   '2020-11-3 17:55:00', 'tm27', 'tm33', 'st11');
INSERT INTO match_report VALUES ('mt142', 0, 0, 6, 0);

INSERT INTO matches VALUES ('mt143', 'uefa2',   '2020-11-3 20:00:00', 'tm25', 'tm15', 'st43');
INSERT INTO match_report VALUES ('mt143', 0, 3, 2, 0);

INSERT INTO matches VALUES ('mt144', 'uefa2',   '2020-11-25 17:55:00', 'tm33', 'tm27', 'st33');
INSERT INTO match_report VALUES ('mt144', 0, 4, 0, 0);

INSERT INTO matches VALUES ('mt145', 'uefa2',   '2020-11-25 20:00:00', 'tm15', 'tm25', 'st1');
INSERT INTO match_report VALUES ('mt145', 0, 0, 2, 0);

INSERT INTO matches VALUES ('mt146', 'uefa2',   '2020-12-1 17:55:00', 'tm27', 'tm25', 'st11');
INSERT INTO match_report VALUES ('mt146', 0, 2, 0, 0);

INSERT INTO matches VALUES ('mt147', 'uefa2',   '2020-12-1 20:00:00', 'tm33', 'tm15', 'st33');
INSERT INTO match_report VALUES ('mt147', 0, 2, 3, 0);

INSERT INTO matches VALUES ('mt148', 'uefa2',   '2020-12-9 20:00:00', 'tm15', 'tm27', 'st1');
INSERT INTO match_report VALUES ('mt148', 0, 0, 0, 0);

INSERT INTO matches VALUES ('mt149', 'uefa2',   '2020-12-9 20:00:00', 'tm25', 'tm33', 'st43');
INSERT INTO match_report VALUES ('mt149', 0, 2, 0, 0);

INSERT INTO matches VALUES ('mt150', 'uefa2',   '2020-10-21 20:00:00', 'tm20', 'tm13', 'st19');
INSERT INTO match_report VALUES ('mt150', 0, 3, 1, 0);

INSERT INTO matches VALUES ('mt151', 'uefa2',   '2020-10-21 20:00:00', 'tm40', 'tm41', 'st40');
INSERT INTO match_report VALUES ('mt151', 0, 1, 0, 0);

INSERT INTO matches VALUES ('mt152', 'uefa2',   '2020-10-27 20:00:00', 'tm13', 'tm40', 'st13');
INSERT INTO match_report VALUES ('mt152', 0, 2, 0, 2450);

INSERT INTO matches VALUES ('mt153', 'uefa2',   '2020-10-27 20:00:00', 'tm41', 'tm20', 'st41');
INSERT INTO match_report VALUES ('mt153', 0, 0, 3, 0);

INSERT INTO matches VALUES ('mt154', 'uefa2',   '2020-11-3 20:00:00', 'tm13', 'tm41', 'st13');
INSERT INTO match_report VALUES ('mt154', 0, 3, 0, 0);

INSERT INTO matches VALUES ('mt155', 'uefa2',   '2020-11-3 20:00:00', 'tm20', 'tm40', 'st19');
INSERT INTO match_report VALUES ('mt155', 0, 3, 0, 0);

INSERT INTO matches VALUES ('mt156', 'uefa2',   '2020-11-25 17:55:00', 'tm40', 'tm20', 'st40');
INSERT INTO match_report VALUES ('mt156', 0, 0, 1, 0);

INSERT INTO matches VALUES ('mt157', 'uefa2',   '2020-11-25 20:00:00', 'tm41', 'tm13', 'st41');
INSERT INTO match_report VALUES ('mt157', 0, 0, 2, 0);

INSERT INTO matches VALUES ('mt158', 'uefa2',   '2020-12-1 20:00:00', 'tm13', 'tm20', 'st13');
INSERT INTO match_report VALUES ('mt158', 0, 0, 0, 0);

INSERT INTO matches VALUES ('mt159', 'uefa2',   '2020-12-1 20:00:00', 'tm41', 'tm40', 'st41');
INSERT INTO match_report VALUES ('mt159', 0, 2, 1, 0);

INSERT INTO matches VALUES ('mt160', 'uefa2',   '2020-12-9 20:00:00', 'tm20', 'tm41', 'st19');
INSERT INTO match_report VALUES ('mt160', 0, 3, 0, 1);

INSERT INTO matches VALUES ('mt161', 'uefa2',   '2020-12-9 20:00:00', 'tm40', 'tm13', 'st40');
INSERT INTO match_report VALUES ('mt161', 0, 0, 2, 0);

INSERT INTO matches VALUES ('mt162', 'uefa2',   '2020-10-21 20:00:00', 'tm2', 'tm18', 'st2');
INSERT INTO match_report VALUES ('mt162', 0, 0, 1, 0);

INSERT INTO matches VALUES ('mt163', 'uefa2',   '2020-10-21 20:00:00', 'tm34', 'tm3', 'st34');
INSERT INTO match_report VALUES ('mt163', 0, 0, 4, 132);

INSERT INTO matches VALUES ('mt164', 'uefa2',   '2020-10-27 20:00:00', 'tm3', 'tm2', 'st3');
INSERT INTO match_report VALUES ('mt164', 0, 2, 2, 0);

INSERT INTO matches VALUES ('mt165', 'uefa2',   '2020-10-27 20:00:00', 'tm18', 'tm34', 'st17');
INSERT INTO match_report VALUES ('mt165', 0, 2, 0, 0);

INSERT INTO matches VALUES ('mt166', 'uefa2',   '2020-11-3 20:00:00', 'tm3', 'tm18', 'st3');
INSERT INTO match_report VALUES ('mt166', 0, 0, 5, 0);

INSERT INTO matches VALUES ('mt167', 'uefa2',   '2020-11-3 20:00:00', 'tm34', 'tm2', 'st34');
INSERT INTO match_report VALUES ('mt167', 0, 1, 2, 132);

INSERT INTO matches VALUES ('mt168', 'uefa2',   '2020-11-25 20:00:00', 'tm2', 'tm34', 'st2');
INSERT INTO match_report VALUES ('mt168', 0, 3, 1, 0);

INSERT INTO matches VALUES ('mt169', 'uefa2',   '2020-11-25 20:00:00', 'tm18', 'tm3', 'st17');
INSERT INTO match_report VALUES ('mt169', 0, 0, 2, 0);

INSERT INTO matches VALUES ('mt170', 'uefa2',   '2020-12-1 20:00:00', 'tm3', 'tm34', 'st3');
INSERT INTO match_report VALUES ('mt170', 0, 1, 1, 0);

INSERT INTO matches VALUES ('mt171', 'uefa2',   '2020-12-1 20:00:00', 'tm18', 'tm2', 'st17');
INSERT INTO match_report VALUES ('mt171', 0, 1, 0, 0);

INSERT INTO matches VALUES ('mt172', 'uefa2',   '2020-12-9 17:55:00', 'tm2', 'tm3', 'st2');
INSERT INTO match_report VALUES ('mt172', 0, 0, 1, 0);

INSERT INTO matches VALUES ('mt173', 'uefa2',   '2020-12-9 17:55:00', 'tm34', 'tm18', 'st34');
INSERT INTO match_report VALUES ('mt173', 0, 1, 1, 0);

INSERT INTO matches VALUES ('mt174', 'uefa2',   '2020-10-20 20:00:00', 'tm9', 'tm26', 'st9');
INSERT INTO match_report VALUES ('mt174', 0, 0, 0, 0);

INSERT INTO matches VALUES ('mt175', 'uefa2',   '2020-10-20 20:00:00', 'tm42', 'tm36', 'st42');
INSERT INTO match_report VALUES ('mt175', 0, 1, 1, 4973);

INSERT INTO matches VALUES ('mt176', 'uefa2',   '2020-10-28 17:55:00', 'tm36', 'tm9', 'st36');
INSERT INTO match_report VALUES ('mt176', 0, 0, 4, 10544);

INSERT INTO matches VALUES ('mt177', 'uefa2',   '2020-10-28 20:00:00', 'tm26', 'tm42', 'st25');
INSERT INTO match_report VALUES ('mt177', 0, 1, 0, 0);

INSERT INTO matches VALUES ('mt178', 'uefa2',   '2020-11-4 20:00:00', 'tm9', 'tm42', 'st9');
INSERT INTO match_report VALUES ('mt178', 0, 3, 0, 0);

INSERT INTO matches VALUES ('mt179', 'uefa2',   '2020-11-4 20:00:00', 'tm26', 'tm36', 'st25');
INSERT INTO match_report VALUES ('mt179', 0, 3, 2, 1);

INSERT INTO matches VALUES ('mt180', 'uefa2',   '2020-11-24 17:55:00', 'tm42', 'tm9', 'st42');
INSERT INTO match_report VALUES ('mt180', 0, 1, 2, 0);

INSERT INTO matches VALUES ('mt181', 'uefa2',   '2020-11-24 17:55:00', 'tm36', 'tm26', 'st36');
INSERT INTO match_report VALUES ('mt181', 0, 1, 2, 10554);

INSERT INTO matches VALUES ('mt182', 'uefa2',   '2020-12-2 17:55:00', 'tm36', 'tm42', 'st36');
INSERT INTO match_report VALUES ('mt182', 0, 1, 0, 8747);

INSERT INTO matches VALUES ('mt183', 'uefa2',   '2020-12-2 20:00:00', 'tm26', 'tm9', 'st25');
INSERT INTO match_report VALUES ('mt183', 0, 0, 4, 0);

INSERT INTO matches VALUES ('mt184', 'uefa2',   '2020-12-8 20:00:00', 'tm9', 'tm36', 'st9');
INSERT INTO match_report VALUES ('mt184', 0, 1, 1, 2000);

INSERT INTO matches VALUES ('mt185', 'uefa2',   '2020-12-8 20:00:00', 'tm42', 'tm26', 'st42');
INSERT INTO match_report VALUES ('mt185', 0, 1, 3, 0);

INSERT INTO matches VALUES ('mt186', 'uefa2',   '2020-10-20 17:55:00', 'tm32', 'tm10', 'st31');
INSERT INTO match_report VALUES ('mt186', 0, 1, 2, 16682);

INSERT INTO matches VALUES ('mt187', 'uefa2',   '2020-10-20 20:00:00', 'tm38', 'tm7', 'st38');
INSERT INTO match_report VALUES ('mt187', 0, 3, 1, 1000);

INSERT INTO matches VALUES ('mt188', 'uefa2',   '2020-10-28 20:00:00', 'tm7', 'tm32', 'st7');
INSERT INTO match_report VALUES ('mt188', 0, 2, 0, 0);

INSERT INTO matches VALUES ('mt189', 'uefa2',   '2020-10-28 20:00:00', 'tm10', 'tm38', 'st10');
INSERT INTO match_report VALUES ('mt189', 0, 1, 1, 0);

INSERT INTO matches VALUES ('mt190', 'uefa2',   '2020-11-4 17:55:00', 'tm32', 'tm38', 'st31');
INSERT INTO match_report VALUES ('mt190', 0, 1, 1, 0);

INSERT INTO matches VALUES ('mt191', 'uefa2',   '2020-11-4 20:00:00', 'tm10', 'tm7', 'st10');
INSERT INTO match_report VALUES ('mt191', 0, 0, 3, 0);

INSERT INTO matches VALUES ('mt192', 'uefa2',   '2020-11-24 20:00:00', 'tm7', 'tm10', 'st7');
INSERT INTO match_report VALUES ('mt192', 0, 3, 0, 0);

INSERT INTO matches VALUES ('mt193', 'uefa2',   '2020-11-24 20:00:00', 'tm38', 'tm32', 'st38');
INSERT INTO match_report VALUES ('mt193', 0, 3, 1, 0);

INSERT INTO matches VALUES ('mt194', 'uefa2',   '2020-12-2 20:00:00', 'tm7', 'tm38', 'st7');
INSERT INTO match_report VALUES ('mt194', 0, 1, 1, 0);

INSERT INTO matches VALUES ('mt195', 'uefa2',   '2020-12-2 20:00:00', 'tm10', 'tm32', 'st10');
INSERT INTO match_report VALUES ('mt195', 0, 3, 0, 0);

INSERT INTO matches VALUES ('mt196', 'uefa2',   '2020-12-8 17:55:00', 'tm32', 'tm7', 'st31');
INSERT INTO match_report VALUES ('mt196', 0, 1, 2, 10860);

INSERT INTO matches VALUES ('mt197', 'uefa2',   '2020-12-8 17:55:00', 'tm38', 'tm10', 'st38');
INSERT INTO match_report VALUES ('mt197', 0, 2, 2, 0);

INSERT INTO matches VALUES ('mt198', 'uefa2',   '2020-10-20 17:55:00', 'tm11', 'tm16', 'st11');
INSERT INTO match_report VALUES ('mt198', 0, 0, 2, 14850);

INSERT INTO matches VALUES ('mt199', 'uefa2',   '2020-10-20 20:00:00', 'tm12', 'tm35', 'st12');
INSERT INTO match_report VALUES ('mt199', 0, 5, 1, 0);

INSERT INTO matches VALUES ('mt200', 'uefa2',   '2020-10-28 20:00:00', 'tm35', 'tm11', 'st35');
INSERT INTO match_report VALUES ('mt200', 0, 2, 2, 6171);

INSERT INTO matches VALUES ('mt201', 'uefa2',   '2020-10-28 20:00:00', 'tm16', 'tm12', 'st15');
INSERT INTO match_report VALUES ('mt201', 0, 0, 2, 0);

INSERT INTO matches VALUES ('mt202', 'uefa2',   '2020-11-4 20:00:00', 'tm12', 'tm11', 'st12');
INSERT INTO match_report VALUES ('mt202', 0, 2, 1, 0);

INSERT INTO matches VALUES ('mt203', 'uefa2',   '2020-11-4 20:00:00', 'tm35', 'tm16', 'st44');
INSERT INTO match_report VALUES ('mt203', 0, 1, 4, 18531);

INSERT INTO matches VALUES ('mt204', 'uefa2',   '2020-11-24 20:00:00', 'tm11', 'tm12', 'st11');
INSERT INTO match_report VALUES ('mt204', 0, 0, 4, 0);

INSERT INTO matches VALUES ('mt205', 'uefa2',   '2020-11-24 20:00:00', 'tm16', 'tm35', 'st15');
INSERT INTO match_report VALUES ('mt205', 0, 2, 1, 0);

INSERT INTO matches VALUES ('mt206', 'uefa2',   '2020-12-2 20:00:00', 'tm16', 'tm11', 'st15');
INSERT INTO match_report VALUES ('mt206', 0, 3, 0, 0);

INSERT INTO matches VALUES ('mt207', 'uefa2',   '2020-12-2 20:00:00', 'tm35', 'tm12', 'st35');
INSERT INTO match_report VALUES ('mt207', 0, 0, 3, 0);

INSERT INTO matches VALUES ('mt208', 'uefa2',   '2020-12-8 20:00:00', 'tm11', 'tm35', 'st11');
INSERT INTO match_report VALUES ('mt208', 0, 1, 0, 0);

INSERT INTO matches VALUES ('mt209', 'uefa2',   '2020-12-8 20:00:00', 'tm12', 'tm16', 'st12');
INSERT INTO match_report VALUES ('mt209', 0, 0, 3, 0);

INSERT INTO matches VALUES ('mt210', 'uefa2',   '2020-10-20 20:00:00', 'tm23', 'tm37', 'st22');
INSERT INTO match_report VALUES ('mt210', 0, 2, 0, 999);

INSERT INTO matches VALUES ('mt211', 'uefa2',   '2020-10-20 20:00:00', 'tm22', 'tm21', 'st21');
INSERT INTO match_report VALUES ('mt211', 0, 1, 2, 0);

INSERT INTO matches VALUES ('mt212', 'uefa2',   '2020-10-28 17:55:00', 'tm37', 'tm22', 'st37');
INSERT INTO match_report VALUES ('mt212', 0, 0, 2, 350);

INSERT INTO matches VALUES ('mt213', 'uefa2',   '2020-10-28 20:00:00', 'tm21', 'tm23', 'st20');
INSERT INTO match_report VALUES ('mt213', 0, 5, 0, 577);

INSERT INTO matches VALUES ('mt214', 'uefa2',   '2020-11-4 17:55:00', 'tm37', 'tm21', 'st37');
INSERT INTO match_report VALUES ('mt214', 0, 2, 1, 350);

INSERT INTO matches VALUES ('mt215', 'uefa2',   '2020-11-4 20:00:00', 'tm23', 'tm22', 'st22');
INSERT INTO match_report VALUES ('mt215', 0, 2, 1, 0);

INSERT INTO matches VALUES ('mt216', 'uefa2',   '2020-11-24 20:00:00', 'tm21', 'tm37', 'st20');
INSERT INTO match_report VALUES ('mt216', 0, 4, 1, 545);

INSERT INTO matches VALUES ('mt217', 'uefa2',   '2020-11-24 20:00:00', 'tm22', 'tm23', 'st21');
INSERT INTO match_report VALUES ('mt217', 0, 1, 0, 0);

INSERT INTO matches VALUES ('mt218', 'uefa2',   '2020-12-2 17:55:00', 'tm37', 'tm23', 'st37');
INSERT INTO match_report VALUES ('mt218', 0, 3, 4, 0);

INSERT INTO matches VALUES ('mt219', 'uefa2',   '2020-12-2 20:00:00', 'tm21', 'tm22', 'st20');
INSERT INTO match_report VALUES ('mt219', 0, 1, 3, 638);

INSERT INTO matches VALUES ('mt220', 'uefa2',   '2020-12-8 20:00:00', 'tm23', 'tm21', 'st22');
INSERT INTO match_report VALUES ('mt220', 0, 3, 2, 0);

INSERT INTO matches VALUES ('mt221', 'uefa2',   '2020-12-9 17:55:00', 'tm22', 'tm37', 'st21');
INSERT INTO match_report VALUES ('mt221', 0, 5, 1, 0);

INSERT INTO matches VALUES ('mt222', 'uefa2',   '2021-02-16 20:00:00', 'tm23', 'tm18', 'st44');
INSERT INTO match_report VALUES ('mt222', 0, 0, 2, 0);

INSERT INTO matches VALUES ('mt223', 'uefa2',   '2021-02-16 20:00:00', 'tm12', 'tm22', 'st12');
INSERT INTO match_report VALUES ('mt223', 0, 1, 4, 0);

INSERT INTO matches VALUES ('mt224', 'uefa2',   '2021-02-17 20:00:00', 'tm13', 'tm16', 'st13');
INSERT INTO match_report VALUES ('mt224', 0, 2, 1, 0);

INSERT INTO matches VALUES ('mt225', 'uefa2',   '2021-02-17 20:00:00', 'tm26', 'tm7', 'st25');
INSERT INTO match_report VALUES ('mt225', 0, 2, 3, 0);

INSERT INTO matches VALUES ('mt226', 'uefa2',   '2021-02-23 20:00:00', 'tm38', 'tm5', 'st38');
INSERT INTO match_report VALUES ('mt226', 0, 1, 4, 0);

INSERT INTO matches VALUES ('mt227', 'uefa2',   '2021-02-23 20:00:00', 'tm4', 'tm9', 'st45');
INSERT INTO match_report VALUES ('mt227', 0, 0, 1, 0);

INSERT INTO matches VALUES ('mt228', 'uefa2',   '2021-02-24 20:00:00', 'tm33', 'tm20', 'st44');
INSERT INTO match_report VALUES ('mt228', 0, 0, 2, 0);

INSERT INTO matches VALUES ('mt229', 'uefa2',   '2021-02-24 20:00:00', 'tm3', 'tm25', 'st3');
INSERT INTO match_report VALUES ('mt229', 0, 0, 1, 0);

INSERT INTO matches VALUES ('mt230', 'uefa2',   '2021-03-9 20:00:00', 'tm16', 'tm13', 'st15');
INSERT INTO match_report VALUES ('mt230', 0, 3, 2, 0);

INSERT INTO matches VALUES ('mt231', 'uefa2',   '2021-03-9 20:00:00', 'tm7', 'tm26', 'st7');
INSERT INTO match_report VALUES ('mt231', 0, 2, 2, 0);

INSERT INTO matches VALUES ('mt232', 'uefa2',   '2021-03-10 20:00:00', 'tm18', 'tm23', 'st44');
INSERT INTO match_report VALUES ('mt232', 0, 2, 0, 0);

INSERT INTO matches VALUES ('mt233', 'uefa2',   '2021-03-10 20:00:00', 'tm22', 'tm12', 'st21');
INSERT INTO match_report VALUES ('mt233', 0, 1, 1, 0);

INSERT INTO matches VALUES ('mt234', 'uefa2',   '2021-03-16 20:00:00', 'tm20', 'tm33', 'st44');
INSERT INTO match_report VALUES ('mt234', 0, 2, 0, 0);

INSERT INTO matches VALUES ('mt235', 'uefa2',   '2021-03-16 20:00:00', 'tm25', 'tm3', 'st43');
INSERT INTO match_report VALUES ('mt235', 0, 3, 1, 0);

INSERT INTO matches VALUES ('mt236', 'uefa2',   '2021-03-17 20:00:00', 'tm5', 'tm38', 'st5');
INSERT INTO match_report VALUES ('mt236', 0, 2, 1, 0);

INSERT INTO matches VALUES ('mt237', 'uefa2',   '2021-03-17 20:00:00', 'tm9', 'tm4', 'st9');
INSERT INTO match_report VALUES ('mt237', 0, 2, 0, 0);

INSERT INTO matches VALUES ('mt238', 'uefa2',   '2021-04-6 20:00:00', 'tm20', 'tm7', 'st19');
INSERT INTO match_report VALUES ('mt238', 0, 2, 1, 0);

INSERT INTO matches VALUES ('mt239', 'uefa2',   '2021-04-6 20:00:00', 'tm25', 'tm18', 'st43');
INSERT INTO match_report VALUES ('mt239', 0, 3, 1, 0);

INSERT INTO matches VALUES ('mt240', 'uefa2',   '2021-04-7 20:00:00', 'tm13', 'tm9', 'st25');
INSERT INTO match_report VALUES ('mt240', 0, 0, 2, 0);

INSERT INTO matches VALUES ('mt241', 'uefa2',   '2021-04-7 20:00:00', 'tm5', 'tm22', 'st5');
INSERT INTO match_report VALUES ('mt241', 0, 2, 3, 0);

INSERT INTO matches VALUES ('mt242', 'uefa2',   '2021-04-13 20:00:00', 'tm9', 'tm13', 'st25');
INSERT INTO match_report VALUES ('mt242', 0, 0, 1, 0);

INSERT INTO matches VALUES ('mt243', 'uefa2',   '2021-04-13 20:00:00', 'tm22', 'tm5', 'st21');
INSERT INTO match_report VALUES ('mt243', 0, 0, 1, 0);

INSERT INTO matches VALUES ('mt244', 'uefa2',   '2021-04-14 20:00:00', 'tm7', 'tm20', 'st7');
INSERT INTO match_report VALUES ('mt244', 0, 1, 2, 0);

INSERT INTO matches VALUES ('mt245', 'uefa2',   '2021-04-14 20:00:00', 'tm18', 'tm25', 'st17');
INSERT INTO match_report VALUES ('mt245', 0, 0, 0, 0);

INSERT INTO matches VALUES ('mt246', 'uefa2',   '2021-04-27 20:00:00', 'tm25', 'tm9', 'st43');
INSERT INTO match_report VALUES ('mt246', 0, 1, 1, 0);

INSERT INTO matches VALUES ('mt247', 'uefa2',   '2021-04-28 20:00:00', 'tm22', 'tm20', 'st21');
INSERT INTO match_report VALUES ('mt247', 0, 1, 2, 0);

INSERT INTO matches VALUES ('mt248', 'uefa2',   '2021-05-4 20:00:00', 'tm20', 'tm22', 'st19');
INSERT INTO match_report VALUES ('mt248', 0, 2, 0, 0);

INSERT INTO matches VALUES ('mt249', 'uefa2',   '2021-05-5 20:00:00', 'tm9', 'tm25', 'st9');
INSERT INTO match_report VALUES ('mt249', 0, 2, 0, 0);

INSERT INTO matches VALUES ('mt250', 'uefa2',   '2021-05-29 20:00:00', 'tm20', 'tm9', 'st13');
INSERT INTO match_report VALUES ('mt250', 0, 0, 1, 14110);

INSERT INTO matches VALUES ('mt251', 'uefa3',   '2019-09-18 17:55:00', 'tm10', 'tm46', 'st10');
INSERT INTO match_report VALUES ('mt251', 0, 0, 0, 26616);

INSERT INTO matches VALUES ('mt252', 'uefa3',   '2019-09-18 20:00:00', 'tm22', 'tm25', 'st21');
INSERT INTO match_report VALUES ('mt252', 0, 3, 0, 46361);

INSERT INTO matches VALUES ('mt253', 'uefa3',   '2019-10-1 17:55:00', 'tm25', 'tm10', 'st24');
INSERT INTO match_report VALUES ('mt253', 0, 2, 2, 65112);

INSERT INTO matches VALUES ('mt254', 'uefa3',   '2019-10-1 20:00:00', 'tm46', 'tm22', 'st49');
INSERT INTO match_report VALUES ('mt254', 0, 0, 1, 46532);

INSERT INTO matches VALUES ('mt255', 'uefa3',   '2019-10-22 20:00:00', 'tm10', 'tm22', 'st10');
INSERT INTO match_report VALUES ('mt255', 0, 0, 5, 26946);

INSERT INTO matches VALUES ('mt256', 'uefa3',   '2019-10-22 20:00:00', 'tm46', 'tm25', 'st49');
INSERT INTO match_report VALUES ('mt256', 0, 0, 1, 48886);

INSERT INTO matches VALUES ('mt257', 'uefa3',   '2019-11-6 20:00:00', 'tm22', 'tm10', 'st21');
INSERT INTO match_report VALUES ('mt257', 0, 1, 0, 47418);

INSERT INTO matches VALUES ('mt258', 'uefa3',   '2019-11-6 20:00:00', 'tm25', 'tm46', 'st24');
INSERT INTO match_report VALUES ('mt258', 0, 6, 0, 65492);

INSERT INTO matches VALUES ('mt259', 'uefa3',   '2019-11-26 17:55:00', 'tm46', 'tm10', 'st49');
INSERT INTO match_report VALUES ('mt259', 0, 1, 1, 34500);

INSERT INTO matches VALUES ('mt260', 'uefa3',   '2019-11-26 20:00:00', 'tm25', 'tm22', 'st24');
INSERT INTO match_report VALUES ('mt260', 0, 2, 2, 75534);

INSERT INTO matches VALUES ('mt261', 'uefa3',   '2019-12-11 20:00:00', 'tm22', 'tm46', 'st21');
INSERT INTO match_report VALUES ('mt261', 0, 5, 0, 46509);

INSERT INTO matches VALUES ('mt262', 'uefa3',   '2019-12-11 20:00:00', 'tm10', 'tm25', 'st10');
INSERT INTO match_report VALUES ('mt262', 0, 1, 3, 27308);

INSERT INTO matches VALUES ('mt263', 'uefa3',   '2019-09-18 17:55:00', 'tm40', 'tm51', 'st40');
INSERT INTO match_report VALUES ('mt263', 0, 2, 2, 31001);

INSERT INTO matches VALUES ('mt264', 'uefa3',   '2019-09-18 20:00:00', 'tm5', 'tm44', 'st5');
INSERT INTO match_report VALUES ('mt264', 0, 3, 0, 70000);

INSERT INTO matches VALUES ('mt265', 'uefa3',   '2019-10-1 20:00:00', 'tm51', 'tm5', 'st54');
INSERT INTO match_report VALUES ('mt265', 0, 2, 7, 60127);

INSERT INTO matches VALUES ('mt266', 'uefa3',   '2019-10-1 20:00:00', 'tm44', 'tm40', 'st47');
INSERT INTO match_report VALUES ('mt266', 0, 3, 1, 43291);

INSERT INTO matches VALUES ('mt267', 'uefa3',   '2019-10-22 20:00:00', 'tm51', 'tm44', 'st54');
INSERT INTO match_report VALUES ('mt267', 0, 5, 0, 51743);

INSERT INTO matches VALUES ('mt268', 'uefa3',   '2019-10-22 20:00:00', 'tm40', 'tm5', 'st40');
INSERT INTO match_report VALUES ('mt268', 0, 2, 3, 31670);

INSERT INTO matches VALUES ('mt269', 'uefa3',   '2019-11-6 17:55:00', 'tm5', 'tm40', 'st5');
INSERT INTO match_report VALUES ('mt269', 0, 2, 0, 63646);

INSERT INTO matches VALUES ('mt270', 'uefa3',   '2019-11-6 20:00:00', 'tm44', 'tm51', 'st47');
INSERT INTO match_report VALUES ('mt270', 0, 0, 4, 42381);

INSERT INTO matches VALUES ('mt271', 'uefa3',   '2019-11-26 20:00:00', 'tm51', 'tm40', 'st54');
INSERT INTO match_report VALUES ('mt271', 0, 4, 2, 57024);

INSERT INTO matches VALUES ('mt272', 'uefa3',   '2019-11-26 20:00:00', 'tm44', 'tm5', 'st47');
INSERT INTO match_report VALUES ('mt272', 0, 0, 6, 44118);

INSERT INTO matches VALUES ('mt273', 'uefa3',   '2019-12-11 20:00:00', 'tm5', 'tm51', 'st5');
INSERT INTO match_report VALUES ('mt273', 0, 3, 1, 66353);

INSERT INTO matches VALUES ('mt274', 'uefa3',   '2019-12-11 20:00:00', 'tm40', 'tm44', 'st40');
INSERT INTO match_report VALUES ('mt274', 0, 1, 0, 31898);

INSERT INTO matches VALUES ('mt275', 'uefa3',   '2019-09-18 20:00:00', 'tm27', 'tm20', 'st56');
INSERT INTO match_report VALUES ('mt275', 0, 0, 3, 36675);

INSERT INTO matches VALUES ('mt276', 'uefa3',   '2019-09-18 20:00:00', 'tm45', 'tm3', 'st48');
INSERT INTO match_report VALUES ('mt276', 0, 4, 0, 28863);

INSERT INTO matches VALUES ('mt277', 'uefa3',   '2019-10-1 17:55:00', 'tm3', 'tm27', 'st1');
INSERT INTO match_report VALUES ('mt277', 0, 1, 2, 26022);

INSERT INTO matches VALUES ('mt278', 'uefa3',   '2019-10-1 20:00:00', 'tm20', 'tm45', 'st19');
INSERT INTO match_report VALUES ('mt278', 0, 2, 0, 49046);

INSERT INTO matches VALUES ('mt279', 'uefa3',   '2019-10-22 17:55:00', 'tm27', 'tm45', 'st56');
INSERT INTO match_report VALUES ('mt279', 0, 2, 2, 21526);

INSERT INTO matches VALUES ('mt280', 'uefa3',   '2019-10-22 20:00:00', 'tm20', 'tm3', 'st19');
INSERT INTO match_report VALUES ('mt280', 0, 5, 1, 49308);

INSERT INTO matches VALUES ('mt281', 'uefa3',   '2019-11-6 20:00:00', 'tm45', 'tm27', 'st48');
INSERT INTO match_report VALUES ('mt281', 0, 3, 3, 28316);

INSERT INTO matches VALUES ('mt282', 'uefa3',   '2019-11-6 20:00:00', 'tm3', 'tm20', 'st1');
INSERT INTO match_report VALUES ('mt282', 0, 1, 1, 34326);

INSERT INTO matches VALUES ('mt283', 'uefa3',   '2019-11-26 20:00:00', 'tm20', 'tm27', 'st19');
INSERT INTO match_report VALUES ('mt283', 0, 1, 1, 52020);

INSERT INTO matches VALUES ('mt284', 'uefa3',   '2019-11-26 20:00:00', 'tm3', 'tm45', 'st1');
INSERT INTO match_report VALUES ('mt284', 0, 2, 0, 28365);

INSERT INTO matches VALUES ('mt285', 'uefa3',   '2019-12-11 17:55:00', 'tm27', 'tm3', 'st56');
INSERT INTO match_report VALUES ('mt285', 0, 0, 3, 26536);

INSERT INTO matches VALUES ('mt286', 'uefa3',   '2019-12-11 17:55:00', 'tm45', 'tm20', 'st48');
INSERT INTO match_report VALUES ('mt286', 0, 1, 4, 29385);

INSERT INTO matches VALUES ('mt287', 'uefa3',   '2019-09-18 20:00:00', 'tm4', 'tm16', 'st4');
INSERT INTO match_report VALUES ('mt287', 0, 2, 2, 66283);

INSERT INTO matches VALUES ('mt288', 'uefa3',   '2019-09-18 20:00:00', 'tm43', 'tm39', 'st46');
INSERT INTO match_report VALUES ('mt288', 0, 1, 2, 26592);

INSERT INTO matches VALUES ('mt289', 'uefa3',   '2019-10-1 20:00:00', 'tm16', 'tm43', 'st15');
INSERT INTO match_report VALUES ('mt289', 0, 3, 0, 34525);

INSERT INTO matches VALUES ('mt290', 'uefa3',   '2019-10-1 20:00:00', 'tm39', 'tm4', 'st39');
INSERT INTO match_report VALUES ('mt290', 0, 0, 2, 27051);

INSERT INTO matches VALUES ('mt291', 'uefa3',   '2019-10-22 17:55:00', 'tm4', 'tm43', 'st4');
INSERT INTO match_report VALUES ('mt291', 0, 1, 0, 56776);

INSERT INTO matches VALUES ('mt292', 'uefa3',   '2019-10-22 20:00:00', 'tm16', 'tm39', 'st15');
INSERT INTO match_report VALUES ('mt292', 0, 2, 1, 38547);

INSERT INTO matches VALUES ('mt293', 'uefa3',   '2019-11-6 17:55:00', 'tm39', 'tm16', 'st39');
INSERT INTO match_report VALUES ('mt293', 0, 1, 2, 26861);

INSERT INTO matches VALUES ('mt294', 'uefa3',   '2019-11-6 20:00:00', 'tm43', 'tm4', 'st46');
INSERT INTO match_report VALUES ('mt294', 0, 2, 1, 28160);

INSERT INTO matches VALUES ('mt295', 'uefa3',   '2019-11-26 17:55:00', 'tm39', 'tm43', 'st39');
INSERT INTO match_report VALUES ('mt295', 0, 0, 2, 25757);

INSERT INTO matches VALUES ('mt296', 'uefa3',   '2019-11-26 20:00:00', 'tm16', 'tm4', 'st15');
INSERT INTO match_report VALUES ('mt296', 0, 1, 0, 40486);

INSERT INTO matches VALUES ('mt297', 'uefa3',   '2019-12-11 20:00:00', 'tm4', 'tm39', 'st4');
INSERT INTO match_report VALUES ('mt297', 0, 2, 0, 58426);

INSERT INTO matches VALUES ('mt298', 'uefa3',   '2019-12-11 20:00:00', 'tm43', 'tm16', 'st46');
INSERT INTO match_report VALUES ('mt298', 0, 0, 2, 29542);

INSERT INTO matches VALUES ('mt299', 'uefa3',   '2019-09-17 20:00:00', 'tm50', 'tm18', 'st53');
INSERT INTO match_report VALUES ('mt299', 0, 2, 0, 38878);

INSERT INTO matches VALUES ('mt300', 'uefa3',   '2019-09-17 20:00:00', 'tm24', 'tm47', 'st23');
INSERT INTO match_report VALUES ('mt300', 0, 6, 2, 29520);

INSERT INTO matches VALUES ('mt301', 'uefa3',   '2019-10-2 17:55:00', 'tm47', 'tm50', 'st50');
INSERT INTO match_report VALUES ('mt301', 0, 0, 0, 19962);

INSERT INTO matches VALUES ('mt302', 'uefa3',   '2019-10-2 20:00:00', 'tm18', 'tm24', 'st17');
INSERT INTO match_report VALUES ('mt302', 0, 4, 3, 52234);

INSERT INTO matches VALUES ('mt303', 'uefa3',   '2019-10-23 20:00:00', 'tm24', 'tm50', 'st23');
INSERT INTO match_report VALUES ('mt303', 0, 2, 3, 29520);

INSERT INTO matches VALUES ('mt304', 'uefa3',   '2019-10-23 20:00:00', 'tm47', 'tm18', 'st50');
INSERT INTO match_report VALUES ('mt304', 0, 1, 4, 19626);

INSERT INTO matches VALUES ('mt305', 'uefa3',   '2019-11-5 20:00:00', 'tm18', 'tm47', 'st17');
INSERT INTO match_report VALUES ('mt305', 0, 2, 1, 52611);

INSERT INTO matches VALUES ('mt306', 'uefa3',   '2019-11-5 20:00:00', 'tm50', 'tm24', 'st53');
INSERT INTO match_report VALUES ('mt306', 0, 1, 1, 32862);

INSERT INTO matches VALUES ('mt307', 'uefa3',   '2019-11-27 20:00:00', 'tm18', 'tm50', 'st17');
INSERT INTO match_report VALUES ('mt307', 0, 1, 1, 52128);

INSERT INTO matches VALUES ('mt308', 'uefa3',   '2019-11-27 20:00:00', 'tm47', 'tm24', 'st50');
INSERT INTO match_report VALUES ('mt308', 0, 1, 4, 17284);

INSERT INTO matches VALUES ('mt309', 'uefa3',   '2019-12-10 17:55:00', 'tm50', 'tm47', 'st53');
INSERT INTO match_report VALUES ('mt309', 0, 4, 0, 22265);

INSERT INTO matches VALUES ('mt310', 'uefa3',   '2019-12-10 17:55:00', 'tm24', 'tm18', 'st23');
INSERT INTO match_report VALUES ('mt310', 0, 0, 2, 29520);

INSERT INTO matches VALUES ('mt311', 'uefa3',   '2019-09-17 17:55:00', 'tm15', 'tm49', 'st1');
INSERT INTO match_report VALUES ('mt311', 0, 1, 1, 50128);

INSERT INTO matches VALUES ('mt312', 'uefa3',   '2019-09-17 20:00:00', 'tm7', 'tm12', 'st7');
INSERT INTO match_report VALUES ('mt312', 0, 0, 0, 66099);

INSERT INTO matches VALUES ('mt313', 'uefa3',   '2019-10-2 17:55:00', 'tm49', 'tm7', 'st52');
INSERT INTO match_report VALUES ('mt313', 0, 0, 2, 19370);

INSERT INTO matches VALUES ('mt314', 'uefa3',   '2019-10-2 20:00:00', 'tm12', 'tm15', 'st12');
INSERT INTO match_report VALUES ('mt314', 0, 2, 1, 86141);

INSERT INTO matches VALUES ('mt315', 'uefa3',   '2019-10-23 20:00:00', 'tm15', 'tm7', 'st1');
INSERT INTO match_report VALUES ('mt315', 0, 2, 0, 65673);

INSERT INTO matches VALUES ('mt316', 'uefa3',   '2019-10-23 20:00:00', 'tm49', 'tm12', 'st52');
INSERT INTO match_report VALUES ('mt316', 0, 1, 2, 19170);

INSERT INTO matches VALUES ('mt317', 'uefa3',   '2019-11-5 17:55:00', 'tm12', 'tm49', 'st12');
INSERT INTO match_report VALUES ('mt317', 0, 0, 0, 67023);

INSERT INTO matches VALUES ('mt318', 'uefa3',   '2019-11-5 20:00:00', 'tm7', 'tm15', 'st7');
INSERT INTO match_report VALUES ('mt318', 0, 3, 2, 66099);

INSERT INTO matches VALUES ('mt319', 'uefa3',   '2019-11-27 20:00:00', 'tm12', 'tm7', 'st12');
INSERT INTO match_report VALUES ('mt319', 0, 3, 1, 90071);

INSERT INTO matches VALUES ('mt320', 'uefa3',   '2019-11-27 20:00:00', 'tm49', 'tm15', 'st52');
INSERT INTO match_report VALUES ('mt320', 0, 1, 3, 19370);

INSERT INTO matches VALUES ('mt321', 'uefa3',   '2019-12-10 20:00:00', 'tm7', 'tm49', 'st7');
INSERT INTO match_report VALUES ('mt321', 0, 2, 1, 65079);

INSERT INTO matches VALUES ('mt322', 'uefa3',   '2019-12-10 20:00:00', 'tm15', 'tm12', 'st1');
INSERT INTO match_report VALUES ('mt322', 0, 1, 2, 71818);

INSERT INTO matches VALUES ('mt323', 'uefa3',   '2019-09-17 17:55:00', 'tm48', 'tm32', 'st51');
INSERT INTO match_report VALUES ('mt323', 0, 1, 1, 47201);

INSERT INTO matches VALUES ('mt324', 'uefa3',   '2019-09-17 20:00:00', 'tm28', 'tm23', 'st27');
INSERT INTO match_report VALUES ('mt324', 0, 1, 2, 46460);

INSERT INTO matches VALUES ('mt325', 'uefa3',   '2019-10-2 20:00:00', 'tm32', 'tm28', 'st31');
INSERT INTO match_report VALUES ('mt325', 0, 3, 1, 51683);

INSERT INTO matches VALUES ('mt326', 'uefa3',   '2019-10-2 20:00:00', 'tm23', 'tm48', 'st22');
INSERT INTO match_report VALUES ('mt326', 0, 0, 2, 40194);

INSERT INTO matches VALUES ('mt327', 'uefa3',   '2019-10-23 17:55:00', 'tm23', 'tm32', 'st22');
INSERT INTO match_report VALUES ('mt327', 0, 2, 1, 41058);

INSERT INTO matches VALUES ('mt328', 'uefa3',   '2019-10-23 20:00:00', 'tm28', 'tm48', 'st27');
INSERT INTO match_report VALUES ('mt328', 0, 2, 1, 53035);

INSERT INTO matches VALUES ('mt329', 'uefa3',   '2019-11-5 17:55:00', 'tm32', 'tm23', 'st31');
INSERT INTO match_report VALUES ('mt329', 0, 0, 2, 50452);

INSERT INTO matches VALUES ('mt330', 'uefa3',   '2019-11-5 20:00:00', 'tm48', 'tm28', 'st51');
INSERT INTO match_report VALUES ('mt330', 0, 3, 1, 51077);

INSERT INTO matches VALUES ('mt331', 'uefa3',   '2019-11-27 17:55:00', 'tm32', 'tm48', 'st31');
INSERT INTO match_report VALUES ('mt331', 0, 2, 0, 51183);

INSERT INTO matches VALUES ('mt332', 'uefa3',   '2019-11-27 20:00:00', 'tm23', 'tm28', 'st22');
INSERT INTO match_report VALUES ('mt332', 0, 2, 2, 38339);

INSERT INTO matches VALUES ('mt333', 'uefa3',   '2019-12-10 20:00:00', 'tm28', 'tm32', 'st27');
INSERT INTO match_report VALUES ('mt333', 0, 3, 0, 40232);

INSERT INTO matches VALUES ('mt334', 'uefa3',   '2019-12-10 20:00:00', 'tm48', 'tm23', 'st51');
INSERT INTO match_report VALUES ('mt334', 0, 2, 2, 53288);

INSERT INTO matches VALUES ('mt335', 'uefa3',   '2019-09-17 20:00:00', 'tm9', 'tm52', 'st9');
INSERT INTO match_report VALUES ('mt335', 0, 0, 1, 39469);

INSERT INTO matches VALUES ('mt336', 'uefa3',   '2019-09-17 20:00:00', 'tm2', 'tm17', 'st2');
INSERT INTO match_report VALUES ('mt336', 0, 3, 0, 51441);

INSERT INTO matches VALUES ('mt337', 'uefa3',   '2019-10-2 20:00:00', 'tm52', 'tm2', 'st55');
INSERT INTO match_report VALUES ('mt337', 0, 0, 3, 44659);

INSERT INTO matches VALUES ('mt338', 'uefa3',   '2019-10-2 20:00:00', 'tm17', 'tm9', 'st16');
INSERT INTO match_report VALUES ('mt338', 0, 1, 2, 48523);

INSERT INTO matches VALUES ('mt339', 'uefa3',   '2019-10-23 17:55:00', 'tm2', 'tm9', 'st2');
INSERT INTO match_report VALUES ('mt339', 0, 0, 1, 52482);

INSERT INTO matches VALUES ('mt340', 'uefa3',   '2019-10-23 20:00:00', 'tm17', 'tm52', 'st16');
INSERT INTO match_report VALUES ('mt340', 0, 1, 1, 47488);

INSERT INTO matches VALUES ('mt341', 'uefa3',   '2019-11-5 20:00:00', 'tm9', 'tm2', 'st9');
INSERT INTO match_report VALUES ('mt341', 0, 4, 4, 39132);

INSERT INTO matches VALUES ('mt342', 'uefa3',   '2019-11-5 20:00:00', 'tm52', 'tm17', 'st55');
INSERT INTO match_report VALUES ('mt342', 0, 4, 1, 38252);

INSERT INTO matches VALUES ('mt343', 'uefa3',   '2019-11-27 17:55:00', 'tm52', 'tm9', 'st55');
INSERT INTO match_report VALUES ('mt343', 0, 2, 2, 43486);

INSERT INTO matches VALUES ('mt344', 'uefa3',   '2019-11-27 20:00:00', 'tm17', 'tm2', 'st16');
INSERT INTO match_report VALUES ('mt344', 0, 0, 2, 48612);

INSERT INTO matches VALUES ('mt345', 'uefa3',   '2019-12-10 20:00:00', 'tm9', 'tm17', 'st9');
INSERT INTO match_report VALUES ('mt345', 0, 2, 1, 40016);

INSERT INTO matches VALUES ('mt346', 'uefa3',   '2019-12-10 20:00:00', 'tm2', 'tm52', 'st2');
INSERT INTO match_report VALUES ('mt346', 0, 0, 1, 51931);

INSERT INTO matches VALUES ('mt347', 'uefa3',   '2020-02-18 20:00:00', 'tm7', 'tm22', 'st7');
INSERT INTO match_report VALUES ('mt347', 0, 2, 1, 66099);

INSERT INTO matches VALUES ('mt348', 'uefa3',   '2020-02-18 20:00:00', 'tm4', 'tm18', 'st4');
INSERT INTO match_report VALUES ('mt348', 0, 1, 0, 67443);

INSERT INTO matches VALUES ('mt349', 'uefa3',   '2020-02-19 20:00:00', 'tm3', 'tm52', 'st1');
INSERT INTO match_report VALUES ('mt349', 0, 4, 1, 44236);

INSERT INTO matches VALUES ('mt350', 'uefa3',   '2020-02-19 20:00:00', 'tm51', 'tm23', 'st54');
INSERT INTO match_report VALUES ('mt350', 0, 0, 1, 60095);

INSERT INTO matches VALUES ('mt351', 'uefa3',   '2020-02-25 20:00:00', 'tm9', 'tm5', 'st9');
INSERT INTO match_report VALUES ('mt351', 0, 0, 3, 36761);

INSERT INTO matches VALUES ('mt352', 'uefa3',   '2020-02-25 20:00:00', 'tm50', 'tm12', 'st53');
INSERT INTO match_report VALUES ('mt352', 0, 1, 1, 44388);

INSERT INTO matches VALUES ('mt353', 'uefa3',   '2020-02-26 20:00:00', 'tm25', 'tm20', 'st24');
INSERT INTO match_report VALUES ('mt353', 0, 1, 2, 75615);

INSERT INTO matches VALUES ('mt354', 'uefa3',   '2020-02-26 20:00:00', 'tm48', 'tm16', 'st51');
INSERT INTO match_report VALUES ('mt354', 0, 1, 0, 57335);

INSERT INTO matches VALUES ('mt355', 'uefa3',   '2020-03-10 20:00:00', 'tm52', 'tm3', 'st55');
INSERT INTO match_report VALUES ('mt355', 0, 3, 4, 0);

INSERT INTO matches VALUES ('mt356', 'uefa3',   '2020-03-10 20:00:00', 'tm23', 'tm51', 'st22');
INSERT INTO match_report VALUES ('mt356', 0, 3, 0, 42146);

INSERT INTO matches VALUES ('mt357', 'uefa3',   '2020-03-11 20:00:00', 'tm22', 'tm7', 'st21');
INSERT INTO match_report VALUES ('mt357', 0, 2, 0, 0);

INSERT INTO matches VALUES ('mt358', 'uefa3',   '2020-03-11 20:00:00', 'tm18', 'tm4', 'st17');
INSERT INTO match_report VALUES ('mt358', 0, 2, 3, 45000);

INSERT INTO matches VALUES ('mt359', 'uefa3',   '2020-08-7 20:00:00', 'tm20', 'tm25', 'st19');
INSERT INTO match_report VALUES ('mt359', 0, 2, 1, 0);

INSERT INTO matches VALUES ('mt360', 'uefa3',   '2020-08-7 20:00:00', 'tm16', 'tm48', 'st15');
INSERT INTO match_report VALUES ('mt360', 0, 2, 1, 0);

INSERT INTO matches VALUES ('mt361', 'uefa3',   '2020-08-8 20:00:00', 'tm5', 'tm9', 'st5');
INSERT INTO match_report VALUES ('mt361', 0, 4, 1, 0);

INSERT INTO matches VALUES ('mt362', 'uefa3',   '2020-08-8 20:00:00', 'tm12', 'tm50', 'st12');
INSERT INTO match_report VALUES ('mt362', 0, 3, 1, 0);

INSERT INTO matches VALUES ('mt363', 'uefa3',   '2020-08-12 20:00:00', 'tm3', 'tm22', 'st27');
INSERT INTO match_report VALUES ('mt363', 0, 1, 2, 0);

INSERT INTO matches VALUES ('mt364', 'uefa3',   '2020-08-13 20:00:00', 'tm23', 'tm4', 'st28');
INSERT INTO match_report VALUES ('mt364', 0, 2, 1, 0);

INSERT INTO matches VALUES ('mt365', 'uefa3',   '2020-08-14 20:00:00', 'tm12', 'tm5', 'st27');
INSERT INTO match_report VALUES ('mt365', 0, 2, 8, 0);

INSERT INTO matches VALUES ('mt366', 'uefa3',   '2020-08-15 20:00:00', 'tm20', 'tm48', 'st28');
INSERT INTO match_report VALUES ('mt366', 0, 1, 3, 0);

INSERT INTO matches VALUES ('mt367', 'uefa3',   '2020-08-18 20:00:00', 'tm23', 'tm22', 'st27');
INSERT INTO match_report VALUES ('mt367', 0, 0, 3, 0);

INSERT INTO matches VALUES ('mt368', 'uefa3',   '2020-08-19 20:00:00', 'tm48', 'tm5', 'st28');
INSERT INTO match_report VALUES ('mt368', 0, 0, 3, 0);

INSERT INTO matches VALUES ('mt369', 'uefa3',   '2020-08-23 20:00:00', 'tm22', 'tm5', 'st27');
INSERT INTO match_report VALUES ('mt369', 0, 0, 1, 0);

INSERT INTO matches VALUES ('mt370', 'uefa4',   '2018-09-18 20:00:00', 'tm55', 'tm4', 'st59');
INSERT INTO match_report VALUES ('mt370', 0, 1, 2, 10575);

INSERT INTO matches VALUES ('mt371', 'uefa4',   '2018-09-18 20:00:00', 'tm10', 'tm7', 'st10');
INSERT INTO match_report VALUES ('mt371', 0, 0, 1, 25181);

INSERT INTO matches VALUES ('mt372', 'uefa4',   '2018-10-3 20:00:00', 'tm7', 'tm55', 'st7');
INSERT INTO match_report VALUES ('mt372', 0, 3, 0, 66099);

INSERT INTO matches VALUES ('mt373', 'uefa4',   '2018-10-3 20:00:00', 'tm4', 'tm10', 'st4');
INSERT INTO match_report VALUES ('mt373', 0, 3, 1, 55742);

INSERT INTO matches VALUES ('mt374', 'uefa4',   '2018-10-24 17:55:00', 'tm10', 'tm55', 'st10');
INSERT INTO match_report VALUES ('mt374', 0, 1, 1, 23957);

INSERT INTO matches VALUES ('mt375', 'uefa4',   '2018-10-24 20:00:00', 'tm7', 'tm4', 'st7');
INSERT INTO match_report VALUES ('mt375', 0, 4, 0, 66099);

INSERT INTO matches VALUES ('mt376', 'uefa4',   '2018-11-6 17:55:00', 'tm55', 'tm10', 'st59');
INSERT INTO match_report VALUES ('mt376', 0, 0, 4, 8347);

INSERT INTO matches VALUES ('mt377', 'uefa4',   '2018-11-6 20:00:00', 'tm4', 'tm7', 'st4');
INSERT INTO match_report VALUES ('mt377', 0, 2, 0, 61023);

INSERT INTO matches VALUES ('mt378', 'uefa4',   '2018-11-28 17:55:00', 'tm4', 'tm55', 'st4');
INSERT INTO match_report VALUES ('mt378', 0, 2, 0, 56314);

INSERT INTO matches VALUES ('mt379', 'uefa4',   '2018-11-28 20:00:00', 'tm7', 'tm10', 'st7');
INSERT INTO match_report VALUES ('mt379', 0, 0, 0, 66099);

INSERT INTO matches VALUES ('mt380', 'uefa4',   '2018-12-11 20:00:00', 'tm55', 'tm7', 'st59');
INSERT INTO match_report VALUES ('mt380', 0, 0, 2, 8731);

INSERT INTO matches VALUES ('mt381', 'uefa4',   '2018-12-11 20:00:00', 'tm10', 'tm4', 'st10');
INSERT INTO match_report VALUES ('mt381', 0, 0, 0, 25645);

INSERT INTO matches VALUES ('mt382', 'uefa4',   '2018-09-18 17:55:00', 'tm12', 'tm59', 'st12');
INSERT INTO match_report VALUES ('mt382', 0, 4, 0, 73462);

INSERT INTO matches VALUES ('mt383', 'uefa4',   '2018-09-18 17:55:00', 'tm15', 'tm51', 'st1');
INSERT INTO match_report VALUES ('mt383', 0, 2, 1, 64123);

INSERT INTO matches VALUES ('mt384', 'uefa4',   '2018-10-3 20:00:00', 'tm51', 'tm12', 'st64');
INSERT INTO match_report VALUES ('mt384', 0, 2, 4, 82137);

INSERT INTO matches VALUES ('mt385', 'uefa4',   '2018-10-3 20:00:00', 'tm59', 'tm15', 'st62');
INSERT INTO match_report VALUES ('mt385', 0, 1, 2, 34750);

INSERT INTO matches VALUES ('mt386', 'uefa4',   '2018-10-24 17:55:00', 'tm59', 'tm51', 'st62');
INSERT INTO match_report VALUES ('mt386', 0, 2, 2, 35000);

INSERT INTO matches VALUES ('mt387', 'uefa4',   '2018-10-24 20:00:00', 'tm12', 'tm15', 'st12');
INSERT INTO match_report VALUES ('mt387', 0, 2, 0, 86290);

INSERT INTO matches VALUES ('mt388', 'uefa4',   '2018-11-6 20:00:00', 'tm51', 'tm59', 'st64');
INSERT INTO match_report VALUES ('mt388', 0, 2, 1, 46588);

INSERT INTO matches VALUES ('mt389', 'uefa4',   '2018-11-6 20:00:00', 'tm15', 'tm12', 'st1');
INSERT INTO match_report VALUES ('mt389', 0, 1, 1, 70915);

INSERT INTO matches VALUES ('mt390', 'uefa4',   '2018-11-28 20:00:00', 'tm59', 'tm12', 'st62');
INSERT INTO match_report VALUES ('mt390', 0, 1, 2, 34600);

INSERT INTO matches VALUES ('mt391', 'uefa4',   '2018-11-28 20:00:00', 'tm51', 'tm15', 'st64');
INSERT INTO match_report VALUES ('mt391', 0, 1, 0, 57132);

INSERT INTO matches VALUES ('mt392', 'uefa4',   '2018-12-11 20:00:00', 'tm12', 'tm51', 'st12');
INSERT INTO match_report VALUES ('mt392', 0, 1, 1, 69961);

INSERT INTO matches VALUES ('mt393', 'uefa4',   '2018-12-11 20:00:00', 'tm15', 'tm59', 'st1');
INSERT INTO match_report VALUES ('mt393', 0, 1, 1, 62533);

INSERT INTO matches VALUES ('mt394', 'uefa4',   '2018-09-18 20:00:00', 'tm18', 'tm22', 'st17');
INSERT INTO match_report VALUES ('mt394', 0, 3, 2, 52478);

INSERT INTO matches VALUES ('mt395', 'uefa4',   '2018-09-18 20:00:00', 'tm44', 'tm50', 'st47');
INSERT INTO match_report VALUES ('mt395', 0, 0, 0, 49112);

INSERT INTO matches VALUES ('mt396', 'uefa4',   '2018-10-3 17:55:00', 'tm22', 'tm44', 'st21');
INSERT INTO match_report VALUES ('mt396', 0, 6, 1, 39979);

INSERT INTO matches VALUES ('mt397', 'uefa4',   '2018-10-3 20:00:00', 'tm50', 'tm18', 'st53');
INSERT INTO match_report VALUES ('mt397', 0, 1, 0, 37057);

INSERT INTO matches VALUES ('mt398', 'uefa4',   '2018-10-24 20:00:00', 'tm22', 'tm50', 'st21');
INSERT INTO match_report VALUES ('mt398', 0, 2, 2, 46274);

INSERT INTO matches VALUES ('mt399', 'uefa4',   '2018-10-24 20:00:00', 'tm18', 'tm44', 'st17');
INSERT INTO match_report VALUES ('mt399', 0, 4, 0, 53024);

INSERT INTO matches VALUES ('mt400', 'uefa4',   '2018-11-6 17:55:00', 'tm44', 'tm18', 'st47');
INSERT INTO match_report VALUES ('mt400', 0, 2, 0, 51318);

INSERT INTO matches VALUES ('mt401', 'uefa4',   '2018-11-6 20:00:00', 'tm50', 'tm22', 'st53');
INSERT INTO match_report VALUES ('mt401', 0, 1, 1, 55489);

INSERT INTO matches VALUES ('mt402', 'uefa4',   '2018-11-28 20:00:00', 'tm22', 'tm18', 'st21');
INSERT INTO match_report VALUES ('mt402', 0, 2, 1, 46880);

INSERT INTO matches VALUES ('mt403', 'uefa4',   '2018-11-28 20:00:00', 'tm50', 'tm44', 'st53');
INSERT INTO match_report VALUES ('mt403', 0, 3, 1, 44470);

INSERT INTO matches VALUES ('mt404', 'uefa4',   '2018-12-11 20:00:00', 'tm18', 'tm50', 'st17');
INSERT INTO match_report VALUES ('mt404', 0, 1, 0, 52015);

INSERT INTO matches VALUES ('mt405', 'uefa4',   '2018-12-11 20:00:00', 'tm44', 'tm22', 'st47');
INSERT INTO match_report VALUES ('mt405', 0, 1, 4, 48357);

INSERT INTO matches VALUES ('mt406', 'uefa4',   '2018-09-18 20:00:00', 'tm58', 'tm13', 'st61');
INSERT INTO match_report VALUES ('mt406', 0, 1, 1, 45755);

INSERT INTO matches VALUES ('mt407', 'uefa4',   '2018-09-18 20:00:00', 'tm46', 'tm39', 'st49');
INSERT INTO match_report VALUES ('mt407', 0, 3, 0, 43542);

INSERT INTO matches VALUES ('mt408', 'uefa4',   '2018-10-3 17:55:00', 'tm39', 'tm58', 'st39');
INSERT INTO match_report VALUES ('mt408', 0, 0, 1, 21471);

INSERT INTO matches VALUES ('mt409', 'uefa4',   '2018-10-3 20:00:00', 'tm13', 'tm46', 'st13');
INSERT INTO match_report VALUES ('mt409', 0, 1, 0, 42711);

INSERT INTO matches VALUES ('mt410', 'uefa4',   '2018-10-24 20:00:00', 'tm39', 'tm13', 'st39');
INSERT INTO match_report VALUES ('mt410', 0, 1, 3, 16034);

INSERT INTO matches VALUES ('mt411', 'uefa4',   '2018-10-24 20:00:00', 'tm46', 'tm58', 'st49');
INSERT INTO match_report VALUES ('mt411', 0, 0, 0, 46667);

INSERT INTO matches VALUES ('mt412', 'uefa4',   '2018-11-6 20:00:00', 'tm13', 'tm39', 'st13');
INSERT INTO match_report VALUES ('mt412', 0, 4, 1, 34616);

INSERT INTO matches VALUES ('mt413', 'uefa4',   '2018-11-6 20:00:00', 'tm58', 'tm46', 'st61');
INSERT INTO match_report VALUES ('mt413', 0, 2, 0, 54740);

INSERT INTO matches VALUES ('mt414', 'uefa4',   '2018-11-28 17:55:00', 'tm39', 'tm46', 'st39');
INSERT INTO match_report VALUES ('mt414', 0, 2, 0, 14037);

INSERT INTO matches VALUES ('mt415', 'uefa4',   '2018-11-28 20:00:00', 'tm13', 'tm58', 'st13');
INSERT INTO match_report VALUES ('mt415', 0, 3, 1, 41603);

INSERT INTO matches VALUES ('mt416', 'uefa4',   '2018-12-11 17:55:00', 'tm58', 'tm39', 'st61');
INSERT INTO match_report VALUES ('mt416', 0, 1, 0, 48883);

INSERT INTO matches VALUES ('mt417', 'uefa4',   '2018-12-11 17:55:00', 'tm46', 'tm13', 'st49');
INSERT INTO match_report VALUES ('mt417', 0, 2, 3, 33972);

INSERT INTO matches VALUES ('mt418', 'uefa4',   '2018-09-19 17:55:00', 'tm2', 'tm54', 'st2');
INSERT INTO match_report VALUES ('mt418', 0, 3, 0, 52285);

INSERT INTO matches VALUES ('mt419', 'uefa4',   '2018-09-19 20:00:00', 'tm28', 'tm5', 'st27');
INSERT INTO match_report VALUES ('mt419', 0, 0, 2, 60274);

INSERT INTO matches VALUES ('mt420', 'uefa4',   '2018-10-2 20:00:00', 'tm5', 'tm2', 'st5');
INSERT INTO match_report VALUES ('mt420', 0, 1, 1, 70000);

INSERT INTO matches VALUES ('mt421', 'uefa4',   '2018-10-2 20:00:00', 'tm54', 'tm28', 'st65');
INSERT INTO match_report VALUES ('mt421', 0, 2, 3, 31154);

INSERT INTO matches VALUES ('mt422', 'uefa4',   '2018-10-23 17:55:00', 'tm54', 'tm5', 'st65');
INSERT INTO match_report VALUES ('mt422', 0, 0, 2, 61221);

INSERT INTO matches VALUES ('mt423', 'uefa4',   '2018-10-23 20:00:00', 'tm2', 'tm28', 'st2');
INSERT INTO match_report VALUES ('mt423', 0, 1, 0, 52489);

INSERT INTO matches VALUES ('mt424', 'uefa4',   '2018-11-7 20:00:00', 'tm28', 'tm2', 'st27');
INSERT INTO match_report VALUES ('mt424', 0, 1, 1, 51328);

INSERT INTO matches VALUES ('mt425', 'uefa4',   '2018-11-7 20:00:00', 'tm5', 'tm54', 'st5');
INSERT INTO match_report VALUES ('mt425', 0, 2, 0, 70000);

INSERT INTO matches VALUES ('mt426', 'uefa4',   '2018-11-27 17:55:00', 'tm54', 'tm2', 'st65');
INSERT INTO match_report VALUES ('mt426', 0, 0, 2, 25756);

INSERT INTO matches VALUES ('mt427', 'uefa4',   '2018-11-27 20:00:00', 'tm5', 'tm28', 'st5');
INSERT INTO match_report VALUES ('mt427', 0, 5, 1, 70000);

INSERT INTO matches VALUES ('mt428', 'uefa4',   '2018-12-12 20:00:00', 'tm2', 'tm5', 'st2');
INSERT INTO match_report VALUES ('mt428', 0, 3, 3, 52244);

INSERT INTO matches VALUES ('mt429', 'uefa4',   '2018-12-12 20:00:00', 'tm28', 'tm54', 'st27');
INSERT INTO match_report VALUES ('mt429', 0, 1, 0, 33633);

INSERT INTO matches VALUES ('mt430', 'uefa4',   '2018-09-19 17:55:00', 'tm27', 'tm53', 'st56');
INSERT INTO match_report VALUES ('mt430', 0, 2, 2, 28336);

INSERT INTO matches VALUES ('mt431', 'uefa4',   '2018-09-19 20:00:00', 'tm20', 'tm48', 'st19');
INSERT INTO match_report VALUES ('mt431', 0, 1, 2, 40111);

INSERT INTO matches VALUES ('mt432', 'uefa4',   '2018-10-2 17:55:00', 'tm53', 'tm20', 'st57');
INSERT INTO match_report VALUES ('mt432', 0, 1, 2, 24851);

INSERT INTO matches VALUES ('mt433', 'uefa4',   '2018-10-2 20:00:00', 'tm48', 'tm27', 'st51');
INSERT INTO match_report VALUES ('mt433', 0, 2, 2, 0);

INSERT INTO matches VALUES ('mt434', 'uefa4',   '2018-10-23 20:00:00', 'tm27', 'tm20', 'st56');
INSERT INTO match_report VALUES ('mt434', 0, 0, 3, 37106);

INSERT INTO matches VALUES ('mt435', 'uefa4',   '2018-10-23 20:00:00', 'tm53', 'tm48', 'st57');
INSERT INTO match_report VALUES ('mt435', 0, 3, 3, 24144);

INSERT INTO matches VALUES ('mt436', 'uefa4',   '2018-11-7 20:00:00', 'tm20', 'tm27', 'st19');
INSERT INTO match_report VALUES ('mt436', 0, 6, 0, 52286);

INSERT INTO matches VALUES ('mt437', 'uefa4',   '2018-11-7 20:00:00', 'tm48', 'tm53', 'st51');
INSERT INTO match_report VALUES ('mt437', 0, 2, 2, 53850);

INSERT INTO matches VALUES ('mt438', 'uefa4',   '2018-11-27 20:00:00', 'tm48', 'tm20', 'st51');
INSERT INTO match_report VALUES ('mt438', 0, 2, 2, 56039);

INSERT INTO matches VALUES ('mt439', 'uefa4',   '2018-11-27 20:00:00', 'tm53', 'tm27', 'st57');
INSERT INTO match_report VALUES ('mt439', 0, 2, 3, 22920);

INSERT INTO matches VALUES ('mt440', 'uefa4',   '2018-12-12 20:00:00', 'tm27', 'tm48', 'st11');
INSERT INTO match_report VALUES ('mt440', 0, 1, 1, 38916);

INSERT INTO matches VALUES ('mt441', 'uefa4',   '2018-12-12 20:00:00', 'tm20', 'tm53', 'st19');
INSERT INTO match_report VALUES ('mt441', 0, 2, 1, 50411);

INSERT INTO matches VALUES ('mt442', 'uefa4',   '2018-09-19 20:00:00', 'tm25', 'tm56', 'st24');
INSERT INTO match_report VALUES ('mt442', 0, 3, 0, 69251);

INSERT INTO matches VALUES ('mt443', 'uefa4',   '2018-09-19 20:00:00', 'tm60', 'tm57', 'st63');
INSERT INTO match_report VALUES ('mt443', 0, 2, 2, 11312);

INSERT INTO matches VALUES ('mt444', 'uefa4',   '2018-10-2 20:00:00', 'tm57', 'tm25', 'st66');
INSERT INTO match_report VALUES ('mt444', 0, 1, 0, 71811);

INSERT INTO matches VALUES ('mt445', 'uefa4',   '2018-10-2 20:00:00', 'tm56', 'tm60', 'st38');
INSERT INTO match_report VALUES ('mt445', 0, 5, 0, 41243);

INSERT INTO matches VALUES ('mt446', 'uefa4',   '2018-10-23 20:00:00', 'tm56', 'tm57', 'st38');
INSERT INTO match_report VALUES ('mt446', 0, 3, 0, 46005);

INSERT INTO matches VALUES ('mt447', 'uefa4',   '2018-10-23 20:00:00', 'tm25', 'tm60', 'st24');
INSERT INTO match_report VALUES ('mt447', 0, 2, 1, 67356);

INSERT INTO matches VALUES ('mt448', 'uefa4',   '2018-11-7 17:55:00', 'tm57', 'tm56', 'st66');
INSERT INTO match_report VALUES ('mt448', 0, 1, 2, 64454);

INSERT INTO matches VALUES ('mt449', 'uefa4',   '2018-11-7 20:00:00', 'tm60', 'tm25', 'st63');
INSERT INTO match_report VALUES ('mt449', 0, 0, 5, 11483);

INSERT INTO matches VALUES ('mt450', 'uefa4',   '2018-11-27 17:55:00', 'tm57', 'tm60', 'st66');
INSERT INTO match_report VALUES ('mt450', 0, 1, 2, 52892);

INSERT INTO matches VALUES ('mt451', 'uefa4',   '2018-11-27 20:00:00', 'tm56', 'tm25', 'st38');
INSERT INTO match_report VALUES ('mt451', 0, 0, 2, 59124);

INSERT INTO matches VALUES ('mt452', 'uefa4',   '2018-12-12 17:55:00', 'tm25', 'tm57', 'st24');
INSERT INTO match_report VALUES ('mt452', 0, 0, 3, 51636);

INSERT INTO matches VALUES ('mt453', 'uefa4',   '2018-12-12 17:55:00', 'tm60', 'tm56', 'st63');
INSERT INTO match_report VALUES ('mt453', 0, 2, 1, 11217);

INSERT INTO matches VALUES ('mt454', 'uefa4',   '2018-09-19 20:00:00', 'tm52', 'tm16', 'st55');
INSERT INTO match_report VALUES ('mt454', 0, 0, 2, 46067);

INSERT INTO matches VALUES ('mt455', 'uefa4',   '2018-09-19 20:00:00', 'tm8', 'tm21', 'st8');
INSERT INTO match_report VALUES ('mt455', 0, 0, 3, 31120);

INSERT INTO matches VALUES ('mt456', 'uefa4',   '2018-10-2 17:55:00', 'tm16', 'tm8', 'st15');
INSERT INTO match_report VALUES ('mt456', 0, 3, 0, 40961);

INSERT INTO matches VALUES ('mt457', 'uefa4',   '2018-10-2 20:00:00', 'tm21', 'tm52', 'st20');
INSERT INTO match_report VALUES ('mt457', 0, 0, 0, 73569);

INSERT INTO matches VALUES ('mt458', 'uefa4',   '2018-10-23 17:55:00', 'tm8', 'tm52', 'st8');
INSERT INTO match_report VALUES ('mt458', 0, 1, 1, 31120);

INSERT INTO matches VALUES ('mt459', 'uefa4',   '2018-10-23 20:00:00', 'tm21', 'tm16', 'st20');
INSERT INTO match_report VALUES ('mt459', 0, 0, 1, 73946);

INSERT INTO matches VALUES ('mt460', 'uefa4',   '2018-11-7 17:55:00', 'tm52', 'tm8', 'st55');
INSERT INTO match_report VALUES ('mt460', 0, 3, 1, 36480);

INSERT INTO matches VALUES ('mt461', 'uefa4',   '2018-11-7 20:00:00', 'tm16', 'tm21', 'st15');
INSERT INTO match_report VALUES ('mt461', 0, 1, 2, 41470);

INSERT INTO matches VALUES ('mt462', 'uefa4',   '2018-11-27 20:00:00', 'tm16', 'tm52', 'st15');
INSERT INTO match_report VALUES ('mt462', 0, 1, 0, 39070);

INSERT INTO matches VALUES ('mt463', 'uefa4',   '2018-11-27 20:00:00', 'tm21', 'tm8', 'st20');
INSERT INTO match_report VALUES ('mt463', 0, 1, 0, 72876);

INSERT INTO matches VALUES ('mt464', 'uefa4',   '2018-12-12 20:00:00', 'tm52', 'tm21', 'st55');
INSERT INTO match_report VALUES ('mt464', 0, 2, 1, 36544);

INSERT INTO matches VALUES ('mt465', 'uefa4',   '2018-12-12 20:00:00', 'tm8', 'tm16', 'st8');
INSERT INTO match_report VALUES ('mt465', 0, 2, 1, 30114);

INSERT INTO matches VALUES ('mt466', 'uefa4',   '2019-02-12 20:00:00', 'tm21', 'tm22', 'st20');
INSERT INTO match_report VALUES ('mt466', 0, 0, 2, 74054);

INSERT INTO matches VALUES ('mt467', 'uefa4',   '2019-02-12 20:00:00', 'tm56', 'tm13', 'st38');
INSERT INTO match_report VALUES ('mt467', 0, 2, 1, 51727);

INSERT INTO matches VALUES ('mt468', 'uefa4',   '2019-02-13 20:00:00', 'tm51', 'tm7', 'st64');
INSERT INTO match_report VALUES ('mt468', 0, 3, 0, 71214);

INSERT INTO matches VALUES ('mt469', 'uefa4',   '2019-02-13 20:00:00', 'tm2', 'tm25', 'st2');
INSERT INTO match_report VALUES ('mt469', 0, 1, 2, 52286);

INSERT INTO matches VALUES ('mt470', 'uefa4',   '2019-02-19 20:00:00', 'tm48', 'tm12', 'st51');
INSERT INTO match_report VALUES ('mt470', 0, 0, 0, 57889);

INSERT INTO matches VALUES ('mt471', 'uefa4',   '2019-02-19 20:00:00', 'tm18', 'tm5', 'st17');
INSERT INTO match_report VALUES ('mt471', 0, 0, 0, 52250);

INSERT INTO matches VALUES ('mt472', 'uefa4',   '2019-02-20 20:00:00', 'tm58', 'tm20', 'st61');
INSERT INTO match_report VALUES ('mt472', 0, 2, 3, 54417);

INSERT INTO matches VALUES ('mt473', 'uefa4',   '2019-02-20 20:00:00', 'tm4', 'tm16', 'st4');
INSERT INTO match_report VALUES ('mt473', 0, 2, 0, 67193);

INSERT INTO matches VALUES ('mt474', 'uefa4',   '2019-03-5 20:00:00', 'tm7', 'tm51', 'st7');
INSERT INTO match_report VALUES ('mt474', 0, 0, 1, 66099);

INSERT INTO matches VALUES ('mt475', 'uefa4',   '2019-03-5 20:00:00', 'tm25', 'tm2', 'st24');
INSERT INTO match_report VALUES ('mt475', 0, 1, 4, 77013);

INSERT INTO matches VALUES ('mt476', 'uefa4',   '2019-03-6 20:00:00', 'tm22', 'tm21', 'st21');
INSERT INTO match_report VALUES ('mt476', 0, 1, 3, 47441);

INSERT INTO matches VALUES ('mt477', 'uefa4',   '2019-03-6 20:00:00', 'tm13', 'tm56', 'st13');
INSERT INTO match_report VALUES ('mt477', 0, 3, 1, 49029);

INSERT INTO matches VALUES ('mt478', 'uefa4',   '2019-03-12 20:00:00', 'tm20', 'tm58', 'st19');
INSERT INTO match_report VALUES ('mt478', 0, 7, 0, 51518);

INSERT INTO matches VALUES ('mt479', 'uefa4',   '2019-03-12 20:00:00', 'tm16', 'tm4', 'st15');
INSERT INTO match_report VALUES ('mt479', 0, 3, 0, 40884);

INSERT INTO matches VALUES ('mt480', 'uefa4',   '2019-03-13 20:00:00', 'tm12', 'tm48', 'st12');
INSERT INTO match_report VALUES ('mt480', 0, 5, 1, 92346);

INSERT INTO matches VALUES ('mt481', 'uefa4',   '2019-03-13 20:00:00', 'tm5', 'tm18', 'st5');
INSERT INTO match_report VALUES ('mt481', 0, 1, 3, 68145);

INSERT INTO matches VALUES ('mt482', 'uefa4',   '2019-04-9 20:00:00', 'tm18', 'tm13', 'st17');
INSERT INTO match_report VALUES ('mt482', 0, 2, 0, 52465);

INSERT INTO matches VALUES ('mt483', 'uefa4',   '2019-04-9 20:00:00', 'tm51', 'tm20', 'st54');
INSERT INTO match_report VALUES ('mt483', 0, 1, 0, 60044);

INSERT INTO matches VALUES ('mt484', 'uefa4',   '2019-04-10 20:00:00', 'tm2', 'tm16', 'st2');
INSERT INTO match_report VALUES ('mt484', 0, 1, 1, 50390);

INSERT INTO matches VALUES ('mt485', 'uefa4',   '2019-04-10 20:00:00', 'tm21', 'tm12', 'st20');
INSERT INTO match_report VALUES ('mt485', 0, 0, 1, 74093);

INSERT INTO matches VALUES ('mt486', 'uefa4',   '2019-04-16 20:00:00', 'tm16', 'tm2', 'st15');
INSERT INTO match_report VALUES ('mt486', 0, 1, 2, 41445);

INSERT INTO matches VALUES ('mt487', 'uefa4',   '2019-04-16 20:00:00', 'tm12', 'tm21', 'st12');
INSERT INTO match_report VALUES ('mt487', 0, 3, 0, 96708);

INSERT INTO matches VALUES ('mt488', 'uefa4',   '2019-04-17 20:00:00', 'tm13', 'tm18', 'st13');
INSERT INTO match_report VALUES ('mt488', 0, 1, 4, 49117);

INSERT INTO matches VALUES ('mt489', 'uefa4',   '2019-04-17 20:00:00', 'tm20', 'tm51', 'st19');
INSERT INTO match_report VALUES ('mt489', 0, 4, 3, 53348);

INSERT INTO matches VALUES ('mt490', 'uefa4',   '2019-04-30 20:00:00', 'tm51', 'tm2', 'st54');
INSERT INTO match_report VALUES ('mt490', 0, 0, 1, 60243);

INSERT INTO matches VALUES ('mt491', 'uefa4',   '2019-05-1 20:00:00', 'tm12', 'tm18', 'st12');
INSERT INTO match_report VALUES ('mt491', 0, 3, 0, 98299);

INSERT INTO matches VALUES ('mt492', 'uefa4',   '2019-05-7 20:00:00', 'tm18', 'tm12', 'st17');
INSERT INTO match_report VALUES ('mt492', 0, 4, 0, 55212);

INSERT INTO matches VALUES ('mt493', 'uefa4',   '2019-05-8 20:00:00', 'tm2', 'tm51', 'st2');
INSERT INTO match_report VALUES ('mt493', 0, 2, 3, 52641);

INSERT INTO matches VALUES ('mt494', 'uefa4',   '2019-06-1 20:00:00', 'tm51', 'tm18', 'st4');
INSERT INTO match_report VALUES ('mt494', 0, 0, 2, 63272);

INSERT INTO matches VALUES ('mt495', 'uefa5',   '2017-09-12 19:45:00', 'tm21', 'tm63', 'st20');
INSERT INTO match_report VALUES ('mt495', 0, 3, 0, 73854);

INSERT INTO matches VALUES ('mt496', 'uefa5',   '2017-09-12 19:45:00', 'tm28', 'tm57', 'st27');
INSERT INTO match_report VALUES ('mt496', 0, 1, 2, 38323);

INSERT INTO matches VALUES ('mt497', 'uefa5',   '2017-09-27 19:45:00', 'tm63', 'tm28', 'st69');
INSERT INTO match_report VALUES ('mt497', 0, 5, 0, 34111);

INSERT INTO matches VALUES ('mt498', 'uefa5',   '2017-09-27 19:45:00', 'tm57', 'tm21', 'st60');
INSERT INTO match_report VALUES ('mt498', 0, 1, 4, 29073);

INSERT INTO matches VALUES ('mt499', 'uefa5',   '2017-10-18 19:45:00', 'tm28', 'tm21', 'st27');
INSERT INTO match_report VALUES ('mt499', 0, 0, 1, 57684);

INSERT INTO matches VALUES ('mt500', 'uefa5',   '2017-10-18 19:45:00', 'tm57', 'tm63', 'st60');
INSERT INTO match_report VALUES ('mt500', 0, 0, 2, 27996);

INSERT INTO matches VALUES ('mt501', 'uefa5',   '2017-10-31 19:45:00', 'tm21', 'tm28', 'st20');
INSERT INTO match_report VALUES ('mt501', 0, 2, 0, 74437);

INSERT INTO matches VALUES ('mt502', 'uefa5',   '2017-10-31 19:45:00', 'tm63', 'tm57', 'st69');
INSERT INTO match_report VALUES ('mt502', 0, 1, 2, 33303);

INSERT INTO matches VALUES ('mt503', 'uefa5',   '2017-11-22 17:00:00', 'tm57', 'tm28', 'st60');
INSERT INTO match_report VALUES ('mt503', 0, 2, 0, 27709);

INSERT INTO matches VALUES ('mt504', 'uefa5',   '2017-11-22 19:45:00', 'tm63', 'tm21', 'st69');
INSERT INTO match_report VALUES ('mt504', 0, 1, 0, 36000);

INSERT INTO matches VALUES ('mt505', 'uefa5',   '2017-12-5 19:45:00', 'tm28', 'tm63', 'st27');
INSERT INTO match_report VALUES ('mt505', 0, 0, 2, 22470);

INSERT INTO matches VALUES ('mt506', 'uefa5',   '2017-12-5 19:45:00', 'tm21', 'tm57', 'st20');
INSERT INTO match_report VALUES ('mt506', 0, 2, 1, 74669);

INSERT INTO matches VALUES ('mt507', 'uefa5',   '2017-09-12 19:45:00', 'tm5', 'tm67', 'st5');
INSERT INTO match_report VALUES ('mt507', 0, 3, 0, 70000);

INSERT INTO matches VALUES ('mt508', 'uefa5',   '2017-09-12 19:45:00', 'tm62', 'tm22', 'st68');
INSERT INTO match_report VALUES ('mt508', 0, 0, 5, 57562);

INSERT INTO matches VALUES ('mt509', 'uefa5',   '2017-09-27 19:45:00', 'tm22', 'tm5', 'st21');
INSERT INTO match_report VALUES ('mt509', 0, 3, 0, 46252);

INSERT INTO matches VALUES ('mt510', 'uefa5',   '2017-09-27 19:45:00', 'tm67', 'tm62', 'st73');
INSERT INTO match_report VALUES ('mt510', 0, 0, 3, 19898);

INSERT INTO matches VALUES ('mt511', 'uefa5',   '2017-10-18 19:45:00', 'tm67', 'tm22', 'st73');
INSERT INTO match_report VALUES ('mt511', 0, 0, 4, 19108);

INSERT INTO matches VALUES ('mt512', 'uefa5',   '2017-10-18 19:45:00', 'tm5', 'tm62', 'st5');
INSERT INTO match_report VALUES ('mt512', 0, 3, 0, 70000);

INSERT INTO matches VALUES ('mt513', 'uefa5',   '2017-10-31 19:45:00', 'tm22', 'tm67', 'st21');
INSERT INTO match_report VALUES ('mt513', 0, 5, 0, 46403);

INSERT INTO matches VALUES ('mt514', 'uefa5',   '2017-10-31 19:45:00', 'tm62', 'tm5', 'st68');
INSERT INTO match_report VALUES ('mt514', 0, 1, 2, 58269);

INSERT INTO matches VALUES ('mt515', 'uefa5',   '2017-11-22 19:45:00', 'tm67', 'tm5', 'st73');
INSERT INTO match_report VALUES ('mt515', 0, 1, 2, 19753);

INSERT INTO matches VALUES ('mt516', 'uefa5',   '2017-11-22 19:45:00', 'tm22', 'tm62', 'st21');
INSERT INTO match_report VALUES ('mt516', 0, 7, 1, 46288);

INSERT INTO matches VALUES ('mt517', 'uefa5',   '2017-12-5 19:45:00', 'tm5', 'tm22', 'st5');
INSERT INTO match_report VALUES ('mt517', 0, 3, 1, 70000);

INSERT INTO matches VALUES ('mt518', 'uefa5',   '2017-12-5 19:45:00', 'tm62', 'tm67', 'st68');
INSERT INTO match_report VALUES ('mt518', 0, 0, 1, 57931);

INSERT INTO matches VALUES ('mt519', 'uefa5',   '2017-09-12 19:45:00', 'tm56', 'tm4', 'st38');
INSERT INTO match_report VALUES ('mt519', 0, 0, 0, 36064);

INSERT INTO matches VALUES ('mt520', 'uefa5',   '2017-09-12 19:45:00', 'tm9', 'tm66', 'st9');
INSERT INTO match_report VALUES ('mt520', 0, 6, 0, 41150);

INSERT INTO matches VALUES ('mt521', 'uefa5',   '2017-09-27 17:00:00', 'tm66', 'tm56', 'st75');
INSERT INTO match_report VALUES ('mt521', 0, 1, 2, 67200);

INSERT INTO matches VALUES ('mt522', 'uefa5',   '2017-09-27 19:45:00', 'tm4', 'tm9', 'st4');
INSERT INTO match_report VALUES ('mt522', 0, 1, 2, 60643);

INSERT INTO matches VALUES ('mt523', 'uefa5',   '2017-10-18 17:00:00', 'tm66', 'tm4', 'st75');
INSERT INTO match_report VALUES ('mt523', 0, 0, 0, 47923);

INSERT INTO matches VALUES ('mt524', 'uefa5',   '2017-10-18 19:45:00', 'tm9', 'tm56', 'st9');
INSERT INTO match_report VALUES ('mt524', 0, 3, 3, 41105);

INSERT INTO matches VALUES ('mt525', 'uefa5',   '2017-10-31 19:45:00', 'tm56', 'tm9', 'st38');
INSERT INTO match_report VALUES ('mt525', 0, 3, 0, 55036);

INSERT INTO matches VALUES ('mt526', 'uefa5',   '2017-10-31 19:45:00', 'tm4', 'tm66', 'st4');
INSERT INTO match_report VALUES ('mt526', 0, 1, 1, 55893);

INSERT INTO matches VALUES ('mt527', 'uefa5',   '2017-11-22 17:00:00', 'tm66', 'tm9', 'st75');
INSERT INTO match_report VALUES ('mt527', 0, 0, 4, 67100);

INSERT INTO matches VALUES ('mt528', 'uefa5',   '2017-11-22 19:45:00', 'tm4', 'tm56', 'st4');
INSERT INTO match_report VALUES ('mt528', 0, 2, 0, 56253);

INSERT INTO matches VALUES ('mt529', 'uefa5',   '2017-12-5 19:45:00', 'tm9', 'tm4', 'st9');
INSERT INTO match_report VALUES ('mt529', 0, 1, 1, 40875);

INSERT INTO matches VALUES ('mt530', 'uefa5',   '2017-12-5 19:45:00', 'tm56', 'tm66', 'st38');
INSERT INTO match_report VALUES ('mt530', 0, 1, 0, 34258);

INSERT INTO matches VALUES ('mt531', 'uefa5',   '2017-09-12 19:45:00', 'tm12', 'tm16', 'st12');
INSERT INTO match_report VALUES ('mt531', 0, 3, 0, 78656);

INSERT INTO matches VALUES ('mt532', 'uefa5',   '2017-09-12 19:45:00', 'tm40', 'tm29', 'st40');
INSERT INTO match_report VALUES ('mt532', 0, 2, 3, 30168);

INSERT INTO matches VALUES ('mt533', 'uefa5',   '2017-09-27 19:45:00', 'tm16', 'tm40', 'st15');
INSERT INTO match_report VALUES ('mt533', 0, 2, 0, 33460);

INSERT INTO matches VALUES ('mt534', 'uefa5',   '2017-09-27 19:45:00', 'tm29', 'tm12', 'st28');
INSERT INTO match_report VALUES ('mt534', 0, 0, 1, 48575);

INSERT INTO matches VALUES ('mt535', 'uefa5',   '2017-10-18 19:45:00', 'tm12', 'tm40', 'st12');
INSERT INTO match_report VALUES ('mt535', 0, 3, 1, 55026);

INSERT INTO matches VALUES ('mt536', 'uefa5',   '2017-10-18 19:45:00', 'tm16', 'tm29', 'st15');
INSERT INTO match_report VALUES ('mt536', 0, 2, 1, 36288);

INSERT INTO matches VALUES ('mt537', 'uefa5',   '2017-10-31 19:45:00', 'tm40', 'tm12', 'st40');
INSERT INTO match_report VALUES ('mt537', 0, 0, 0, 31600);

INSERT INTO matches VALUES ('mt538', 'uefa5',   '2017-10-31 19:45:00', 'tm29', 'tm16', 'st28');
INSERT INTO match_report VALUES ('mt538', 0, 1, 1, 48442);

INSERT INTO matches VALUES ('mt539', 'uefa5',   '2017-11-22 19:45:00', 'tm16', 'tm12', 'st15');
INSERT INTO match_report VALUES ('mt539', 0, 0, 0, 40876);

INSERT INTO matches VALUES ('mt540', 'uefa5',   '2017-11-22 19:45:00', 'tm29', 'tm40', 'st28');
INSERT INTO match_report VALUES ('mt540', 0, 3, 1, 42528);

INSERT INTO matches VALUES ('mt541', 'uefa5',   '2017-12-5 19:45:00', 'tm12', 'tm29', 'st12');
INSERT INTO match_report VALUES ('mt541', 0, 2, 0, 48336);

INSERT INTO matches VALUES ('mt542', 'uefa5',   '2017-12-5 19:45:00', 'tm40', 'tm16', 'st40');
INSERT INTO match_report VALUES ('mt542', 0, 0, 2, 29567);

INSERT INTO matches VALUES ('mt543', 'uefa5',   '2017-09-13 19:45:00', 'tm18', 'tm26', 'st17');
INSERT INTO match_report VALUES ('mt543', 0, 2, 2, 52332);

INSERT INTO matches VALUES ('mt544', 'uefa5',   '2017-09-13 19:45:00', 'tm65', 'tm68', 'st71');
INSERT INTO match_report VALUES ('mt544', 0, 1, 1, 12566);

INSERT INTO matches VALUES ('mt545', 'uefa5',   '2017-09-26 19:45:00', 'tm68', 'tm18', 'st74');
INSERT INTO match_report VALUES ('mt545', 0, 1, 1, 43376);

INSERT INTO matches VALUES ('mt546', 'uefa5',   '2017-09-26 19:45:00', 'tm26', 'tm65', 'st25');
INSERT INTO match_report VALUES ('mt546', 0, 3, 0, 34705);

INSERT INTO matches VALUES ('mt547', 'uefa5',   '2017-10-17 19:45:00', 'tm68', 'tm26', 'st74');
INSERT INTO match_report VALUES ('mt547', 0, 5, 1, 44307);

INSERT INTO matches VALUES ('mt548', 'uefa5',   '2017-10-17 19:45:00', 'tm65', 'tm18', 'st71');
INSERT INTO match_report VALUES ('mt548', 0, 0, 7, 12506);

INSERT INTO matches VALUES ('mt549', 'uefa5',   '2017-11-1 19:45:00', 'tm26', 'tm68', 'st25');
INSERT INTO match_report VALUES ('mt549', 0, 2, 1, 38002);

INSERT INTO matches VALUES ('mt550', 'uefa5',   '2017-11-1 19:45:00', 'tm18', 'tm65', 'st17');
INSERT INTO match_report VALUES ('mt550', 0, 3, 0, 47957);

INSERT INTO matches VALUES ('mt551', 'uefa5',   '2017-11-21 17:00:00', 'tm68', 'tm65', 'st74');
INSERT INTO match_report VALUES ('mt551', 0, 1, 1, 42920);

INSERT INTO matches VALUES ('mt552', 'uefa5',   '2017-11-21 19:45:00', 'tm26', 'tm18', 'st25');
INSERT INTO match_report VALUES ('mt552', 0, 3, 3, 39495);

INSERT INTO matches VALUES ('mt553', 'uefa5',   '2017-12-6 19:45:00', 'tm18', 'tm68', 'st17');
INSERT INTO match_report VALUES ('mt553', 0, 7, 0, 48779);

INSERT INTO matches VALUES ('mt554', 'uefa5',   '2017-12-6 19:45:00', 'tm65', 'tm26', 'st71');
INSERT INTO match_report VALUES ('mt554', 0, 1, 1, 11976);

INSERT INTO matches VALUES ('mt555', 'uefa5',   '2017-09-13 19:45:00', 'tm27', 'tm50', 'st56');
INSERT INTO match_report VALUES ('mt555', 0, 2, 1, 32679);

INSERT INTO matches VALUES ('mt556', 'uefa5',   '2017-09-13 19:45:00', 'tm64', 'tm20', 'st70');
INSERT INTO match_report VALUES ('mt556', 0, 0, 4, 43500);

INSERT INTO matches VALUES ('mt557', 'uefa5',   '2017-09-26 19:45:00', 'tm20', 'tm27', 'st19');
INSERT INTO match_report VALUES ('mt557', 0, 2, 0, 45310);

INSERT INTO matches VALUES ('mt558', 'uefa5',   '2017-09-26 19:45:00', 'tm50', 'tm64', 'st53');
INSERT INTO match_report VALUES ('mt558', 0, 3, 1, 22577);

INSERT INTO matches VALUES ('mt559', 'uefa5',   '2017-10-17 19:45:00', 'tm20', 'tm50', 'st19');
INSERT INTO match_report VALUES ('mt559', 0, 2, 1, 48520);

INSERT INTO matches VALUES ('mt560', 'uefa5',   '2017-10-17 19:45:00', 'tm64', 'tm27', 'st70');
INSERT INTO match_report VALUES ('mt560', 0, 1, 2, 43500);

INSERT INTO matches VALUES ('mt561', 'uefa5',   '2017-11-1 19:45:00', 'tm50', 'tm20', 'st53');
INSERT INTO match_report VALUES ('mt561', 0, 2, 4, 44483);

INSERT INTO matches VALUES ('mt562', 'uefa5',   '2017-11-1 19:45:00', 'tm27', 'tm64', 'st56');
INSERT INTO match_report VALUES ('mt562', 0, 3, 1, 24570);

INSERT INTO matches VALUES ('mt563', 'uefa5',   '2017-11-21 19:45:00', 'tm50', 'tm27', 'st53');
INSERT INTO match_report VALUES ('mt563', 0, 3, 0, 10573);

INSERT INTO matches VALUES ('mt564', 'uefa5',   '2017-11-21 19:45:00', 'tm20', 'tm64', 'st19');
INSERT INTO match_report VALUES ('mt564', 0, 1, 0, 43548);

INSERT INTO matches VALUES ('mt565', 'uefa5',   '2017-12-6 19:45:00', 'tm27', 'tm20', 'st56');
INSERT INTO match_report VALUES ('mt565', 0, 2, 1, 33154);

INSERT INTO matches VALUES ('mt566', 'uefa5',   '2017-12-6 19:45:00', 'tm64', 'tm50', 'st70');
INSERT INTO match_report VALUES ('mt566', 0, 2, 1, 36500);

INSERT INTO matches VALUES ('mt567', 'uefa5',   '2017-09-13 19:45:00', 'tm13', 'tm6', 'st13');
INSERT INTO match_report VALUES ('mt567', 0, 1, 3, 42429);

INSERT INTO matches VALUES ('mt568', 'uefa5',   '2017-09-13 19:45:00', 'tm23', 'tm55', 'st22');
INSERT INTO match_report VALUES ('mt568', 0, 1, 1, 40068);

INSERT INTO matches VALUES ('mt569', 'uefa5',   '2017-09-26 19:45:00', 'tm55', 'tm13', 'st59');
INSERT INTO match_report VALUES ('mt569', 0, 0, 3, 11703);

INSERT INTO matches VALUES ('mt570', 'uefa5',   '2017-09-26 19:45:00', 'tm6', 'tm23', 'st6');
INSERT INTO match_report VALUES ('mt570', 0, 2, 0, 36641);

INSERT INTO matches VALUES ('mt571', 'uefa5',   '2017-10-17 19:45:00', 'tm55', 'tm6', 'st59');
INSERT INTO match_report VALUES ('mt571', 0, 1, 2, 7403);

INSERT INTO matches VALUES ('mt572', 'uefa5',   '2017-10-17 19:45:00', 'tm23', 'tm13', 'st22');
INSERT INTO match_report VALUES ('mt572', 0, 3, 2, 41496);

INSERT INTO matches VALUES ('mt573', 'uefa5',   '2017-11-1 17:00:00', 'tm6', 'tm55', 'st6');
INSERT INTO match_report VALUES ('mt573', 0, 1, 1, 39346);

INSERT INTO matches VALUES ('mt574', 'uefa5',   '2017-11-1 19:45:00', 'tm13', 'tm23', 'st13');
INSERT INTO match_report VALUES ('mt574', 0, 3, 1, 41616);

INSERT INTO matches VALUES ('mt575', 'uefa5',   '2017-11-21 17:00:00', 'tm6', 'tm13', 'st6');
INSERT INTO match_report VALUES ('mt575', 0, 1, 1, 36919);

INSERT INTO matches VALUES ('mt576', 'uefa5',   '2017-11-21 19:45:00', 'tm55', 'tm23', 'st59');
INSERT INTO match_report VALUES ('mt576', 0, 1, 4, 9029);

INSERT INTO matches VALUES ('mt577', 'uefa5',   '2017-12-6 19:45:00', 'tm13', 'tm55', 'st13');
INSERT INTO match_report VALUES ('mt577', 0, 5, 2, 42509);

INSERT INTO matches VALUES ('mt578', 'uefa5',   '2017-12-6 19:45:00', 'tm23', 'tm6', 'st22');
INSERT INTO match_report VALUES ('mt578', 0, 1, 2, 42558);

INSERT INTO matches VALUES ('mt579', 'uefa5',   '2017-09-13 19:45:00', 'tm51', 'tm7', 'st64');
INSERT INTO match_report VALUES ('mt579', 0, 3, 1, 67343);

INSERT INTO matches VALUES ('mt580', 'uefa5',   '2017-09-13 19:45:00', 'tm25', 'tm61', 'st24');
INSERT INTO match_report VALUES ('mt580', 0, 3, 0, 71060);

INSERT INTO matches VALUES ('mt581', 'uefa5',   '2017-09-26 19:45:00', 'tm7', 'tm25', 'st7');
INSERT INTO match_report VALUES ('mt581', 0, 1, 3, 65849);

INSERT INTO matches VALUES ('mt582', 'uefa5',   '2017-09-26 19:45:00', 'tm61', 'tm51', 'st67');
INSERT INTO match_report VALUES ('mt582', 0, 0, 3, 16324);

INSERT INTO matches VALUES ('mt583', 'uefa5',   '2017-10-17 19:45:00', 'tm25', 'tm51', 'st24');
INSERT INTO match_report VALUES ('mt583', 0, 1, 1, 76589);

INSERT INTO matches VALUES ('mt584', 'uefa5',   '2017-10-17 19:45:00', 'tm61', 'tm7', 'st67');
INSERT INTO match_report VALUES ('mt584', 0, 1, 1, 15604);

INSERT INTO matches VALUES ('mt585', 'uefa5',   '2017-11-1 19:45:00', 'tm51', 'tm25', 'st64');
INSERT INTO match_report VALUES ('mt585', 0, 3, 1, 83782);

INSERT INTO matches VALUES ('mt586', 'uefa5',   '2017-11-1 19:45:00', 'tm7', 'tm61', 'st7');
INSERT INTO match_report VALUES ('mt586', 0, 1, 1, 64509);

INSERT INTO matches VALUES ('mt587', 'uefa5',   '2017-11-21 19:45:00', 'tm7', 'tm51', 'st7');
INSERT INTO match_report VALUES ('mt587', 0, 1, 2, 65849);

INSERT INTO matches VALUES ('mt588', 'uefa5',   '2017-11-21 19:45:00', 'tm61', 'tm25', 'st67');
INSERT INTO match_report VALUES ('mt588', 0, 0, 6, 19705);

INSERT INTO matches VALUES ('mt589', 'uefa5',   '2017-12-6 19:45:00', 'tm25', 'tm7', 'st24');
INSERT INTO match_report VALUES ('mt589', 0, 3, 2, 73323);

INSERT INTO matches VALUES ('mt590', 'uefa5',   '2017-12-6 19:45:00', 'tm51', 'tm61', 'st64');
INSERT INTO match_report VALUES ('mt590', 0, 3, 0, 42679);

INSERT INTO matches VALUES ('mt591', 'uefa5',   '2018-02-13 19:45:00', 'tm16', 'tm51', 'st15');
INSERT INTO match_report VALUES ('mt591', 0, 2, 2, 41232);

INSERT INTO matches VALUES ('mt592', 'uefa5',   '2018-02-13 19:45:00', 'tm63', 'tm20', 'st69');
INSERT INTO match_report VALUES ('mt592', 0, 0, 4, 36000);

INSERT INTO matches VALUES ('mt593', 'uefa5',   '2018-02-14 19:45:00', 'tm13', 'tm18', 'st13');
INSERT INTO match_report VALUES ('mt593', 0, 0, 5, 47718);

INSERT INTO matches VALUES ('mt594', 'uefa5',   '2018-02-14 19:45:00', 'tm25', 'tm22', 'st24');
INSERT INTO match_report VALUES ('mt594', 0, 3, 1, 78158);

INSERT INTO matches VALUES ('mt595', 'uefa5',   '2018-02-20 19:45:00', 'tm9', 'tm12', 'st9');
INSERT INTO match_report VALUES ('mt595', 0, 1, 1, 37741);

INSERT INTO matches VALUES ('mt596', 'uefa5',   '2018-02-20 19:45:00', 'tm5', 'tm6', 'st5');
INSERT INTO match_report VALUES ('mt596', 0, 5, 0, 70000);

INSERT INTO matches VALUES ('mt597', 'uefa5',   '2018-02-21 19:45:00', 'tm26', 'tm21', 'st25');
INSERT INTO match_report VALUES ('mt597', 0, 0, 0, 39725);

INSERT INTO matches VALUES ('mt598', 'uefa5',   '2018-02-21 19:45:00', 'tm27', 'tm56', 'st56');
INSERT INTO match_report VALUES ('mt598', 0, 2, 1, 35124);

INSERT INTO matches VALUES ('mt599', 'uefa5',   '2018-03-6 19:45:00', 'tm18', 'tm13', 'st17');
INSERT INTO match_report VALUES ('mt599', 0, 0, 0, 48768);

INSERT INTO matches VALUES ('mt600', 'uefa5',   '2018-03-6 19:45:00', 'tm22', 'tm25', 'st21');
INSERT INTO match_report VALUES ('mt600', 0, 1, 2, 46585);

INSERT INTO matches VALUES ('mt601', 'uefa5',   '2018-03-7 19:45:00', 'tm51', 'tm16', 'st64');
INSERT INTO match_report VALUES ('mt601', 0, 1, 2, 84010);

INSERT INTO matches VALUES ('mt602', 'uefa5',   '2018-03-7 19:45:00', 'tm20', 'tm63', 'st19');
INSERT INTO match_report VALUES ('mt602', 0, 1, 2, 49411);

INSERT INTO matches VALUES ('mt603', 'uefa5',   '2018-03-13 19:45:00', 'tm21', 'tm26', 'st20');
INSERT INTO match_report VALUES ('mt603', 0, 1, 2, 74909);

INSERT INTO matches VALUES ('mt604', 'uefa5',   '2018-03-13 19:45:00', 'tm56', 'tm27', 'st38');
INSERT INTO match_report VALUES ('mt604', 0, 1, 0, 47693);

INSERT INTO matches VALUES ('mt605', 'uefa5',   '2018-03-14 17:00:00', 'tm6', 'tm5', 'st6');
INSERT INTO match_report VALUES ('mt605', 0, 1, 3, 36885);

INSERT INTO matches VALUES ('mt606', 'uefa5',   '2018-03-14 19:45:00', 'tm12', 'tm9', 'st12');
INSERT INTO match_report VALUES ('mt606', 0, 3, 0, 97183);

INSERT INTO matches VALUES ('mt607', 'uefa5',   '2018-04-3 19:45:00', 'tm26', 'tm5', 'st25');
INSERT INTO match_report VALUES ('mt607', 0, 1, 2, 40635);

INSERT INTO matches VALUES ('mt608', 'uefa5',   '2018-04-3 19:45:00', 'tm16', 'tm25', 'st15');
INSERT INTO match_report VALUES ('mt608', 0, 0, 3, 40849);

INSERT INTO matches VALUES ('mt609', 'uefa5',   '2018-04-4 19:45:00', 'tm12', 'tm56', 'st12');
INSERT INTO match_report VALUES ('mt609', 0, 4, 1, 90106);

INSERT INTO matches VALUES ('mt610', 'uefa5',   '2018-04-4 19:45:00', 'tm18', 'tm20', 'st17');
INSERT INTO match_report VALUES ('mt610', 0, 3, 0, 50685);

INSERT INTO matches VALUES ('mt611', 'uefa5',   '2018-04-10 19:45:00', 'tm56', 'tm12', 'st38');
INSERT INTO match_report VALUES ('mt611', 0, 3, 0, 56580);

INSERT INTO matches VALUES ('mt612', 'uefa5',   '2018-04-10 19:45:00', 'tm20', 'tm18', 'st19');
INSERT INTO match_report VALUES ('mt612', 0, 1, 2, 53461);

INSERT INTO matches VALUES ('mt613', 'uefa5',   '2018-04-11 19:45:00', 'tm5', 'tm26', 'st5');
INSERT INTO match_report VALUES ('mt613', 0, 0, 0, 70000);

INSERT INTO matches VALUES ('mt614', 'uefa5',   '2018-04-11 19:45:00', 'tm25', 'tm16', 'st24');
INSERT INTO match_report VALUES ('mt614', 0, 1, 3, 75796);

INSERT INTO matches VALUES ('mt615', 'uefa5',   '2018-04-24 19:45:00', 'tm18', 'tm56', 'st17');
INSERT INTO match_report VALUES ('mt615', 0, 5, 2, 51236);

INSERT INTO matches VALUES ('mt616', 'uefa5',   '2018-04-25 19:45:00', 'tm5', 'tm25', 'st5');
INSERT INTO match_report VALUES ('mt616', 0, 1, 2, 70000);

INSERT INTO matches VALUES ('mt617', 'uefa5',   '2018-05-1 19:45:00', 'tm25', 'tm5', 'st24');
INSERT INTO match_report VALUES ('mt617', 0, 2, 2, 77459);

INSERT INTO matches VALUES ('mt618', 'uefa5',   '2018-05-2 19:45:00', 'tm56', 'tm18', 'st38');
INSERT INTO match_report VALUES ('mt618', 0, 4, 2, 61889);

INSERT INTO matches VALUES ('mt619', 'uefa5',   '2018-05-26 19:45:00', 'tm25', 'tm18', 'st11');
INSERT INTO match_report VALUES ('mt619', 0, 3, 1, 61561);

INSERT INTO matches VALUES ('mt620', 'uefa6',   '2016-09-13 19:45:00', 'tm63', 'tm74', 'st69');
INSERT INTO match_report VALUES ('mt620', 0, 1, 1, 30852);

INSERT INTO matches VALUES ('mt621', 'uefa6',   '2016-09-13 19:45:00', 'tm22', 'tm69', 'st21');
INSERT INTO match_report VALUES ('mt621', 0, 1, 1, 46440);

INSERT INTO matches VALUES ('mt622', 'uefa6',   '2016-09-28 19:45:00', 'tm69', 'tm63', 'st76');
INSERT INTO match_report VALUES ('mt622', 0, 2, 0, 59993);

INSERT INTO matches VALUES ('mt623', 'uefa6',   '2016-09-28 19:45:00', 'tm74', 'tm22', 'st82');
INSERT INTO match_report VALUES ('mt623', 0, 1, 3, 17155);

INSERT INTO matches VALUES ('mt624', 'uefa6',   '2016-10-19 19:45:00', 'tm69', 'tm74', 'st76');
INSERT INTO match_report VALUES ('mt624', 0, 6, 0, 59944);

INSERT INTO matches VALUES ('mt625', 'uefa6',   '2016-10-19 19:45:00', 'tm22', 'tm63', 'st21');
INSERT INTO match_report VALUES ('mt625', 0, 3, 0, 46488);

INSERT INTO matches VALUES ('mt626', 'uefa6',   '2016-11-1 19:45:00', 'tm63', 'tm22', 'st69');
INSERT INTO match_report VALUES ('mt626', 0, 1, 2, 34639);

INSERT INTO matches VALUES ('mt627', 'uefa6',   '2016-11-1 19:45:00', 'tm74', 'tm69', 'st82');
INSERT INTO match_report VALUES ('mt627', 0, 2, 3, 30862);

INSERT INTO matches VALUES ('mt628', 'uefa6',   '2016-11-23 19:45:00', 'tm69', 'tm22', 'st76');
INSERT INTO match_report VALUES ('mt628', 0, 2, 2, 59628);

INSERT INTO matches VALUES ('mt629', 'uefa6',   '2016-11-23 19:45:00', 'tm74', 'tm63', 'st82');
INSERT INTO match_report VALUES ('mt629', 0, 0, 0, 20821);

INSERT INTO matches VALUES ('mt630', 'uefa6',   '2016-12-6 19:45:00', 'tm63', 'tm69', 'st69');
INSERT INTO match_report VALUES ('mt630', 0, 1, 4, 36000);

INSERT INTO matches VALUES ('mt631', 'uefa6',   '2016-12-6 19:45:00', 'tm22', 'tm74', 'st21');
INSERT INTO match_report VALUES ('mt631', 0, 2, 2, 42650);

INSERT INTO matches VALUES ('mt632', 'uefa6',   '2016-09-13 19:45:00', 'tm11', 'tm50', 'st11');
INSERT INTO match_report VALUES ('mt632', 0, 1, 2, 35137);

INSERT INTO matches VALUES ('mt633', 'uefa6',   '2016-09-13 19:45:00', 'tm28', 'tm6', 'st27');
INSERT INTO match_report VALUES ('mt633', 0, 1, 1, 42126);

INSERT INTO matches VALUES ('mt634', 'uefa6',   '2016-09-28 19:45:00', 'tm6', 'tm11', 'st6');
INSERT INTO match_report VALUES ('mt634', 0, 1, 1, 33938);

INSERT INTO matches VALUES ('mt635', 'uefa6',   '2016-09-28 19:45:00', 'tm50', 'tm28', 'st53');
INSERT INTO match_report VALUES ('mt635', 0, 4, 2, 41281);

INSERT INTO matches VALUES ('mt636', 'uefa6',   '2016-10-19 19:45:00', 'tm11', 'tm28', 'st11');
INSERT INTO match_report VALUES ('mt636', 0, 0, 2, 25991);

INSERT INTO matches VALUES ('mt637', 'uefa6',   '2016-10-19 19:45:00', 'tm50', 'tm6', 'st53');
INSERT INTO match_report VALUES ('mt637', 0, 2, 3, 28502);

INSERT INTO matches VALUES ('mt638', 'uefa6',   '2016-11-1 17:45:00', 'tm6', 'tm50', 'st6');
INSERT INTO match_report VALUES ('mt638', 0, 1, 1, 35552);

INSERT INTO matches VALUES ('mt639', 'uefa6',   '2016-11-1 19:45:00', 'tm28', 'tm11', 'st27');
INSERT INTO match_report VALUES ('mt639', 0, 1, 0, 51641);

INSERT INTO matches VALUES ('mt640', 'uefa6',   '2016-11-23 17:45:00', 'tm6', 'tm28', 'st6');
INSERT INTO match_report VALUES ('mt640', 0, 3, 3, 36063);

INSERT INTO matches VALUES ('mt641', 'uefa6',   '2016-11-23 19:45:00', 'tm50', 'tm11', 'st53');
INSERT INTO match_report VALUES ('mt641', 0, 0, 0, 33736);

INSERT INTO matches VALUES ('mt642', 'uefa6',   '2016-12-6 19:45:00', 'tm11', 'tm6', 'st11');
INSERT INTO match_report VALUES ('mt642', 0, 6, 0, 14036);

INSERT INTO matches VALUES ('mt643', 'uefa6',   '2016-12-6 19:45:00', 'tm28', 'tm50', 'st27');
INSERT INTO match_report VALUES ('mt643', 0, 1, 2, 55634);

INSERT INTO matches VALUES ('mt644', 'uefa6',   '2016-09-13 19:45:00', 'tm12', 'tm62', 'st12');
INSERT INTO match_report VALUES ('mt644', 0, 7, 0, 73290);

INSERT INTO matches VALUES ('mt645', 'uefa6',   '2016-09-14 19:45:00', 'tm20', 'tm33', 'st19');
INSERT INTO match_report VALUES ('mt645', 0, 4, 0, 30270);

INSERT INTO matches VALUES ('mt646', 'uefa6',   '2016-09-28 19:45:00', 'tm33', 'tm12', 'st33');
INSERT INTO match_report VALUES ('mt646', 0, 1, 2, 46283);

INSERT INTO matches VALUES ('mt647', 'uefa6',   '2016-09-28 19:45:00', 'tm62', 'tm20', 'st68');
INSERT INTO match_report VALUES ('mt647', 0, 3, 3, 57592);

INSERT INTO matches VALUES ('mt648', 'uefa6',   '2016-10-19 19:45:00', 'tm62', 'tm33', 'st68');
INSERT INTO match_report VALUES ('mt648', 0, 0, 2, 57814);

INSERT INTO matches VALUES ('mt649', 'uefa6',   '2016-10-19 19:45:00', 'tm12', 'tm20', 'st12');
INSERT INTO match_report VALUES ('mt649', 0, 4, 0, 96290);

INSERT INTO matches VALUES ('mt650', 'uefa6',   '2016-11-1 19:45:00', 'tm33', 'tm62', 'st33');
INSERT INTO match_report VALUES ('mt650', 0, 1, 1, 46283);

INSERT INTO matches VALUES ('mt651', 'uefa6',   '2016-11-1 19:45:00', 'tm20', 'tm12', 'st19');
INSERT INTO match_report VALUES ('mt651', 0, 3, 1, 53340);

INSERT INTO matches VALUES ('mt652', 'uefa6',   '2016-11-23 19:45:00', 'tm33', 'tm20', 'st33');
INSERT INTO match_report VALUES ('mt652', 0, 1, 1, 45921);

INSERT INTO matches VALUES ('mt653', 'uefa6',   '2016-11-23 19:45:00', 'tm62', 'tm12', 'st68');
INSERT INTO match_report VALUES ('mt653', 0, 0, 2, 57937);

INSERT INTO matches VALUES ('mt654', 'uefa6',   '2016-12-6 19:45:00', 'tm12', 'tm33', 'st12');
INSERT INTO match_report VALUES ('mt654', 0, 4, 0, 67157);

INSERT INTO matches VALUES ('mt655', 'uefa6',   '2016-12-6 19:45:00', 'tm20', 'tm62', 'st19');
INSERT INTO match_report VALUES ('mt655', 0, 1, 1, 51297);

INSERT INTO matches VALUES ('mt656', 'uefa6',   '2016-09-13 19:45:00', 'tm5', 'tm71', 'st5');
INSERT INTO match_report VALUES ('mt656', 0, 5, 0, 70000);

INSERT INTO matches VALUES ('mt657', 'uefa6',   '2016-09-13 19:45:00', 'tm59', 'tm4', 'st62');
INSERT INTO match_report VALUES ('mt657', 0, 0, 1, 33989);

INSERT INTO matches VALUES ('mt658', 'uefa6',   '2016-09-28 19:45:00', 'tm4', 'tm5', 'st83');
INSERT INTO match_report VALUES ('mt658', 0, 1, 0, 48242);

INSERT INTO matches VALUES ('mt659', 'uefa6',   '2016-09-28 19:45:00', 'tm71', 'tm59', 'st84');
INSERT INTO match_report VALUES ('mt659', 0, 2, 2, 12646);

INSERT INTO matches VALUES ('mt660', 'uefa6',   '2016-10-19 19:45:00', 'tm5', 'tm59', 'st5');
INSERT INTO match_report VALUES ('mt660', 0, 4, 1, 70000);

INSERT INTO matches VALUES ('mt661', 'uefa6',   '2016-10-19 19:45:00', 'tm71', 'tm4', 'st84');
INSERT INTO match_report VALUES ('mt661', 0, 0, 1, 15400);

INSERT INTO matches VALUES ('mt662', 'uefa6',   '2016-11-1 19:45:00', 'tm4', 'tm71', 'st83');
INSERT INTO match_report VALUES ('mt662', 0, 2, 1, 40392);

INSERT INTO matches VALUES ('mt663', 'uefa6',   '2016-11-1 19:45:00', 'tm59', 'tm5', 'st62');
INSERT INTO match_report VALUES ('mt663', 0, 1, 2, 35000);

INSERT INTO matches VALUES ('mt664', 'uefa6',   '2016-11-23 17:00:00', 'tm71', 'tm5', 'st84');
INSERT INTO match_report VALUES ('mt664', 0, 3, 2, 15211);

INSERT INTO matches VALUES ('mt665', 'uefa6',   '2016-11-23 19:45:00', 'tm4', 'tm59', 'st83');
INSERT INTO match_report VALUES ('mt665', 0, 2, 0, 37891);

INSERT INTO matches VALUES ('mt666', 'uefa6',   '2016-12-6 19:45:00', 'tm5', 'tm4', 'st5');
INSERT INTO match_report VALUES ('mt666', 0, 1, 0, 70000);

INSERT INTO matches VALUES ('mt667', 'uefa6',   '2016-12-6 19:45:00', 'tm59', 'tm71', 'st62');
INSERT INTO match_report VALUES ('mt667', 0, 0, 0, 33400);

INSERT INTO matches VALUES ('mt668', 'uefa6',   '2016-09-14 19:45:00', 'tm43', 'tm57', 'st46');
INSERT INTO match_report VALUES ('mt668', 0, 2, 2, 23459);

INSERT INTO matches VALUES ('mt669', 'uefa6',   '2016-09-14 19:45:00', 'tm51', 'tm55', 'st64');
INSERT INTO match_report VALUES ('mt669', 0, 1, 2, 85011);

INSERT INTO matches VALUES ('mt670', 'uefa6',   '2016-09-27 19:45:00', 'tm55', 'tm43', 'st59');
INSERT INTO match_report VALUES ('mt670', 0, 1, 1, 8100);

INSERT INTO matches VALUES ('mt671', 'uefa6',   '2016-09-27 19:45:00', 'tm57', 'tm51', 'st85');
INSERT INTO match_report VALUES ('mt671', 0, 0, 1, 26153);

INSERT INTO matches VALUES ('mt672', 'uefa6',   '2016-10-18 19:45:00', 'tm43', 'tm51', 'st46');
INSERT INTO match_report VALUES ('mt672', 0, 0, 0, 28887);

INSERT INTO matches VALUES ('mt673', 'uefa6',   '2016-10-18 19:45:00', 'tm57', 'tm55', 'st60');
INSERT INTO match_report VALUES ('mt673', 0, 1, 1, 24125);

INSERT INTO matches VALUES ('mt674', 'uefa6',   '2016-11-2 19:45:00', 'tm55', 'tm57', 'st59');
INSERT INTO match_report VALUES ('mt674', 0, 3, 0, 10029);

INSERT INTO matches VALUES ('mt675', 'uefa6',   '2016-11-2 19:45:00', 'tm51', 'tm43', 'st64');
INSERT INTO match_report VALUES ('mt675', 0, 0, 1, 85512);

INSERT INTO matches VALUES ('mt676', 'uefa6',   '2016-11-22 17:00:00', 'tm57', 'tm43', 'st60');
INSERT INTO match_report VALUES ('mt676', 0, 1, 1, 19164);

INSERT INTO matches VALUES ('mt677', 'uefa6',   '2016-11-22 19:45:00', 'tm55', 'tm51', 'st59');
INSERT INTO match_report VALUES ('mt677', 0, 2, 1, 13100);

INSERT INTO matches VALUES ('mt678', 'uefa6',   '2016-12-7 19:45:00', 'tm43', 'tm55', 'st46');
INSERT INTO match_report VALUES ('mt678', 0, 3, 0, 21928);

INSERT INTO matches VALUES ('mt679', 'uefa6',   '2016-12-7 19:45:00', 'tm51', 'tm57', 'st64');
INSERT INTO match_report VALUES ('mt679', 0, 3, 1, 62034);

INSERT INTO matches VALUES ('mt680', 'uefa6',   '2016-09-14 19:45:00', 'tm72', 'tm7', 'st79');
INSERT INTO match_report VALUES ('mt680', 0, 0, 6, 27304);

INSERT INTO matches VALUES ('mt681', 'uefa6',   '2016-09-14 19:45:00', 'tm25', 'tm29', 'st24');
INSERT INTO match_report VALUES ('mt681', 0, 2, 1, 72179);

INSERT INTO matches VALUES ('mt682', 'uefa6',   '2016-09-27 19:45:00', 'tm7', 'tm25', 'st7');
INSERT INTO match_report VALUES ('mt682', 0, 2, 2, 65849);

INSERT INTO matches VALUES ('mt683', 'uefa6',   '2016-09-27 19:45:00', 'tm29', 'tm72', 'st28');
INSERT INTO match_report VALUES ('mt683', 0, 2, 0, 40094);

INSERT INTO matches VALUES ('mt684', 'uefa6',   '2016-10-18 19:45:00', 'tm25', 'tm72', 'st24');
INSERT INTO match_report VALUES ('mt684', 0, 5, 1, 70251);

INSERT INTO matches VALUES ('mt685', 'uefa6',   '2016-10-18 19:45:00', 'tm29', 'tm7', 'st28');
INSERT INTO match_report VALUES ('mt685', 0, 1, 2, 46609);

INSERT INTO matches VALUES ('mt686', 'uefa6',   '2016-11-2 19:45:00', 'tm7', 'tm29', 'st7');
INSERT INTO match_report VALUES ('mt686', 0, 1, 0, 65849);

INSERT INTO matches VALUES ('mt687', 'uefa6',   '2016-11-2 19:45:00', 'tm72', 'tm25', 'st79');
INSERT INTO match_report VALUES ('mt687', 0, 3, 3, 0);

INSERT INTO matches VALUES ('mt688', 'uefa6',   '2016-11-22 19:45:00', 'tm7', 'tm72', 'st7');
INSERT INTO match_report VALUES ('mt688', 0, 8, 4, 55094);

INSERT INTO matches VALUES ('mt689', 'uefa6',   '2016-11-22 19:45:00', 'tm29', 'tm25', 'st28');
INSERT INTO match_report VALUES ('mt689', 0, 1, 2, 50046);

INSERT INTO matches VALUES ('mt690', 'uefa6',   '2016-12-7 19:45:00', 'tm72', 'tm29', 'st79');
INSERT INTO match_report VALUES ('mt690', 0, 1, 0, 28232);

INSERT INTO matches VALUES ('mt691', 'uefa6',   '2016-12-7 19:45:00', 'tm25', 'tm7', 'st24');
INSERT INTO match_report VALUES ('mt691', 0, 2, 2, 76894);

INSERT INTO matches VALUES ('mt692', 'uefa6',   '2016-09-14 19:45:00', 'tm10', 'tm73', 'st10');
INSERT INTO match_report VALUES ('mt692', 0, 0, 3, 20970);

INSERT INTO matches VALUES ('mt693', 'uefa6',   '2016-09-14 19:45:00', 'tm13', 'tm70', 'st13');
INSERT INTO match_report VALUES ('mt693', 0, 1, 1, 34325);

INSERT INTO matches VALUES ('mt694', 'uefa6',   '2016-09-27 19:45:00', 'tm70', 'tm10', 'st77');
INSERT INTO match_report VALUES ('mt694', 0, 4, 0, 25605);

INSERT INTO matches VALUES ('mt695', 'uefa6',   '2016-09-27 19:45:00', 'tm73', 'tm13', 'st80');
INSERT INTO match_report VALUES ('mt695', 0, 1, 0, 31805);

INSERT INTO matches VALUES ('mt696', 'uefa6',   '2016-10-18 19:45:00', 'tm10', 'tm13', 'st10');
INSERT INTO match_report VALUES ('mt696', 0, 1, 2, 23325);

INSERT INTO matches VALUES ('mt697', 'uefa6',   '2016-10-18 19:45:00', 'tm73', 'tm70', 'st80');
INSERT INTO match_report VALUES ('mt697', 0, 1, 0, 31037);

INSERT INTO matches VALUES ('mt698', 'uefa6',   '2016-11-2 19:45:00', 'tm70', 'tm73', 'st77');
INSERT INTO match_report VALUES ('mt698', 0, 0, 0, 34146);

INSERT INTO matches VALUES ('mt699', 'uefa6',   '2016-11-2 19:45:00', 'tm13', 'tm10', 'st13');
INSERT INTO match_report VALUES ('mt699', 0, 1, 0, 32310);

INSERT INTO matches VALUES ('mt700', 'uefa6',   '2016-11-22 19:45:00', 'tm70', 'tm13', 'st77');
INSERT INTO match_report VALUES ('mt700', 0, 0, 0, 32036);

INSERT INTO matches VALUES ('mt701', 'uefa6',   '2016-11-22 19:45:00', 'tm73', 'tm10', 'st80');
INSERT INTO match_report VALUES ('mt701', 0, 2, 1, 31443);

INSERT INTO matches VALUES ('mt702', 'uefa6',   '2016-12-7 19:45:00', 'tm10', 'tm70', 'st10');
INSERT INTO match_report VALUES ('mt702', 0, 0, 2, 18981);

INSERT INTO matches VALUES ('mt703', 'uefa6',   '2016-12-7 19:45:00', 'tm13', 'tm73', 'st13');
INSERT INTO match_report VALUES ('mt703', 0, 5, 0, 39310);

INSERT INTO matches VALUES ('mt704', 'uefa6',   '2016-09-14 19:45:00', 'tm16', 'tm26', 'st15');
INSERT INTO match_report VALUES ('mt704', 0, 0, 0, 33261);

INSERT INTO matches VALUES ('mt705', 'uefa6',   '2016-09-14 19:45:00', 'tm48', 'tm45', 'st51');
INSERT INTO match_report VALUES ('mt705', 0, 3, 0, 43754);

INSERT INTO matches VALUES ('mt706', 'uefa6',   '2016-09-27 19:45:00', 'tm45', 'tm16', 'st48');
INSERT INTO match_report VALUES ('mt706', 0, 0, 4, 23875);

INSERT INTO matches VALUES ('mt707', 'uefa6',   '2016-09-27 19:45:00', 'tm26', 'tm48', 'st25');
INSERT INTO match_report VALUES ('mt707', 0, 1, 0, 36741);

INSERT INTO matches VALUES ('mt708', 'uefa6',   '2016-10-18 19:45:00', 'tm45', 'tm26', 'st48');
INSERT INTO match_report VALUES ('mt708', 0, 0, 1, 6021);

INSERT INTO matches VALUES ('mt709', 'uefa6',   '2016-10-18 19:45:00', 'tm48', 'tm16', 'st51');
INSERT INTO match_report VALUES ('mt709', 0, 0, 1, 53907);

INSERT INTO matches VALUES ('mt710', 'uefa6',   '2016-11-2 19:45:00', 'tm16', 'tm48', 'st15');
INSERT INTO match_report VALUES ('mt710', 0, 1, 1, 40356);

INSERT INTO matches VALUES ('mt711', 'uefa6',   '2016-11-2 19:45:00', 'tm26', 'tm45', 'st25');
INSERT INTO match_report VALUES ('mt711', 0, 4, 0, 35215);

INSERT INTO matches VALUES ('mt712', 'uefa6',   '2016-11-22 19:45:00', 'tm45', 'tm48', 'st48');
INSERT INTO match_report VALUES ('mt712', 0, 0, 1, 7834);

INSERT INTO matches VALUES ('mt713', 'uefa6',   '2016-11-22 19:45:00', 'tm26', 'tm16', 'st25');
INSERT INTO match_report VALUES ('mt713', 0, 1, 3, 38942);

INSERT INTO matches VALUES ('mt714', 'uefa6',   '2016-12-7 19:45:00', 'tm16', 'tm45', 'st15');
INSERT INTO match_report VALUES ('mt714', 0, 2, 0, 39380);

INSERT INTO matches VALUES ('mt715', 'uefa6',   '2016-12-7 19:45:00', 'tm48', 'tm26', 'st51');
INSERT INTO match_report VALUES ('mt715', 0, 0, 0, 52423);

INSERT INTO matches VALUES ('mt716', 'uefa6',   '2017-02-14 19:45:00', 'tm28', 'tm7', 'st27');
INSERT INTO match_report VALUES ('mt716', 0, 1, 0, 55124);

INSERT INTO matches VALUES ('mt717', 'uefa6',   '2017-02-14 19:45:00', 'tm22', 'tm12', 'st21');
INSERT INTO match_report VALUES ('mt717', 0, 4, 0, 46484);

INSERT INTO matches VALUES ('mt718', 'uefa6',   '2017-02-15 19:45:00', 'tm25', 'tm50', 'st24');
INSERT INTO match_report VALUES ('mt718', 0, 3, 1, 78000);

INSERT INTO matches VALUES ('mt719', 'uefa6',   '2017-02-15 19:45:00', 'tm5', 'tm69', 'st5');
INSERT INTO match_report VALUES ('mt719', 0, 5, 1, 70000);

INSERT INTO matches VALUES ('mt720', 'uefa6',   '2017-02-21 19:45:00', 'tm20', 'tm55', 'st19');
INSERT INTO match_report VALUES ('mt720', 0, 5, 3, 53351);

INSERT INTO matches VALUES ('mt721', 'uefa6',   '2017-02-21 19:45:00', 'tm43', 'tm4', 'st46');
INSERT INTO match_report VALUES ('mt721', 0, 2, 4, 29300);

INSERT INTO matches VALUES ('mt722', 'uefa6',   '2017-02-22 19:45:00', 'tm13', 'tm16', 'st13');
INSERT INTO match_report VALUES ('mt722', 0, 0, 2, 49229);

INSERT INTO matches VALUES ('mt723', 'uefa6',   '2017-02-22 19:45:00', 'tm26', 'tm73', 'st25');
INSERT INTO match_report VALUES ('mt723', 0, 2, 1, 38834);

INSERT INTO matches VALUES ('mt724', 'uefa6',   '2017-03-7 19:45:00', 'tm50', 'tm25', 'st53');
INSERT INTO match_report VALUES ('mt724', 0, 1, 3, 56695);

INSERT INTO matches VALUES ('mt725', 'uefa6',   '2017-03-7 19:45:00', 'tm69', 'tm5', 'st76');
INSERT INTO match_report VALUES ('mt725', 0, 1, 5, 59911);

INSERT INTO matches VALUES ('mt726', 'uefa6',   '2017-03-8 19:45:00', 'tm7', 'tm28', 'st7');
INSERT INTO match_report VALUES ('mt726', 0, 4, 0, 65849);

INSERT INTO matches VALUES ('mt727', 'uefa6',   '2017-03-8 19:45:00', 'tm12', 'tm22', 'st12');
INSERT INTO match_report VALUES ('mt727', 0, 6, 1, 96290);

INSERT INTO matches VALUES ('mt728', 'uefa6',   '2017-03-14 19:45:00', 'tm16', 'tm13', 'st15');
INSERT INTO match_report VALUES ('mt728', 0, 1, 0, 41161);

INSERT INTO matches VALUES ('mt729', 'uefa6',   '2017-03-14 19:45:00', 'tm73', 'tm26', 'st80');
INSERT INTO match_report VALUES ('mt729', 0, 2, 0, 31520);

INSERT INTO matches VALUES ('mt730', 'uefa6',   '2017-03-15 19:45:00', 'tm55', 'tm20', 'st59');
INSERT INTO match_report VALUES ('mt730', 0, 3, 1, 15700);

INSERT INTO matches VALUES ('mt731', 'uefa6',   '2017-03-15 19:45:00', 'tm4', 'tm43', 'st83');
INSERT INTO match_report VALUES ('mt731', 0, 0, 0, 49133);

INSERT INTO matches VALUES ('mt732', 'uefa6',   '2017-04-11 19:45:00', 'tm16', 'tm12', 'st15');
INSERT INTO match_report VALUES ('mt732', 0, 3, 0, 41092);

INSERT INTO matches VALUES ('mt733', 'uefa6',   '2017-04-12 17:45:00', 'tm7', 'tm55', 'st7');
INSERT INTO match_report VALUES ('mt733', 0, 2, 3, 65849);

INSERT INTO matches VALUES ('mt734', 'uefa6',   '2017-04-12 19:45:00', 'tm4', 'tm73', 'st83');
INSERT INTO match_report VALUES ('mt734', 0, 1, 0, 51423);

INSERT INTO matches VALUES ('mt735', 'uefa6',   '2017-04-12 19:45:00', 'tm5', 'tm25', 'st5');
INSERT INTO match_report VALUES ('mt735', 0, 1, 2, 70000);

INSERT INTO matches VALUES ('mt736', 'uefa6',   '2017-04-18 19:45:00', 'tm73', 'tm4', 'st80');
INSERT INTO match_report VALUES ('mt736', 0, 1, 1, 31548);

INSERT INTO matches VALUES ('mt737', 'uefa6',   '2017-04-18 19:45:00', 'tm25', 'tm5', 'st24');
INSERT INTO match_report VALUES ('mt737', 0, 4, 2, 78346);

INSERT INTO matches VALUES ('mt738', 'uefa6',   '2017-04-19 19:45:00', 'tm12', 'tm16', 'st12');
INSERT INTO match_report VALUES ('mt738', 0, 0, 0, 96290);

INSERT INTO matches VALUES ('mt739', 'uefa6',   '2017-04-19 19:50:00', 'tm55', 'tm7', 'st59');
INSERT INTO match_report VALUES ('mt739', 0, 3, 1, 17135);

INSERT INTO matches VALUES ('mt740', 'uefa6',   '2017-05-2 19:45:00', 'tm25', 'tm4', 'st24');
INSERT INTO match_report VALUES ('mt740', 0, 3, 0, 77609);

INSERT INTO matches VALUES ('mt741', 'uefa6',   '2017-05-3 19:45:00', 'tm55', 'tm16', 'st59');
INSERT INTO match_report VALUES ('mt741', 0, 0, 2, 16762);

INSERT INTO matches VALUES ('mt742', 'uefa6',   '2017-05-9 19:45:00', 'tm16', 'tm55', 'st15');
INSERT INTO match_report VALUES ('mt742', 0, 2, 1, 40244);

INSERT INTO matches VALUES ('mt743', 'uefa6',   '2017-05-10 19:45:00', 'tm4', 'tm25', 'st83');
INSERT INTO match_report VALUES ('mt743', 0, 2, 1, 53422);

INSERT INTO matches VALUES ('mt744', 'uefa6',   '2017-06-3 19:45:00', 'tm16', 'tm25', 'st86');
INSERT INTO match_report VALUES ('mt744', 0, 1, 4, 65842);



INSERT INTO goals VALUES ('gl1', 'mt1', 'ply643', 16, 'ply655', 'header');
INSERT INTO goals VALUES ('gl2', 'mt1', 'ply727', 28, '', 'own goal');
INSERT INTO goals VALUES ('gl3', 'mt1', 'ply765', 42, 'ply727', 'header');
INSERT INTO goals VALUES ('gl4', 'mt1', 'ply664', 45, '', 'penalty');
INSERT INTO goals VALUES ('gl5', 'mt1', 'ply765', 51, 'ply756', 'header');
INSERT INTO goals VALUES ('gl6', 'mt1', 'ply655', 56, 'ply648', 'right-footed shot');
INSERT INTO goals VALUES ('gl7', 'mt1', 'ply765', 73, 'ply766', 'right-footed shot');
INSERT INTO goals VALUES ('gl8', 'mt1', 'ply644', 75, 'ply656', 'right-footed shot');
INSERT INTO goals VALUES ('gl9', 'mt1', 'ply1064', 85, 'ply648', 'right-footed shot');
INSERT INTO goals VALUES ('gl10', 'mt2', 'ply1065', 15, 'ply739', 'left-footed shot');
INSERT INTO goals VALUES ('gl11', 'mt2', 'ply322', 27, 'ply311', 'right-footed shot');
INSERT INTO goals VALUES ('gl12', 'mt3', 'ply1066', 8, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl13', 'mt3', 'ply740', 74, 'ply739', 'left-footed shot');
INSERT INTO goals VALUES ('gl14', 'mt4', 'ply765', 5, 'ply757', 'right-footed shot');
INSERT INTO goals VALUES ('gl15', 'mt4', 'ply322', 22, 'ply21', 'right-footed shot');
INSERT INTO goals VALUES ('gl16', 'mt4', 'ply320', 40, 'ply322', 'right-footed shot');
INSERT INTO goals VALUES ('gl17', 'mt5', 'ply644', 30, 'ply654', 'right-footed shot');
INSERT INTO goals VALUES ('gl18', 'mt5', 'ply664', 43, '', 'penalty');
INSERT INTO goals VALUES ('gl19', 'mt5', 'ply650', 53, 'ply653', 'right-footed shot');
INSERT INTO goals VALUES ('gl20', 'mt5', 'ply657', 67, 'ply293', 'left-footed shot');
INSERT INTO goals VALUES ('gl21', 'mt5', 'ply322', 81, 'ply323', 'right-footed shot');
INSERT INTO goals VALUES ('gl22', 'mt5', 'ply664', 84, 'ply1067', 'left-footed shot');
INSERT INTO goals VALUES ('gl23', 'mt6', 'ply739', 9, 'ply922', 'right-footed shot');
INSERT INTO goals VALUES ('gl24', 'mt6', 'ply763', 28, 'ply1068', 'right-footed shot');
INSERT INTO goals VALUES ('gl25', 'mt6', 'ply727', 57, 'ply1068', 'right-footed shot');
INSERT INTO goals VALUES ('gl26', 'mt6', 'ply740', 67, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl27', 'mt6', 'ply740', 74, '', 'penalty');
INSERT INTO goals VALUES ('gl28', 'mt7', 'ply765', 8, 'ply763', 'header');
INSERT INTO goals VALUES ('gl29', 'mt7', 'ply1069', 21, 'ply739', 'left-footed shot');
INSERT INTO goals VALUES ('gl30', 'mt7', 'ply1069', 39, 'ply726', 'header');
INSERT INTO goals VALUES ('gl31', 'mt7', 'ply762', 90, '', 'penalty');
INSERT INTO goals VALUES ('gl32', 'mt8', 'ply654', 15, 'ply644', 'right-footed shot');
INSERT INTO goals VALUES ('gl33', 'mt8', 'ply649', 17, '', 'own goal');
INSERT INTO goals VALUES ('gl34', 'mt8', 'ply664', 54, 'ply644', 'header');
INSERT INTO goals VALUES ('gl35', 'mt8', 'ply293', 72, 'ply656', 'right-footed shot');
INSERT INTO goals VALUES ('gl36', 'mt8', 'ply1064', 90, 'ply644', 'right-footed shot');
INSERT INTO goals VALUES ('gl37', 'mt9', 'ply739', 50, 'ply740', 'right-footed shot');
INSERT INTO goals VALUES ('gl38', 'mt9', 'ply293', 63, 'ply1064', 'left-footed shot');
INSERT INTO goals VALUES ('gl39', 'mt9', 'ply1064', 76, 'ply652', 'left-footed shot');
INSERT INTO goals VALUES ('gl40', 'mt10', 'ply765', 12, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl41', 'mt10', 'ply757', 17, '', 'penalty');
INSERT INTO goals VALUES ('gl42', 'mt10', 'ply763', 26, 'ply1068', 'header');
INSERT INTO goals VALUES ('gl43', 'mt10', 'ply757', 45, 'ply765', 'right-footed shot');
INSERT INTO goals VALUES ('gl44', 'mt10', 'ply765', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl45', 'mt11', 'ply762', 24, 'ply760', 'left-footed shot');
INSERT INTO goals VALUES ('gl46', 'mt11', 'ply763', 71, 'ply757', 'right-footed shot');
INSERT INTO goals VALUES ('gl47', 'mt11', 'ply664', 76, 'ply1070', 'header');
INSERT INTO goals VALUES ('gl48', 'mt12', 'ply739', 2, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl49', 'mt12', 'ply739', 7, 'ply527', 'right-footed shot');
INSERT INTO goals VALUES ('gl50', 'mt12', 'ply740', 38, 'ply739', 'left-footed shot');
INSERT INTO goals VALUES ('gl51', 'mt12', 'ply320', 68, 'ply327', 'left-footed shot');
INSERT INTO goals VALUES ('gl52', 'mt12', 'ply740', 76, '', 'penalty');
INSERT INTO goals VALUES ('gl53', 'mt14', 'ply16', 9, '', 'own goal');
INSERT INTO goals VALUES ('gl54', 'mt14', 'ply32', 42, 'ply31', 'right-footed shot');
INSERT INTO goals VALUES ('gl55', 'mt14', 'ply20', 44, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl56', 'mt14', 'ply590', 49, 'ply30', 'left-footed shot');
INSERT INTO goals VALUES ('gl57', 'mt14', 'ply578', 69, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl58', 'mt15', 'ply590', 18, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl59', 'mt15', 'ply142', 45, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl60', 'mt15', 'ply590', 60, 'ply579', 'left-footed shot');
INSERT INTO goals VALUES ('gl61', 'mt15', 'ply432', 75, 'ply1071', 'header');
INSERT INTO goals VALUES ('gl62', 'mt15', 'ply589', 77, 'ply579', 'left-footed shot');
INSERT INTO goals VALUES ('gl63', 'mt15', 'ply589', 81, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl64', 'mt16', 'ply31', 20, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl65', 'mt16', 'ply115', 84, 'ply1072', 'left-footed shot');
INSERT INTO goals VALUES ('gl66', 'mt16', 'ply1073', 90, '', 'penalty');
INSERT INTO goals VALUES ('gl67', 'mt17', 'ply590', 8, 'ply572', 'left-footed shot');
INSERT INTO goals VALUES ('gl68', 'mt17', 'ply580', 13, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl69', 'mt17', 'ply115', 20, 'ply109', 'left-footed shot');
INSERT INTO goals VALUES ('gl70', 'mt17', 'ply115', 34, 'ply116', 'left-footed shot');
INSERT INTO goals VALUES ('gl71', 'mt17', 'ply590', 78, '', 'penalty');
INSERT INTO goals VALUES ('gl72', 'mt18', 'ply585', 65, 'ply432', 'right-footed shot');
INSERT INTO goals VALUES ('gl73', 'mt19', 'ply585', 6, 'ply421', 'right-footed shot');
INSERT INTO goals VALUES ('gl74', 'mt19', 'ply1074', 61, '', 'own goal');
INSERT INTO goals VALUES ('gl75', 'mt20', 'ply586', 13, 'ply564', 'header');
INSERT INTO goals VALUES ('gl76', 'mt20', 'ply142', 21, 'ply564', 'left-footed shot');
INSERT INTO goals VALUES ('gl77', 'mt21', 'ply583', 52, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl78', 'mt21', 'ply590', 70, 'ply578', 'left-footed shot');
INSERT INTO goals VALUES ('gl79', 'mt22', 'ply29', 87, 'ply388', 'header');
INSERT INTO goals VALUES ('gl80', 'mt23', 'ply115', 56, 'ply111', 'right-footed shot');
INSERT INTO goals VALUES ('gl81', 'mt23', 'ply114', 90, 'ply115', 'right-footed shot');
INSERT INTO goals VALUES ('gl82', 'mt23', 'ply108', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl83', 'mt23', 'ply1075', 90, '', 'penalty');
INSERT INTO goals VALUES ('gl84', 'mt24', 'ply16', 29, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl85', 'mt24', 'ply590', 36, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl86', 'mt24', 'ply30', 55, '', 'header');
INSERT INTO goals VALUES ('gl87', 'mt25', 'ply207', 20, 'ply201', 'right-footed shot');
INSERT INTO goals VALUES ('gl88', 'mt25', 'ply662', 45, 'ply207', 'left-footed shot');
INSERT INTO goals VALUES ('gl89', 'mt25', 'ply169', 90, 'ply1076', 'header');
INSERT INTO goals VALUES ('gl90', 'mt26', 'ply221', 2, '', 'header');
INSERT INTO goals VALUES ('gl91', 'mt26', 'ply221', 9, 'ply698', 'right-footed shot');
INSERT INTO goals VALUES ('gl92', 'mt26', 'ply961', 33, 'ply1077', 'left-footed shot');
INSERT INTO goals VALUES ('gl93', 'mt26', 'ply49', 39, 'ply134', 'left-footed shot');
INSERT INTO goals VALUES ('gl94', 'mt26', 'ply221', 51, 'ply698', 'left-footed shot');
INSERT INTO goals VALUES ('gl95', 'mt26', 'ply221', 63, 'ply128', 'left-footed shot');
INSERT INTO goals VALUES ('gl96', 'mt27', 'ply49', 17, 'ply60', 'left-footed shot');
INSERT INTO goals VALUES ('gl97', 'mt27', 'ply221', 43, 'ply49', 'right-footed shot');
INSERT INTO goals VALUES ('gl98', 'mt28', 'ply222', 37, 'ply207', 'right-footed shot');
INSERT INTO goals VALUES ('gl99', 'mt29', 'ply940', 15, 'ply942', 'header');
INSERT INTO goals VALUES ('gl100', 'mt29', 'ply328', 25, 'ply1076', 'header');
INSERT INTO goals VALUES ('gl101', 'mt29', 'ply940', 27, 'ply961', 'header');
INSERT INTO goals VALUES ('gl102', 'mt29', 'ply733', 44, '', 'penalty');
INSERT INTO goals VALUES ('gl103', 'mt29', 'ply961', 89, 'ply962', 'left-footed shot');
INSERT INTO goals VALUES ('gl104', 'mt30', 'ply225', 11, '', 'own goal');
INSERT INTO goals VALUES ('gl105', 'mt30', 'ply39', 25, 'ply221', 'left-footed shot');
INSERT INTO goals VALUES ('gl106', 'mt30', 'ply698', 57, 'ply221', 'left-footed shot');
INSERT INTO goals VALUES ('gl107', 'mt30', 'ply221', 72, 'ply39', 'header');
INSERT INTO goals VALUES ('gl108', 'mt31', 'ply225', 37, '', 'penalty');
INSERT INTO goals VALUES ('gl109', 'mt31', 'ply60', 72, 'ply698', 'left-footed shot');
INSERT INTO goals VALUES ('gl110', 'mt31', 'ply221', 83, 'ply698', 'header');
INSERT INTO goals VALUES ('gl111', 'mt31', 'ply52', 90, 'ply698', 'right-footed shot');
INSERT INTO goals VALUES ('gl112', 'mt32', 'ply962', 31, '', 'penalty');
INSERT INTO goals VALUES ('gl113', 'mt32', 'ply962', 38, 'ply1077', 'right-footed shot');
INSERT INTO goals VALUES ('gl114', 'mt32', 'ply961', 41, 'ply947', 'left-footed shot');
INSERT INTO goals VALUES ('gl115', 'mt32', 'ply733', 56, 'ply944', 'right-footed shot');
INSERT INTO goals VALUES ('gl116', 'mt33', 'ply187', 22, '', 'penalty');
INSERT INTO goals VALUES ('gl117', 'mt33', 'ply221', 54, 'ply1078', 'left-footed shot');
INSERT INTO goals VALUES ('gl118', 'mt33', 'ply221', 69, 'ply682', 'right-footed shot');
INSERT INTO goals VALUES ('gl119', 'mt34', 'ply962', 30, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl120', 'mt34', 'ply962', 39, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl121', 'mt34', 'ply946', 81, '', 'header');
INSERT INTO goals VALUES ('gl122', 'mt34', 'ply222', 90, 'ply225', 'left-footed shot');
INSERT INTO goals VALUES ('gl123', 'mt35', 'ply221', 8, '', 'penalty');
INSERT INTO goals VALUES ('gl124', 'mt35', 'ply960', 22, 'ply1079', 'left-footed shot');
INSERT INTO goals VALUES ('gl125', 'mt35', 'ply698', 42, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl126', 'mt35', 'ply928', 58, 'ply1080', 'left-footed shot');
INSERT INTO goals VALUES ('gl127', 'mt35', 'ply49', 62, 'ply52', 'left-footed shot');
INSERT INTO goals VALUES ('gl128', 'mt35', 'ply1079', 78, 'ply947', 'left-footed shot');
INSERT INTO goals VALUES ('gl129', 'mt36', 'ply222', 29, 'ply207', 'left-footed shot');
INSERT INTO goals VALUES ('gl130', 'mt36', 'ply225', 45, '', 'penalty');
INSERT INTO goals VALUES ('gl131', 'mt36', 'ply225', 53, 'ply210', 'right-footed shot');
INSERT INTO goals VALUES ('gl132', 'mt36', 'ply662', 68, 'ply205', 'header');
INSERT INTO goals VALUES ('gl133', 'mt36', 'ply662', 81, 'ply210', 'header');
INSERT INTO goals VALUES ('gl134', 'mt37', 'ply1081', 16, 'ply1082', 'left-footed shot');
INSERT INTO goals VALUES ('gl135', 'mt37', 'ply1083', 62, 'ply1082', 'header');
INSERT INTO goals VALUES ('gl136', 'mt38', 'ply836', 89, 'ply825', 'left-footed shot');
INSERT INTO goals VALUES ('gl137', 'mt40', 'ply1084', 25, 'ply1082', 'header');
INSERT INTO goals VALUES ('gl138', 'mt40', 'ply831', 65, '', 'penalty');
INSERT INTO goals VALUES ('gl139', 'mt40', 'ply1085', 90, 'ply1081', 'left-footed shot');
INSERT INTO goals VALUES ('gl140', 'mt41', 'ply880', 37, '', 'own goal');
INSERT INTO goals VALUES ('gl141', 'mt41', 'ply837', 51, 'ply828', 'right-footed shot');
INSERT INTO goals VALUES ('gl142', 'mt41', 'ply837', 56, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl143', 'mt41', 'ply836', 65, 'ply837', 'left-footed shot');
INSERT INTO goals VALUES ('gl144', 'mt41', 'ply831', 90, 'ply834', 'right-footed shot');
INSERT INTO goals VALUES ('gl145', 'mt42', 'ply497', 34, 'ply1086', 'left-footed shot');
INSERT INTO goals VALUES ('gl146', 'mt42', 'ply1085', 52, '', 'free kick');
INSERT INTO goals VALUES ('gl147', 'mt42', 'ply1086', 58, 'ply497', 'left-footed shot');
INSERT INTO goals VALUES ('gl148', 'mt42', 'ply480', 67, 'ply482', 'right-footed shot');
INSERT INTO goals VALUES ('gl149', 'mt43', 'ply831', 14, 'ply837', 'right-footed shot');
INSERT INTO goals VALUES ('gl150', 'mt43', 'ply803', 39, 'ply1087', 'right-footed shot');
INSERT INTO goals VALUES ('gl151', 'mt43', 'ply831', 61, 'ply837', 'right-footed shot');
INSERT INTO goals VALUES ('gl152', 'mt44', 'ply488', 54, 'ply1086', 'right-footed shot');
INSERT INTO goals VALUES ('gl153', 'mt44', 'ply484', 66, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl154', 'mt44', 'ply1088', 82, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl155', 'mt44', 'ply1081', 90, 'ply1085', 'header');
INSERT INTO goals VALUES ('gl156', 'mt45', 'ply497', 61, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl157', 'mt45', 'ply497', 67, 'ply1089', 'header');
INSERT INTO goals VALUES ('gl158', 'mt46', 'ply816', 30, '', 'free kick');
INSERT INTO goals VALUES ('gl159', 'mt46', 'ply827', 45, 'ply836', 'right-footed shot');
INSERT INTO goals VALUES ('gl160', 'mt46', 'ply831', 55, 'ply821', 'right-footed shot');
INSERT INTO goals VALUES ('gl161', 'mt47', 'ply827', 17, 'ply836', 'left-footed shot');
INSERT INTO goals VALUES ('gl162', 'mt47', 'ply834', 79, 'ply818', 'left-footed shot');
INSERT INTO goals VALUES ('gl163', 'mt48', 'ply803', 42, 'ply880', 'right-footed shot');
INSERT INTO goals VALUES ('gl164', 'mt48', 'ply1090', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl165', 'mt49', 'ply143', 34, 'ply144', 'right-footed shot');
INSERT INTO goals VALUES ('gl166', 'mt49', 'ply398', 56, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl167', 'mt49', 'ply398', 85, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl168', 'mt51', 'ply588', 3, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl169', 'mt51', 'ply933', 69, 'ply925', 'right-footed shot');
INSERT INTO goals VALUES ('gl170', 'mt51', 'ply588', 79, '', 'penalty');
INSERT INTO goals VALUES ('gl171', 'mt52', 'ply398', 12, '', 'penalty');
INSERT INTO goals VALUES ('gl172', 'mt52', 'ply398', 27, 'ply143', 'right-footed shot');
INSERT INTO goals VALUES ('gl173', 'mt52', 'ply141', 68, 'ply144', 'right-footed shot');
INSERT INTO goals VALUES ('gl174', 'mt52', 'ply144', 74, 'ply143', 'left-footed shot');
INSERT INTO goals VALUES ('gl175', 'mt52', 'ply139', 87, 'ply129', 'header');
INSERT INTO goals VALUES ('gl176', 'mt53', 'ply384', 36, 'ply381', 'right-footed shot');
INSERT INTO goals VALUES ('gl177', 'mt54', 'ply144', 70, '', 'free kick');
INSERT INTO goals VALUES ('gl178', 'mt54', 'ply1091', 80, '', 'own goal');
INSERT INTO goals VALUES ('gl179', 'mt54', 'ply398', 82, 'ply144', 'left-footed shot');
INSERT INTO goals VALUES ('gl180', 'mt54', 'ply144', 84, 'ply131', 'left-footed shot');
INSERT INTO goals VALUES ('gl181', 'mt55', 'ply398', 26, 'ply140', 'header');
INSERT INTO goals VALUES ('gl182', 'mt55', 'ply141', 32, 'ply398', 'back heel');
INSERT INTO goals VALUES ('gl183', 'mt55', 'ply917', 38, 'ply907', 'header');
INSERT INTO goals VALUES ('gl184', 'mt55', 'ply144', 49, 'ply125', 'left-footed shot');
INSERT INTO goals VALUES ('gl185', 'mt55', 'ply398', 61, 'ply144', 'right-footed shot');
INSERT INTO goals VALUES ('gl186', 'mt55', 'ply588', 74, 'ply925', 'right-footed shot');
INSERT INTO goals VALUES ('gl187', 'mt55', 'ply398', 84, 'ply122', 'right-footed shot');
INSERT INTO goals VALUES ('gl188', 'mt56', 'ply395', 70, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl189', 'mt57', 'ply398', 14, '', 'bicycle kick');
INSERT INTO goals VALUES ('gl190', 'mt57', 'ply140', 42, 'ply1092', 'right-footed shot');
INSERT INTO goals VALUES ('gl191', 'mt57', 'ply355', 70, 'ply364', 'right-footed shot');
INSERT INTO goals VALUES ('gl192', 'mt59', 'ply143', 34, 'ply398', 'header');
INSERT INTO goals VALUES ('gl193', 'mt59', 'ply144', 43, 'ply140', 'left-footed shot');
INSERT INTO goals VALUES ('gl194', 'mt59', 'ply136', 62, 'ply125', 'left-footed shot');
INSERT INTO goals VALUES ('gl195', 'mt60', 'ply333', 16, 'ply925', 'left-footed shot');
INSERT INTO goals VALUES ('gl196', 'mt60', 'ply914', 21, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl197', 'mt61', 'ply699', 13, 'ply689', 'right-footed shot');
INSERT INTO goals VALUES ('gl198', 'mt61', 'ply1093', 66, 'ply265', 'left-footed shot');
INSERT INTO goals VALUES ('gl199', 'mt61', 'ply1094', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl200', 'mt62', 'ply1095', 6, 'ply87', 'right-footed shot');
INSERT INTO goals VALUES ('gl201', 'mt62', 'ply1025', 39, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl202', 'mt62', 'ply1028', 73, 'ply1030', 'right-footed shot');
INSERT INTO goals VALUES ('gl203', 'mt62', 'ply493', 83, 'ply1096', 'left-footed shot');
INSERT INTO goals VALUES ('gl204', 'mt63', 'ply1097', 68, 'ply87', 'left-footed shot');
INSERT INTO goals VALUES ('gl205', 'mt64', 'ply1098', 53, 'ply1028', 'right-footed shot');
INSERT INTO goals VALUES ('gl206', 'mt64', 'ply844', 60, 'ply689', 'left-footed shot');
INSERT INTO goals VALUES ('gl207', 'mt64', 'ply699', 90, 'ply1099', 'right-footed shot');
INSERT INTO goals VALUES ('gl208', 'mt65', 'ply81', 15, 'ply76', 'left-footed shot');
INSERT INTO goals VALUES ('gl209', 'mt65', 'ply66', 29, 'ply79', 'header');
INSERT INTO goals VALUES ('gl210', 'mt65', 'ply704', 53, 'ply689', 'right-footed shot');
INSERT INTO goals VALUES ('gl211', 'mt65', 'ply680', 75, 'ply689', 'right-footed shot');
INSERT INTO goals VALUES ('gl212', 'mt65', 'ply699', 81, 'ply684', 'header');
INSERT INTO goals VALUES ('gl213', 'mt66', 'ply1033', 6, 'ply1015', 'header');
INSERT INTO goals VALUES ('gl214', 'mt66', 'ply1030', 16, 'ply1020', 'header');
INSERT INTO goals VALUES ('gl215', 'mt66', 'ply265', 77, 'ply259', 'right-footed shot');
INSERT INTO goals VALUES ('gl216', 'mt66', 'ply1006', 88, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl217', 'mt66', 'ply1027', 90, 'ply1030', 'left-footed shot');
INSERT INTO goals VALUES ('gl218', 'mt67', 'ply1100', 12, 'ply87', 'left-footed shot');
INSERT INTO goals VALUES ('gl219', 'mt67', 'ply699', 45, 'ply689', 'right-footed shot');
INSERT INTO goals VALUES ('gl220', 'mt67', 'ply87', 56, 'ply71', 'left-footed shot');
INSERT INTO goals VALUES ('gl221', 'mt67', 'ply699', 90, 'ply701', 'right-footed shot');
INSERT INTO goals VALUES ('gl222', 'mt68', 'ply1017', 36, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl223', 'mt68', 'ply1028', 89, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl224', 'mt69', 'ply699', 78, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl225', 'mt69', 'ply705', 90, 'ply689', 'right-footed shot');
INSERT INTO goals VALUES ('gl226', 'mt70', 'ply87', 10, 'ply1095', 'right-footed shot');
INSERT INTO goals VALUES ('gl227', 'mt70', 'ply1094', 39, 'ply1101', 'header');
INSERT INTO goals VALUES ('gl228', 'mt70', 'ply71', 51, 'ply81', 'left-footed shot');
INSERT INTO goals VALUES ('gl229', 'mt70', 'ply262', 80, 'ply1093', 'left-footed shot');
INSERT INTO goals VALUES ('gl230', 'mt70', 'ply1102', 85, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl231', 'mt70', 'ply86', 88, '', 'free kick');
INSERT INTO goals VALUES ('gl232', 'mt71', 'ply701', 9, 'ply684', 'left-footed shot');
INSERT INTO goals VALUES ('gl233', 'mt71', 'ply259', 42, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl234', 'mt72', 'ply1028', 3, 'ply1020', 'left-footed shot');
INSERT INTO goals VALUES ('gl235', 'mt72', 'ply1017', 42, 'ply1103', 'right-footed shot');
INSERT INTO goals VALUES ('gl236', 'mt72', 'ply1028', 51, 'ply1030', 'left-footed shot');
INSERT INTO goals VALUES ('gl237', 'mt72', 'ply80', 71, 'ply69', 'left-footed shot');
INSERT INTO goals VALUES ('gl238', 'mt72', 'ply87', 80, 'ply1100', 'right-footed shot');
INSERT INTO goals VALUES ('gl239', 'mt73', 'ply800', 21, '', 'penalty');
INSERT INTO goals VALUES ('gl240', 'mt73', 'ply863', 42, '', 'penalty');
INSERT INTO goals VALUES ('gl241', 'mt75', 'ply219', 35, '', 'penalty');
INSERT INTO goals VALUES ('gl242', 'mt75', 'ply219', 53, '', 'penalty');
INSERT INTO goals VALUES ('gl243', 'mt75', 'ply1104', 62, '', 'free kick');
INSERT INTO goals VALUES ('gl244', 'mt76', 'ply1105', 48, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl245', 'mt76', 'ply863', 87, '', 'penalty');
INSERT INTO goals VALUES ('gl246', 'mt77', 'ply219', 3, 'ply799', 'left-footed shot');
INSERT INTO goals VALUES ('gl247', 'mt77', 'ply991', 15, 'ply978', 'header');
INSERT INTO goals VALUES ('gl248', 'mt77', 'ply806', 65, 'ply1106', 'right-footed shot');
INSERT INTO goals VALUES ('gl249', 'mt77', 'ply806', 77, 'ply781', 'right-footed shot');
INSERT INTO goals VALUES ('gl250', 'mt79', 'ply971', 3, 'ply980', 'right-footed shot');
INSERT INTO goals VALUES ('gl251', 'mt79', 'ply789', 30, '', 'free kick');
INSERT INTO goals VALUES ('gl252', 'mt79', 'ply991', 60, 'ply978', 'right-footed shot');
INSERT INTO goals VALUES ('gl253', 'mt80', 'ply59', 15, 'ply868', 'right-footed shot');
INSERT INTO goals VALUES ('gl254', 'mt80', 'ply553', 43, '', 'penalty');
INSERT INTO goals VALUES ('gl255', 'mt80', 'ply1107', 51, 'ply1108', 'right-footed shot');
INSERT INTO goals VALUES ('gl256', 'mt81', 'ply553', 31, 'ply1104', 'left-footed shot');
INSERT INTO goals VALUES ('gl257', 'mt82', 'ply859', 12, 'ply863', 'header');
INSERT INTO goals VALUES ('gl258', 'mt82', 'ply868', 90, 'ply59', 'right-footed shot');
INSERT INTO goals VALUES ('gl259', 'mt83', 'ply806', 50, 'ply219', 'right-footed shot');
INSERT INTO goals VALUES ('gl260', 'mt84', 'ply1104', 11, 'ply1107', 'left-footed shot');
INSERT INTO goals VALUES ('gl261', 'mt84', 'ply553', 72, 'ply548', 'left-footed shot');
INSERT INTO goals VALUES ('gl262', 'mt84', 'ply548', 78, 'ply1107', 'right-footed shot');
INSERT INTO goals VALUES ('gl263', 'mt84', 'ply1105', 89, 'ply978', 'left-footed shot');
INSERT INTO goals VALUES ('gl264', 'mt85', 'ply498', 69, 'ply273', 'header');
INSERT INTO goals VALUES ('gl265', 'mt86', 'ply505', 23, 'ply1109', 'header');
INSERT INTO goals VALUES ('gl266', 'mt86', 'ply1110', 45, '', 'penalty');
INSERT INTO goals VALUES ('gl267', 'mt86', 'ply118', 45, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl268', 'mt87', 'ply1049', 9, 'ply1043', 'right-footed shot');
INSERT INTO goals VALUES ('gl269', 'mt87', 'ply1052', 49, 'ply1111', 'header');
INSERT INTO goals VALUES ('gl270', 'mt87', 'ply1062', 80, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl271', 'mt87', 'ply1055', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl272', 'mt88', 'ply525', 46, 'ply1112', 'left-footed shot');
INSERT INTO goals VALUES ('gl273', 'mt89', 'ply1113', 86, 'ply511', 'header');
INSERT INTO goals VALUES ('gl274', 'mt90', 'ply378', 9, 'ply279', 'right-footed shot');
INSERT INTO goals VALUES ('gl275', 'mt90', 'ply284', 21, '', 'penalty');
INSERT INTO goals VALUES ('gl276', 'mt90', 'ply283', 48, 'ply1114', 'left-footed shot');
INSERT INTO goals VALUES ('gl277', 'mt90', 'ply284', 57, '', 'penalty');
INSERT INTO goals VALUES ('gl278', 'mt91', 'ply294', 56, 'ply1114', 'left-footed shot');
INSERT INTO goals VALUES ('gl279', 'mt92', 'ply1110', 11, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl280', 'mt92', 'ply507', 26, '', 'own goal');
INSERT INTO goals VALUES ('gl281', 'mt92', 'ply1110', 58, '', 'penalty');
INSERT INTO goals VALUES ('gl282', 'mt92', 'ply525', 73, 'ply1112', 'left-footed shot');
INSERT INTO goals VALUES ('gl283', 'mt92', 'ply118', 82, 'ply1110', 'left-footed shot');
INSERT INTO goals VALUES ('gl284', 'mt92', 'ply1115', 90, 'ply1116', 'right-footed shot');
INSERT INTO goals VALUES ('gl285', 'mt93', 'ply280', 25, 'ply824', 'right-footed shot');
INSERT INTO goals VALUES ('gl286', 'mt93', 'ply277', 55, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl287', 'mt93', 'ply1114', 58, 'ply287', 'left-footed shot');
INSERT INTO goals VALUES ('gl288', 'mt93', 'ply767', 90, 'ply294', 'right-footed shot');
INSERT INTO goals VALUES ('gl289', 'mt94', 'ply628', 28, 'ply1117', 'right-footed shot');
INSERT INTO goals VALUES ('gl290', 'mt94', 'ply1111', 90, '', 'penalty');
INSERT INTO goals VALUES ('gl291', 'mt95', 'ply767', 2, 'ply378', 'right-footed shot');
INSERT INTO goals VALUES ('gl292', 'mt95', 'ply1049', 38, 'ply1043', 'header');
INSERT INTO goals VALUES ('gl293', 'mt95', 'ply1115', 41, 'ply1059', 'right-footed shot');
INSERT INTO goals VALUES ('gl294', 'mt95', 'ply498', 62, 'ply767', 'left-footed shot');
INSERT INTO goals VALUES ('gl295', 'mt95', 'ply767', 85, 'ply292', 'right-footed shot');
INSERT INTO goals VALUES ('gl296', 'mt95', 'ply1118', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl297', 'mt96', 'ply529', 18, 'ply1112', 'header');
INSERT INTO goals VALUES ('gl298', 'mt97', 'ply664', 7, 'ply653', 'right-footed shot');
INSERT INTO goals VALUES ('gl299', 'mt97', 'ply652', 17, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl300', 'mt97', 'ply654', 32, 'ply664', 'right-footed shot');
INSERT INTO goals VALUES ('gl301', 'mt97', 'ply652', 44, 'ply293', 'left-footed shot');
INSERT INTO goals VALUES ('gl302', 'mt97', 'ply293', 58, 'ply652', 'right-footed shot');
INSERT INTO goals VALUES ('gl303', 'mt98', 'ply739', 90, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl304', 'mt99', 'ply802', 21, 'ply1119', 'right-footed shot');
INSERT INTO goals VALUES ('gl305', 'mt99', 'ply140', 90, 'ply143', 'left-footed shot');
INSERT INTO goals VALUES ('gl306', 'mt100', 'ply589', 75, 'ply572', 'header');
INSERT INTO goals VALUES ('gl307', 'mt100', 'ply590', 83, 'ply574', 'left-footed shot');
INSERT INTO goals VALUES ('gl308', 'mt101', 'ply283', 8, 'ply294', 'header');
INSERT INTO goals VALUES ('gl309', 'mt101', 'ply292', 63, 'ply285', 'right-footed shot');
INSERT INTO goals VALUES ('gl310', 'mt102', 'ply532', 1, 'ply510', 'right-footed shot');
INSERT INTO goals VALUES ('gl311', 'mt102', 'ply1020', 66, 'ply1017', 'left-footed shot');
INSERT INTO goals VALUES ('gl312', 'mt103', 'ply60', 18, 'ply128', 'right-footed shot');
INSERT INTO goals VALUES ('gl313', 'mt103', 'ply221', 26, '', 'own goal');
INSERT INTO goals VALUES ('gl314', 'mt103', 'ply221', 29, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl315', 'mt103', 'ply333', 72, '', 'header');
INSERT INTO goals VALUES ('gl316', 'mt104', 'ply116', 7, 'ply1072', 'header');
INSERT INTO goals VALUES ('gl317', 'mt104', 'ply700', 80, 'ply689', 'right-footed shot');
INSERT INTO goals VALUES ('gl318', 'mt105', 'ply398', 12, '', 'penalty');
INSERT INTO goals VALUES ('gl319', 'mt105', 'ply398', 21, '', 'penalty');
INSERT INTO goals VALUES ('gl320', 'mt105', 'ply398', 23, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl321', 'mt105', 'ply141', 31, 'ply140', 'right-footed shot');
INSERT INTO goals VALUES ('gl322', 'mt105', 'ply143', 54, 'ply144', 'left-footed shot');
INSERT INTO goals VALUES ('gl323', 'mt105', 'ply797', 70, 'ply1119', 'left-footed shot');
INSERT INTO goals VALUES ('gl324', 'mt105', 'ply143', 83, 'ply144', 'left-footed shot');
INSERT INTO goals VALUES ('gl325', 'mt105', 'ply144', 85, 'ply398', 'left-footed shot');
INSERT INTO goals VALUES ('gl326', 'mt106', 'ply499', 61, 'ply1088', 'right-footed shot');
INSERT INTO goals VALUES ('gl327', 'mt108', 'ply739', 39, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl328', 'mt108', 'ply831', 61, 'ply837', 'right-footed shot');
INSERT INTO goals VALUES ('gl329', 'mt108', 'ply831', 76, 'ply828', 'right-footed shot');
INSERT INTO goals VALUES ('gl330', 'mt108', 'ply831', 78, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl331', 'mt109', 'ply588', 77, 'ply907', 'header');
INSERT INTO goals VALUES ('gl332', 'mt110', 'ply1072', 41, 'ply115', 'header');
INSERT INTO goals VALUES ('gl333', 'mt111', 'ply1104', 38, '', 'penalty');
INSERT INTO goals VALUES ('gl334', 'mt111', 'ply292', 45, 'ply284', 'right-footed shot');
INSERT INTO goals VALUES ('gl335', 'mt111', 'ply273', 71, 'ply288', 'right-footed shot');
INSERT INTO goals VALUES ('gl336', 'mt112', 'ply1030', 78, '', 'penalty');
INSERT INTO goals VALUES ('gl337', 'mt112', 'ply1014', 85, 'ply1120', 'right-footed shot');
INSERT INTO goals VALUES ('gl338', 'mt112', 'ply1028', 90, '', 'penalty');
INSERT INTO goals VALUES ('gl339', 'mt113', 'ply653', 70, 'ply654', 'right-footed shot');
INSERT INTO goals VALUES ('gl340', 'mt114', 'ply568', 17, 'ply572', 'header');
INSERT INTO goals VALUES ('gl341', 'mt114', 'ply142', 34, 'ply585', 'right-footed shot');
INSERT INTO goals VALUES ('gl342', 'mt114', 'ply588', 49, 'ply933', 'right-footed shot');
INSERT INTO goals VALUES ('gl343', 'mt114', 'ply585', 87, 'ply580', 'left-footed shot');
INSERT INTO goals VALUES ('gl344', 'mt115', 'ply831', 21, 'ply837', 'header');
INSERT INTO goals VALUES ('gl345', 'mt115', 'ply831', 24, 'ply828', 'header');
INSERT INTO goals VALUES ('gl346', 'mt115', 'ply283', 40, 'ply284', 'header');
INSERT INTO goals VALUES ('gl347', 'mt115', 'ply831', 46, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl348', 'mt116', 'ply1028', 8, 'ply1020', 'left-footed shot');
INSERT INTO goals VALUES ('gl349', 'mt117', 'ply288', 15, 'ply767', 'right-footed shot');
INSERT INTO goals VALUES ('gl350', 'mt117', 'ply824', 51, 'ply288', 'header');
INSERT INTO goals VALUES ('gl351', 'mt117', 'ply767', 75, 'ply286', 'right-footed shot');
INSERT INTO goals VALUES ('gl352', 'mt117', 'ply836', 80, 'ply828', 'right-footed shot');
INSERT INTO goals VALUES ('gl353', 'mt117', 'ply831', 96, 'ply837', 'header');
INSERT INTO goals VALUES ('gl354', 'mt118', 'ply398', 52, 'ply143', 'right-footed shot');
INSERT INTO goals VALUES ('gl355', 'mt118', 'ply1027', 88, 'ply1030', 'left-footed shot');
INSERT INTO goals VALUES ('gl356', 'mt120', 'ply568', 21, 'ply573', 'header');
INSERT INTO goals VALUES ('gl357', 'mt120', 'ply930', 32, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl358', 'mt120', 'ply589', 55, 'ply586', 'right-footed shot');
INSERT INTO goals VALUES ('gl359', 'mt120', 'ply589', 65, 'ply573', 'right-footed shot');
INSERT INTO goals VALUES ('gl360', 'mt120', 'ply333', 73, 'ply907', 'left-footed shot');
INSERT INTO goals VALUES ('gl361', 'mt120', 'ply588', 82, 'ply925', 'right-footed shot');
INSERT INTO goals VALUES ('gl362', 'mt121', 'ply653', 2, 'ply664', 'header');
INSERT INTO goals VALUES ('gl363', 'mt121', 'ply1064', 11, 'ply653', 'right-footed shot');
INSERT INTO goals VALUES ('gl364', 'mt121', 'ply831', 33, 'ply821', 'left-footed shot');
INSERT INTO goals VALUES ('gl365', 'mt121', 'ply654', 53, 'ply1067', 'header');
INSERT INTO goals VALUES ('gl366', 'mt121', 'ply837', 55, 'ply821', 'right-footed shot');
INSERT INTO goals VALUES ('gl367', 'mt121', 'ply652', 74, 'ply1070', 'left-footed shot');
INSERT INTO goals VALUES ('gl368', 'mt121', 'ply831', 82, '', 'penalty');
INSERT INTO goals VALUES ('gl369', 'mt122', 'ply1121', 53, '', 'own goal');
INSERT INTO goals VALUES ('gl370', 'mt122', 'ply142', 55, 'ply590', 'right-footed shot');
INSERT INTO goals VALUES ('gl371', 'mt123', 'ply1122', 3, 'ply1017', 'right-footed shot');
INSERT INTO goals VALUES ('gl372', 'mt123', 'ply1019', 41, 'ply1017', 'header');
INSERT INTO goals VALUES ('gl373', 'mt123', 'ply577', 62, 'ply590', 'right-footed shot');
INSERT INTO goals VALUES ('gl374', 'mt123', 'ply585', 67, 'ply564', 'header');
INSERT INTO goals VALUES ('gl375', 'mt123', 'ply142', 74, 'ply580', 'left-footed shot');
INSERT INTO goals VALUES ('gl376', 'mt124', 'ply664', 73, 'ply652', 'left-footed shot');
INSERT INTO goals VALUES ('gl377', 'mt124', 'ply836', 90, 'ply831', 'right-footed shot');
INSERT INTO goals VALUES ('gl378', 'mt124', 'ply836', 0, 'ply834', '');
INSERT INTO goals VALUES ('gl379', 'mt124', 'ply831', 95, 'ply831', 'penalty');
INSERT INTO goals VALUES ('gl380', 'mt125', 'ply837', 59, 'ply830', 'right-footed shot');
INSERT INTO goals VALUES ('gl381', 'mt126', '', 19, 'ply1350', 'header');
INSERT INTO goals VALUES ('gl382', 'mt126', 'ply762', 45, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl383', 'mt126', '', 50, 'ply1461', 'right-footed shot');
INSERT INTO goals VALUES ('gl384', 'mt126', 'ply1462', 75, 'ply1340', 'header');
INSERT INTO goals VALUES ('gl385', 'mt127', 'ply140', 28, 'ply135', 'right-footed shot');
INSERT INTO goals VALUES ('gl386', 'mt127', 'ply133', 41, 'ply140', 'right-footed shot');
INSERT INTO goals VALUES ('gl387', 'mt127', 'ply1092', 66, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl388', 'mt127', 'ply140', 72, 'ply143', 'right-footed shot');
INSERT INTO goals VALUES ('gl389', 'mt128', 'ply133', 13, 'ply129', 'header');
INSERT INTO goals VALUES ('gl390', 'mt128', 'ply1347', 70, 'ply1463', 'left-footed shot');
INSERT INTO goals VALUES ('gl391', 'mt128', 'ply135', 79, 'ply1464', 'right-footed shot');
INSERT INTO goals VALUES ('gl392', 'mt129', 'ply112', 29, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl393', 'mt129', 'ply762', 40, 'ply1465', 'right-footed shot');
INSERT INTO goals VALUES ('gl394', 'mt129', 'ply94', 47, '', 'own goal');
INSERT INTO goals VALUES ('gl395', 'mt129', 'ply116', 52, 'ply114', 'right-footed shot');
INSERT INTO goals VALUES ('gl396', 'mt129', 'ply116', 85, 'ply111', 'right-footed shot');
INSERT INTO goals VALUES ('gl397', 'mt130', 'ply96', 18, 'ply1466', 'header');
INSERT INTO goals VALUES ('gl398', 'mt130', 'ply1347', 25, '', 'penalty');
INSERT INTO goals VALUES ('gl399', 'mt131', 'ply1465', 4, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl400', 'mt131', 'ply398', 21, 'ply143', 'penalty');
INSERT INTO goals VALUES ('gl401', 'mt131', 'ply1106', 44, '', 'own goal');
INSERT INTO goals VALUES ('gl402', 'mt131', 'ply1467', 66, 'ply1468', 'right-footed shot');
INSERT INTO goals VALUES ('gl403', 'mt131', 'ply1469', 79, 'ply135', 'header');
INSERT INTO goals VALUES ('gl404', 'mt131', 'ply144', 83, 'ply135', 'left-footed shot');
INSERT INTO goals VALUES ('gl405', 'mt131', 'ply398', 88, 'ply1464', 'header');
INSERT INTO goals VALUES ('gl406', 'mt131', 'ply127', 90, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl407', 'mt133', 'ply398', 43, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl408', 'mt133', 'ply140', 52, 'ply133', 'right-footed shot');
INSERT INTO goals VALUES ('gl409', 'mt133', 'ply144', 68, 'ply140', 'header');
INSERT INTO goals VALUES ('gl410', 'mt133', 'ply1465', 73, 'ply1106', 'left-footed shot');
INSERT INTO goals VALUES ('gl411', 'mt134', 'ply1465', 28, 'ply1470', 'right-footed shot');
INSERT INTO goals VALUES ('gl412', 'mt134', 'ply1465', 41, 'ply804', 'left-footed shot');
INSERT INTO goals VALUES ('gl413', 'mt134', 'ply1347', 79, 'ply1463', 'penalty');
INSERT INTO goals VALUES ('gl414', 'mt134', 'ply219', 81, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl415', 'mt135', 'ply116', 26, 'ply112', 'right-footed shot');
INSERT INTO goals VALUES ('gl416', 'mt135', 'ply143', 86, 'ply143', 'penalty');
INSERT INTO goals VALUES ('gl417', 'mt136', 'ply206', 63, 'ply1471', 'header');
INSERT INTO goals VALUES ('gl418', 'mt136', 'ply139', 80, 'ply141', 'right-footed shot');
INSERT INTO goals VALUES ('gl419', 'mt137', 'ply99', 39, 'ply107', 'header');
INSERT INTO goals VALUES ('gl420', 'mt137', 'ply107', 86, 'ply114', 'right-footed shot');
INSERT INTO goals VALUES ('gl421', 'mt138', 'ply1472', 29, 'ply878', 'left-footed shot');
INSERT INTO goals VALUES ('gl422', 'mt138', 'ply686', 33, '', 'own goal');
INSERT INTO goals VALUES ('gl423', 'mt138', 'ply1473', 42, 'ply1472', 'right-footed shot');
INSERT INTO goals VALUES ('gl424', 'mt138', 'ply828', 54, 'ply1371', 'right-footed shot');
INSERT INTO goals VALUES ('gl425', 'mt138', 'ply837', 59, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl426', 'mt139', 'ply498', 49, 'ply479', 'right-footed shot');
INSERT INTO goals VALUES ('gl427', 'mt139', 'ply1126', 63, '', 'penalty');
INSERT INTO goals VALUES ('gl428', 'mt139', 'ply1137', 84, 'ply1141', 'right-footed shot');
INSERT INTO goals VALUES ('gl429', 'mt139', 'ply498', 90, 'ply475', 'left-footed shot');
INSERT INTO goals VALUES ('gl430', 'mt141', 'ply1149', 33, 'ply1147', 'left-footed shot');
INSERT INTO goals VALUES ('gl431', 'mt141', 'ply1149', 58, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl432', 'mt141', 'ply831', 87, 'ply690', 'left-footed shot');
INSERT INTO goals VALUES ('gl433', 'mt141', 'ply690', 90, 'ply729', 'right-footed shot');
INSERT INTO goals VALUES ('gl434', 'mt142', 'ply1147', 8, 'ply1131', 'right-footed shot');
INSERT INTO goals VALUES ('gl435', 'mt142', 'ply875', 17, '', 'own goal');
INSERT INTO goals VALUES ('gl436', 'mt142', 'ply1147', 26, 'ply1148', 'right-footed shot');
INSERT INTO goals VALUES ('gl437', 'mt142', 'ply1126', 44, 'ply1137', 'left-footed shot');
INSERT INTO goals VALUES ('gl438', 'mt142', 'ply1148', 65, 'ply1147', 'right-footed shot');
INSERT INTO goals VALUES ('gl439', 'mt142', 'ply1147', 79, 'ply1149', 'right-footed shot');
INSERT INTO goals VALUES ('gl440', 'mt143', 'ply831', 25, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl441', 'mt143', 'ply729', 33, 'ply827', 'header');
INSERT INTO goals VALUES ('gl442', 'mt143', 'ply499', 35, 'ply487', 'right-footed shot');
INSERT INTO goals VALUES ('gl443', 'mt143', 'ply1089', 68, 'ply499', 'left-footed shot');
INSERT INTO goals VALUES ('gl444', 'mt143', 'ply836', 80, 'ply837', 'right-footed shot');
INSERT INTO goals VALUES ('gl445', 'mt144', 'ply1148', 17, 'ply1149', 'penalty');
INSERT INTO goals VALUES ('gl446', 'mt144', 'ply1127', 34, 'ply1148', 'header');
INSERT INTO goals VALUES ('gl447', 'mt144', 'ply1474', 45, '', 'bicycle kick');
INSERT INTO goals VALUES ('gl448', 'mt144', 'ply1475', 77, '', 'free kick');
INSERT INTO goals VALUES ('gl449', 'mt145', 'ply832', 7, 'ply822', 'penalty');
INSERT INTO goals VALUES ('gl450', 'mt145', 'ply723', 59, '', 'own goal');
INSERT INTO goals VALUES ('gl451', 'mt146', 'ply1476', 57, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl452', 'mt146', 'ply1473', 82, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl453', 'mt147', 'ply479', 17, 'ply491', 'right-footed shot');
INSERT INTO goals VALUES ('gl454', 'mt147', 'ply1147', 45, 'ply1477', 'header');
INSERT INTO goals VALUES ('gl455', 'mt147', 'ply498', 64, 'ply488', 'right-footed shot');
INSERT INTO goals VALUES ('gl456', 'mt147', 'ply498', 73, 'ply723', 'left-footed shot');
INSERT INTO goals VALUES ('gl457', 'mt147', 'ply1147', 76, 'ply1149', 'right-footed shot');
INSERT INTO goals VALUES ('gl458', 'mt149', 'ply831', 9, 'ply833', 'header');
INSERT INTO goals VALUES ('gl459', 'mt149', 'ply831', 32, 'ply836', 'header');
INSERT INTO goals VALUES ('gl460', 'mt150', 'ply585', 14, 'ply424', 'right-footed shot');
INSERT INTO goals VALUES ('gl461', 'mt150', '', 20, 'ply293', 'penalty');
INSERT INTO goals VALUES ('gl462', 'mt150', 'ply656', 65, '', 'free kick');
INSERT INTO goals VALUES ('gl463', 'mt150', 'ply396', 73, 'ply654', 'right-footed shot');
INSERT INTO goals VALUES ('gl464', 'mt151', 'ply1478', 90, 'ply1392', 'header');
INSERT INTO goals VALUES ('gl465', 'mt152', 'ply1071', 11, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl466', 'mt152', 'ply1075', 85, 'ply1479', 'header');
INSERT INTO goals VALUES ('gl467', 'mt153', 'ply396', 18, 'ply653', 'right-footed shot');
INSERT INTO goals VALUES ('gl468', 'mt153', 'ply656', 76, 'ply293', 'left-footed shot');
INSERT INTO goals VALUES ('gl469', 'mt153', 'ply293', 81, 'ply653', 'right-footed shot');
INSERT INTO goals VALUES ('gl470', 'mt154', 'ply1479', 4, 'ply864', 'right-footed shot');
INSERT INTO goals VALUES ('gl471', 'mt154', 'ply1075', 28, 'ply864', 'penalty');
INSERT INTO goals VALUES ('gl472', 'mt154', 'ply585', 69, 'ply864', 'right-footed shot');
INSERT INTO goals VALUES ('gl473', 'mt155', 'ply396', 12, 'ply653', 'right-footed shot');
INSERT INTO goals VALUES ('gl474', 'mt155', 'ply1064', 81, 'ply653', 'right-footed shot');
INSERT INTO goals VALUES ('gl475', 'mt155', 'ply644', 90, 'ply982', 'left-footed shot');
INSERT INTO goals VALUES ('gl476', 'mt156', 'ply654', 36, 'ply293', 'left-footed shot');
INSERT INTO goals VALUES ('gl477', 'mt157', 'ply413', 39, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl478', 'mt157', 'ply1075', 72, 'ply1479', 'penalty');
INSERT INTO goals VALUES ('gl479', 'mt159', 'ply1480', 33, 'ply1401', 'left-footed shot');
INSERT INTO goals VALUES ('gl480', 'mt159', 'ply1422', 55, 'ply1481', 'penalty');
INSERT INTO goals VALUES ('gl481', 'mt159', 'ply1422', 75, '', 'penalty');
INSERT INTO goals VALUES ('gl482', 'mt160', 'ply396', 48, 'ply664', 'right-footed shot');
INSERT INTO goals VALUES ('gl483', 'mt160', '', 77, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl484', 'mt160', 'ply1482', 90, '', 'own goal');
INSERT INTO goals VALUES ('gl485', 'mt161', 'ply422', 10, '', 'penalty');
INSERT INTO goals VALUES ('gl486', 'mt161', 'ply424', 77, 'ply585', 'right-footed shot');
INSERT INTO goals VALUES ('gl487', 'mt162', 'ply1078', 35, '', 'own goal');
INSERT INTO goals VALUES ('gl488', 'mt163', 'ply87', 26, 'ply1483', 'right-footed shot');
INSERT INTO goals VALUES ('gl489', 'mt163', 'ply855', 36, 'ply87', 'right-footed shot');
INSERT INTO goals VALUES ('gl490', 'mt163', 'ply86', 42, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl491', 'mt163', 'ply1096', 88, 'ply1100', 'left-footed shot');
INSERT INTO goals VALUES ('gl492', 'mt164', 'ply60', 30, 'ply902', 'penalty');
INSERT INTO goals VALUES ('gl493', 'mt164', 'ply902', 38, 'ply928', 'right-footed shot');
INSERT INTO goals VALUES ('gl494', 'mt164', 'ply87', 54, 'ply855', 'header');
INSERT INTO goals VALUES ('gl495', 'mt164', 'ply87', 60, 'ply81', 'right-footed shot');
INSERT INTO goals VALUES ('gl496', 'mt165', 'ply586', 55, 'ply564', 'right-footed shot');
INSERT INTO goals VALUES ('gl497', 'mt165', 'ply590', 90, '', 'penalty');
INSERT INTO goals VALUES ('gl498', 'mt166', 'ply586', 16, 'ply564', 'left-footed shot');
INSERT INTO goals VALUES ('gl499', 'mt166', 'ply586', 33, 'ply567', 'right-footed shot');
INSERT INTO goals VALUES ('gl500', 'mt166', 'ply590', 47, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl501', 'mt166', 'ply142', 49, 'ply590', 'left-footed shot');
INSERT INTO goals VALUES ('gl502', 'mt166', 'ply586', 54, 'ply142', 'left-footed shot');
INSERT INTO goals VALUES ('gl503', 'mt167', 'ply698', 1, 'ply60', 'left-footed shot');
INSERT INTO goals VALUES ('gl504', 'mt167', 'ply60', 13, 'ply1484', 'left-footed shot');
INSERT INTO goals VALUES ('gl505', 'mt167', 'ply1182', 18, 'ply1485', 'left-footed shot');
INSERT INTO goals VALUES ('gl506', 'mt168', 'ply134', 47, 'ply60', 'right-footed shot');
INSERT INTO goals VALUES ('gl507', 'mt168', 'ply128', 49, 'ply60', 'right-footed shot');
INSERT INTO goals VALUES ('gl508', 'mt168', 'ply928', 66, 'ply902', 'left-footed shot');
INSERT INTO goals VALUES ('gl509', 'mt168', 'ply1486', 80, 'ply1486', 'penalty');
INSERT INTO goals VALUES ('gl510', 'mt169', 'ply1100', 60, 'ply855', 'right-footed shot');
INSERT INTO goals VALUES ('gl511', 'mt169', 'ply493', 64, 'ply68', 'left-footed shot');
INSERT INTO goals VALUES ('gl512', 'mt170', 'ply1487', 13, 'ply1184', 'right-footed shot');
INSERT INTO goals VALUES ('gl513', 'mt170', 'ply1483', 79, 'ply68', 'header');
INSERT INTO goals VALUES ('gl514', 'mt171', 'ply579', 58, 'ply1488', 'right-footed shot');
INSERT INTO goals VALUES ('gl515', 'mt172', 'ply86', 85, 'ply1095', 'left-footed shot');
INSERT INTO goals VALUES ('gl516', 'mt173', 'ply590', 1, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl517', 'mt173', 'ply1487', 62, 'ply1182', 'penalty');
INSERT INTO goals VALUES ('gl518', 'mt175', 'ply1489', 56, 'ply1460', 'penalty');
INSERT INTO goals VALUES ('gl519', 'mt175', 'ply1234', 59, 'ply1490', 'left-footed shot');
INSERT INTO goals VALUES ('gl520', 'mt176', 'ply1114', 37, 'ply283', 'left-footed shot');
INSERT INTO goals VALUES ('gl521', 'mt176', 'ply767', 76, '', 'penalty');
INSERT INTO goals VALUES ('gl522', 'mt176', 'ply294', 79, 'ply767', 'left-footed shot');
INSERT INTO goals VALUES ('gl523', 'mt176', 'ply292', 90, 'ply1491', 'right-footed shot');
INSERT INTO goals VALUES ('gl524', 'mt177', 'ply1492', 55, 'ply843', 'right-footed shot');
INSERT INTO goals VALUES ('gl525', 'mt178', 'ply767', 10, 'ply767', 'penalty');
INSERT INTO goals VALUES ('gl526', 'mt178', 'ply767', 41, '', 'penalty');
INSERT INTO goals VALUES ('gl527', 'mt178', 'ply1491', 50, 'ply277', 'left-footed shot');
INSERT INTO goals VALUES ('gl528', 'mt179', 'ply1493', 17, '', 'free kick');
INSERT INTO goals VALUES ('gl529', 'mt179', 'ply1494', 21, 'ply1494', 'penalty');
INSERT INTO goals VALUES ('gl530', 'mt179', 'ply863', 42, 'ply859', 'header');
INSERT INTO goals VALUES ('gl531', 'mt179', 'ply866', 69, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl532', 'mt179', 'ply866', 72, 'ply863', 'right-footed shot');
INSERT INTO goals VALUES ('gl533', 'mt180', 'ply1114', 22, 'ply288', 'right-footed shot');
INSERT INTO goals VALUES ('gl534', 'mt180', 'ply1489', 85, 'ply1447', 'header');
INSERT INTO goals VALUES ('gl535', 'mt180', 'ply26', 90, 'ply767', 'header');
INSERT INTO goals VALUES ('gl536', 'mt181', 'ply863', 4, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl537', 'mt181', 'ply1495', 56, 'ply1179', 'right-footed shot');
INSERT INTO goals VALUES ('gl538', 'mt181', 'ply1496', 90, 'ply866', 'right-footed shot');
INSERT INTO goals VALUES ('gl539', 'mt182', 'ply1494', 71, 'ply1497', 'right-footed shot');
INSERT INTO goals VALUES ('gl540', 'mt183', 'ply26', 8, 'ply283', 'left-footed shot');
INSERT INTO goals VALUES ('gl541', 'mt183', 'ply26', 54, 'ply286', 'right-footed shot');
INSERT INTO goals VALUES ('gl542', 'mt183', 'ply26', 74, 'ply285', 'header');
INSERT INTO goals VALUES ('gl543', 'mt183', 'ply26', 83, '', 'penalty');
INSERT INTO goals VALUES ('gl544', 'mt184', 'ply547', 24, 'ply1498', 'right-footed shot');
INSERT INTO goals VALUES ('gl545', 'mt184', 'ply284', 28, '', 'penalty');
INSERT INTO goals VALUES ('gl546', 'mt185', 'ply382', 32, 'ply1499', 'right-footed shot');
INSERT INTO goals VALUES ('gl547', 'mt185', 'ply866', 45, 'ply861', 'header');
INSERT INTO goals VALUES ('gl548', 'mt185', 'ply866', 81, 'ply1500', 'left-footed shot');
INSERT INTO goals VALUES ('gl549', 'mt185', 'ply1501', 86, '', 'penalty');
INSERT INTO goals VALUES ('gl550', 'mt186', 'ply1502', 63, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl551', 'mt186', 'ply1503', 74, '', 'own goal');
INSERT INTO goals VALUES ('gl552', 'mt186', 'ply21', 90, 'ply323', 'left-footed shot');
INSERT INTO goals VALUES ('gl553', 'mt187', 'ply1325', 6, 'ply496', 'left-footed shot');
INSERT INTO goals VALUES ('gl554', 'mt187', 'ply1504', 23, '', 'own goal');
INSERT INTO goals VALUES ('gl555', 'mt187', 'ply662', 71, 'ply217', 'left-footed shot');
INSERT INTO goals VALUES ('gl556', 'mt187', 'ply1505', 76, 'ply1325', 'left-footed shot');
INSERT INTO goals VALUES ('gl557', 'mt188', 'ply705', 78, 'ply212', 'penalty');
INSERT INTO goals VALUES ('gl558', 'mt188', 'ply662', 90, 'ply207', 'left-footed shot');
INSERT INTO goals VALUES ('gl559', 'mt189', 'ply496', 14, 'ply1308', 'left-footed shot');
INSERT INTO goals VALUES ('gl560', 'mt189', 'ply322', 42, 'ply320', 'penalty');
INSERT INTO goals VALUES ('gl561', 'mt190', 'ply1050', 32, 'ply1116', 'right-footed shot');
INSERT INTO goals VALUES ('gl562', 'mt190', 'ply1506', 82, 'ply474', 'left-footed shot');
INSERT INTO goals VALUES ('gl563', 'mt191', 'ply212', 14, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl564', 'mt191', 'ply662', 18, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl565', 'mt191', 'ply662', 32, 'ply201', 'left-footed shot');
INSERT INTO goals VALUES ('gl566', 'mt192', 'ply662', 18, 'ply705', 'left-footed shot');
INSERT INTO goals VALUES ('gl567', 'mt192', 'ply705', 45, '', 'free kick');
INSERT INTO goals VALUES ('gl568', 'mt192', 'ply662', 60, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl569', 'mt193', 'ply1325', 3, 'ply1507', 'right-footed shot');
INSERT INTO goals VALUES ('gl570', 'mt193', '', 22, 'ply496', 'right-footed shot');
INSERT INTO goals VALUES ('gl571', 'mt193', 'ply1116', 25, 'ply1111', 'left-footed shot');
INSERT INTO goals VALUES ('gl572', 'mt193', 'ply1325', 55, 'ply1325', 'penalty');
INSERT INTO goals VALUES ('gl573', 'mt194', 'ply198', 44, 'ply212', 'left-footed shot');
INSERT INTO goals VALUES ('gl574', 'mt194', 'ply1325', 67, '', 'penalty');
INSERT INTO goals VALUES ('gl575', 'mt195', 'ply21', 33, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl576', 'mt195', 'ply322', 58, '', 'penalty');
INSERT INTO goals VALUES ('gl577', 'mt195', 'ply327', 73, 'ply1502', 'right-footed shot');
INSERT INTO goals VALUES ('gl578', 'mt196', 'ply1508', 16, 'ply1062', 'right-footed shot');
INSERT INTO goals VALUES ('gl579', 'mt196', '', 68, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl580', 'mt196', 'ply105', 78, 'ply705', 'right-footed shot');
INSERT INTO goals VALUES ('gl581', 'mt197', 'ply496', 12, 'ply1317', 'right-footed shot');
INSERT INTO goals VALUES ('gl582', 'mt197', 'ply323', 15, 'ply327', 'right-footed shot');
INSERT INTO goals VALUES ('gl583', 'mt197', 'ply1325', 27, '', 'penalty');
INSERT INTO goals VALUES ('gl584', 'mt197', 'ply322', 76, 'ply323', 'header');
INSERT INTO goals VALUES ('gl585', 'mt198', 'ply118', 46, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl586', 'mt198', 'ply118', 84, 'ply509', 'header');
INSERT INTO goals VALUES ('gl587', 'mt199', 'ply740', 27, 'ply740', 'penalty');
INSERT INTO goals VALUES ('gl588', 'mt199', 'ply395', 42, 'ply386', 'right-footed shot');
INSERT INTO goals VALUES ('gl589', 'mt199', 'ply1509', 52, 'ply395', 'right-footed shot');
INSERT INTO goals VALUES ('gl590', 'mt199', 'ply1510', 70, 'ply1218', 'penalty');
INSERT INTO goals VALUES ('gl591', 'mt199', 'ply391', 82, 'ply393', 'right-footed shot');
INSERT INTO goals VALUES ('gl592', 'mt199', 'ply393', 89, 'ply740', 'right-footed shot');
INSERT INTO goals VALUES ('gl593', 'mt200', 'ply364', 28, '', 'penalty');
INSERT INTO goals VALUES ('gl594', 'mt200', 'ply1511', 41, 'ply353', 'left-footed shot');
INSERT INTO goals VALUES ('gl595', 'mt200', 'ply1218', 59, 'ply895', 'right-footed shot');
INSERT INTO goals VALUES ('gl596', 'mt200', 'ply1214', 90, 'ply1207', 'right-footed shot');
INSERT INTO goals VALUES ('gl597', 'mt201', 'ply393', 14, 'ply740', 'right-footed shot');
INSERT INTO goals VALUES ('gl598', 'mt201', 'ply740', 90, 'ply395', 'penalty');
INSERT INTO goals VALUES ('gl599', 'mt202', 'ply740', 5, 'ply740', 'penalty');
INSERT INTO goals VALUES ('gl600', 'mt202', 'ply384', 65, 'ply395', 'header');
INSERT INTO goals VALUES ('gl601', 'mt202', 'ply364', 75, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl602', 'mt203', 'ply118', 7, 'ply509', 'left-footed shot');
INSERT INTO goals VALUES ('gl603', 'mt203', 'ply118', 60, 'ply699', 'right-footed shot');
INSERT INTO goals VALUES ('gl604', 'mt203', 'ply1110', 73, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl605', 'mt203', 'ply1512', 82, '', 'own goal');
INSERT INTO goals VALUES ('gl606', 'mt203', 'ply1214', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl607', 'mt204', 'ply9', 52, 'ply1513', 'right-footed shot');
INSERT INTO goals VALUES ('gl608', 'mt204', 'ply1513', 57, 'ply1514', 'right-footed shot');
INSERT INTO goals VALUES ('gl609', 'mt204', 'ply1513', 70, 'ply1513', 'penalty');
INSERT INTO goals VALUES ('gl610', 'mt204', 'ply115', 90, 'ply381', 'left-footed shot');
INSERT INTO goals VALUES ('gl611', 'mt205', 'ply1515', 19, 'ply1218', '');
INSERT INTO goals VALUES ('gl612', 'mt205', 'ply699', 35, 'ply509', 'left-footed shot');
INSERT INTO goals VALUES ('gl613', 'mt205', 'ply118', 90, 'ply509', 'header');
INSERT INTO goals VALUES ('gl614', 'mt206', 'ply525', 21, 'ply505', 'header');
INSERT INTO goals VALUES ('gl615', 'mt206', 'ply699', 57, 'ply118', 'right-footed shot');
INSERT INTO goals VALUES ('gl616', 'mt206', 'ply118', 66, 'ply525', 'right-footed shot');
INSERT INTO goals VALUES ('gl617', 'mt207', 'ply115', 14, 'ply381', 'back heel');
INSERT INTO goals VALUES ('gl618', 'mt207', 'ply1513', 21, 'ply393', 'right-footed shot');
INSERT INTO goals VALUES ('gl619', 'mt207', 'ply393', 28, '', 'penalty');
INSERT INTO goals VALUES ('gl620', 'mt208', 'ply347', 60, 'ply1511', 'header');
INSERT INTO goals VALUES ('gl621', 'mt209', 'ply699', 13, '', 'penalty');
INSERT INTO goals VALUES ('gl622', 'mt209', 'ply519', 20, 'ply509', 'right-footed shot');
INSERT INTO goals VALUES ('gl623', 'mt209', 'ply699', 52, '', 'penalty');
INSERT INTO goals VALUES ('gl624', 'mt210', 'ply1068', 16, 'ply759', 'left-footed shot');
INSERT INTO goals VALUES ('gl625', 'mt210', 'ply1068', 20, 'ply765', 'left-footed shot');
INSERT INTO goals VALUES ('gl626', 'mt211', 'ply689', 23, '', 'penalty');
INSERT INTO goals VALUES ('gl627', 'mt211', 'ply702', 55, '', 'own goal');
INSERT INTO goals VALUES ('gl628', 'mt211', 'ply704', 87, 'ply522', 'right-footed shot');
INSERT INTO goals VALUES ('gl629', 'mt212', 'ply529', 64, 'ply739', 'header');
INSERT INTO goals VALUES ('gl630', 'mt212', 'ply529', 79, 'ply739', 'left-footed shot');
INSERT INTO goals VALUES ('gl631', 'mt213', 'ply701', 21, 'ply522', 'left-footed shot');
INSERT INTO goals VALUES ('gl632', 'mt213', 'ply704', 74, 'ply689', 'right-footed shot');
INSERT INTO goals VALUES ('gl633', 'mt213', 'ply704', 78, 'ply692', 'right-footed shot');
INSERT INTO goals VALUES ('gl634', 'mt213', 'ply702', 87, 'ply702', 'penalty');
INSERT INTO goals VALUES ('gl635', 'mt213', 'ply704', 90, 'ply702', 'right-footed shot');
INSERT INTO goals VALUES ('gl636', 'mt214', '', 13, 'ply1516', 'right-footed shot');
INSERT INTO goals VALUES ('gl637', 'mt214', 'ply1516', 40, 'ply1287', 'right-footed shot');
INSERT INTO goals VALUES ('gl638', 'mt214', 'ply702', 43, 'ply684', 'header');
INSERT INTO goals VALUES ('gl639', 'mt215', 'ply527', 6, 'ply529', 'left-footed shot');
INSERT INTO goals VALUES ('gl640', 'mt215', 'ply765', 42, 'ply1068', 'right-footed shot');
INSERT INTO goals VALUES ('gl641', 'mt215', 'ply757', 57, '', 'penalty');
INSERT INTO goals VALUES ('gl642', 'mt216', 'ply689', 7, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl643', 'mt216', 'ply689', 19, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl644', 'mt216', 'ply704', 35, 'ply704', 'penalty');
INSERT INTO goals VALUES ('gl645', 'mt216', 'ply1287', 75, '', 'free kick');
INSERT INTO goals VALUES ('gl646', 'mt216', 'ply1517', 90, 'ply701', 'right-footed shot');
INSERT INTO goals VALUES ('gl647', 'mt217', 'ply741', 11, 'ply527', 'penalty');
INSERT INTO goals VALUES ('gl648', 'mt218', 'ply766', 26, 'ply137', 'right-footed shot');
INSERT INTO goals VALUES ('gl649', 'mt218', 'ply727', 43, 'ply757', 'left-footed shot');
INSERT INTO goals VALUES ('gl650', 'mt218', 'ply1518', 45, 'ply1516', 'left-footed shot');
INSERT INTO goals VALUES ('gl651', 'mt218', 'ply756', 66, 'ply1068', 'right-footed shot');
INSERT INTO goals VALUES ('gl652', 'mt218', 'ply1518', 72, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl653', 'mt218', 'ply1518', 85, '', 'free kick');
INSERT INTO goals VALUES ('gl654', 'mt218', 'ply1519', 90, 'ply766', 'left-footed shot');
INSERT INTO goals VALUES ('gl655', 'mt219', 'ply741', 6, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl656', 'mt219', 'ply704', 32, 'ply687', 'right-footed shot');
INSERT INTO goals VALUES ('gl657', 'mt219', 'ply726', 69, 'ply748', 'right-footed shot');
INSERT INTO goals VALUES ('gl658', 'mt219', 'ply741', 90, 'ply1520', 'left-footed shot');
INSERT INTO goals VALUES ('gl659', 'mt220', 'ply1068', 2, 'ply137', 'left-footed shot');
INSERT INTO goals VALUES ('gl660', 'mt220', 'ply758', 13, 'ply1068', 'right-footed shot');
INSERT INTO goals VALUES ('gl661', 'mt220', 'ply1521', 69, 'ply765', 'right-footed shot');
INSERT INTO goals VALUES ('gl662', 'mt220', 'ply689', 80, '', 'penalty');
INSERT INTO goals VALUES ('gl663', 'mt220', 'ply568', 82, '', 'own goal');
INSERT INTO goals VALUES ('gl664', 'mt221', 'ply741', 21, 'ply735', 'right-footed shot');
INSERT INTO goals VALUES ('gl665', 'mt221', 'ply741', 38, 'ply739', 'right-footed shot');
INSERT INTO goals VALUES ('gl666', 'mt221', 'ply739', 42, 'ply741', 'penalty');
INSERT INTO goals VALUES ('gl667', 'mt221', 'ply741', 50, 'ply527', 'right-footed shot');
INSERT INTO goals VALUES ('gl668', 'mt221', '', 57, 'ply1518', '');
INSERT INTO goals VALUES ('gl669', 'mt221', 'ply739', 62, 'ply527', 'right-footed shot');
INSERT INTO goals VALUES ('gl670', 'mt222', 'ply590', 53, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl671', 'mt222', 'ply142', 58, 'ply579', 'right-footed shot');
INSERT INTO goals VALUES ('gl672', 'mt223', 'ply740', 27, 'ply386', 'penalty');
INSERT INTO goals VALUES ('gl673', 'mt223', 'ply739', 32, 'ply735', 'left-footed shot');
INSERT INTO goals VALUES ('gl674', 'mt223', 'ply739', 65, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl675', 'mt223', 'ply529', 70, 'ply521', 'header');
INSERT INTO goals VALUES ('gl676', 'mt223', 'ply739', 85, 'ply922', 'right-footed shot');
INSERT INTO goals VALUES ('gl677', 'mt224', 'ply432', 2, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl678', 'mt224', 'ply1479', 46, 'ply415', 'left-footed shot');
INSERT INTO goals VALUES ('gl679', 'mt224', 'ply525', 82, 'ply523', 'right-footed shot');
INSERT INTO goals VALUES ('gl680', 'mt225', 'ply869', 7, 'ply854', 'right-footed shot');
INSERT INTO goals VALUES ('gl681', 'mt225', 'ply210', 19, 'ply662', 'right-footed shot');
INSERT INTO goals VALUES ('gl682', 'mt225', 'ply662', 27, 'ply705', 'left-footed shot');
INSERT INTO goals VALUES ('gl683', 'mt225', 'ply662', 43, 'ply225', 'left-footed shot');
INSERT INTO goals VALUES ('gl684', 'mt225', 'ply1492', 84, 'ply1500', 'right-footed shot');
INSERT INTO goals VALUES ('gl685', 'mt226', 'ply398', 9, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl686', 'mt226', 'ply136', 24, 'ply133', 'right-footed shot');
INSERT INTO goals VALUES ('gl687', 'mt226', 'ply144', 42, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl688', 'mt226', 'ply474', 47, '', 'own goal');
INSERT INTO goals VALUES ('gl689', 'mt226', 'ply496', 49, 'ply1317', 'right-footed shot');
INSERT INTO goals VALUES ('gl690', 'mt227', 'ply26', 68, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl691', 'mt228', 'ply652', 29, 'ply644', 'header');
INSERT INTO goals VALUES ('gl692', 'mt228', 'ply1064', 65, 'ply652', 'left-footed shot');
INSERT INTO goals VALUES ('gl693', 'mt229', 'ply821', 86, 'ply828', 'right-footed shot');
INSERT INTO goals VALUES ('gl694', 'mt230', 'ply1075', 19, '', 'penalty');
INSERT INTO goals VALUES ('gl695', 'mt230', 'ply525', 49, 'ply699', 'right-footed shot');
INSERT INTO goals VALUES ('gl696', 'mt230', 'ply525', 63, 'ply509', 'header');
INSERT INTO goals VALUES ('gl697', 'mt230', 'ply1075', 115, '', 'free kick');
INSERT INTO goals VALUES ('gl698', 'mt230', 'ply523', 117, 'ply1112', 'header');
INSERT INTO goals VALUES ('gl699', 'mt231', 'ply662', 35, 'ply225', 'left-footed shot');
INSERT INTO goals VALUES ('gl700', 'mt231', 'ply662', 54, '', 'penalty');
INSERT INTO goals VALUES ('gl701', 'mt231', 'ply866', 69, '', 'penalty');
INSERT INTO goals VALUES ('gl702', 'mt231', 'ply866', 90, 'ply863', 'header');
INSERT INTO goals VALUES ('gl703', 'mt232', 'ply590', 70, 'ply586', 'left-footed shot');
INSERT INTO goals VALUES ('gl704', 'mt232', 'ply142', 74, 'ply30', 'right-footed shot');
INSERT INTO goals VALUES ('gl705', 'mt233', 'ply739', 31, '', 'penalty');
INSERT INTO goals VALUES ('gl706', 'mt233', 'ply740', 37, 'ply391', 'left-footed shot');
INSERT INTO goals VALUES ('gl707', 'mt234', 'ply653', 12, 'ply664', 'left-footed shot');
INSERT INTO goals VALUES ('gl708', 'mt234', 'ply656', 18, 'ply654', 'right-footed shot');
INSERT INTO goals VALUES ('gl709', 'mt235', 'ply831', 34, 'ply828', 'right-footed shot');
INSERT INTO goals VALUES ('gl710', 'mt235', 'ply729', 60, 'ply837', 'penalty');
INSERT INTO goals VALUES ('gl711', 'mt235', 'ply86', 83, '', 'free kick');
INSERT INTO goals VALUES ('gl712', 'mt235', 'ply834', 84, 'ply833', 'left-footed shot');
INSERT INTO goals VALUES ('gl713', 'mt236', 'ply398', 33, '', 'penalty');
INSERT INTO goals VALUES ('gl714', 'mt236', 'ply139', 73, 'ply816', 'right-footed shot');
INSERT INTO goals VALUES ('gl715', 'mt236', '', 82, 'ply1522', 'header');
INSERT INTO goals VALUES ('gl716', 'mt237', 'ply294', 34, 'ply767', 'right-footed shot');
INSERT INTO goals VALUES ('gl717', 'mt237', 'ply1523', 90, 'ply292', 'left-footed shot');
INSERT INTO goals VALUES ('gl718', 'mt238', 'ply653', 19, 'ply664', 'right-footed shot');
INSERT INTO goals VALUES ('gl719', 'mt238', 'ply225', 84, 'ply662', 'right-footed shot');
INSERT INTO goals VALUES ('gl720', 'mt238', 'ply654', 90, 'ply656', 'left-footed shot');
INSERT INTO goals VALUES ('gl721', 'mt239', 'ply837', 27, 'ply827', 'right-footed shot');
INSERT INTO goals VALUES ('gl722', 'mt239', 'ply834', 36, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl723', 'mt239', 'ply590', 51, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl724', 'mt239', 'ply837', 65, 'ply828', 'right-footed shot');
INSERT INTO goals VALUES ('gl725', 'mt240', 'ply288', 32, 'ply284', 'right-footed shot');
INSERT INTO goals VALUES ('gl726', 'mt240', 'ply274', 85, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl727', 'mt241', 'ply739', 3, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl728', 'mt241', 'ply726', 28, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl729', 'mt241', 'ply139', 37, 'ply129', 'header');
INSERT INTO goals VALUES ('gl730', 'mt241', 'ply143', 60, 'ply135', 'header');
INSERT INTO goals VALUES ('gl731', 'mt241', 'ply739', 68, 'ply527', 'right-footed shot');
INSERT INTO goals VALUES ('gl732', 'mt242', 'ply432', 90, 'ply1524', 'right-footed shot');
INSERT INTO goals VALUES ('gl733', 'mt243', 'ply139', 40, '', 'header');
INSERT INTO goals VALUES ('gl734', 'mt244', 'ply207', 15, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl735', 'mt244', 'ply664', 55, '', 'penalty');
INSERT INTO goals VALUES ('gl736', 'mt244', 'ply654', 75, 'ply652', 'left-footed shot');
INSERT INTO goals VALUES ('gl737', 'mt246', 'ply292', 14, 'ply824', 'right-footed shot');
INSERT INTO goals VALUES ('gl738', 'mt246', 'ply831', 29, 'ply819', 'right-footed shot');
INSERT INTO goals VALUES ('gl739', 'mt247', 'ply726', 15, 'ply527', 'header');
INSERT INTO goals VALUES ('gl740', 'mt247', 'ply653', 64, 'ply1070', 'right-footed shot');
INSERT INTO goals VALUES ('gl741', 'mt247', 'ply664', 71, '', 'free kick');
INSERT INTO goals VALUES ('gl742', 'mt248', 'ply664', 11, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl743', 'mt248', 'ply664', 63, 'ply654', 'left-footed shot');
INSERT INTO goals VALUES ('gl744', 'mt249', 'ply767', 28, '', 'header');
INSERT INTO goals VALUES ('gl745', 'mt249', 'ply288', 85, 'ply292', 'right-footed shot');
INSERT INTO goals VALUES ('gl746', 'mt250', 'ply283', 42, 'ply288', 'left-footed shot');
INSERT INTO goals VALUES ('gl747', 'mt252', 'ply527', 14, 'ply724', 'left-footed shot');
INSERT INTO goals VALUES ('gl748', 'mt252', 'ply527', 33, 'ply1066', 'left-footed shot');
INSERT INTO goals VALUES ('gl749', 'mt252', 'ply201', 90, 'ply724', 'right-footed shot');
INSERT INTO goals VALUES ('gl750', 'mt253', 'ply1502', 9, 'ply1849', 'left-footed shot');
INSERT INTO goals VALUES ('gl751', 'mt253', 'ply1502', 39, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl752', 'mt253', 'ply729', 55, 'ply831', 'header');
INSERT INTO goals VALUES ('gl753', 'mt253', 'ply690', 85, 'ply827', 'header');
INSERT INTO goals VALUES ('gl754', 'mt254', 'ply1649', 52, 'ply733', 'left-footed shot');
INSERT INTO goals VALUES ('gl755', 'mt255', 'ply1649', 7, 'ply527', 'right-footed shot');
INSERT INTO goals VALUES ('gl756', 'mt255', 'ply739', 61, '', 'header');
INSERT INTO goals VALUES ('gl757', 'mt255', 'ply1649', 63, 'ply739', 'left-footed shot');
INSERT INTO goals VALUES ('gl758', 'mt255', 'ply739', 79, 'ply527', 'right-footed shot');
INSERT INTO goals VALUES ('gl759', 'mt255', 'ply739', 83, 'ply527', 'left-footed shot');
INSERT INTO goals VALUES ('gl760', 'mt256', 'ply827', 18, 'ply832', 'right-footed shot');
INSERT INTO goals VALUES ('gl761', 'mt257', 'ply1649', 22, 'ply1850', 'right-footed shot');
INSERT INTO goals VALUES ('gl762', 'mt258', 'ply836', 4, 'ply1371', 'left-footed shot');
INSERT INTO goals VALUES ('gl763', 'mt258', 'ply836', 7, 'ply1371', 'header');
INSERT INTO goals VALUES ('gl764', 'mt258', 'ply729', 14, 'ply827', 'penalty');
INSERT INTO goals VALUES ('gl765', 'mt258', 'ply831', 45, 'ply836', 'right-footed shot');
INSERT INTO goals VALUES ('gl766', 'mt258', 'ply831', 81, 'ply818', 'left-footed shot');
INSERT INTO goals VALUES ('gl767', 'mt258', 'ply836', 90, 'ply831', 'right-footed shot');
INSERT INTO goals VALUES ('gl768', 'mt259', 'ply1851', 11, 'ply1852', 'right-footed shot');
INSERT INTO goals VALUES ('gl769', 'mt259', 'ply1853', 90, 'ply305', 'left-footed shot');
INSERT INTO goals VALUES ('gl770', 'mt260', 'ply831', 17, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl771', 'mt260', 'ply831', 79, 'ply1371', 'header');
INSERT INTO goals VALUES ('gl772', 'mt260', 'ply739', 81, 'ply201', 'left-footed shot');
INSERT INTO goals VALUES ('gl773', 'mt260', 'ply733', 83, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl774', 'mt261', 'ply1649', 32, 'ply739', 'right-footed shot');
INSERT INTO goals VALUES ('gl775', 'mt261', 'ply733', 35, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl776', 'mt261', 'ply741', 46, 'ply739', 'left-footed shot');
INSERT INTO goals VALUES ('gl777', 'mt261', 'ply739', 63, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl778', 'mt261', 'ply1840', 84, 'ply739', 'penalty');
INSERT INTO goals VALUES ('gl779', 'mt262', 'ply836', 53, 'ply817', 'left-footed shot');
INSERT INTO goals VALUES ('gl780', 'mt262', 'ply322', 55, 'ply1502', 'right-footed shot');
INSERT INTO goals VALUES ('gl781', 'mt262', 'ply837', 64, 'ply836', 'right-footed shot');
INSERT INTO goals VALUES ('gl782', 'mt262', 'ply828', 90, 'ply690', 'right-footed shot');
INSERT INTO goals VALUES ('gl783', 'mt263', 'ply1801', 26, '', 'penalty');
INSERT INTO goals VALUES ('gl784', 'mt263', 'ply1802', 30, 'ply1783', 'right-footed shot');
INSERT INTO goals VALUES ('gl785', 'mt263', 'ply1854', 44, 'ply1392', 'right-footed shot');
INSERT INTO goals VALUES ('gl786', 'mt263', 'ply1392', 54, '', 'penalty');
INSERT INTO goals VALUES ('gl787', 'mt264', 'ply140', 34, 'ply1089', 'header');
INSERT INTO goals VALUES ('gl788', 'mt264', 'ply398', 80, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl789', 'mt264', 'ply143', 90, 'ply583', 'right-footed shot');
INSERT INTO goals VALUES ('gl790', 'mt265', 'ply1805', 12, 'ply1769', 'right-footed shot');
INSERT INTO goals VALUES ('gl791', 'mt265', 'ply135', 15, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl792', 'mt265', 'ply398', 45, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl793', 'mt265', 'ply141', 53, 'ply129', 'right-footed shot');
INSERT INTO goals VALUES ('gl794', 'mt265', 'ply141', 55, 'ply1092', 'left-footed shot');
INSERT INTO goals VALUES ('gl795', 'mt265', 'ply1801', 61, '', 'penalty');
INSERT INTO goals VALUES ('gl796', 'mt265', 'ply141', 83, 'ply583', 'right-footed shot');
INSERT INTO goals VALUES ('gl797', 'mt265', 'ply398', 87, 'ply1509', 'right-footed shot');
INSERT INTO goals VALUES ('gl798', 'mt265', 'ply141', 88, 'ply1092', 'right-footed shot');
INSERT INTO goals VALUES ('gl799', 'mt266', 'ply1855', 37, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl800', 'mt266', 'ply1856', 62, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl801', 'mt266', 'ply1569', 87, '', 'header');
INSERT INTO goals VALUES ('gl802', 'mt266', 'ply1857', 90, '', 'header');
INSERT INTO goals VALUES ('gl803', 'mt267', 'ply1801', 9, 'ply867', 'header');
INSERT INTO goals VALUES ('gl804', 'mt267', 'ply1805', 16, 'ply867', 'left-footed shot');
INSERT INTO goals VALUES ('gl805', 'mt267', 'ply1805', 44, 'ply1769', 'left-footed shot');
INSERT INTO goals VALUES ('gl806', 'mt267', 'ply867', 57, 'ply1120', 'left-footed shot');
INSERT INTO goals VALUES ('gl807', 'mt267', 'ply1801', 72, 'ply1769', 'right-footed shot');
INSERT INTO goals VALUES ('gl808', 'mt268', 'ply1397', 23, 'ply573', 'header');
INSERT INTO goals VALUES ('gl809', 'mt268', 'ply398', 34, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl810', 'mt268', 'ply398', 62, 'ply143', 'right-footed shot');
INSERT INTO goals VALUES ('gl811', 'mt268', 'ply1092', 75, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl812', 'mt268', 'ply1858', 79, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl813', 'mt269', 'ply398', 69, 'ply140', 'right-footed shot');
INSERT INTO goals VALUES ('gl814', 'mt269', 'ply1089', 89, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl815', 'mt270', 'ply1021', 34, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl816', 'mt270', 'ply1805', 57, 'ply176', 'left-footed shot');
INSERT INTO goals VALUES ('gl817', 'mt270', 'ply1805', 61, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl818', 'mt270', 'ply691', 85, 'ply1804', 'right-footed shot');
INSERT INTO goals VALUES ('gl819', 'mt271', 'ply1397', 6, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl820', 'mt271', 'ply1855', 19, 'ply1858', 'right-footed shot');
INSERT INTO goals VALUES ('gl821', 'mt271', 'ply176', 45, 'ply1120', 'right-footed shot');
INSERT INTO goals VALUES ('gl822', 'mt271', 'ply1801', 50, 'ply1802', 'right-footed shot');
INSERT INTO goals VALUES ('gl823', 'mt271', 'ply1120', 73, 'ply1805', 'right-footed shot');
INSERT INTO goals VALUES ('gl824', 'mt271', 'ply1801', 77, 'ply691', 'header');
INSERT INTO goals VALUES ('gl825', 'mt272', 'ply133', 14, 'ply1509', 'header');
INSERT INTO goals VALUES ('gl826', 'mt272', 'ply398', 53, '', 'penalty');
INSERT INTO goals VALUES ('gl827', 'mt272', 'ply398', 60, 'ply1092', 'right-footed shot');
INSERT INTO goals VALUES ('gl828', 'mt272', 'ply398', 64, 'ply129', 'header');
INSERT INTO goals VALUES ('gl829', 'mt272', 'ply398', 68, 'ply1089', 'right-footed shot');
INSERT INTO goals VALUES ('gl830', 'mt272', 'ply1092', 89, 'ply1089', 'right-footed shot');
INSERT INTO goals VALUES ('gl831', 'mt273', 'ply140', 14, 'ply141', 'right-footed shot');
INSERT INTO goals VALUES ('gl832', 'mt273', 'ply1804', 20, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl833', 'mt273', 'ply143', 45, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl834', 'mt273', 'ply1509', 64, 'ply125', 'right-footed shot');
INSERT INTO goals VALUES ('gl835', 'mt274', 'ply1397', 87, '', 'penalty');
INSERT INTO goals VALUES ('gl836', 'mt275', 'ply664', 24, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl837', 'mt275', 'ply656', 38, 'ply664', 'right-footed shot');
INSERT INTO goals VALUES ('gl838', 'mt275', 'ply1064', 76, 'ply653', 'left-footed shot');
INSERT INTO goals VALUES ('gl839', 'mt276', 'ply1859', 10, 'ply1860', 'left-footed shot');
INSERT INTO goals VALUES ('gl840', 'mt276', 'ply1619', 31, 'ply1859', 'right-footed shot');
INSERT INTO goals VALUES ('gl841', 'mt276', 'ply1619', 42, 'ply1606', 'header');
INSERT INTO goals VALUES ('gl842', 'mt276', 'ply1619', 68, 'ply1605', 'right-footed shot');
INSERT INTO goals VALUES ('gl843', 'mt277', 'ply87', 28, '', 'header');
INSERT INTO goals VALUES ('gl844', 'mt277', 'ply1861', 41, 'ply1087', 'left-footed shot');
INSERT INTO goals VALUES ('gl845', 'mt277', 'ply1473', 90, 'ply1862', 'right-footed shot');
INSERT INTO goals VALUES ('gl846', 'mt278', 'ply293', 66, 'ply664', 'right-footed shot');
INSERT INTO goals VALUES ('gl847', 'mt278', 'ply654', 90, 'ply293', 'right-footed shot');
INSERT INTO goals VALUES ('gl848', 'mt279', 'ply1863', 16, 'ply1864', 'right-footed shot');
INSERT INTO goals VALUES ('gl849', 'mt279', 'ply756', 25, 'ply1619', 'right-footed shot');
INSERT INTO goals VALUES ('gl850', 'mt279', 'ply1619', 60, 'ply1865', 'penalty');
INSERT INTO goals VALUES ('gl851', 'mt279', 'ply1862', 75, 'ply1087', 'right-footed shot');
INSERT INTO goals VALUES ('gl852', 'mt280', 'ply80', 28, 'ply1100', 'penalty');
INSERT INTO goals VALUES ('gl853', 'mt280', '', 34, 'ply293', 'right-footed shot');
INSERT INTO goals VALUES ('gl854', 'mt280', '', 38, 'ply293', 'penalty');
INSERT INTO goals VALUES ('gl855', 'mt280', 'ply293', 58, 'ply654', 'right-footed shot');
INSERT INTO goals VALUES ('gl856', 'mt280', 'ply293', 64, 'ply656', 'right-footed shot');
INSERT INTO goals VALUES ('gl857', 'mt280', 'ply293', 69, 'ply664', 'right-footed shot');
INSERT INTO goals VALUES ('gl858', 'mt281', 'ply1087', 13, 'ply1861', 'right-footed shot');
INSERT INTO goals VALUES ('gl859', 'mt281', 'ply1620', 25, 'ply1605', 'header');
INSERT INTO goals VALUES ('gl860', 'mt281', 'ply1610', 83, 'ply1620', 'right-footed shot');
INSERT INTO goals VALUES ('gl861', 'mt281', 'ply1606', 90, 'ply756', 'left-footed shot');
INSERT INTO goals VALUES ('gl862', 'mt281', 'ply1861', 90, 'ply1866', 'header');
INSERT INTO goals VALUES ('gl863', 'mt281', 'ply1472', 90, 'ply872', 'penalty');
INSERT INTO goals VALUES ('gl864', 'mt282', 'ply293', 7, 'ply1064', 'right-footed shot');
INSERT INTO goals VALUES ('gl865', 'mt282', 'ply81', 49, 'ply855', 'header');
INSERT INTO goals VALUES ('gl866', 'mt283', 'ply656', 56, 'ply1064', 'right-footed shot');
INSERT INTO goals VALUES ('gl867', 'mt283', 'ply1473', 69, 'ply1862', 'right-footed shot');
INSERT INTO goals VALUES ('gl868', 'mt284', 'ply86', 27, 'ply86', 'penalty');
INSERT INTO goals VALUES ('gl869', 'mt284', 'ply855', 47, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl870', 'mt285', 'ply1867', 66, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl871', 'mt285', 'ply81', 80, 'ply80', 'left-footed shot');
INSERT INTO goals VALUES ('gl872', 'mt285', 'ply493', 90, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl873', 'mt286', 'ply756', 10, 'ply1868', 'right-footed shot');
INSERT INTO goals VALUES ('gl874', 'mt286', 'ply1064', 34, 'ply664', 'header');
INSERT INTO goals VALUES ('gl875', 'mt286', 'ply1064', 50, 'ply654', 'right-footed shot');
INSERT INTO goals VALUES ('gl876', 'mt286', 'ply1064', 54, 'ply647', 'right-footed shot');
INSERT INTO goals VALUES ('gl877', 'mt286', 'ply654', 84, 'ply652', 'left-footed shot');
INSERT INTO goals VALUES ('gl878', 'mt287', 'ply509', 48, 'ply1869', 'left-footed shot');
INSERT INTO goals VALUES ('gl879', 'mt287', 'ply1870', 65, 'ply505', 'header');
INSERT INTO goals VALUES ('gl880', 'mt287', 'ply103', 70, 'ply96', 'header');
INSERT INTO goals VALUES ('gl881', 'mt287', 'ply1466', 90, 'ply1871', 'header');
INSERT INTO goals VALUES ('gl882', 'mt288', 'ply1872', 16, 'ply925', 'right-footed shot');
INSERT INTO goals VALUES ('gl883', 'mt288', '', 25, '', 'own goal');
INSERT INTO goals VALUES ('gl884', 'mt288', 'ply1341', 37, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl885', 'mt289', 'ply1869', 17, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl886', 'mt289', 'ply1112', 62, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl887', 'mt289', 'ply699', 89, 'ply1110', 'right-footed shot');
INSERT INTO goals VALUES ('gl888', 'mt290', 'ply116', 48, 'ply118', 'right-footed shot');
INSERT INTO goals VALUES ('gl889', 'mt290', 'ply1873', 58, 'ply1874', 'left-footed shot');
INSERT INTO goals VALUES ('gl890', 'mt291', 'ply118', 78, 'ply1072', 'header');
INSERT INTO goals VALUES ('gl891', 'mt292', 'ply1096', 30, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl892', 'mt292', 'ply1110', 77, 'ply509', 'left-footed shot');
INSERT INTO goals VALUES ('gl893', 'mt292', 'ply1110', 79, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl894', 'mt293', 'ply1875', 4, 'ply699', 'right-footed shot');
INSERT INTO goals VALUES ('gl895', 'mt293', 'ply1096', 12, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl896', 'mt293', 'ply1471', 90, 'ply1869', 'left-footed shot');
INSERT INTO goals VALUES ('gl897', 'mt294', 'ply1873', 41, '', 'own goal');
INSERT INTO goals VALUES ('gl898', 'mt294', 'ply1876', 55, 'ply1547', 'right-footed shot');
INSERT INTO goals VALUES ('gl899', 'mt294', 'ply118', 90, 'ply1873', 'right-footed shot');
INSERT INTO goals VALUES ('gl900', 'mt295', 'ply1350', 11, '', 'own goal');
INSERT INTO goals VALUES ('gl901', 'mt295', '', 54, 'ply1540', 'left-footed shot');
INSERT INTO goals VALUES ('gl902', 'mt296', 'ply1110', 45, '', 'free kick');
INSERT INTO goals VALUES ('gl903', 'mt297', 'ply116', 17, '', 'penalty');
INSERT INTO goals VALUES ('gl904', 'mt297', 'ply94', 54, 'ply109', 'right-footed shot');
INSERT INTO goals VALUES ('gl905', 'mt298', 'ply699', 75, 'ply1110', 'right-footed shot');
INSERT INTO goals VALUES ('gl906', 'mt298', 'ply1869', 90, 'ply1110', 'left-footed shot');
INSERT INTO goals VALUES ('gl907', 'mt299', 'ply1650', 82, 'ply1877', 'penalty');
INSERT INTO goals VALUES ('gl908', 'mt299', '', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl909', 'mt300', 'ply662', 2, 'ply1878', 'right-footed shot');
INSERT INTO goals VALUES ('gl910', 'mt300', 'ply662', 34, 'ply1879', 'left-footed shot');
INSERT INTO goals VALUES ('gl911', 'mt300', 'ply1879', 36, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl912', 'mt300', 'ply1880', 40, 'ply1881', 'right-footed shot');
INSERT INTO goals VALUES ('gl913', 'mt300', 'ply662', 45, 'ply1879', 'right-footed shot');
INSERT INTO goals VALUES ('gl914', 'mt300', 'ply762', 45, 'ply1878', 'right-footed shot');
INSERT INTO goals VALUES ('gl915', 'mt300', 'ply1684', 52, 'ply1882', 'header');
INSERT INTO goals VALUES ('gl916', 'mt300', 'ply787', 66, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl917', 'mt302', 'ply142', 9, 'ply589', 'right-footed shot');
INSERT INTO goals VALUES ('gl918', 'mt302', 'ply572', 25, 'ply564', 'left-footed shot');
INSERT INTO goals VALUES ('gl919', 'mt302', 'ply590', 36, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl920', 'mt302', 'ply1879', 39, 'ply1470', 'right-footed shot');
INSERT INTO goals VALUES ('gl921', 'mt302', 'ply1878', 56, 'ply1879', 'right-footed shot');
INSERT INTO goals VALUES ('gl922', 'mt302', 'ply662', 60, 'ply1878', 'left-footed shot');
INSERT INTO goals VALUES ('gl923', 'mt302', 'ply590', 69, 'ply589', 'left-footed shot');
INSERT INTO goals VALUES ('gl924', 'mt303', 'ply1650', 17, 'ply1877', 'right-footed shot');
INSERT INTO goals VALUES ('gl925', 'mt303', 'ply662', 40, 'ply1879', 'penalty');
INSERT INTO goals VALUES ('gl926', 'mt303', 'ply1650', 64, 'ply1883', 'right-footed shot');
INSERT INTO goals VALUES ('gl927', 'mt303', 'ply662', 72, '', 'header');
INSERT INTO goals VALUES ('gl928', 'mt303', 'ply1884', 73, 'ply1650', 'right-footed shot');
INSERT INTO goals VALUES ('gl929', 'mt304', 'ply582', 2, 'ply577', 'right-footed shot');
INSERT INTO goals VALUES ('gl930', 'mt304', 'ply582', 57, 'ply589', 'right-footed shot');
INSERT INTO goals VALUES ('gl931', 'mt304', 'ply142', 77, 'ply590', 'right-footed shot');
INSERT INTO goals VALUES ('gl932', 'mt304', 'ply590', 87, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl933', 'mt304', 'ply1885', 88, 'ply1881', 'right-footed shot');
INSERT INTO goals VALUES ('gl934', 'mt305', 'ply1069', 14, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl935', 'mt305', 'ply1684', 41, 'ply1674', 'header');
INSERT INTO goals VALUES ('gl936', 'mt305', 'ply582', 53, 'ply590', 'left-footed shot');
INSERT INTO goals VALUES ('gl937', 'mt306', 'ply662', 11, '', 'penalty');
INSERT INTO goals VALUES ('gl938', 'mt306', 'ply1773', 44, 'ply1884', 'right-footed shot');
INSERT INTO goals VALUES ('gl939', 'mt307', 'ply1650', 21, 'ply1756', 'right-footed shot');
INSERT INTO goals VALUES ('gl940', 'mt307', 'ply1046', 65, 'ply581', 'header');
INSERT INTO goals VALUES ('gl941', 'mt308', 'ply1461', 43, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl942', 'mt308', 'ply1878', 45, 'ply1470', 'right-footed shot');
INSERT INTO goals VALUES ('gl943', 'mt308', 'ply1879', 69, 'ply662', 'right-footed shot');
INSERT INTO goals VALUES ('gl944', 'mt308', 'ply1684', 85, 'ply1682', 'header');
INSERT INTO goals VALUES ('gl945', 'mt308', 'ply662', 87, 'ply1470', 'left-footed shot');
INSERT INTO goals VALUES ('gl946', 'mt309', 'ply530', 3, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl947', 'mt309', 'ply530', 26, 'ply1756', 'right-footed shot');
INSERT INTO goals VALUES ('gl948', 'mt309', 'ply530', 38, 'ply1877', 'penalty');
INSERT INTO goals VALUES ('gl949', 'mt309', 'ply1650', 75, '', 'penalty');
INSERT INTO goals VALUES ('gl950', 'mt310', 'ply580', 57, 'ply142', 'header');
INSERT INTO goals VALUES ('gl951', 'mt310', 'ply590', 58, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl952', 'mt311', 'ply1744', 64, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl953', 'mt311', 'ply487', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl954', 'mt313', 'ply723', 35, 'ply208', 'left-footed shot');
INSERT INTO goals VALUES ('gl955', 'mt313', 'ply723', 89, 'ply208', 'left-footed shot');
INSERT INTO goals VALUES ('gl956', 'mt314', 'ply499', 2, 'ply1088', 'left-footed shot');
INSERT INTO goals VALUES ('gl957', 'mt314', 'ply1073', 58, 'ply1086', 'right-footed shot');
INSERT INTO goals VALUES ('gl958', 'mt314', 'ply1073', 84, 'ply740', 'left-footed shot');
INSERT INTO goals VALUES ('gl959', 'mt315', 'ply499', 22, 'ply480', 'right-footed shot');
INSERT INTO goals VALUES ('gl960', 'mt315', 'ply1886', 89, 'ply488', 'right-footed shot');
INSERT INTO goals VALUES ('gl961', 'mt316', 'ply740', 3, 'ply575', 'left-footed shot');
INSERT INTO goals VALUES ('gl962', 'mt316', 'ply1718', 50, 'ply1733', 'right-footed shot');
INSERT INTO goals VALUES ('gl963', 'mt316', 'ply1744', 57, '', 'own goal');
INSERT INTO goals VALUES ('gl964', 'mt318', 'ply499', 5, 'ply1887', 'left-footed shot');
INSERT INTO goals VALUES ('gl965', 'mt318', 'ply1321', 40, 'ply1886', 'right-footed shot');
INSERT INTO goals VALUES ('gl966', 'mt318', 'ply723', 51, 'ply1888', 'right-footed shot');
INSERT INTO goals VALUES ('gl967', 'mt318', 'ply208', 64, 'ply1098', 'right-footed shot');
INSERT INTO goals VALUES ('gl968', 'mt318', 'ply723', 77, 'ply705', 'right-footed shot');
INSERT INTO goals VALUES ('gl969', 'mt319', 'ply1073', 29, 'ply740', 'right-footed shot');
INSERT INTO goals VALUES ('gl970', 'mt319', 'ply740', 33, 'ply1073', 'left-footed shot');
INSERT INTO goals VALUES ('gl971', 'mt319', 'ply115', 67, 'ply740', 'left-footed shot');
INSERT INTO goals VALUES ('gl972', 'mt319', 'ply705', 77, 'ply208', 'right-footed shot');
INSERT INTO goals VALUES ('gl973', 'mt320', 'ply499', 19, 'ply498', 'right-footed shot');
INSERT INTO goals VALUES ('gl974', 'mt320', 'ply1889', 37, '', 'penalty');
INSERT INTO goals VALUES ('gl975', 'mt320', 'ply498', 81, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl976', 'mt320', 'ply499', 88, 'ply498', 'right-footed shot');
INSERT INTO goals VALUES ('gl977', 'mt321', 'ply705', 10, 'ply225', 'right-footed shot');
INSERT INTO goals VALUES ('gl978', 'mt321', 'ply1889', 43, 'ply1890', 'right-footed shot');
INSERT INTO goals VALUES ('gl979', 'mt321', 'ply208', 61, 'ply705', 'left-footed shot');
INSERT INTO goals VALUES ('gl980', 'mt322', 'ply1891', 23, 'ply1086', 'left-footed shot');
INSERT INTO goals VALUES ('gl981', 'mt322', 'ply498', 44, 'ply499', 'left-footed shot');
INSERT INTO goals VALUES ('gl982', 'mt322', 'ply395', 86, 'ply1073', 'right-footed shot');
INSERT INTO goals VALUES ('gl983', 'mt323', 'ply1115', 41, 'ply1116', 'right-footed shot');
INSERT INTO goals VALUES ('gl984', 'mt323', 'ply394', 50, 'ply394', 'penalty');
INSERT INTO goals VALUES ('gl985', 'mt324', 'ply767', 69, 'ply766', 'right-footed shot');
INSERT INTO goals VALUES ('gl986', 'mt324', 'ply767', 78, 'ply137', 'right-footed shot');
INSERT INTO goals VALUES ('gl987', 'mt324', 'ply1652', 84, 'ply933', 'left-footed shot');
INSERT INTO goals VALUES ('gl988', 'mt325', 'ply1116', 22, 'ply1118', 'right-footed shot');
INSERT INTO goals VALUES ('gl989', 'mt325', 'ply648', 70, '', 'own goal');
INSERT INTO goals VALUES ('gl990', 'mt325', 'ply1115', 78, 'ply1118', 'right-footed shot');
INSERT INTO goals VALUES ('gl991', 'mt325', 'ply1892', 85, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl992', 'mt326', 'ply394', 11, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl993', 'mt326', 'ply1460', 65, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl994', 'mt327', 'ply1111', 25, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl995', 'mt327', 'ply760', 49, 'ply137', 'right-footed shot');
INSERT INTO goals VALUES ('gl996', 'mt327', 'ply137', 59, 'ply752', 'right-footed shot');
INSERT INTO goals VALUES ('gl997', 'mt328', 'ply933', 4, 'ply1893', 'right-footed shot');
INSERT INTO goals VALUES ('gl998', 'mt328', 'ply394', 70, 'ply1632', 'left-footed shot');
INSERT INTO goals VALUES ('gl999', 'mt328', 'ply1894', 85, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1000', 'mt329', 'ply1765', 45, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1001', 'mt329', 'ply137', 63, 'ply757', 'left-footed shot');
INSERT INTO goals VALUES ('gl1002', 'mt330', 'ply1895', 4, 'ply1632', 'header');
INSERT INTO goals VALUES ('gl1003', 'mt330', 'ply394', 33, 'ply1697', 'right-footed shot');
INSERT INTO goals VALUES ('gl1004', 'mt330', 'ply1652', 76, 'ply1894', 'left-footed shot');
INSERT INTO goals VALUES ('gl1005', 'mt330', 'ply1296', 89, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1006', 'mt331', 'ply1116', 42, 'ply1043', 'header');
INSERT INTO goals VALUES ('gl1007', 'mt331', 'ply1118', 84, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1008', 'mt332', 'ply1894', 20, 'ply1896', 'left-footed shot');
INSERT INTO goals VALUES ('gl1009', 'mt332', 'ply1897', 59, 'ply1896', 'left-footed shot');
INSERT INTO goals VALUES ('gl1010', 'mt332', 'ply757', 90, 'ply1551', 'penalty');
INSERT INTO goals VALUES ('gl1011', 'mt332', 'ply757', 90, 'ply767', 'header');
INSERT INTO goals VALUES ('gl1012', 'mt333', 'ply1893', 47, 'ply1894', 'right-footed shot');
INSERT INTO goals VALUES ('gl1013', 'mt333', 'ply1894', 58, '', 'penalty');
INSERT INTO goals VALUES ('gl1014', 'mt333', 'ply1115', 79, '', 'own goal');
INSERT INTO goals VALUES ('gl1015', 'mt334', 'ply757', 9, 'ply766', 'penalty');
INSERT INTO goals VALUES ('gl1016', 'mt334', 'ply767', 33, 'ply765', 'penalty');
INSERT INTO goals VALUES ('gl1017', 'mt334', 'ply1697', 50, 'ply1898', 'right-footed shot');
INSERT INTO goals VALUES ('gl1018', 'mt334', 'ply394', 82, 'ply1707', 'right-footed shot');
INSERT INTO goals VALUES ('gl1019', 'mt335', 'ply1899', 74, 'ply1020', 'left-footed shot');
INSERT INTO goals VALUES ('gl1020', 'mt336', 'ply1484', 18, 'ply1078', 'header');
INSERT INTO goals VALUES ('gl1021', 'mt336', 'ply48', 50, 'ply928', 'right-footed shot');
INSERT INTO goals VALUES ('gl1022', 'mt336', 'ply1078', 62, 'ply294', 'header');
INSERT INTO goals VALUES ('gl1023', 'mt337', 'ply294', 8, 'ply60', 'left-footed shot');
INSERT INTO goals VALUES ('gl1024', 'mt337', 'ply1484', 34, 'ply696', 'right-footed shot');
INSERT INTO goals VALUES ('gl1025', 'mt337', 'ply696', 67, 'ply60', 'right-footed shot');
INSERT INTO goals VALUES ('gl1026', 'mt338', 'ply1491', 22, 'ply16', 'right-footed shot');
INSERT INTO goals VALUES ('gl1027', 'mt338', 'ply1774', 33, 'ply551', 'header');
INSERT INTO goals VALUES ('gl1028', 'mt338', 'ply1900', 78, 'ply1114', 'right-footed shot');
INSERT INTO goals VALUES ('gl1029', 'mt339', 'ply1901', 86, 'ply292', 'left-footed shot');
INSERT INTO goals VALUES ('gl1030', 'mt340', 'ply1902', 63, 'ply1903', 'left-footed shot');
INSERT INTO goals VALUES ('gl1031', 'mt340', 'ply1107', 90, 'ply544', 'right-footed shot');
INSERT INTO goals VALUES ('gl1032', 'mt341', 'ply1491', 2, '', 'own goal');
INSERT INTO goals VALUES ('gl1033', 'mt341', 'ply284', 5, '', 'penalty');
INSERT INTO goals VALUES ('gl1034', 'mt341', 'ply1484', 20, 'ply294', 'header');
INSERT INTO goals VALUES ('gl1035', 'mt341', 'ply271', 35, '', 'own goal');
INSERT INTO goals VALUES ('gl1036', 'mt341', 'ply696', 55, 'ply294', 'right-footed shot');
INSERT INTO goals VALUES ('gl1037', 'mt341', 'ply273', 63, 'ply1491', 'left-footed shot');
INSERT INTO goals VALUES ('gl1038', 'mt341', 'ply284', 71, '', 'penalty');
INSERT INTO goals VALUES ('gl1039', 'mt341', 'ply277', 74, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1040', 'mt342', 'ply1774', 25, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1041', 'mt342', 'ply1020', 66, '', 'penalty');
INSERT INTO goals VALUES ('gl1042', 'mt342', 'ply1904', 82, 'ply1825', 'own goal');
INSERT INTO goals VALUES ('gl1043', 'mt342', 'ply110', 84, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1044', 'mt342', 'ply396', 90, 'ply1899', 'right-footed shot');
INSERT INTO goals VALUES ('gl1045', 'mt343', 'ply730', 40, 'ply1899', 'right-footed shot');
INSERT INTO goals VALUES ('gl1046', 'mt343', 'ply286', 41, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1047', 'mt343', 'ply292', 50, 'ply1905', 'left-footed shot');
INSERT INTO goals VALUES ('gl1048', 'mt343', 'ply1906', 82, 'ply1020', 'right-footed shot');
INSERT INTO goals VALUES ('gl1049', 'mt344', 'ply294', 2, 'ply60', 'left-footed shot');
INSERT INTO goals VALUES ('gl1050', 'mt344', 'ply1484', 59, 'ply294', 'right-footed shot');
INSERT INTO goals VALUES ('gl1051', 'mt345', 'ply1491', 19, 'ply1900', 'right-footed shot');
INSERT INTO goals VALUES ('gl1052', 'mt345', 'ply273', 35, 'ply1523', 'header');
INSERT INTO goals VALUES ('gl1053', 'mt345', '', 78, 'ply551', 'left-footed shot');
INSERT INTO goals VALUES ('gl1054', 'mt346', 'ply1899', 24, 'ply396', 'right-footed shot');
INSERT INTO goals VALUES ('gl1055', 'mt347', 'ply662', 69, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1056', 'mt347', 'ply741', 75, 'ply739', 'left-footed shot');
INSERT INTO goals VALUES ('gl1057', 'mt347', 'ply662', 78, 'ply217', 'left-footed shot');
INSERT INTO goals VALUES ('gl1058', 'mt348', 'ply113', 4, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1059', 'mt349', 'ply68', 16, 'ply855', 'right-footed shot');
INSERT INTO goals VALUES ('gl1060', 'mt349', 'ply1100', 42, 'ply81', 'right-footed shot');
INSERT INTO goals VALUES ('gl1061', 'mt349', 'ply1095', 57, 'ply855', 'right-footed shot');
INSERT INTO goals VALUES ('gl1062', 'mt349', 'ply68', 62, 'ply81', 'right-footed shot');
INSERT INTO goals VALUES ('gl1063', 'mt349', 'ply1902', 66, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1064', 'mt350', 'ply767', 58, 'ply760', 'penalty');
INSERT INTO goals VALUES ('gl1065', 'mt351', 'ply141', 51, 'ply398', 'right-footed shot');
INSERT INTO goals VALUES ('gl1066', 'mt351', 'ply141', 54, 'ply398', 'left-footed shot');
INSERT INTO goals VALUES ('gl1067', 'mt351', 'ply398', 76, 'ply125', 'right-footed shot');
INSERT INTO goals VALUES ('gl1068', 'mt352', 'ply1650', 30, 'ply1771', 'right-footed shot');
INSERT INTO goals VALUES ('gl1069', 'mt352', 'ply115', 57, 'ply1907', 'right-footed shot');
INSERT INTO goals VALUES ('gl1070', 'mt353', 'ply857', 60, 'ply837', 'right-footed shot');
INSERT INTO goals VALUES ('gl1071', 'mt353', 'ply1064', 78, 'ply653', 'header');
INSERT INTO goals VALUES ('gl1072', 'mt353', 'ply653', 83, 'ply293', 'penalty');
INSERT INTO goals VALUES ('gl1073', 'mt354', 'ply1898', 31, 'ply1697', 'left-footed shot');
INSERT INTO goals VALUES ('gl1074', 'mt355', 'ply1100', 3, '', 'penalty');
INSERT INTO goals VALUES ('gl1075', 'mt355', 'ply1903', 21, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1076', 'mt355', 'ply1100', 43, '', 'penalty');
INSERT INTO goals VALUES ('gl1077', 'mt355', 'ply1903', 51, 'ply396', 'header');
INSERT INTO goals VALUES ('gl1078', 'mt355', 'ply396', 67, 'ply1020', 'right-footed shot');
INSERT INTO goals VALUES ('gl1079', 'mt355', 'ply1100', 71, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1080', 'mt355', 'ply1100', 83, 'ply1095', 'left-footed shot');
INSERT INTO goals VALUES ('gl1081', 'mt356', 'ply137', 10, 'ply767', 'right-footed shot');
INSERT INTO goals VALUES ('gl1082', 'mt356', 'ply137', 21, 'ply1068', 'header');
INSERT INTO goals VALUES ('gl1083', 'mt356', 'ply757', 87, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1084', 'mt357', 'ply741', 28, 'ply527', 'header');
INSERT INTO goals VALUES ('gl1085', 'mt357', 'ply724', 45, 'ply733', 'left-footed shot');
INSERT INTO goals VALUES ('gl1086', 'mt358', 'ply1069', 43, 'ply582', 'header');
INSERT INTO goals VALUES ('gl1087', 'mt358', 'ply589', 94, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1088', 'mt358', 'ply112', 97, 'ply116', 'right-footed shot');
INSERT INTO goals VALUES ('gl1089', 'mt358', 'ply112', 105, 'ply118', 'right-footed shot');
INSERT INTO goals VALUES ('gl1090', 'mt358', 'ply118', 120, 'ply112', 'left-footed shot');
INSERT INTO goals VALUES ('gl1091', 'mt359', 'ply293', 9, 'ply1064', 'right-footed shot');
INSERT INTO goals VALUES ('gl1092', 'mt359', 'ply831', 28, 'ply836', 'header');
INSERT INTO goals VALUES ('gl1093', 'mt359', 'ply1064', 68, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1094', 'mt360', 'ply394', 12, 'ply1697', 'penalty');
INSERT INTO goals VALUES ('gl1095', 'mt360', 'ply699', 43, '', 'penalty');
INSERT INTO goals VALUES ('gl1096', 'mt360', 'ply699', 60, 'ply1112', 'left-footed shot');
INSERT INTO goals VALUES ('gl1097', 'mt361', 'ply398', 10, 'ply398', 'penalty');
INSERT INTO goals VALUES ('gl1098', 'mt361', 'ply1089', 24, 'ply398', 'right-footed shot');
INSERT INTO goals VALUES ('gl1099', 'mt361', 'ply1491', 44, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1100', 'mt361', 'ply1092', 76, 'ply398', 'right-footed shot');
INSERT INTO goals VALUES ('gl1101', 'mt361', 'ply398', 84, 'ply817', 'header');
INSERT INTO goals VALUES ('gl1102', 'mt362', 'ply1788', 10, 'ply863', 'header');
INSERT INTO goals VALUES ('gl1103', 'mt362', 'ply740', 23, 'ply1073', 'left-footed shot');
INSERT INTO goals VALUES ('gl1104', 'mt362', 'ply1073', 45, 'ply740', 'penalty');
INSERT INTO goals VALUES ('gl1105', 'mt362', 'ply1884', 45, 'ply1650', 'penalty');
INSERT INTO goals VALUES ('gl1106', 'mt363', 'ply81', 27, 'ply87', 'left-footed shot');
INSERT INTO goals VALUES ('gl1107', 'mt363', 'ply726', 90, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl1108', 'mt363', 'ply139', 90, 'ply739', 'right-footed shot');
INSERT INTO goals VALUES ('gl1109', 'mt364', 'ply756', 51, 'ply137', 'header');
INSERT INTO goals VALUES ('gl1110', 'mt364', 'ply116', 71, 'ply116', 'penalty');
INSERT INTO goals VALUES ('gl1111', 'mt364', 'ply1908', 88, 'ply1068', 'right-footed shot');
INSERT INTO goals VALUES ('gl1112', 'mt365', 'ply143', 4, 'ply398', 'left-footed shot');
INSERT INTO goals VALUES ('gl1113', 'mt365', 'ply816', 7, '', 'own goal');
INSERT INTO goals VALUES ('gl1114', 'mt365', 'ply1089', 22, 'ply141', 'left-footed shot');
INSERT INTO goals VALUES ('gl1115', 'mt365', 'ply141', 27, 'ply133', 'right-footed shot');
INSERT INTO goals VALUES ('gl1116', 'mt365', 'ply143', 31, 'ply135', 'right-footed shot');
INSERT INTO goals VALUES ('gl1117', 'mt365', 'ply1073', 57, 'ply381', 'left-footed shot');
INSERT INTO goals VALUES ('gl1118', 'mt365', 'ply135', 63, 'ply125', 'right-footed shot');
INSERT INTO goals VALUES ('gl1119', 'mt365', 'ply398', 82, 'ply1509', 'header');
INSERT INTO goals VALUES ('gl1120', 'mt365', 'ply1509', 85, 'ply143', 'right-footed shot');
INSERT INTO goals VALUES ('gl1121', 'mt365', 'ply1509', 89, 'ply127', 'left-footed shot');
INSERT INTO goals VALUES ('gl1122', 'mt366', 'ply1909', 24, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1123', 'mt366', 'ply653', 69, 'ply293', 'right-footed shot');
INSERT INTO goals VALUES ('gl1124', 'mt366', 'ply1707', 79, 'ply1697', 'right-footed shot');
INSERT INTO goals VALUES ('gl1125', 'mt366', 'ply1707', 87, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1126', 'mt367', 'ply726', 13, 'ply527', 'header');
INSERT INTO goals VALUES ('gl1127', 'mt367', 'ply527', 42, 'ply741', 'left-footed shot');
INSERT INTO goals VALUES ('gl1128', 'mt367', 'ply724', 56, 'ply527', 'header');
INSERT INTO goals VALUES ('gl1129', 'mt368', 'ply141', 18, 'ply135', 'left-footed shot');
INSERT INTO goals VALUES ('gl1130', 'mt368', 'ply141', 33, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1131', 'mt368', 'ply398', 88, 'ply135', 'header');
INSERT INTO goals VALUES ('gl1132', 'mt369', 'ply140', 59, 'ply135', 'header');
INSERT INTO goals VALUES ('gl1133', 'mt370', 'ply2159', 18, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1134', 'mt370', 'ply1874', 32, 'ply115', 'right-footed shot');
INSERT INTO goals VALUES ('gl1135', 'mt370', 'ply96', 45, 'ply109', 'header');
INSERT INTO goals VALUES ('gl1136', 'mt371', 'ply292', 85, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1137', 'mt372', 'ply1936', 51, 'ply705', 'right-footed shot');
INSERT INTO goals VALUES ('gl1138', 'mt372', 'ply1098', 72, 'ply225', 'left-footed shot');
INSERT INTO goals VALUES ('gl1139', 'mt372', 'ply225', 90, 'ply1936', 'right-footed shot');
INSERT INTO goals VALUES ('gl1140', 'mt373', 'ply115', 28, 'ply111', 'left-footed shot');
INSERT INTO goals VALUES ('gl1141', 'mt373', 'ply1028', 39, 'ply320', 'right-footed shot');
INSERT INTO goals VALUES ('gl1142', 'mt373', 'ply115', 67, 'ply1874', 'left-footed shot');
INSERT INTO goals VALUES ('gl1143', 'mt373', 'ply109', 90, 'ply115', 'right-footed shot');
INSERT INTO goals VALUES ('gl1144', 'mt374', 'ply2160', 32, 'ply2002', 'right-footed shot');
INSERT INTO goals VALUES ('gl1145', 'mt374', 'ply2161', 40, 'ply322', 'header');
INSERT INTO goals VALUES ('gl1146', 'mt375', 'ply105', 38, 'ply723', 'right-footed shot');
INSERT INTO goals VALUES ('gl1147', 'mt375', 'ply198', 73, 'ply723', 'left-footed shot');
INSERT INTO goals VALUES ('gl1148', 'mt375', 'ply705', 83, 'ply723', 'right-footed shot');
INSERT INTO goals VALUES ('gl1149', 'mt375', 'ply198', 89, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1150', 'mt376', 'ply322', 12, 'ply320', 'left-footed shot');
INSERT INTO goals VALUES ('gl1151', 'mt376', 'ply322', 17, '', 'penalty');
INSERT INTO goals VALUES ('gl1152', 'mt376', 'ply2161', 24, 'ply323', 'right-footed shot');
INSERT INTO goals VALUES ('gl1153', 'mt376', 'ply323', 85, 'ply2162', 'right-footed shot');
INSERT INTO goals VALUES ('gl1154', 'mt377', 'ply113', 33, 'ply2163', 'left-footed shot');
INSERT INTO goals VALUES ('gl1155', 'mt377', 'ply115', 80, 'ply1873', 'left-footed shot');
INSERT INTO goals VALUES ('gl1156', 'mt378', 'ply109', 2, 'ply115', 'right-footed shot');
INSERT INTO goals VALUES ('gl1157', 'mt378', 'ply115', 24, 'ply114', 'left-footed shot');
INSERT INTO goals VALUES ('gl1158', 'mt380', 'ply198', 15, 'ply984', 'left-footed shot');
INSERT INTO goals VALUES ('gl1159', 'mt380', 'ply198', 88, 'ply1098', 'left-footed shot');
INSERT INTO goals VALUES ('gl1160', 'mt382', 'ply740', 31, '', 'free kick');
INSERT INTO goals VALUES ('gl1161', 'mt382', 'ply393', 75, 'ply1509', 'right-footed shot');
INSERT INTO goals VALUES ('gl1162', 'mt382', 'ply740', 77, 'ply863', 'left-footed shot');
INSERT INTO goals VALUES ('gl1163', 'mt382', 'ply740', 87, 'ply1073', 'right-footed shot');
INSERT INTO goals VALUES ('gl1164', 'mt383', 'ply691', 53, 'ply867', 'right-footed shot');
INSERT INTO goals VALUES ('gl1165', 'mt383', 'ply1649', 85, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1166', 'mt383', 'ply1321', 90, 'ply480', 'header');
INSERT INTO goals VALUES ('gl1167', 'mt384', 'ply1509', 2, 'ply381', 'right-footed shot');
INSERT INTO goals VALUES ('gl1168', 'mt384', 'ply863', 28, 'ply1509', 'right-footed shot');
INSERT INTO goals VALUES ('gl1169', 'mt384', 'ply1801', 52, 'ply867', 'right-footed shot');
INSERT INTO goals VALUES ('gl1170', 'mt384', 'ply740', 56, 'ply381', 'left-footed shot');
INSERT INTO goals VALUES ('gl1171', 'mt384', 'ply867', 66, 'ply1805', 'left-footed shot');
INSERT INTO goals VALUES ('gl1172', 'mt384', 'ply740', 90, 'ply381', 'left-footed shot');
INSERT INTO goals VALUES ('gl1173', 'mt385', 'ply2164', 27, 'ply1773', 'right-footed shot');
INSERT INTO goals VALUES ('gl1174', 'mt385', 'ply2165', 44, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1175', 'mt385', 'ply1649', 60, 'ply1321', 'right-footed shot');
INSERT INTO goals VALUES ('gl1176', 'mt386', 'ply1773', 30, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1177', 'mt386', 'ply1802', 39, 'ply1871', 'right-footed shot');
INSERT INTO goals VALUES ('gl1178', 'mt386', 'ply1801', 54, 'ply691', 'header');
INSERT INTO goals VALUES ('gl1179', 'mt386', 'ply1492', 87, 'ply2164', 'right-footed shot');
INSERT INTO goals VALUES ('gl1180', 'mt387', 'ply1520', 32, 'ply1073', 'left-footed shot');
INSERT INTO goals VALUES ('gl1181', 'mt387', 'ply381', 83, 'ply863', 'left-footed shot');
INSERT INTO goals VALUES ('gl1182', 'mt388', 'ply1492', 2, 'ply2166', 'header');
INSERT INTO goals VALUES ('gl1183', 'mt388', 'ply1801', 78, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1184', 'mt388', 'ply1801', 89, 'ply1783', 'header');
INSERT INTO goals VALUES ('gl1185', 'mt389', 'ply1059', 83, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1186', 'mt389', 'ply1649', 87, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1187', 'mt390', 'ply740', 61, 'ply393', 'left-footed shot');
INSERT INTO goals VALUES ('gl1188', 'mt390', 'ply384', 70, 'ply740', 'right-footed shot');
INSERT INTO goals VALUES ('gl1189', 'mt390', 'ply1492', 83, 'ply1068', 'header');
INSERT INTO goals VALUES ('gl1190', 'mt391', 'ply691', 80, 'ply176', 'left-footed shot');
INSERT INTO goals VALUES ('gl1191', 'mt392', 'ply393', 7, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1192', 'mt392', 'ply1802', 85, 'ply1801', 'right-footed shot');
INSERT INTO goals VALUES ('gl1193', 'mt393', 'ply1773', 13, 'ply54', 'header');
INSERT INTO goals VALUES ('gl1194', 'mt393', 'ply1649', 73, 'ply1775', 'header');
INSERT INTO goals VALUES ('gl1195', 'mt394', '', 30, 'ply572', 'header');
INSERT INTO goals VALUES ('gl1196', 'mt394', 'ply581', 36, 'ply1069', 'penalty');
INSERT INTO goals VALUES ('gl1197', 'mt394', 'ply201', 40, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1198', 'mt394', 'ply739', 83, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl1199', 'mt394', 'ply589', 90, 'ply574', 'right-footed shot');
INSERT INTO goals VALUES ('gl1200', 'mt396', 'ply741', 20, '', 'free kick');
INSERT INTO goals VALUES ('gl1201', 'mt396', 'ply741', 22, 'ply739', 'left-footed shot');
INSERT INTO goals VALUES ('gl1202', 'mt396', 'ply1840', 37, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1203', 'mt396', 'ply527', 42, 'ply201', 'right-footed shot');
INSERT INTO goals VALUES ('gl1204', 'mt396', 'ply739', 70, 'ply724', 'left-footed shot');
INSERT INTO goals VALUES ('gl1205', 'mt396', '', 74, '', '');
INSERT INTO goals VALUES ('gl1206', 'mt396', 'ply741', 81, '', 'free kick');
INSERT INTO goals VALUES ('gl1207', 'mt397', 'ply1884', 90, 'ply1877', 'right-footed shot');
INSERT INTO goals VALUES ('gl1208', 'mt398', 'ply1884', 29, 'ply1877', 'right-footed shot');
INSERT INTO goals VALUES ('gl1209', 'mt398', 'ply1759', 61, '', 'own goal');
INSERT INTO goals VALUES ('gl1210', 'mt398', 'ply1650', 77, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1211', 'mt398', 'ply527', 90, 'ply922', 'left-footed shot');
INSERT INTO goals VALUES ('gl1212', 'mt399', 'ply589', 20, 'ply572', 'left-footed shot');
INSERT INTO goals VALUES ('gl1213', 'mt399', 'ply590', 45, 'ply2167', 'right-footed shot');
INSERT INTO goals VALUES ('gl1214', 'mt399', 'ply590', 50, 'ply142', 'penalty');
INSERT INTO goals VALUES ('gl1215', 'mt399', 'ply142', 80, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1216', 'mt400', 'ply2168', 22, '', 'header');
INSERT INTO goals VALUES ('gl1217', 'mt400', 'ply2168', 29, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1218', 'mt401', 'ply724', 45, 'ply739', 'right-footed shot');
INSERT INTO goals VALUES ('gl1219', 'mt401', 'ply1884', 63, '', 'penalty');
INSERT INTO goals VALUES ('gl1220', 'mt402', 'ply724', 13, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1221', 'mt402', 'ply741', 37, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1222', 'mt402', 'ply581', 45, '', 'penalty');
INSERT INTO goals VALUES ('gl1223', 'mt403', 'ply2169', 11, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1224', 'mt403', 'ply1650', 33, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1225', 'mt403', 'ply1650', 52, 'ply2169', 'right-footed shot');
INSERT INTO goals VALUES ('gl1226', 'mt403', 'ply1584', 57, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1227', 'mt404', 'ply590', 34, 'ply581', 'right-footed shot');
INSERT INTO goals VALUES ('gl1228', 'mt405', 'ply1840', 10, 'ply739', 'right-footed shot');
INSERT INTO goals VALUES ('gl1229', 'mt405', 'ply741', 40, 'ply739', 'right-footed shot');
INSERT INTO goals VALUES ('gl1230', 'mt405', 'ply1567', 56, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1231', 'mt405', 'ply726', 74, 'ply527', 'header');
INSERT INTO goals VALUES ('gl1232', 'mt405', 'ply739', 90, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl1233', 'mt406', 'ply1474', 64, 'ply519', 'left-footed shot');
INSERT INTO goals VALUES ('gl1234', 'mt406', 'ply422', 75, '', 'penalty');
INSERT INTO goals VALUES ('gl1235', 'mt407', 'ply1389', 9, 'ply2170', 'right-footed shot');
INSERT INTO goals VALUES ('gl1236', 'mt407', 'ply2171', 67, '', 'free kick');
INSERT INTO goals VALUES ('gl1237', 'mt407', '', 90, 'ply2170', 'penalty');
INSERT INTO goals VALUES ('gl1238', 'mt408', 'ply519', 88, 'ply1863', 'header');
INSERT INTO goals VALUES ('gl1239', 'mt409', 'ply1479', 49, 'ply844', 'header');
INSERT INTO goals VALUES ('gl1240', 'mt410', 'ply1479', 26, 'ply94', 'penalty');
INSERT INTO goals VALUES ('gl1241', 'mt410', 'ply1466', 35, 'ply864', 'header');
INSERT INTO goals VALUES ('gl1242', 'mt410', 'ply1347', 38, 'ply1096', 'right-footed shot');
INSERT INTO goals VALUES ('gl1243', 'mt410', 'ply864', 47, 'ply2172', 'right-footed shot');
INSERT INTO goals VALUES ('gl1244', 'mt412', 'ply1466', 2, 'ply1479', 'right-footed shot');
INSERT INTO goals VALUES ('gl1245', 'mt412', 'ply1479', 43, 'ply1466', 'right-footed shot');
INSERT INTO goals VALUES ('gl1246', 'mt412', 'ply2173', 59, 'ply1096', 'header');
INSERT INTO goals VALUES ('gl1247', 'mt412', 'ply864', 67, 'ply861', 'left-footed shot');
INSERT INTO goals VALUES ('gl1248', 'mt412', 'ply422', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1249', 'mt413', 'ply2174', 4, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1250', 'mt413', 'ply2175', 57, 'ply2174', 'left-footed shot');
INSERT INTO goals VALUES ('gl1251', 'mt414', 'ply2176', 43, '', 'own goal');
INSERT INTO goals VALUES ('gl1252', 'mt414', '', 54, 'ply2177', 'right-footed shot');
INSERT INTO goals VALUES ('gl1253', 'mt415', 'ply819', 52, 'ply861', 'header');
INSERT INTO goals VALUES ('gl1254', 'mt415', 'ply864', 55, 'ply2172', 'left-footed shot');
INSERT INTO goals VALUES ('gl1255', 'mt415', 'ply2178', 89, '', 'penalty');
INSERT INTO goals VALUES ('gl1256', 'mt415', 'ply1479', 90, 'ply422', 'right-footed shot');
INSERT INTO goals VALUES ('gl1257', 'mt416', 'ply2179', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1258', 'mt417', 'ply94', 17, 'ply844', 'header');
INSERT INTO goals VALUES ('gl1259', 'mt417', 'ply1479', 42, '', 'penalty');
INSERT INTO goals VALUES ('gl1260', 'mt417', '', 45, '', 'penalty');
INSERT INTO goals VALUES ('gl1261', 'mt417', 'ply1075', 57, 'ply2180', 'right-footed shot');
INSERT INTO goals VALUES ('gl1262', 'mt417', 'ply2171', 65, 'ply1389', 'left-footed shot');
INSERT INTO goals VALUES ('gl1263', 'mt418', 'ply1078', 46, 'ply928', 'left-footed shot');
INSERT INTO goals VALUES ('gl1264', 'mt418', 'ply696', 77, 'ply60', 'right-footed shot');
INSERT INTO goals VALUES ('gl1265', 'mt418', 'ply1078', 90, 'ply2181', 'left-footed shot');
INSERT INTO goals VALUES ('gl1266', 'mt419', 'ply398', 10, 'ply816', 'right-footed shot');
INSERT INTO goals VALUES ('gl1267', 'mt419', 'ply734', 54, 'ply1390', 'right-footed shot');
INSERT INTO goals VALUES ('gl1268', 'mt420', 'ply199', 4, '', 'header');
INSERT INTO goals VALUES ('gl1269', 'mt420', 'ply128', 22, 'ply60', 'left-footed shot');
INSERT INTO goals VALUES ('gl1270', 'mt421', 'ply1652', 6, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1271', 'mt421', 'ply907', 15, 'ply1894', 'header');
INSERT INTO goals VALUES ('gl1272', 'mt421', 'ply2182', 53, 'ply2183', '');
INSERT INTO goals VALUES ('gl1273', 'mt421', 'ply2182', 63, 'ply2184', 'right-footed shot');
INSERT INTO goals VALUES ('gl1274', 'mt421', 'ply2185', 74, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1275', 'mt422', 'ply1464', 61, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1276', 'mt422', 'ply398', 63, 'ply2186', 'right-footed shot');
INSERT INTO goals VALUES ('gl1277', 'mt423', 'ply128', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1278', 'mt424', '', 29, 'ply2187', 'right-footed shot');
INSERT INTO goals VALUES ('gl1279', 'mt424', 'ply60', 61, 'ply294', 'left-footed shot');
INSERT INTO goals VALUES ('gl1280', 'mt425', 'ply398', 31, 'ply398', 'penalty');
INSERT INTO goals VALUES ('gl1281', 'mt425', 'ply398', 71, 'ply135', 'right-footed shot');
INSERT INTO goals VALUES ('gl1282', 'mt426', 'ply60', 68, '', 'penalty');
INSERT INTO goals VALUES ('gl1283', 'mt426', 'ply60', 72, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1284', 'mt427', '', 13, 'ply143', 'left-footed shot');
INSERT INTO goals VALUES ('gl1285', 'mt427', '', 30, 'ply143', 'left-footed shot');
INSERT INTO goals VALUES ('gl1286', 'mt427', 'ply398', 36, 'ply135', 'header');
INSERT INTO goals VALUES ('gl1287', 'mt427', 'ply177', 46, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1288', 'mt427', 'ply398', 51, 'ply135', 'header');
INSERT INTO goals VALUES ('gl1289', 'mt427', 'ply2188', 76, 'ply816', 'right-footed shot');
INSERT INTO goals VALUES ('gl1290', 'mt428', 'ply398', 13, 'ply141', 'right-footed shot');
INSERT INTO goals VALUES ('gl1291', 'mt428', 'ply60', 61, 'ply696', 'left-footed shot');
INSERT INTO goals VALUES ('gl1292', 'mt428', 'ply60', 82, '', 'penalty');
INSERT INTO goals VALUES ('gl1293', 'mt428', 'ply398', 87, '', 'penalty');
INSERT INTO goals VALUES ('gl1294', 'mt428', 'ply140', 90, 'ply583', 'right-footed shot');
INSERT INTO goals VALUES ('gl1295', 'mt428', 'ply1078', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1296', 'mt429', 'ply907', 88, '', 'free kick');
INSERT INTO goals VALUES ('gl1297', 'mt430', 'ply51', 6, 'ply2189', 'right-footed shot');
INSERT INTO goals VALUES ('gl1298', 'mt430', 'ply539', 27, 'ply1861', 'left-footed shot');
INSERT INTO goals VALUES ('gl1299', 'mt430', '', 38, 'ply1938', 'header');
INSERT INTO goals VALUES ('gl1300', 'mt430', 'ply2190', 81, 'ply1864', 'left-footed shot');
INSERT INTO goals VALUES ('gl1301', 'mt431', 'ply1909', 26, 'ply2191', 'left-footed shot');
INSERT INTO goals VALUES ('gl1302', 'mt431', 'ply2191', 43, 'ply394', 'left-footed shot');
INSERT INTO goals VALUES ('gl1303', 'mt431', 'ply652', 67, 'ply144', 'left-footed shot');
INSERT INTO goals VALUES ('gl1304', 'mt432', 'ply2192', 1, 'ply1542', 'left-footed shot');
INSERT INTO goals VALUES ('gl1305', 'mt432', '', 8, 'ply144', 'right-footed shot');
INSERT INTO goals VALUES ('gl1306', 'mt432', 'ply2193', 87, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1307', 'mt433', 'ply1861', 44, 'ply539', 'left-footed shot');
INSERT INTO goals VALUES ('gl1308', 'mt433', 'ply1861', 55, 'ply1087', 'right-footed shot');
INSERT INTO goals VALUES ('gl1309', 'mt433', 'ply1707', 70, 'ply2191', 'header');
INSERT INTO goals VALUES ('gl1310', 'mt433', 'ply1632', 72, 'ply1697', 'right-footed shot');
INSERT INTO goals VALUES ('gl1311', 'mt434', 'ply2193', 30, 'ply1064', 'left-footed shot');
INSERT INTO goals VALUES ('gl1312', 'mt434', 'ply645', 35, 'ply653', 'header');
INSERT INTO goals VALUES ('gl1313', 'mt434', 'ply652', 70, 'ply664', 'left-footed shot');
INSERT INTO goals VALUES ('gl1314', 'mt435', 'ply1296', 27, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1315', 'mt435', 'ply1938', 33, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1316', 'mt435', 'ply1938', 47, 'ply1542', 'right-footed shot');
INSERT INTO goals VALUES ('gl1317', 'mt435', 'ply1769', 59, 'ply2194', 'right-footed shot');
INSERT INTO goals VALUES ('gl1318', 'mt435', 'ply394', 67, 'ply1697', 'left-footed shot');
INSERT INTO goals VALUES ('gl1319', 'mt435', 'ply2195', 90, 'ply205', 'right-footed shot');
INSERT INTO goals VALUES ('gl1320', 'mt436', 'ply2193', 13, 'ply664', 'right-footed shot');
INSERT INTO goals VALUES ('gl1321', 'mt436', 'ply1064', 24, '', 'penalty');
INSERT INTO goals VALUES ('gl1322', 'mt436', 'ply293', 49, 'ply1070', 'right-footed shot');
INSERT INTO goals VALUES ('gl1323', 'mt436', 'ply1064', 72, '', 'penalty');
INSERT INTO goals VALUES ('gl1324', 'mt436', 'ply664', 84, 'ply656', 'right-footed shot');
INSERT INTO goals VALUES ('gl1325', 'mt436', 'ply1064', 90, 'ply664', 'right-footed shot');
INSERT INTO goals VALUES ('gl1326', 'mt437', 'ply2191', 19, 'ply1697', 'right-footed shot');
INSERT INTO goals VALUES ('gl1327', 'mt437', 'ply1769', 28, 'ply821', 'right-footed shot');
INSERT INTO goals VALUES ('gl1328', 'mt437', 'ply1938', 65, 'ply1915', 'right-footed shot');
INSERT INTO goals VALUES ('gl1329', 'mt437', 'ply1920', 90, 'ply2195', 'left-footed shot');
INSERT INTO goals VALUES ('gl1330', 'mt438', 'ply1909', 55, 'ply394', 'left-footed shot');
INSERT INTO goals VALUES ('gl1331', 'mt438', 'ply645', 62, 'ply2193', 'header');
INSERT INTO goals VALUES ('gl1332', 'mt438', 'ply1909', 81, 'ply394', 'left-footed shot');
INSERT INTO goals VALUES ('gl1333', 'mt438', '', 83, 'ply664', 'header');
INSERT INTO goals VALUES ('gl1334', 'mt439', 'ply539', 14, 'ply2196', 'left-footed shot');
INSERT INTO goals VALUES ('gl1335', 'mt439', 'ply2196', 15, 'ply1861', 'right-footed shot');
INSERT INTO goals VALUES ('gl1336', 'mt439', 'ply1938', 17, 'ply2192', 'right-footed shot');
INSERT INTO goals VALUES ('gl1337', 'mt439', 'ply1975', 40, '', 'header');
INSERT INTO goals VALUES ('gl1338', 'mt439', 'ply2196', 90, 'ply539', 'right-footed shot');
INSERT INTO goals VALUES ('gl1339', 'mt440', 'ply1861', 22, 'ply539', 'left-footed shot');
INSERT INTO goals VALUES ('gl1340', 'mt440', 'ply2191', 65, 'ply394', 'right-footed shot');
INSERT INTO goals VALUES ('gl1341', 'mt441', 'ply1938', 16, '', 'penalty');
INSERT INTO goals VALUES ('gl1342', 'mt441', 'ply144', 45, '', 'free kick');
INSERT INTO goals VALUES ('gl1343', 'mt441', 'ply144', 61, 'ply293', 'left-footed shot');
INSERT INTO goals VALUES ('gl1344', 'mt442', 'ply857', 45, '', 'free kick');
INSERT INTO goals VALUES ('gl1345', 'mt442', 'ply2197', 58, 'ply828', 'left-footed shot');
INSERT INTO goals VALUES ('gl1346', 'mt442', 'ply835', 90, 'ply1371', 'right-footed shot');
INSERT INTO goals VALUES ('gl1347', 'mt443', 'ply2198', 29, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1348', 'mt443', 'ply2198', 41, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1349', 'mt443', 'ply2063', 49, 'ply2199', 'right-footed shot');
INSERT INTO goals VALUES ('gl1350', 'mt443', 'ply2199', 90, '', 'penalty');
INSERT INTO goals VALUES ('gl1351', 'mt444', 'ply2199', 2, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1352', 'mt445', 'ply497', 3, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1353', 'mt445', 'ply497', 40, 'ply1431', 'right-footed shot');
INSERT INTO goals VALUES ('gl1354', 'mt445', 'ply1431', 64, 'ply2032', 'left-footed shot');
INSERT INTO goals VALUES ('gl1355', 'mt445', 'ply1521', 73, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1356', 'mt445', 'ply497', 90, 'ply10', 'header');
INSERT INTO goals VALUES ('gl1357', 'mt446', 'ply497', 30, 'ply2032', 'right-footed shot');
INSERT INTO goals VALUES ('gl1358', 'mt446', 'ply497', 43, 'ply2037', 'right-footed shot');
INSERT INTO goals VALUES ('gl1359', 'mt446', 'ply1431', 50, 'ply497', 'left-footed shot');
INSERT INTO goals VALUES ('gl1360', 'mt447', 'ply831', 11, 'ply833', 'header');
INSERT INTO goals VALUES ('gl1361', 'mt447', 'ply1371', 55, 'ply2197', 'left-footed shot');
INSERT INTO goals VALUES ('gl1362', 'mt447', 'ply1675', 78, 'ply2143', 'right-footed shot');
INSERT INTO goals VALUES ('gl1363', 'mt448', 'ply2200', 4, 'ply2032', 'header');
INSERT INTO goals VALUES ('gl1364', 'mt448', 'ply2201', 51, 'ply1239', 'right-footed shot');
INSERT INTO goals VALUES ('gl1365', 'mt448', 'ply2032', 59, 'ply2028', 'left-footed shot');
INSERT INTO goals VALUES ('gl1366', 'mt449', 'ply831', 21, 'ply827', 'right-footed shot');
INSERT INTO goals VALUES ('gl1367', 'mt449', 'ply690', 23, 'ply827', 'header');
INSERT INTO goals VALUES ('gl1368', 'mt449', 'ply831', 37, 'ply2197', 'header');
INSERT INTO goals VALUES ('gl1369', 'mt449', 'ply2197', 40, 'ply831', 'left-footed shot');
INSERT INTO goals VALUES ('gl1370', 'mt449', 'ply827', 67, 'ply837', 'right-footed shot');
INSERT INTO goals VALUES ('gl1371', 'mt450', 'ply2199', 10, '', 'penalty');
INSERT INTO goals VALUES ('gl1372', 'mt450', 'ply2202', 56, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1373', 'mt450', 'ply2133', 81, 'ply1675', 'header');
INSERT INTO goals VALUES ('gl1374', 'mt451', 'ply2197', 47, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1375', 'mt451', 'ply833', 59, 'ply831', 'right-footed shot');
INSERT INTO goals VALUES ('gl1376', 'mt452', 'ply2063', 37, 'ply2201', 'left-footed shot');
INSERT INTO goals VALUES ('gl1377', 'mt452', 'ply2051', 43, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1378', 'mt452', 'ply2201', 73, 'ply2199', 'right-footed shot');
INSERT INTO goals VALUES ('gl1379', 'mt453', 'ply2203', 62, 'ply2146', 'left-footed shot');
INSERT INTO goals VALUES ('gl1380', 'mt453', 'ply1431', 68, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1381', 'mt453', 'ply2152', 72, '', 'header');
INSERT INTO goals VALUES ('gl1382', 'mt454', 'ply1076', 45, 'ply644', 'penalty');
INSERT INTO goals VALUES ('gl1383', 'mt454', 'ply1076', 51, 'ply507', 'penalty');
INSERT INTO goals VALUES ('gl1384', 'mt455', 'ply522', 35, 'ply692', 'left-footed shot');
INSERT INTO goals VALUES ('gl1385', 'mt455', 'ply522', 44, '', 'penalty');
INSERT INTO goals VALUES ('gl1386', 'mt455', 'ply702', 66, 'ply522', 'right-footed shot');
INSERT INTO goals VALUES ('gl1387', 'mt456', 'ply1110', 5, 'ply507', 'left-footed shot');
INSERT INTO goals VALUES ('gl1388', 'mt456', 'ply1110', 34, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1389', 'mt456', 'ply1110', 69, 'ply509', 'left-footed shot');
INSERT INTO goals VALUES ('gl1390', 'mt458', 'ply1901', 26, 'ply730', 'right-footed shot');
INSERT INTO goals VALUES ('gl1391', 'mt458', 'ply2204', 55, 'ply2205', 'penalty');
INSERT INTO goals VALUES ('gl1392', 'mt459', 'ply1110', 17, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1393', 'mt460', 'ply2206', 15, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1394', 'mt460', 'ply2207', 37, 'ply266', 'right-footed shot');
INSERT INTO goals VALUES ('gl1395', 'mt460', 'ply2206', 42, 'ply730', 'right-footed shot');
INSERT INTO goals VALUES ('gl1396', 'mt460', 'ply730', 56, 'ply1899', 'right-footed shot');
INSERT INTO goals VALUES ('gl1397', 'mt461', 'ply699', 65, 'ply507', 'right-footed shot');
INSERT INTO goals VALUES ('gl1398', 'mt461', 'ply1643', 86, '', 'free kick');
INSERT INTO goals VALUES ('gl1399', 'mt461', 'ply505', 90, '', 'own goal');
INSERT INTO goals VALUES ('gl1400', 'mt462', '', 59, 'ply699', 'right-footed shot');
INSERT INTO goals VALUES ('gl1401', 'mt463', 'ply2208', 90, 'ply498', 'right-footed shot');
INSERT INTO goals VALUES ('gl1402', 'mt464', 'ply730', 17, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1403', 'mt464', 'ply678', 47, '', 'own goal');
INSERT INTO goals VALUES ('gl1404', 'mt464', 'ply704', 87, 'ply2209', 'header');
INSERT INTO goals VALUES ('gl1405', 'mt465', 'ply2204', 30, '', 'penalty');
INSERT INTO goals VALUES ('gl1406', 'mt465', 'ply2204', 68, 'ply1093', 'left-footed shot');
INSERT INTO goals VALUES ('gl1407', 'mt465', 'ply1110', 80, 'ply699', 'left-footed shot');
INSERT INTO goals VALUES ('gl1408', 'mt466', 'ply725', 53, 'ply527', 'left-footed shot');
INSERT INTO goals VALUES ('gl1409', 'mt466', 'ply739', 60, 'ply527', 'right-footed shot');
INSERT INTO goals VALUES ('gl1410', 'mt467', 'ply2039', 70, 'ply497', 'right-footed shot');
INSERT INTO goals VALUES ('gl1411', 'mt467', 'ply2039', 76, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1412', 'mt467', 'ply2210', 79, 'ply2211', 'right-footed shot');
INSERT INTO goals VALUES ('gl1413', 'mt468', 'ply1805', 47, 'ply2212', 'right-footed shot');
INSERT INTO goals VALUES ('gl1414', 'mt468', 'ply2212', 83, 'ply1120', 'left-footed shot');
INSERT INTO goals VALUES ('gl1415', 'mt468', '', 86, '', 'header');
INSERT INTO goals VALUES ('gl1416', 'mt469', 'ply831', 60, 'ply837', 'right-footed shot');
INSERT INTO goals VALUES ('gl1417', 'mt469', 'ply294', 75, 'ply928', 'left-footed shot');
INSERT INTO goals VALUES ('gl1418', 'mt469', 'ply834', 87, 'ply818', 'left-footed shot');
INSERT INTO goals VALUES ('gl1419', 'mt472', '', 18, 'ply2193', 'right-footed shot');
INSERT INTO goals VALUES ('gl1420', 'mt472', 'ply2178', 38, '', 'penalty');
INSERT INTO goals VALUES ('gl1421', 'mt472', 'ply2178', 45, '', 'penalty');
INSERT INTO goals VALUES ('gl1422', 'mt472', 'ply144', 85, '', 'free kick');
INSERT INTO goals VALUES ('gl1423', 'mt472', 'ply293', 90, 'ply640', 'right-footed shot');
INSERT INTO goals VALUES ('gl1424', 'mt473', 'ply96', 78, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1425', 'mt473', 'ply1887', 83, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1426', 'mt474', 'ply1801', 49, 'ply2213', 'right-footed shot');
INSERT INTO goals VALUES ('gl1427', 'mt475', 'ply294', 7, 'ply60', 'left-footed shot');
INSERT INTO goals VALUES ('gl1428', 'mt475', 'ply928', 18, 'ply60', 'right-footed shot');
INSERT INTO goals VALUES ('gl1429', 'mt475', 'ply60', 62, 'ply696', 'left-footed shot');
INSERT INTO goals VALUES ('gl1430', 'mt475', 'ply834', 70, 'ply101', 'left-footed shot');
INSERT INTO goals VALUES ('gl1431', 'mt475', 'ply2214', 72, '', 'free kick');
INSERT INTO goals VALUES ('gl1432', 'mt476', 'ply498', 2, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1433', 'mt476', 'ply724', 12, 'ply739', 'left-footed shot');
INSERT INTO goals VALUES ('gl1434', 'mt476', 'ply498', 30, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1435', 'mt476', 'ply704', 90, '', 'penalty');
INSERT INTO goals VALUES ('gl1436', 'mt477', 'ply2211', 26, 'ply1479', 'right-footed shot');
INSERT INTO goals VALUES ('gl1437', 'mt477', '', 37, '', 'penalty');
INSERT INTO goals VALUES ('gl1438', 'mt477', 'ply1479', 52, 'ply864', 'right-footed shot');
INSERT INTO goals VALUES ('gl1439', 'mt477', 'ply844', 117, 'ply426', 'penalty');
INSERT INTO goals VALUES ('gl1440', 'mt478', '', 35, '', 'penalty');
INSERT INTO goals VALUES ('gl1441', 'mt478', '', 38, 'ply293', 'right-footed shot');
INSERT INTO goals VALUES ('gl1442', 'mt478', 'ply144', 42, 'ply1070', 'left-footed shot');
INSERT INTO goals VALUES ('gl1443', 'mt478', 'ply293', 56, 'ply144', 'right-footed shot');
INSERT INTO goals VALUES ('gl1444', 'mt478', 'ply652', 71, 'ply144', 'left-footed shot');
INSERT INTO goals VALUES ('gl1445', 'mt478', 'ply654', 78, 'ply144', 'left-footed shot');
INSERT INTO goals VALUES ('gl1446', 'mt478', 'ply1064', 84, 'ply652', 'right-footed shot');
INSERT INTO goals VALUES ('gl1447', 'mt479', 'ply699', 27, 'ply1112', 'header');
INSERT INTO goals VALUES ('gl1448', 'mt479', 'ply699', 48, 'ply644', 'header');
INSERT INTO goals VALUES ('gl1449', 'mt479', 'ply699', 86, '', 'penalty');
INSERT INTO goals VALUES ('gl1450', 'mt480', 'ply740', 17, '', 'penalty');
INSERT INTO goals VALUES ('gl1451', 'mt480', 'ply1509', 31, 'ply1073', 'left-footed shot');
INSERT INTO goals VALUES ('gl1452', 'mt480', 'ply1898', 58, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1453', 'mt480', 'ply740', 78, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1454', 'mt480', 'ply384', 81, 'ply740', 'left-footed shot');
INSERT INTO goals VALUES ('gl1455', 'mt480', 'ply393', 86, 'ply740', 'right-footed shot');
INSERT INTO goals VALUES ('gl1456', 'mt481', 'ply142', 26, 'ply574', 'left-footed shot');
INSERT INTO goals VALUES ('gl1457', 'mt481', 'ply569', 39, '', 'own goal');
INSERT INTO goals VALUES ('gl1458', 'mt481', 'ply574', 69, 'ply581', 'header');
INSERT INTO goals VALUES ('gl1459', 'mt481', 'ply142', 84, 'ply590', 'header');
INSERT INTO goals VALUES ('gl1460', 'mt482', 'ply580', 5, 'ply589', 'right-footed shot');
INSERT INTO goals VALUES ('gl1461', 'mt482', 'ply589', 26, 'ply564', 'right-footed shot');
INSERT INTO goals VALUES ('gl1462', 'mt483', 'ply1805', 78, 'ply691', 'left-footed shot');
INSERT INTO goals VALUES ('gl1463', 'mt484', 'ply699', 45, 'ply644', 'header');
INSERT INTO goals VALUES ('gl1464', 'mt484', 'ply928', 46, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1465', 'mt485', 'ply684', 12, '', 'own goal');
INSERT INTO goals VALUES ('gl1466', 'mt486', 'ply699', 28, 'ply1076', 'header');
INSERT INTO goals VALUES ('gl1467', 'mt486', 'ply696', 34, 'ply294', 'right-footed shot');
INSERT INTO goals VALUES ('gl1468', 'mt486', 'ply126', 67, 'ply2214', 'header');
INSERT INTO goals VALUES ('gl1469', 'mt487', 'ply740', 16, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1470', 'mt487', 'ply740', 20, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1471', 'mt487', 'ply1509', 61, 'ply381', 'right-footed shot');
INSERT INTO goals VALUES ('gl1472', 'mt488', 'ply142', 26, 'ply590', 'right-footed shot');
INSERT INTO goals VALUES ('gl1473', 'mt488', 'ply590', 65, 'ply564', 'left-footed shot');
INSERT INTO goals VALUES ('gl1474', 'mt488', 'ply819', 69, 'ply844', 'header');
INSERT INTO goals VALUES ('gl1475', 'mt488', 'ply589', 77, 'ply578', 'header');
INSERT INTO goals VALUES ('gl1476', 'mt488', 'ply574', 84, 'ply142', 'header');
INSERT INTO goals VALUES ('gl1477', 'mt489', 'ply293', 4, 'ply653', 'right-footed shot');
INSERT INTO goals VALUES ('gl1478', 'mt489', 'ply1805', 7, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1479', 'mt489', 'ply1805', 10, 'ply691', 'right-footed shot');
INSERT INTO goals VALUES ('gl1480', 'mt489', 'ply652', 11, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1481', 'mt489', 'ply293', 21, 'ply653', 'left-footed shot');
INSERT INTO goals VALUES ('gl1482', 'mt489', '', 59, 'ply653', 'right-footed shot');
INSERT INTO goals VALUES ('gl1483', 'mt489', '', 73, 'ply1871', '');
INSERT INTO goals VALUES ('gl1484', 'mt490', 'ply696', 15, 'ply294', 'right-footed shot');
INSERT INTO goals VALUES ('gl1485', 'mt491', 'ply1073', 26, 'ply381', 'right-footed shot');
INSERT INTO goals VALUES ('gl1486', 'mt491', 'ply740', 75, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1487', 'mt491', 'ply740', 82, '', 'free kick');
INSERT INTO goals VALUES ('gl1488', 'mt492', 'ply30', 7, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1489', 'mt492', 'ply1069', 54, 'ply564', 'right-footed shot');
INSERT INTO goals VALUES ('gl1490', 'mt492', 'ply1069', 56, 'ply2167', 'header');
INSERT INTO goals VALUES ('gl1491', 'mt492', 'ply30', 79, 'ply564', 'right-footed shot');
INSERT INTO goals VALUES ('gl1492', 'mt493', 'ply126', 5, 'ply2214', 'header');
INSERT INTO goals VALUES ('gl1493', 'mt493', 'ply294', 35, 'ply60', 'left-footed shot');
INSERT INTO goals VALUES ('gl1494', 'mt493', 'ply1802', 55, 'ply176', 'left-footed shot');
INSERT INTO goals VALUES ('gl1495', 'mt493', 'ply1802', 59, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1496', 'mt493', 'ply1802', 90, 'ply176', 'left-footed shot');
INSERT INTO goals VALUES ('gl1497', 'mt494', 'ply590', 2, '', 'penalty');
INSERT INTO goals VALUES ('gl1498', 'mt494', 'ply30', 87, 'ply569', 'left-footed shot');
INSERT INTO goals VALUES ('gl1499', 'mt495', 'ply2208', 35, 'ply2209', 'header');
INSERT INTO goals VALUES ('gl1500', 'mt495', 'ply498', 53, 'ply39', 'header');
INSERT INTO goals VALUES ('gl1501', 'mt495', 'ply704', 84, 'ply2208', 'right-footed shot');
INSERT INTO goals VALUES ('gl1502', 'mt496', 'ply1652', 50, 'ply2455', 'left-footed shot');
INSERT INTO goals VALUES ('gl1503', 'mt496', 'ply2456', 63, '', 'penalty');
INSERT INTO goals VALUES ('gl1504', 'mt496', 'ply2457', 71, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1505', 'mt497', 'ply2285', 2, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1506', 'mt497', 'ply2458', 20, 'ply1105', 'right-footed shot');
INSERT INTO goals VALUES ('gl1507', 'mt497', 'ply2459', 60, 'ply2458', 'penalty');
INSERT INTO goals VALUES ('gl1508', 'mt497', 'ply2458', 69, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1509', 'mt497', 'ply2460', 76, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1510', 'mt498', 'ply498', 4, 'ply702', 'header');
INSERT INTO goals VALUES ('gl1511', 'mt498', 'ply702', 19, 'ply494', 'penalty');
INSERT INTO goals VALUES ('gl1512', 'mt498', 'ply498', 27, 'ply702', 'right-footed shot');
INSERT INTO goals VALUES ('gl1513', 'mt498', 'ply494', 57, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1514', 'mt498', 'ply2056', 90, 'ply2002', 'left-footed shot');
INSERT INTO goals VALUES ('gl1515', 'mt499', 'ply704', 64, '', 'free kick');
INSERT INTO goals VALUES ('gl1516', 'mt500', 'ply2296', 29, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1517', 'mt500', 'ply2458', 90, 'ply2296', 'right-footed shot');
INSERT INTO goals VALUES ('gl1518', 'mt501', 'ply2014', 45, '', 'own goal');
INSERT INTO goals VALUES ('gl1519', 'mt501', 'ply39', 78, 'ply704', 'penalty');
INSERT INTO goals VALUES ('gl1520', 'mt502', 'ply2461', 32, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1521', 'mt502', 'ply2462', 65, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1522', 'mt502', '', 79, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1523', 'mt503', 'ply2051', 13, 'ply2463', 'left-footed shot');
INSERT INTO goals VALUES ('gl1524', 'mt503', '', 56, '', 'own goal');
INSERT INTO goals VALUES ('gl1525', 'mt504', 'ply2285', 89, 'ply2464', 'right-footed shot');
INSERT INTO goals VALUES ('gl1526', 'mt505', 'ply2465', 5, 'ply2285', 'header');
INSERT INTO goals VALUES ('gl1527', 'mt505', 'ply2458', 65, 'ply642', 'header');
INSERT INTO goals VALUES ('gl1528', 'mt506', 'ply2462', 45, 'ply2456', '');
INSERT INTO goals VALUES ('gl1529', 'mt506', 'ply498', 64, 'ply522', 'left-footed shot');
INSERT INTO goals VALUES ('gl1530', 'mt506', 'ply704', 66, 'ply1643', 'left-footed shot');
INSERT INTO goals VALUES ('gl1531', 'mt507', 'ply398', 12, 'ply398', 'penalty');
INSERT INTO goals VALUES ('gl1532', 'mt507', 'ply583', 65, 'ply135', 'right-footed shot');
INSERT INTO goals VALUES ('gl1533', 'mt507', 'ply135', 90, 'ply1469', 'right-footed shot');
INSERT INTO goals VALUES ('gl1534', 'mt508', 'ply741', 19, 'ply523', 'right-footed shot');
INSERT INTO goals VALUES ('gl1535', 'mt508', 'ply739', 34, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl1536', 'mt508', 'ply1840', 40, 'ply1840', 'penalty');
INSERT INTO goals VALUES ('gl1537', 'mt508', 'ply2466', 83, '', 'own goal');
INSERT INTO goals VALUES ('gl1538', 'mt508', 'ply1840', 85, 'ply2467', 'header');
INSERT INTO goals VALUES ('gl1539', 'mt509', 'ply2468', 2, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl1540', 'mt509', 'ply1840', 31, 'ply739', 'right-footed shot');
INSERT INTO goals VALUES ('gl1541', 'mt509', 'ply741', 63, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1542', 'mt510', '', 38, 'ply2469', 'right-footed shot');
INSERT INTO goals VALUES ('gl1543', 'mt510', 'ply2470', 50, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1544', 'mt510', '', 90, 'ply2471', 'left-footed shot');
INSERT INTO goals VALUES ('gl1545', 'mt511', 'ply739', 3, 'ply735', 'right-footed shot');
INSERT INTO goals VALUES ('gl1546', 'mt511', 'ply1840', 44, 'ply739', 'header');
INSERT INTO goals VALUES ('gl1547', 'mt511', 'ply741', 66, '', 'free kick');
INSERT INTO goals VALUES ('gl1548', 'mt511', 'ply527', 88, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1549', 'mt512', 'ply143', 17, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1550', 'mt512', 'ply135', 29, 'ply140', 'header');
INSERT INTO goals VALUES ('gl1551', 'mt512', 'ply199', 51, '', 'header');
INSERT INTO goals VALUES ('gl1552', 'mt513', 'ply735', 30, 'ply739', 'right-footed shot');
INSERT INTO goals VALUES ('gl1553', 'mt513', 'ply741', 45, 'ply922', 'right-footed shot');
INSERT INTO goals VALUES ('gl1554', 'mt513', 'ply2467', 52, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1555', 'mt513', 'ply2467', 72, 'ply1021', 'header');
INSERT INTO goals VALUES ('gl1556', 'mt513', 'ply2467', 78, 'ply527', 'left-footed shot');
INSERT INTO goals VALUES ('gl1557', 'mt514', 'ply140', 22, 'ply124', 'left-footed shot');
INSERT INTO goals VALUES ('gl1558', 'mt514', 'ply2267', 74, 'ply2472', 'left-footed shot');
INSERT INTO goals VALUES ('gl1559', 'mt514', 'ply1464', 77, 'ply816', 'header');
INSERT INTO goals VALUES ('gl1560', 'mt515', 'ply398', 51, 'ply1092', 'right-footed shot');
INSERT INTO goals VALUES ('gl1561', 'mt515', 'ply2473', 63, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1562', 'mt515', 'ply1092', 77, 'ply135', 'header');
INSERT INTO goals VALUES ('gl1563', 'mt516', 'ply1707', 1, 'ply2471', '');
INSERT INTO goals VALUES ('gl1564', 'mt516', 'ply741', 9, 'ply523', 'left-footed shot');
INSERT INTO goals VALUES ('gl1565', 'mt516', 'ply741', 22, 'ply735', 'left-footed shot');
INSERT INTO goals VALUES ('gl1566', 'mt516', 'ply1840', 28, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl1567', 'mt516', 'ply739', 35, 'ply726', 'right-footed shot');
INSERT INTO goals VALUES ('gl1568', 'mt516', 'ply735', 75, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1569', 'mt516', 'ply1840', 79, 'ply2467', 'right-footed shot');
INSERT INTO goals VALUES ('gl1570', 'mt516', 'ply2468', 80, 'ply1021', '');
INSERT INTO goals VALUES ('gl1571', 'mt517', 'ply398', 8, 'ply140', 'left-footed shot');
INSERT INTO goals VALUES ('gl1572', 'mt517', 'ply1092', 37, 'ply1390', 'header');
INSERT INTO goals VALUES ('gl1573', 'mt517', 'ply739', 50, 'ply1840', 'header');
INSERT INTO goals VALUES ('gl1574', 'mt517', 'ply1092', 69, 'ply140', 'right-footed shot');
INSERT INTO goals VALUES ('gl1575', 'mt518', '', 62, '', 'own goal');
INSERT INTO goals VALUES ('gl1576', 'mt520', 'ply1326', 5, 'ply1900', 'right-footed shot');
INSERT INTO goals VALUES ('gl1577', 'mt520', 'ply76', 30, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1578', 'mt520', 'ply273', 55, 'ply2474', 'header');
INSERT INTO goals VALUES ('gl1579', 'mt520', 'ply18', 71, '', '');
INSERT INTO goals VALUES ('gl1580', 'mt520', 'ply1901', 76, 'ply18', 'right-footed shot');
INSERT INTO goals VALUES ('gl1581', 'mt520', 'ply2378', 82, 'ply76', 'own goal');
INSERT INTO goals VALUES ('gl1582', 'mt521', 'ply2200', 7, 'ply2032', 'header');
INSERT INTO goals VALUES ('gl1583', 'mt521', 'ply497', 15, 'ply2037', 'right-footed shot');
INSERT INTO goals VALUES ('gl1584', 'mt521', 'ply2475', 28, 'ply2476', 'right-footed shot');
INSERT INTO goals VALUES ('gl1585', 'mt522', 'ply115', 40, 'ply127', 'penalty');
INSERT INTO goals VALUES ('gl1586', 'mt522', 'ply118', 60, 'ply832', 'header');
INSERT INTO goals VALUES ('gl1587', 'mt522', 'ply1901', 90, 'ply383', 'right-footed shot');
INSERT INTO goals VALUES ('gl1588', 'mt524', 'ply2477', 11, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1589', 'mt524', 'ply832', 37, 'ply118', 'right-footed shot');
INSERT INTO goals VALUES ('gl1590', 'mt524', '', 40, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1591', 'mt524', 'ply497', 64, 'ply2478', 'left-footed shot');
INSERT INTO goals VALUES ('gl1592', 'mt524', 'ply497', 70, '', 'header');
INSERT INTO goals VALUES ('gl1593', 'mt524', 'ply832', 75, 'ply1326', 'header');
INSERT INTO goals VALUES ('gl1594', 'mt525', 'ply2037', 1, 'ply497', 'right-footed shot');
INSERT INTO goals VALUES ('gl1595', 'mt525', 'ply2037', 36, 'ply2165', 'right-footed shot');
INSERT INTO goals VALUES ('gl1596', 'mt525', '', 63, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1597', 'mt526', '', 40, 'ply2479', 'header');
INSERT INTO goals VALUES ('gl1598', 'mt526', 'ply1873', 56, 'ply115', 'right-footed shot');
INSERT INTO goals VALUES ('gl1599', 'mt527', 'ply832', 21, '', 'penalty');
INSERT INTO goals VALUES ('gl1600', 'mt527', 'ply1900', 36, 'ply832', 'right-footed shot');
INSERT INTO goals VALUES ('gl1601', 'mt527', 'ply2474', 73, '', 'penalty');
INSERT INTO goals VALUES ('gl1602', 'mt527', 'ply1900', 85, 'ply1326', 'right-footed shot');
INSERT INTO goals VALUES ('gl1603', 'mt528', 'ply115', 69, 'ply114', 'left-footed shot');
INSERT INTO goals VALUES ('gl1604', 'mt528', 'ply1903', 86, 'ply115', 'right-footed shot');
INSERT INTO goals VALUES ('gl1605', 'mt529', 'ply113', 56, '', 'header');
INSERT INTO goals VALUES ('gl1606', 'mt529', 'ply103', 75, '', 'own goal');
INSERT INTO goals VALUES ('gl1607', 'mt530', '', 53, '', 'header');
INSERT INTO goals VALUES ('gl1608', 'mt531', 'ply740', 45, 'ply1073', 'left-footed shot');
INSERT INTO goals VALUES ('gl1609', 'mt531', 'ply863', 56, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1610', 'mt531', 'ply740', 69, 'ply2480', 'left-footed shot');
INSERT INTO goals VALUES ('gl1611', 'mt532', '', 2, 'ply843', 'header');
INSERT INTO goals VALUES ('gl1612', 'mt532', 'ply2009', 13, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1613', 'mt532', 'ply689', 43, 'ply940', 'right-footed shot');
INSERT INTO goals VALUES ('gl1614', 'mt532', 'ply2481', 89, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1615', 'mt532', 'ply2481', 90, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1616', 'mt533', 'ply1869', 69, 'ply1471', 'right-footed shot');
INSERT INTO goals VALUES ('gl1617', 'mt533', '', 80, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1618', 'mt534', 'ply940', 49, '', 'own goal');
INSERT INTO goals VALUES ('gl1619', 'mt535', 'ply2482', 18, '', 'own goal');
INSERT INTO goals VALUES ('gl1620', 'mt535', 'ply740', 61, '', 'free kick');
INSERT INTO goals VALUES ('gl1621', 'mt535', 'ply2483', 64, 'ply740', 'left-footed shot');
INSERT INTO goals VALUES ('gl1622', 'mt535', 'ply2482', 90, 'ply1381', 'header');
INSERT INTO goals VALUES ('gl1623', 'mt536', 'ply505', 12, '', 'own goal');
INSERT INTO goals VALUES ('gl1624', 'mt536', 'ply1076', 29, '', 'free kick');
INSERT INTO goals VALUES ('gl1625', 'mt536', '', 84, 'ply1471', 'header');
INSERT INTO goals VALUES ('gl1626', 'mt538', 'ply2484', 20, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1627', 'mt538', 'ply1869', 79, 'ply509', 'right-footed shot');
INSERT INTO goals VALUES ('gl1628', 'mt540', 'ply2485', 40, 'ply2009', 'right-footed shot');
INSERT INTO goals VALUES ('gl1629', 'mt540', 'ply2484', 43, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1630', 'mt540', 'ply2485', 66, 'ply689', 'header');
INSERT INTO goals VALUES ('gl1631', 'mt540', 'ply2486', 86, '', '');
INSERT INTO goals VALUES ('gl1632', 'mt541', 'ply1098', 59, 'ply2487', 'header');
INSERT INTO goals VALUES ('gl1633', 'mt541', '', 90, '', 'own goal');
INSERT INTO goals VALUES ('gl1634', 'mt542', 'ply509', 15, 'ply505', 'left-footed shot');
INSERT INTO goals VALUES ('gl1635', 'mt542', 'ply1112', 90, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1636', 'mt543', 'ply2007', 5, 'ply2488', 'right-footed shot');
INSERT INTO goals VALUES ('gl1637', 'mt543', 'ply589', 21, 'ply1006', 'right-footed shot');
INSERT INTO goals VALUES ('gl1638', 'mt543', 'ply590', 37, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1639', 'mt543', 'ply496', 72, 'ply86', 'right-footed shot');
INSERT INTO goals VALUES ('gl1640', 'mt544', '', 59, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1641', 'mt544', 'ply2489', 85, 'ply2490', 'right-footed shot');
INSERT INTO goals VALUES ('gl1642', 'mt545', 'ply2491', 23, '', 'free kick');
INSERT INTO goals VALUES ('gl1643', 'mt545', 'ply1509', 31, 'ply142', 'right-footed shot');
INSERT INTO goals VALUES ('gl1644', 'mt546', 'ply2007', 27, 'ply496', 'right-footed shot');
INSERT INTO goals VALUES ('gl1645', 'mt546', 'ply2007', 38, 'ply2492', 'left-footed shot');
INSERT INTO goals VALUES ('gl1646', 'mt546', 'ply2007', 83, 'ply2493', 'penalty');
INSERT INTO goals VALUES ('gl1647', 'mt547', 'ply1484', 18, '', 'header');
INSERT INTO goals VALUES ('gl1648', 'mt547', 'ply14', 30, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1649', 'mt547', 'ply2494', 58, 'ply1484', 'left-footed shot');
INSERT INTO goals VALUES ('gl1650', 'mt547', 'ply2495', 67, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1651', 'mt547', 'ply2496', 74, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1652', 'mt547', 'ply1484', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1653', 'mt548', 'ply589', 4, 'ply590', 'right-footed shot');
INSERT INTO goals VALUES ('gl1654', 'mt548', 'ply1509', 13, 'ply581', 'right-footed shot');
INSERT INTO goals VALUES ('gl1655', 'mt548', 'ply590', 19, 'ply589', 'left-footed shot');
INSERT INTO goals VALUES ('gl1656', 'mt548', 'ply590', 40, 'ply1006', 'left-footed shot');
INSERT INTO goals VALUES ('gl1657', 'mt548', 'ply589', 54, 'ply1509', 'header');
INSERT INTO goals VALUES ('gl1658', 'mt548', 'ply582', 86, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1659', 'mt548', 'ply564', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1660', 'mt549', 'ply1788', 30, 'ply2497', 'header');
INSERT INTO goals VALUES ('gl1661', 'mt549', 'ply2497', 59, 'ply733', 'left-footed shot');
INSERT INTO goals VALUES ('gl1662', 'mt549', 'ply1463', 78, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1663', 'mt550', 'ply590', 49, 'ply564', 'back heel');
INSERT INTO goals VALUES ('gl1664', 'mt550', 'ply209', 64, 'ply581', 'right-footed shot');
INSERT INTO goals VALUES ('gl1665', 'mt550', '', 90, 'ply1006', 'left-footed shot');
INSERT INTO goals VALUES ('gl1666', 'mt551', 'ply1463', 82, 'ply2494', 'left-footed shot');
INSERT INTO goals VALUES ('gl1667', 'mt551', 'ply2498', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1668', 'mt552', 'ply589', 2, 'ply1069', 'left-footed shot');
INSERT INTO goals VALUES ('gl1669', 'mt552', 'ply142', 22, 'ply589', 'header');
INSERT INTO goals VALUES ('gl1670', 'mt552', 'ply589', 30, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1671', 'mt552', 'ply2007', 51, 'ply2497', 'header');
INSERT INTO goals VALUES ('gl1672', 'mt552', 'ply2007', 60, 'ply2007', 'penalty');
INSERT INTO goals VALUES ('gl1673', 'mt552', 'ply2499', 90, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1674', 'mt553', 'ply1509', 4, 'ply590', 'penalty');
INSERT INTO goals VALUES ('gl1675', 'mt553', 'ply1509', 15, 'ply589', 'left-footed shot');
INSERT INTO goals VALUES ('gl1676', 'mt553', 'ply589', 19, 'ply142', 'right-footed shot');
INSERT INTO goals VALUES ('gl1677', 'mt553', 'ply142', 47, 'ply581', 'right-footed shot');
INSERT INTO goals VALUES ('gl1678', 'mt553', 'ply1509', 50, 'ply581', 'left-footed shot');
INSERT INTO goals VALUES ('gl1679', 'mt553', 'ply142', 76, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1680', 'mt553', 'ply590', 86, 'ply581', 'right-footed shot');
INSERT INTO goals VALUES ('gl1681', 'mt554', '', 10, 'ply2344', 'header');
INSERT INTO goals VALUES ('gl1682', 'mt554', 'ply2500', 75, 'ply496', 'left-footed shot');
INSERT INTO goals VALUES ('gl1683', 'mt555', 'ply2196', 15, 'ply2501', 'right-footed shot');
INSERT INTO goals VALUES ('gl1684', 'mt555', 'ply2501', 58, '', 'header');
INSERT INTO goals VALUES ('gl1685', 'mt555', 'ply530', 72, 'ply1650', 'penalty');
INSERT INTO goals VALUES ('gl1686', 'mt556', 'ply649', 2, 'ply2193', 'header');
INSERT INTO goals VALUES ('gl1687', 'mt556', '', 10, 'ply650', 'right-footed shot');
INSERT INTO goals VALUES ('gl1688', 'mt556', 'ply1064', 25, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1689', 'mt556', 'ply649', 63, 'ply653', 'header');
INSERT INTO goals VALUES ('gl1690', 'mt557', 'ply653', 48, 'ply2193', 'right-footed shot');
INSERT INTO goals VALUES ('gl1691', 'mt557', 'ply293', 90, 'ply652', 'right-footed shot');
INSERT INTO goals VALUES ('gl1692', 'mt558', 'ply1884', 7, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1693', 'mt558', 'ply1650', 49, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1694', 'mt558', 'ply1877', 70, 'ply1650', 'right-footed shot');
INSERT INTO goals VALUES ('gl1695', 'mt558', 'ply2502', 90, 'ply1490', 'right-footed shot');
INSERT INTO goals VALUES ('gl1696', 'mt559', 'ply293', 9, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1697', 'mt559', 'ply1064', 13, 'ply653', 'right-footed shot');
INSERT INTO goals VALUES ('gl1698', 'mt559', 'ply2412', 73, '', 'penalty');
INSERT INTO goals VALUES ('gl1699', 'mt560', 'ply49', 8, 'ply1490', 'header');
INSERT INTO goals VALUES ('gl1700', 'mt560', 'ply2503', 24, 'ply692', 'right-footed shot');
INSERT INTO goals VALUES ('gl1701', 'mt560', 'ply2503', 54, 'ply2504', 'header');
INSERT INTO goals VALUES ('gl1702', 'mt561', 'ply1884', 21, 'ply1650', 'right-footed shot');
INSERT INTO goals VALUES ('gl1703', 'mt561', 'ply918', 34, 'ply656', 'header');
INSERT INTO goals VALUES ('gl1704', 'mt561', 'ply649', 48, 'ply144', 'header');
INSERT INTO goals VALUES ('gl1705', 'mt561', 'ply284', 62, 'ply1016', 'penalty');
INSERT INTO goals VALUES ('gl1706', 'mt561', '', 69, 'ply144', 'right-footed shot');
INSERT INTO goals VALUES ('gl1707', 'mt561', 'ply293', 90, 'ply653', 'right-footed shot');
INSERT INTO goals VALUES ('gl1708', 'mt562', '', 12, 'ply49', 'header');
INSERT INTO goals VALUES ('gl1709', 'mt562', 'ply2501', 14, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1710', 'mt562', 'ply1864', 17, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1711', 'mt562', 'ply1864', 68, 'ply2501', 'right-footed shot');
INSERT INTO goals VALUES ('gl1712', 'mt563', 'ply1884', 56, 'ply2169', 'right-footed shot');
INSERT INTO goals VALUES ('gl1713', 'mt563', 'ply1771', 81, 'ply1650', 'right-footed shot');
INSERT INTO goals VALUES ('gl1714', 'mt563', 'ply1650', 83, 'ply1016', 'header');
INSERT INTO goals VALUES ('gl1715', 'mt564', 'ply293', 88, 'ply656', 'right-footed shot');
INSERT INTO goals VALUES ('gl1716', 'mt565', 'ply2503', 26, 'ply1864', 'right-footed shot');
INSERT INTO goals VALUES ('gl1717', 'mt565', 'ply539', 32, 'ply1864', 'left-footed shot');
INSERT INTO goals VALUES ('gl1718', 'mt565', '', 90, '', 'penalty');
INSERT INTO goals VALUES ('gl1719', 'mt566', 'ply1771', 2, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1720', 'mt566', '', 33, 'ply49', 'header');
INSERT INTO goals VALUES ('gl1721', 'mt566', 'ply948', 90, 'ply2505', 'header');
INSERT INTO goals VALUES ('gl1722', 'mt567', 'ply2506', 13, '', 'header');
INSERT INTO goals VALUES ('gl1723', 'mt567', '', 21, '', 'own goal');
INSERT INTO goals VALUES ('gl1724', 'mt567', 'ply191', 28, '', '');
INSERT INTO goals VALUES ('gl1725', 'mt567', 'ply2507', 86, 'ply2508', 'right-footed shot');
INSERT INTO goals VALUES ('gl1726', 'mt568', 'ply757', 32, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1727', 'mt568', 'ply2509', 34, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1728', 'mt569', 'ply2510', 31, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1729', 'mt569', 'ply2510', 69, 'ply1479', 'right-footed shot');
INSERT INTO goals VALUES ('gl1730', 'mt569', 'ply2511', 89, 'ply1479', 'right-footed shot');
INSERT INTO goals VALUES ('gl1731', 'mt570', 'ply2507', 11, 'ply191', 'left-footed shot');
INSERT INTO goals VALUES ('gl1732', 'mt570', 'ply2506', 43, '', 'header');
INSERT INTO goals VALUES ('gl1733', 'mt571', 'ply2512', 30, 'ply2449', 'right-footed shot');
INSERT INTO goals VALUES ('gl1734', 'mt571', 'ply191', 34, '', 'header');
INSERT INTO goals VALUES ('gl1735', 'mt571', 'ply191', 54, 'ply2507', 'left-footed shot');
INSERT INTO goals VALUES ('gl1736', 'mt572', 'ply753', 8, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1737', 'mt572', 'ply2510', 18, 'ply94', 'left-footed shot');
INSERT INTO goals VALUES ('gl1738', 'mt572', 'ply757', 38, 'ply137', 'right-footed shot');
INSERT INTO goals VALUES ('gl1739', 'mt572', 'ply2298', 41, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1740', 'mt572', 'ply410', 44, 'ply1466', 'left-footed shot');
INSERT INTO goals VALUES ('gl1741', 'mt573', 'ply2513', 45, 'ply2514', 'left-footed shot');
INSERT INTO goals VALUES ('gl1742', 'mt573', 'ply191', 54, '', 'penalty');
INSERT INTO goals VALUES ('gl1743', 'mt574', 'ply1466', 13, 'ply731', 'right-footed shot');
INSERT INTO goals VALUES ('gl1744', 'mt574', 'ply767', 48, 'ply137', 'right-footed shot');
INSERT INTO goals VALUES ('gl1745', 'mt574', 'ply731', 61, 'ply1466', 'header');
INSERT INTO goals VALUES ('gl1746', 'mt574', 'ply2515', 90, 'ply2510', 'right-footed shot');
INSERT INTO goals VALUES ('gl1747', 'mt575', 'ply94', 29, 'ply2516', 'right-footed shot');
INSERT INTO goals VALUES ('gl1748', 'mt575', 'ply2506', 41, 'ply191', 'left-footed shot');
INSERT INTO goals VALUES ('gl1749', 'mt576', 'ply2517', 6, '', 'own goal');
INSERT INTO goals VALUES ('gl1750', 'mt576', 'ply767', 9, 'ply759', 'right-footed shot');
INSERT INTO goals VALUES ('gl1751', 'mt576', 'ply767', 31, 'ply753', 'penalty');
INSERT INTO goals VALUES ('gl1752', 'mt576', 'ply2512', 43, 'ply2513', 'header');
INSERT INTO goals VALUES ('gl1753', 'mt576', 'ply580', 45, 'ply750', 'right-footed shot');
INSERT INTO goals VALUES ('gl1754', 'mt577', 'ply2510', 9, 'ply2172', 'right-footed shot');
INSERT INTO goals VALUES ('gl1755', 'mt577', 'ply2510', 33, 'ply731', 'right-footed shot');
INSERT INTO goals VALUES ('gl1756', 'mt577', 'ply2172', 45, 'ply2510', 'left-footed shot');
INSERT INTO goals VALUES ('gl1757', 'mt577', 'ply2518', 61, '', 'penalty');
INSERT INTO goals VALUES ('gl1758', 'mt577', 'ply844', 65, 'ply731', 'left-footed shot');
INSERT INTO goals VALUES ('gl1759', 'mt577', 'ply2512', 78, 'ply2449', 'header');
INSERT INTO goals VALUES ('gl1760', 'mt577', 'ply2211', 88, 'ply2516', 'header');
INSERT INTO goals VALUES ('gl1761', 'mt578', 'ply2508', 10, 'ply2519', 'penalty');
INSERT INTO goals VALUES ('gl1762', 'mt578', 'ply580', 87, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1763', 'mt578', 'ply2506', 90, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1764', 'mt579', 'ply1805', 4, 'ply1801', 'left-footed shot');
INSERT INTO goals VALUES ('gl1765', 'mt579', 'ply2520', 11, 'ply2521', 'left-footed shot');
INSERT INTO goals VALUES ('gl1766', 'mt579', 'ply1801', 15, 'ply1783', 'left-footed shot');
INSERT INTO goals VALUES ('gl1767', 'mt579', 'ply1801', 60, 'ply691', 'left-footed shot');
INSERT INTO goals VALUES ('gl1768', 'mt580', 'ply699', 12, 'ply2197', 'right-footed shot');
INSERT INTO goals VALUES ('gl1769', 'mt580', 'ply699', 51, '', 'penalty');
INSERT INTO goals VALUES ('gl1770', 'mt580', 'ply729', 61, '', 'bicycle kick');
INSERT INTO goals VALUES ('gl1771', 'mt581', 'ply2197', 18, 'ply818', 'left-footed shot');
INSERT INTO goals VALUES ('gl1772', 'mt581', 'ply699', 50, 'ply2197', 'left-footed shot');
INSERT INTO goals VALUES ('gl1773', 'mt581', 'ply290', 54, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1774', 'mt581', 'ply699', 79, 'ply828', 'right-footed shot');
INSERT INTO goals VALUES ('gl1775', 'mt582', 'ply1801', 39, 'ply2522', 'left-footed shot');
INSERT INTO goals VALUES ('gl1776', 'mt582', 'ply1801', 62, 'ply2213', 'right-footed shot');
INSERT INTO goals VALUES ('gl1777', 'mt582', 'ply1801', 67, 'ply1871', 'header');
INSERT INTO goals VALUES ('gl1778', 'mt583', 'ply686', 28, '', 'own goal');
INSERT INTO goals VALUES ('gl1779', 'mt583', 'ply699', 43, '', 'penalty');
INSERT INTO goals VALUES ('gl1780', 'mt584', '', 62, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1781', 'mt584', 'ply1374', 67, 'ply1888', 'header');
INSERT INTO goals VALUES ('gl1782', 'mt585', 'ply176', 27, 'ply1871', 'right-footed shot');
INSERT INTO goals VALUES ('gl1783', 'mt585', 'ply176', 56, 'ply1784', 'right-footed shot');
INSERT INTO goals VALUES ('gl1784', 'mt585', 'ply691', 65, 'ply1801', 'left-footed shot');
INSERT INTO goals VALUES ('gl1785', 'mt585', 'ply699', 80, 'ply2523', 'right-footed shot');
INSERT INTO goals VALUES ('gl1786', 'mt586', 'ply198', 29, 'ply2521', 'left-footed shot');
INSERT INTO goals VALUES ('gl1787', 'mt586', '', 51, 'ply2524', 'right-footed shot');
INSERT INTO goals VALUES ('gl1788', 'mt587', 'ply290', 31, 'ply2520', 'right-footed shot');
INSERT INTO goals VALUES ('gl1789', 'mt587', 'ply1801', 49, 'ply176', 'right-footed shot');
INSERT INTO goals VALUES ('gl1790', 'mt587', 'ply1805', 76, 'ply176', 'right-footed shot');
INSERT INTO goals VALUES ('gl1791', 'mt588', 'ply828', 23, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1792', 'mt588', 'ply831', 39, 'ply827', 'right-footed shot');
INSERT INTO goals VALUES ('gl1793', 'mt588', 'ply822', 41, 'ply686', 'right-footed shot');
INSERT INTO goals VALUES ('gl1794', 'mt588', 'ply831', 45, 'ply699', 'right-footed shot');
INSERT INTO goals VALUES ('gl1795', 'mt588', 'ply699', 49, 'ply1371', 'header');
INSERT INTO goals VALUES ('gl1796', 'mt588', 'ply699', 54, 'ply831', 'left-footed shot');
INSERT INTO goals VALUES ('gl1797', 'mt589', 'ply2523', 8, 'ply857', 'right-footed shot');
INSERT INTO goals VALUES ('gl1798', 'mt589', 'ply699', 12, 'ply286', 'right-footed shot');
INSERT INTO goals VALUES ('gl1799', 'mt589', 'ply290', 43, '', 'header');
INSERT INTO goals VALUES ('gl1800', 'mt589', 'ply290', 49, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1801', 'mt589', 'ply833', 81, 'ply12', 'right-footed shot');
INSERT INTO goals VALUES ('gl1802', 'mt590', '', 20, 'ply1120', 'left-footed shot');
INSERT INTO goals VALUES ('gl1803', 'mt590', 'ply1805', 37, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1804', 'mt590', 'ply189', 80, 'ply176', 'right-footed shot');
INSERT INTO goals VALUES ('gl1805', 'mt591', 'ply1869', 2, 'ply1076', 'right-footed shot');
INSERT INTO goals VALUES ('gl1806', 'mt591', 'ply1869', 9, '', 'penalty');
INSERT INTO goals VALUES ('gl1807', 'mt591', 'ply1801', 35, 'ply176', 'left-footed shot');
INSERT INTO goals VALUES ('gl1808', 'mt591', 'ply691', 71, '', 'free kick');
INSERT INTO goals VALUES ('gl1809', 'mt592', 'ply656', 14, 'ply653', 'header');
INSERT INTO goals VALUES ('gl1810', 'mt592', 'ply652', 18, 'ply293', 'left-footed shot');
INSERT INTO goals VALUES ('gl1811', 'mt592', '', 23, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1812', 'mt592', 'ply656', 53, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1813', 'mt593', 'ply142', 25, 'ply1069', 'right-footed shot');
INSERT INTO goals VALUES ('gl1814', 'mt593', 'ply590', 29, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1815', 'mt593', 'ply142', 53, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1816', 'mt593', 'ply589', 69, 'ply581', 'right-footed shot');
INSERT INTO goals VALUES ('gl1817', 'mt593', 'ply142', 85, 'ply2525', 'right-footed shot');
INSERT INTO goals VALUES ('gl1818', 'mt594', 'ply523', 33, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl1819', 'mt594', 'ply699', 45, '', 'penalty');
INSERT INTO goals VALUES ('gl1820', 'mt594', 'ply699', 83, 'ply834', '');
INSERT INTO goals VALUES ('gl1821', 'mt594', 'ply1371', 86, 'ply834', 'left-footed shot');
INSERT INTO goals VALUES ('gl1822', 'mt595', 'ply1900', 62, 'ply832', 'right-footed shot');
INSERT INTO goals VALUES ('gl1823', 'mt595', 'ply740', 75, 'ply2480', 'left-footed shot');
INSERT INTO goals VALUES ('gl1824', 'mt596', 'ply143', 43, 'ply816', 'right-footed shot');
INSERT INTO goals VALUES ('gl1825', 'mt596', 'ply140', 53, 'ply398', 'right-footed shot');
INSERT INTO goals VALUES ('gl1826', 'mt596', 'ply143', 66, 'ply135', 'right-footed shot');
INSERT INTO goals VALUES ('gl1827', 'mt596', 'ply398', 79, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1828', 'mt596', 'ply398', 88, 'ply143', 'left-footed shot');
INSERT INTO goals VALUES ('gl1829', 'mt598', 'ply1431', 41, 'ply497', 'left-footed shot');
INSERT INTO goals VALUES ('gl1830', 'mt598', 'ply2501', 52, 'ply1111', 'right-footed shot');
INSERT INTO goals VALUES ('gl1831', 'mt598', 'ply692', 71, '', 'free kick');
INSERT INTO goals VALUES ('gl1832', 'mt600', 'ply699', 51, 'ply833', 'header');
INSERT INTO goals VALUES ('gl1833', 'mt600', 'ply1840', 71, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1834', 'mt600', 'ply690', 80, 'ply699', 'right-footed shot');
INSERT INTO goals VALUES ('gl1835', 'mt601', 'ply1805', 39, 'ply1871', 'right-footed shot');
INSERT INTO goals VALUES ('gl1836', 'mt601', 'ply1869', 64, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1837', 'mt601', 'ply1110', 67, 'ply1869', 'left-footed shot');
INSERT INTO goals VALUES ('gl1838', 'mt602', 'ply1064', 8, 'ply652', 'left-footed shot');
INSERT INTO goals VALUES ('gl1839', 'mt602', 'ply2465', 17, 'ply2460', 'right-footed shot');
INSERT INTO goals VALUES ('gl1840', 'mt602', 'ply2285', 71, 'ply2465', 'right-footed shot');
INSERT INTO goals VALUES ('gl1841', 'mt603', 'ply2007', 74, 'ply733', 'right-footed shot');
INSERT INTO goals VALUES ('gl1842', 'mt603', 'ply2007', 78, 'ply496', 'header');
INSERT INTO goals VALUES ('gl1843', 'mt603', 'ply498', 84, 'ply704', 'left-footed shot');
INSERT INTO goals VALUES ('gl1844', 'mt604', 'ply497', 52, 'ply2526', 'right-footed shot');
INSERT INTO goals VALUES ('gl1845', 'mt605', 'ply583', 18, 'ply143', 'left-footed shot');
INSERT INTO goals VALUES ('gl1846', 'mt605', 'ply2527', 46, '', 'own goal');
INSERT INTO goals VALUES ('gl1847', 'mt605', 'ply2528', 59, 'ply2527', 'left-footed shot');
INSERT INTO goals VALUES ('gl1848', 'mt605', '', 84, 'ply816', '');
INSERT INTO goals VALUES ('gl1849', 'mt606', 'ply740', 3, 'ply1073', 'right-footed shot');
INSERT INTO goals VALUES ('gl1850', 'mt606', 'ply393', 20, 'ply740', 'right-footed shot');
INSERT INTO goals VALUES ('gl1851', 'mt606', 'ply740', 63, 'ply1073', 'left-footed shot');
INSERT INTO goals VALUES ('gl1852', 'mt607', 'ply733', 31, 'ply2488', 'left-footed shot');
INSERT INTO goals VALUES ('gl1853', 'mt607', 'ply845', 37, '', 'own goal');
INSERT INTO goals VALUES ('gl1854', 'mt607', 'ply583', 68, 'ply2188', 'header');
INSERT INTO goals VALUES ('gl1855', 'mt608', 'ply699', 3, 'ply857', 'right-footed shot');
INSERT INTO goals VALUES ('gl1856', 'mt608', 'ply699', 64, 'ply818', 'bicycle kick');
INSERT INTO goals VALUES ('gl1857', 'mt608', 'ply1371', 72, 'ply699', 'left-footed shot');
INSERT INTO goals VALUES ('gl1858', 'mt609', '', 38, '', 'own goal');
INSERT INTO goals VALUES ('gl1859', 'mt609', 'ply2200', 55, '', 'own goal');
INSERT INTO goals VALUES ('gl1860', 'mt609', 'ply384', 59, 'ply1073', 'right-footed shot');
INSERT INTO goals VALUES ('gl1861', 'mt609', 'ply497', 80, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1862', 'mt609', 'ply1073', 87, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1863', 'mt610', 'ply590', 12, 'ply589', 'left-footed shot');
INSERT INTO goals VALUES ('gl1864', 'mt610', 'ply582', 21, 'ply581', 'right-footed shot');
INSERT INTO goals VALUES ('gl1865', 'mt610', 'ply142', 31, 'ply590', 'header');
INSERT INTO goals VALUES ('gl1866', 'mt611', 'ply497', 6, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1867', 'mt611', '', 58, '', 'penalty');
INSERT INTO goals VALUES ('gl1868', 'mt611', 'ply2200', 82, 'ply1431', 'header');
INSERT INTO goals VALUES ('gl1869', 'mt612', 'ply1064', 2, 'ply293', 'right-footed shot');
INSERT INTO goals VALUES ('gl1870', 'mt612', 'ply590', 56, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1871', 'mt612', 'ply589', 77, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1872', 'mt614', '', 2, '', 'header');
INSERT INTO goals VALUES ('gl1873', 'mt614', '', 37, '', 'header');
INSERT INTO goals VALUES ('gl1874', 'mt614', 'ply1870', 61, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1875', 'mt614', 'ply699', 90, '', 'penalty');
INSERT INTO goals VALUES ('gl1876', 'mt615', 'ply590', 36, 'ply589', 'left-footed shot');
INSERT INTO goals VALUES ('gl1877', 'mt615', 'ply590', 45, 'ply589', 'left-footed shot');
INSERT INTO goals VALUES ('gl1878', 'mt615', 'ply142', 56, 'ply590', 'right-footed shot');
INSERT INTO goals VALUES ('gl1879', 'mt615', 'ply589', 61, 'ply590', 'right-footed shot');
INSERT INTO goals VALUES ('gl1880', 'mt615', 'ply589', 69, 'ply581', 'header');
INSERT INTO goals VALUES ('gl1881', 'mt615', 'ply497', 81, 'ply2165', 'right-footed shot');
INSERT INTO goals VALUES ('gl1882', 'mt615', '', 85, '', 'penalty');
INSERT INTO goals VALUES ('gl1883', 'mt616', 'ply135', 28, 'ply1390', 'right-footed shot');
INSERT INTO goals VALUES ('gl1884', 'mt616', 'ply1371', 44, 'ply818', 'left-footed shot');
INSERT INTO goals VALUES ('gl1885', 'mt616', 'ply834', 57, 'ply833', 'left-footed shot');
INSERT INTO goals VALUES ('gl1886', 'mt617', 'ply135', 3, 'ply1092', 'right-footed shot');
INSERT INTO goals VALUES ('gl1887', 'mt617', 'ply831', 11, 'ply1371', 'header');
INSERT INTO goals VALUES ('gl1888', 'mt617', 'ply831', 46, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1889', 'mt617', 'ply1390', 63, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1890', 'mt618', 'ply142', 9, 'ply589', 'left-footed shot');
INSERT INTO goals VALUES ('gl1891', 'mt618', 'ply581', 15, '', 'own goal');
INSERT INTO goals VALUES ('gl1892', 'mt618', 'ply1069', 25, '', 'header');
INSERT INTO goals VALUES ('gl1893', 'mt618', 'ply497', 52, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1894', 'mt618', 'ply2165', 86, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1895', 'mt618', 'ply2165', 90, '', 'penalty');
INSERT INTO goals VALUES ('gl1896', 'mt619', 'ply831', 51, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1897', 'mt619', 'ply142', 55, 'ply1046', 'right-footed shot');
INSERT INTO goals VALUES ('gl1898', 'mt619', 'ply2197', 64, 'ply1371', 'bicycle kick');
INSERT INTO goals VALUES ('gl1899', 'mt619', 'ply2197', 83, 'ply1371', 'left-footed shot');
INSERT INTO goals VALUES ('gl1900', 'mt620', 'ply2707', 45, 'ply2708', 'right-footed shot');
INSERT INTO goals VALUES ('gl1901', 'mt620', 'ply1105', 79, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1902', 'mt621', 'ply1840', 1, 'ply1120', 'header');
INSERT INTO goals VALUES ('gl1903', 'mt621', 'ply1088', 78, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1904', 'mt622', 'ply2709', 7, 'ply1088', 'header');
INSERT INTO goals VALUES ('gl1905', 'mt622', 'ply2709', 26, 'ply1088', 'right-footed shot');
INSERT INTO goals VALUES ('gl1906', 'mt623', 'ply2710', 16, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1907', 'mt623', 'ply1870', 41, 'ply735', 'left-footed shot');
INSERT INTO goals VALUES ('gl1908', 'mt623', 'ply1840', 55, 'ply527', 'header');
INSERT INTO goals VALUES ('gl1909', 'mt623', 'ply1840', 60, 'ply1802', 'right-footed shot');
INSERT INTO goals VALUES ('gl1910', 'mt624', 'ply1088', 13, 'ply582', 'right-footed shot');
INSERT INTO goals VALUES ('gl1911', 'mt624', 'ply2709', 42, 'ply1285', 'right-footed shot');
INSERT INTO goals VALUES ('gl1912', 'mt624', 'ply582', 47, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1913', 'mt624', 'ply1285', 56, 'ply2711', 'right-footed shot');
INSERT INTO goals VALUES ('gl1914', 'mt624', 'ply1285', 83, 'ply2712', 'right-footed shot');
INSERT INTO goals VALUES ('gl1915', 'mt624', 'ply1285', 87, 'ply2712', 'left-footed shot');
INSERT INTO goals VALUES ('gl1916', 'mt625', 'ply527', 40, 'ply1840', 'right-footed shot');
INSERT INTO goals VALUES ('gl1917', 'mt625', 'ply1802', 62, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1918', 'mt625', 'ply1840', 90, 'ply1840', 'penalty');
INSERT INTO goals VALUES ('gl1919', 'mt626', 'ply1870', 43, 'ply201', 'right-footed shot');
INSERT INTO goals VALUES ('gl1920', 'mt626', 'ply2461', 76, 'ply2296', 'left-footed shot');
INSERT INTO goals VALUES ('gl1921', 'mt626', 'ply201', 90, 'ply523', 'right-footed shot');
INSERT INTO goals VALUES ('gl1922', 'mt627', 'ply2707', 12, 'ply2713', 'left-footed shot');
INSERT INTO goals VALUES ('gl1923', 'mt627', 'ply2714', 15, 'ply2707', 'left-footed shot');
INSERT INTO goals VALUES ('gl1924', 'mt627', 'ply2548', 20, 'ply1285', 'left-footed shot');
INSERT INTO goals VALUES ('gl1925', 'mt627', 'ply26', 42, 'ply1875', 'header');
INSERT INTO goals VALUES ('gl1926', 'mt627', 'ply1285', 88, 'ply2541', 'left-footed shot');
INSERT INTO goals VALUES ('gl1927', 'mt628', 'ply1840', 18, 'ply1870', 'right-footed shot');
INSERT INTO goals VALUES ('gl1928', 'mt628', 'ply26', 45, 'ply1088', 'penalty');
INSERT INTO goals VALUES ('gl1929', 'mt628', 'ply735', 60, '', 'own goal');
INSERT INTO goals VALUES ('gl1930', 'mt628', 'ply2715', 77, '', 'own goal');
INSERT INTO goals VALUES ('gl1931', 'mt630', 'ply2712', 8, 'ply2716', 'left-footed shot');
INSERT INTO goals VALUES ('gl1932', 'mt630', 'ply2712', 16, 'ply2716', 'left-footed shot');
INSERT INTO goals VALUES ('gl1933', 'mt630', 'ply2712', 47, 'ply1088', 'right-footed shot');
INSERT INTO goals VALUES ('gl1934', 'mt630', 'ply2715', 53, 'ply1285', 'right-footed shot');
INSERT INTO goals VALUES ('gl1935', 'mt630', '', 78, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1936', 'mt631', 'ply2717', 15, 'ply2710', 'header');
INSERT INTO goals VALUES ('gl1937', 'mt631', 'ply1840', 61, '', 'bicycle kick');
INSERT INTO goals VALUES ('gl1938', 'mt631', 'ply2713', 69, 'ply2707', 'right-footed shot');
INSERT INTO goals VALUES ('gl1939', 'mt631', 'ply527', 90, 'ply2467', 'left-footed shot');
INSERT INTO goals VALUES ('gl1940', 'mt632', 'ply355', 26, 'ply364', 'right-footed shot');
INSERT INTO goals VALUES ('gl1941', 'mt632', 'ply530', 36, '', 'header');
INSERT INTO goals VALUES ('gl1942', 'mt632', 'ply530', 45, '', 'header');
INSERT INTO goals VALUES ('gl1943', 'mt633', 'ply1893', 12, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1944', 'mt633', 'ply2506', 90, '', 'free kick');
INSERT INTO goals VALUES ('gl1945', 'mt634', '', 29, '', 'free kick');
INSERT INTO goals VALUES ('gl1946', 'mt634', 'ply364', 65, 'ply2718', 'left-footed shot');
INSERT INTO goals VALUES ('gl1947', 'mt635', 'ply2169', 20, '', 'header');
INSERT INTO goals VALUES ('gl1948', 'mt635', 'ply1650', 51, '', 'free kick');
INSERT INTO goals VALUES ('gl1949', 'mt635', 'ply530', 54, 'ply1877', 'penalty');
INSERT INTO goals VALUES ('gl1950', 'mt635', 'ply1650', 58, 'ply530', 'left-footed shot');
INSERT INTO goals VALUES ('gl1951', 'mt635', 'ply2719', 71, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1952', 'mt635', 'ply2187', 86, 'ply908', 'left-footed shot');
INSERT INTO goals VALUES ('gl1953', 'mt636', 'ply2187', 9, '', 'penalty');
INSERT INTO goals VALUES ('gl1954', 'mt636', 'ply1893', 55, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1955', 'mt637', '', 12, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1956', 'mt637', 'ply1650', 30, 'ply1877', 'right-footed shot');
INSERT INTO goals VALUES ('gl1957', 'mt637', 'ply2510', 38, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1958', 'mt637', 'ply2720', 69, '', 'penalty');
INSERT INTO goals VALUES ('gl1959', 'mt637', 'ply2510', 86, '', 'header');
INSERT INTO goals VALUES ('gl1960', 'mt638', '', 79, '', 'penalty');
INSERT INTO goals VALUES ('gl1961', 'mt638', 'ply2169', 82, 'ply1650', 'left-footed shot');
INSERT INTO goals VALUES ('gl1962', 'mt639', 'ply2187', 45, '', 'penalty');
INSERT INTO goals VALUES ('gl1963', 'mt640', 'ply2719', 10, 'ply2187', 'left-footed shot');
INSERT INTO goals VALUES ('gl1964', 'mt640', 'ply1907', 25, 'ply2187', 'left-footed shot');
INSERT INTO goals VALUES ('gl1965', 'mt640', 'ply2721', 31, 'ply2187', '');
INSERT INTO goals VALUES ('gl1966', 'mt640', 'ply191', 58, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1967', 'mt640', '', 83, '', 'penalty');
INSERT INTO goals VALUES ('gl1968', 'mt640', 'ply2510', 89, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1969', 'mt642', 'ply367', 9, 'ply2520', 'right-footed shot');
INSERT INTO goals VALUES ('gl1970', 'mt642', 'ply2520', 30, '', 'penalty');
INSERT INTO goals VALUES ('gl1971', 'mt642', 'ply353', 32, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1972', 'mt642', 'ply2722', 45, 'ply2520', 'right-footed shot');
INSERT INTO goals VALUES ('gl1973', 'mt642', 'ply362', 60, 'ply353', 'right-footed shot');
INSERT INTO goals VALUES ('gl1974', 'mt642', 'ply1861', 77, 'ply2520', 'right-footed shot');
INSERT INTO goals VALUES ('gl1975', 'mt643', 'ply1877', 60, 'ply1650', 'right-footed shot');
INSERT INTO goals VALUES ('gl1976', 'mt643', 'ply1650', 79, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1977', 'mt643', 'ply2723', 87, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1978', 'mt644', 'ply740', 3, 'ply741', 'left-footed shot');
INSERT INTO goals VALUES ('gl1979', 'mt644', 'ply740', 27, 'ply741', 'left-footed shot');
INSERT INTO goals VALUES ('gl1980', 'mt644', 'ply741', 50, '', 'free kick');
INSERT INTO goals VALUES ('gl1981', 'mt644', 'ply2480', 59, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl1982', 'mt644', 'ply740', 60, 'ply1073', 'left-footed shot');
INSERT INTO goals VALUES ('gl1983', 'mt644', 'ply1073', 75, 'ply741', 'left-footed shot');
INSERT INTO goals VALUES ('gl1984', 'mt644', 'ply1073', 88, 'ply740', 'right-footed shot');
INSERT INTO goals VALUES ('gl1985', 'mt645', '', 9, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1986', 'mt645', '', 28, 'ply656', 'penalty');
INSERT INTO goals VALUES ('gl1987', 'mt645', '', 77, 'ply293', 'left-footed shot');
INSERT INTO goals VALUES ('gl1988', 'mt645', 'ply2671', 90, 'ply144', 'left-footed shot');
INSERT INTO goals VALUES ('gl1989', 'mt646', 'ply212', 34, 'ply210', 'right-footed shot');
INSERT INTO goals VALUES ('gl1990', 'mt646', '', 65, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl1991', 'mt646', 'ply384', 74, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1992', 'mt647', 'ply1707', 3, 'ply1168', 'header');
INSERT INTO goals VALUES ('gl1993', 'mt647', 'ply1067', 12, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl1994', 'mt647', 'ply293', 20, '', 'own goal');
INSERT INTO goals VALUES ('gl1995', 'mt647', 'ply293', 28, 'ply2193', 'right-footed shot');
INSERT INTO goals VALUES ('gl1996', 'mt647', 'ply1707', 47, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1997', 'mt647', 'ply2724', 55, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl1998', 'mt648', 'ply1148', 57, 'ply2725', 'right-footed shot');
INSERT INTO goals VALUES ('gl1999', 'mt648', 'ply2725', 77, 'ply1148', 'right-footed shot');
INSERT INTO goals VALUES ('gl2000', 'mt649', 'ply740', 17, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2001', 'mt649', 'ply740', 61, 'ply2480', 'left-footed shot');
INSERT INTO goals VALUES ('gl2002', 'mt649', 'ply740', 69, 'ply1073', 'left-footed shot');
INSERT INTO goals VALUES ('gl2003', 'mt649', 'ply741', 89, 'ply740', 'right-footed shot');
INSERT INTO goals VALUES ('gl2004', 'mt650', 'ply1148', 32, 'ply212', 'right-footed shot');
INSERT INTO goals VALUES ('gl2005', 'mt650', 'ply1707', 76, 'ply1707', 'penalty');
INSERT INTO goals VALUES ('gl2006', 'mt651', 'ply740', 21, 'ply741', 'left-footed shot');
INSERT INTO goals VALUES ('gl2007', 'mt651', 'ply656', 39, 'ply293', 'left-footed shot');
INSERT INTO goals VALUES ('gl2008', 'mt651', 'ply653', 51, '', 'free kick');
INSERT INTO goals VALUES ('gl2009', 'mt651', 'ply656', 74, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2010', 'mt652', '', 23, 'ply1148', 'right-footed shot');
INSERT INTO goals VALUES ('gl2011', 'mt652', 'ply2193', 45, 'ply653', 'left-footed shot');
INSERT INTO goals VALUES ('gl2012', 'mt653', 'ply740', 24, 'ply741', 'left-footed shot');
INSERT INTO goals VALUES ('gl2013', 'mt653', 'ply740', 55, 'ply1073', 'penalty');
INSERT INTO goals VALUES ('gl2014', 'mt654', 'ply740', 16, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2015', 'mt654', '', 50, 'ply2487', 'header');
INSERT INTO goals VALUES ('gl2016', 'mt654', '', 53, 'ply2726', 'right-footed shot');
INSERT INTO goals VALUES ('gl2017', 'mt654', '', 67, 'ply1098', 'right-footed shot');
INSERT INTO goals VALUES ('gl2018', 'mt655', 'ply2470', 4, 'ply2466', 'left-footed shot');
INSERT INTO goals VALUES ('gl2019', 'mt655', 'ply2671', 8, 'ply2724', 'left-footed shot');
INSERT INTO goals VALUES ('gl2020', 'mt656', 'ply398', 28, 'ply398', 'penalty');
INSERT INTO goals VALUES ('gl2021', 'mt656', 'ply143', 45, 'ply816', 'left-footed shot');
INSERT INTO goals VALUES ('gl2022', 'mt656', 'ply135', 53, 'ply1471', 'right-footed shot');
INSERT INTO goals VALUES ('gl2023', 'mt656', 'ply135', 60, 'ply724', 'header');
INSERT INTO goals VALUES ('gl2024', 'mt656', 'ply724', 90, 'ply2188', 'left-footed shot');
INSERT INTO goals VALUES ('gl2025', 'mt657', 'ply113', 43, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2026', 'mt658', 'ply107', 35, 'ply115', 'left-footed shot');
INSERT INTO goals VALUES ('gl2027', 'mt659', 'ply2616', 8, 'ply1050', 'right-footed shot');
INSERT INTO goals VALUES ('gl2028', 'mt659', '', 14, 'ply1492', 'right-footed shot');
INSERT INTO goals VALUES ('gl2029', 'mt659', 'ply2616', 37, 'ply1115', 'right-footed shot');
INSERT INTO goals VALUES ('gl2030', 'mt659', 'ply1492', 45, '', 'header');
INSERT INTO goals VALUES ('gl2031', 'mt660', 'ply143', 13, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2032', 'mt660', 'ply135', 21, 'ply816', 'header');
INSERT INTO goals VALUES ('gl2033', 'mt660', 'ply2727', 41, 'ply2166', 'right-footed shot');
INSERT INTO goals VALUES ('gl2034', 'mt660', 'ply398', 59, '', 'header');
INSERT INTO goals VALUES ('gl2035', 'mt660', '', 84, 'ply583', 'header');
INSERT INTO goals VALUES ('gl2036', 'mt661', 'ply107', 62, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2037', 'mt662', 'ply115', 28, 'ply107', 'left-footed shot');
INSERT INTO goals VALUES ('gl2038', 'mt662', 'ply1115', 30, 'ply2616', 'right-footed shot');
INSERT INTO goals VALUES ('gl2039', 'mt662', 'ply115', 90, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2040', 'mt663', 'ply93', 14, '', 'header');
INSERT INTO goals VALUES ('gl2041', 'mt663', 'ply398', 34, '', 'penalty');
INSERT INTO goals VALUES ('gl2042', 'mt663', 'ply398', 74, 'ply816', 'right-footed shot');
INSERT INTO goals VALUES ('gl2043', 'mt664', 'ply1471', 35, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2044', 'mt664', 'ply1115', 44, 'ply2616', 'right-footed shot');
INSERT INTO goals VALUES ('gl2045', 'mt664', 'ply2616', 50, 'ply2728', 'penalty');
INSERT INTO goals VALUES ('gl2046', 'mt664', 'ply724', 52, 'ply2188', 'left-footed shot');
INSERT INTO goals VALUES ('gl2047', 'mt664', 'ply2728', 67, '', 'free kick');
INSERT INTO goals VALUES ('gl2048', 'mt665', 'ply1903', 55, 'ply115', 'right-footed shot');
INSERT INTO goals VALUES ('gl2049', 'mt665', 'ply115', 66, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2050', 'mt666', 'ply398', 28, '', 'free kick');
INSERT INTO goals VALUES ('gl2051', 'mt668', 'ply2729', 9, 'ply489', 'right-footed shot');
INSERT INTO goals VALUES ('gl2052', 'mt668', 'ply489', 15, 'ply759', 'left-footed shot');
INSERT INTO goals VALUES ('gl2053', 'mt668', 'ply2462', 36, 'ply1253', 'left-footed shot');
INSERT INTO goals VALUES ('gl2054', 'mt668', 'ply2730', 38, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2055', 'mt669', 'ply652', 15, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2056', 'mt669', 'ply111', 31, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2057', 'mt669', 'ply2522', 45, 'ply867', 'header');
INSERT INTO goals VALUES ('gl2058', 'mt670', 'ply2731', 74, 'ply2729', 'header');
INSERT INTO goals VALUES ('gl2059', 'mt670', 'ply2518', 90, 'ply2732', 'right-footed shot');
INSERT INTO goals VALUES ('gl2060', 'mt671', 'ply1805', 71, 'ply867', 'right-footed shot');
INSERT INTO goals VALUES ('gl2061', 'mt673', '', 34, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2062', 'mt673', 'ply652', 87, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2063', 'mt674', 'ply2733', 13, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2064', 'mt674', 'ply2512', 29, 'ply647', 'right-footed shot');
INSERT INTO goals VALUES ('gl2065', 'mt674', 'ply2512', 41, 'ply2733', 'left-footed shot');
INSERT INTO goals VALUES ('gl2066', 'mt675', 'ply759', 65, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2067', 'mt676', 'ply1876', 16, 'ply759', 'right-footed shot');
INSERT INTO goals VALUES ('gl2068', 'mt676', 'ply2463', 76, '', 'penalty');
INSERT INTO goals VALUES ('gl2069', 'mt677', 'ply1960', 48, 'ply647', 'header');
INSERT INTO goals VALUES ('gl2070', 'mt677', 'ply1801', 52, 'ply176', 'penalty');
INSERT INTO goals VALUES ('gl2071', 'mt677', 'ply111', 53, 'ply1960', 'left-footed shot');
INSERT INTO goals VALUES ('gl2072', 'mt678', 'ply2734', 30, 'ply414', 'right-footed shot');
INSERT INTO goals VALUES ('gl2073', 'mt678', 'ply208', 48, 'ply489', 'right-footed shot');
INSERT INTO goals VALUES ('gl2074', 'mt678', '', 82, '', 'own goal');
INSERT INTO goals VALUES ('gl2075', 'mt679', 'ply2462', 33, 'ply2735', 'right-footed shot');
INSERT INTO goals VALUES ('gl2076', 'mt679', 'ply176', 38, 'ply691', 'right-footed shot');
INSERT INTO goals VALUES ('gl2077', 'mt679', 'ply1801', 45, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2078', 'mt679', 'ply2041', 77, '', 'own goal');
INSERT INTO goals VALUES ('gl2079', 'mt680', 'ply1888', 7, 'ply393', 'header');
INSERT INTO goals VALUES ('gl2080', 'mt680', 'ply1374', 15, 'ply198', 'header');
INSERT INTO goals VALUES ('gl2081', 'mt680', 'ply2736', 17, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2082', 'mt680', 'ply198', 51, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2083', 'mt680', '', 76, 'ply292', 'right-footed shot');
INSERT INTO goals VALUES ('gl2084', 'mt680', 'ply290', 87, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2085', 'mt681', 'ply2484', 48, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2086', 'mt681', 'ply699', 89, '', 'free kick');
INSERT INTO goals VALUES ('gl2087', 'mt681', 'ply118', 90, 'ply1390', 'header');
INSERT INTO goals VALUES ('gl2088', 'mt682', 'ply699', 17, 'ply2197', 'right-footed shot');
INSERT INTO goals VALUES ('gl2089', 'mt682', 'ply290', 43, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2090', 'mt682', 'ply686', 68, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2091', 'mt682', '', 87, 'ply292', 'left-footed shot');
INSERT INTO goals VALUES ('gl2092', 'mt683', 'ply2737', 28, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2093', 'mt683', 'ply2485', 37, 'ply2738', 'right-footed shot');
INSERT INTO goals VALUES ('gl2094', 'mt684', 'ply2197', 16, 'ply510', 'left-footed shot');
INSERT INTO goals VALUES ('gl2095', 'mt684', 'ply2739', 20, '', 'own goal');
INSERT INTO goals VALUES ('gl2096', 'mt684', '', 22, '', 'penalty');
INSERT INTO goals VALUES ('gl2097', 'mt684', 'ply834', 37, 'ply699', 'left-footed shot');
INSERT INTO goals VALUES ('gl2098', 'mt684', 'ply833', 68, 'ply118', 'right-footed shot');
INSERT INTO goals VALUES ('gl2099', 'mt684', 'ply118', 84, 'ply699', 'right-footed shot');
INSERT INTO goals VALUES ('gl2100', 'mt685', 'ply290', 9, 'ply1888', 'left-footed shot');
INSERT INTO goals VALUES ('gl2101', 'mt685', 'ply1144', 43, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2102', 'mt685', 'ply2484', 67, 'ply2740', 'ind. free kick');
INSERT INTO goals VALUES ('gl2103', 'mt686', 'ply2741', 12, 'ply2742', 'header');
INSERT INTO goals VALUES ('gl2104', 'mt687', 'ply2197', 1, 'ply699', 'left-footed shot');
INSERT INTO goals VALUES ('gl2105', 'mt687', 'ply831', 35, 'ply2197', 'right-footed shot');
INSERT INTO goals VALUES ('gl2106', 'mt687', 'ply2486', 40, 'ply2743', 'left-footed shot');
INSERT INTO goals VALUES ('gl2107', 'mt687', '', 58, 'ply2744', 'right-footed shot');
INSERT INTO goals VALUES ('gl2108', 'mt687', 'ply2744', 83, 'ply2745', 'right-footed shot');
INSERT INTO goals VALUES ('gl2109', 'mt687', 'ply286', 85, 'ply818', 'right-footed shot');
INSERT INTO goals VALUES ('gl2110', 'mt688', 'ply2745', 10, 'ply2486', 'right-footed shot');
INSERT INTO goals VALUES ('gl2111', 'mt688', 'ply2521', 17, 'ply393', 'header');
INSERT INTO goals VALUES ('gl2112', 'mt688', 'ply2521', 18, 'ply393', 'left-footed shot');
INSERT INTO goals VALUES ('gl2113', 'mt688', '', 20, '', '');
INSERT INTO goals VALUES ('gl2114', 'mt688', 'ply2745', 24, 'ply2746', 'right-footed shot');
INSERT INTO goals VALUES ('gl2115', 'mt688', 'ply393', 29, 'ply225', 'right-footed shot');
INSERT INTO goals VALUES ('gl2116', 'mt688', 'ply225', 32, 'ply2521', 'right-footed shot');
INSERT INTO goals VALUES ('gl2117', 'mt688', 'ply225', 52, 'ply393', 'right-footed shot');
INSERT INTO goals VALUES ('gl2118', 'mt688', 'ply2747', 57, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2119', 'mt688', 'ply202', 81, '', 'header');
INSERT INTO goals VALUES ('gl2120', 'mt688', 'ply2748', 83, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2121', 'mt688', 'ply2749', 90, '', 'own goal');
INSERT INTO goals VALUES ('gl2122', 'mt689', 'ply686', 29, 'ply699', 'left-footed shot');
INSERT INTO goals VALUES ('gl2123', 'mt689', 'ply2738', 80, '', 'penalty');
INSERT INTO goals VALUES ('gl2124', 'mt689', 'ply831', 87, 'ply729', 'header');
INSERT INTO goals VALUES ('gl2125', 'mt690', 'ply2743', 30, 'ply2745', 'right-footed shot');
INSERT INTO goals VALUES ('gl2126', 'mt691', 'ply831', 28, 'ply818', 'right-footed shot');
INSERT INTO goals VALUES ('gl2127', 'mt691', 'ply831', 53, 'ply1390', 'header');
INSERT INTO goals VALUES ('gl2128', 'mt691', 'ply290', 60, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2129', 'mt691', 'ply225', 88, 'ply290', 'left-footed shot');
INSERT INTO goals VALUES ('gl2130', 'mt692', 'ply2660', 5, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2131', 'mt692', 'ply664', 29, '', 'free kick');
INSERT INTO goals VALUES ('gl2132', 'mt692', 'ply664', 61, '', 'penalty');
INSERT INTO goals VALUES ('gl2133', 'mt693', 'ply422', 13, 'ply763', 'right-footed shot');
INSERT INTO goals VALUES ('gl2134', 'mt693', 'ply2584', 52, '', 'header');
INSERT INTO goals VALUES ('gl2135', 'mt694', 'ply2750', 53, '', 'own goal');
INSERT INTO goals VALUES ('gl2136', 'mt694', 'ply853', 64, 'ply2751', 'left-footed shot');
INSERT INTO goals VALUES ('gl2137', 'mt694', 'ply2752', 69, 'ply2753', 'left-footed shot');
INSERT INTO goals VALUES ('gl2138', 'mt694', 'ply2754', 90, 'ply2753', 'header');
INSERT INTO goals VALUES ('gl2139', 'mt695', 'ply2755', 25, 'ply664', 'header');
INSERT INTO goals VALUES ('gl2140', 'mt696', 'ply2756', 12, 'ply323', 'right-footed shot');
INSERT INTO goals VALUES ('gl2141', 'mt696', 'ply2511', 68, 'ply422', 'right-footed shot');
INSERT INTO goals VALUES ('gl2142', 'mt696', 'ply763', 90, 'ply864', 'penalty');
INSERT INTO goals VALUES ('gl2143', 'mt697', 'ply664', 40, 'ply2755', 'left-footed shot');
INSERT INTO goals VALUES ('gl2144', 'mt699', 'ply763', 37, 'ply844', 'header');
INSERT INTO goals VALUES ('gl2145', 'mt701', 'ply2757', 5, 'ply2758', 'left-footed shot');
INSERT INTO goals VALUES ('gl2146', 'mt701', 'ply664', 30, 'ply2660', 'penalty');
INSERT INTO goals VALUES ('gl2147', 'mt701', '', 52, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2148', 'mt702', 'ply307', 8, '', 'own goal');
INSERT INTO goals VALUES ('gl2149', 'mt702', 'ply2754', 15, 'ply2753', 'header');
INSERT INTO goals VALUES ('gl2150', 'mt703', 'ply763', 6, 'ply864', 'header');
INSERT INTO goals VALUES ('gl2151', 'mt703', 'ply864', 26, 'ply844', 'left-footed shot');
INSERT INTO goals VALUES ('gl2152', 'mt703', 'ply2172', 44, 'ply2515', 'back heel');
INSERT INTO goals VALUES ('gl2153', 'mt703', 'ply763', 64, 'ply763', 'penalty');
INSERT INTO goals VALUES ('gl2154', 'mt703', 'ply586', 77, 'ply763', 'right-footed shot');
INSERT INTO goals VALUES ('gl2155', 'mt705', 'ply1092', 13, 'ply2759', 'header');
INSERT INTO goals VALUES ('gl2156', 'mt705', 'ply2760', 49, 'ply1909', 'right-footed shot');
INSERT INTO goals VALUES ('gl2157', 'mt705', 'ply1909', 57, 'ply1092', 'left-footed shot');
INSERT INTO goals VALUES ('gl2158', 'mt706', 'ply1076', 24, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2159', 'mt706', 'ply1869', 31, 'ply1076', 'left-footed shot');
INSERT INTO goals VALUES ('gl2160', 'mt706', 'ply1110', 57, 'ply2468', 'left-footed shot');
INSERT INTO goals VALUES ('gl2161', 'mt706', 'ply2468', 85, '', 'free kick');
INSERT INTO goals VALUES ('gl2162', 'mt707', 'ply2007', 53, 'ply2761', 'header');
INSERT INTO goals VALUES ('gl2163', 'mt708', '', 37, 'ply2762', 'left-footed shot');
INSERT INTO goals VALUES ('gl2164', 'mt709', 'ply509', 76, 'ply2468', 'right-footed shot');
INSERT INTO goals VALUES ('gl2165', 'mt710', 'ply1869', 13, '', 'penalty');
INSERT INTO goals VALUES ('gl2166', 'mt710', 'ply1092', 84, 'ply187', 'header');
INSERT INTO goals VALUES ('gl2167', 'mt711', 'ply2761', 31, 'ply2492', 'left-footed shot');
INSERT INTO goals VALUES ('gl2168', 'mt711', 'ply2488', 66, 'ply2763', 'right-footed shot');
INSERT INTO goals VALUES ('gl2169', 'mt711', 'ply2764', 80, 'ply733', 'header');
INSERT INTO goals VALUES ('gl2170', 'mt711', 'ply2007', 87, 'ply2762', 'right-footed shot');
INSERT INTO goals VALUES ('gl2171', 'mt712', 'ply1708', 72, 'ply2759', 'left-footed shot');
INSERT INTO goals VALUES ('gl2172', 'mt713', '', 9, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2173', 'mt713', '', 45, 'ply507', 'penalty');
INSERT INTO goals VALUES ('gl2174', 'mt713', 'ply507', 84, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2175', 'mt713', '', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2176', 'mt714', 'ply1869', 52, 'ply2765', 'right-footed shot');
INSERT INTO goals VALUES ('gl2177', 'mt714', 'ply513', 73, 'ply1076', 'header');
INSERT INTO goals VALUES ('gl2178', 'mt716', '', 48, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2179', 'mt717', 'ply527', 18, '', 'free kick');
INSERT INTO goals VALUES ('gl2180', 'mt717', 'ply922', 40, 'ply735', 'right-footed shot');
INSERT INTO goals VALUES ('gl2181', 'mt717', 'ply527', 55, 'ply922', 'left-footed shot');
INSERT INTO goals VALUES ('gl2182', 'mt717', 'ply1840', 72, 'ply201', 'right-footed shot');
INSERT INTO goals VALUES ('gl2183', 'mt718', 'ply1884', 8, 'ply2169', 'right-footed shot');
INSERT INTO goals VALUES ('gl2184', 'mt718', 'ply831', 18, 'ply818', 'header');
INSERT INTO goals VALUES ('gl2185', 'mt718', 'ply827', 49, 'ply699', 'right-footed shot');
INSERT INTO goals VALUES ('gl2186', 'mt718', 'ply690', 54, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2187', 'mt719', '', 11, 'ply1471', 'left-footed shot');
INSERT INTO goals VALUES ('gl2188', 'mt719', 'ply1088', 30, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2189', 'mt719', 'ply398', 53, '', 'header');
INSERT INTO goals VALUES ('gl2190', 'mt719', 'ply583', 56, 'ply398', 'right-footed shot');
INSERT INTO goals VALUES ('gl2191', 'mt719', 'ply583', 63, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2192', 'mt719', 'ply143', 88, 'ply583', 'left-footed shot');
INSERT INTO goals VALUES ('gl2193', 'mt720', 'ply293', 26, 'ply144', 'right-footed shot');
INSERT INTO goals VALUES ('gl2194', 'mt720', 'ply2512', 32, 'ply577', 'header');
INSERT INTO goals VALUES ('gl2195', 'mt720', 'ply739', 40, 'ply577', 'right-footed shot');
INSERT INTO goals VALUES ('gl2196', 'mt720', '', 58, 'ply293', 'right-footed shot');
INSERT INTO goals VALUES ('gl2197', 'mt720', 'ply2512', 61, 'ply111', 'right-footed shot');
INSERT INTO goals VALUES ('gl2198', 'mt720', '', 71, 'ply2193', 'right-footed shot');
INSERT INTO goals VALUES ('gl2199', 'mt720', 'ply649', 77, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2200', 'mt720', 'ply144', 82, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2201', 'mt721', 'ply113', 17, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2202', 'mt721', 'ply115', 25, 'ply1903', 'left-footed shot');
INSERT INTO goals VALUES ('gl2203', 'mt721', 'ply1547', 48, 'ply751', 'right-footed shot');
INSERT INTO goals VALUES ('gl2204', 'mt721', 'ply1903', 59, 'ply1903', 'penalty');
INSERT INTO goals VALUES ('gl2205', 'mt721', 'ply103', 68, '', 'own goal');
INSERT INTO goals VALUES ('gl2206', 'mt721', '', 86, 'ply1378', 'header');
INSERT INTO goals VALUES ('gl2207', 'mt722', 'ply2766', 72, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2208', 'mt722', 'ply2468', 74, 'ply505', 'left-footed shot');
INSERT INTO goals VALUES ('gl2209', 'mt723', 'ply733', 25, 'ply2488', 'header');
INSERT INTO goals VALUES ('gl2210', 'mt723', 'ply496', 62, 'ply2767', 'right-footed shot');
INSERT INTO goals VALUES ('gl2211', 'mt723', 'ply2672', 73, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2212', 'mt724', 'ply1650', 24, 'ply2169', 'left-footed shot');
INSERT INTO goals VALUES ('gl2213', 'mt724', 'ply729', 51, 'ply827', 'header');
INSERT INTO goals VALUES ('gl2214', 'mt724', 'ply1650', 57, '', 'own goal');
INSERT INTO goals VALUES ('gl2215', 'mt724', 'ply118', 90, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2216', 'mt725', 'ply2709', 20, 'ply26', 'right-footed shot');
INSERT INTO goals VALUES ('gl2217', 'mt725', 'ply398', 55, 'ply398', 'penalty');
INSERT INTO goals VALUES ('gl2218', 'mt725', '', 68, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2219', 'mt725', 'ply1471', 78, 'ply2186', 'left-footed shot');
INSERT INTO goals VALUES ('gl2220', 'mt725', 'ply1086', 80, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2221', 'mt725', 'ply1086', 85, 'ply1471', 'right-footed shot');
INSERT INTO goals VALUES ('gl2222', 'mt726', 'ply290', 4, 'ply292', 'header');
INSERT INTO goals VALUES ('gl2223', 'mt726', 'ply292', 59, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2224', 'mt726', 'ply290', 61, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2225', 'mt726', 'ply290', 85, 'ply2768', 'right-footed shot');
INSERT INTO goals VALUES ('gl2226', 'mt727', 'ply1073', 3, '', 'header');
INSERT INTO goals VALUES ('gl2227', 'mt727', 'ply2467', 40, '', 'own goal');
INSERT INTO goals VALUES ('gl2228', 'mt727', 'ply740', 50, 'ply741', 'penalty');
INSERT INTO goals VALUES ('gl2229', 'mt727', 'ply1840', 62, 'ply2467', 'right-footed shot');
INSERT INTO goals VALUES ('gl2230', 'mt727', 'ply741', 88, '', 'free kick');
INSERT INTO goals VALUES ('gl2231', 'mt727', 'ply741', 90, 'ply1073', 'penalty');
INSERT INTO goals VALUES ('gl2232', 'mt727', 'ply392', 90, 'ply741', 'right-footed shot');
INSERT INTO goals VALUES ('gl2233', 'mt728', 'ply1110', 42, '', 'penalty');
INSERT INTO goals VALUES ('gl2234', 'mt729', '', 27, 'ply664', 'right-footed shot');
INSERT INTO goals VALUES ('gl2235', 'mt729', 'ply2660', 54, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2236', 'mt730', 'ply739', 8, 'ply652', 'right-footed shot');
INSERT INTO goals VALUES ('gl2237', 'mt730', 'ply577', 29, 'ply647', 'right-footed shot');
INSERT INTO goals VALUES ('gl2238', 'mt730', 'ply144', 71, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2239', 'mt730', 'ply18', 77, 'ply111', 'header');
INSERT INTO goals VALUES ('gl2240', 'mt732', 'ply1110', 7, 'ply509', 'left-footed shot');
INSERT INTO goals VALUES ('gl2241', 'mt732', 'ply1110', 22, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2242', 'mt732', 'ply2769', 55, 'ply1076', 'header');
INSERT INTO goals VALUES ('gl2243', 'mt733', 'ply739', 19, 'ply111', 'right-footed shot');
INSERT INTO goals VALUES ('gl2244', 'mt733', '', 35, '', 'own goal');
INSERT INTO goals VALUES ('gl2245', 'mt733', 'ply393', 57, 'ply2521', 'left-footed shot');
INSERT INTO goals VALUES ('gl2246', 'mt733', 'ply739', 79, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2247', 'mt733', 'ply2521', 84, '', 'left-footed shot');
INSERT INTO goals VALUES ('gl2248', 'mt734', 'ply115', 28, 'ply115', 'penalty');
INSERT INTO goals VALUES ('gl2249', 'mt735', 'ply1086', 25, 'ply583', 'header');
INSERT INTO goals VALUES ('gl2250', 'mt735', 'ply699', 47, 'ply818', 'right-footed shot');
INSERT INTO goals VALUES ('gl2251', 'mt735', 'ply699', 77, 'ply834', 'right-footed shot');
INSERT INTO goals VALUES ('gl2252', 'mt736', 'ply113', 26, 'ply2163', 'header');
INSERT INTO goals VALUES ('gl2253', 'mt736', 'ply2672', 61, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2254', 'mt737', 'ply398', 53, '', 'penalty');
INSERT INTO goals VALUES ('gl2255', 'mt737', 'ply699', 76, 'ply690', 'header');
INSERT INTO goals VALUES ('gl2256', 'mt737', 'ply729', 78, '', 'own goal');
INSERT INTO goals VALUES ('gl2257', 'mt737', 'ply699', 105, 'ply729', 'left-footed shot');
INSERT INTO goals VALUES ('gl2258', 'mt737', 'ply699', 110, 'ply1371', 'right-footed shot');
INSERT INTO goals VALUES ('gl2259', 'mt737', 'ply834', 112, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2260', 'mt739', 'ply739', 3, 'ply647', 'right-footed shot');
INSERT INTO goals VALUES ('gl2261', 'mt739', 'ply2512', 17, 'ply111', 'header');
INSERT INTO goals VALUES ('gl2262', 'mt739', 'ply225', 48, 'ply393', 'right-footed shot');
INSERT INTO goals VALUES ('gl2263', 'mt739', 'ply2733', 81, 'ply111', 'right-footed shot');
INSERT INTO goals VALUES ('gl2264', 'mt740', 'ply699', 10, 'ply690', 'header');
INSERT INTO goals VALUES ('gl2265', 'mt740', 'ply699', 73, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2266', 'mt740', 'ply699', 86, 'ply833', 'right-footed shot');
INSERT INTO goals VALUES ('gl2267', 'mt741', 'ply1869', 29, 'ply2468', 'right-footed shot');
INSERT INTO goals VALUES ('gl2268', 'mt741', 'ply1869', 59, 'ply2468', 'left-footed shot');
INSERT INTO goals VALUES ('gl2269', 'mt742', '', 33, 'ply2468', 'left-footed shot');
INSERT INTO goals VALUES ('gl2270', 'mt742', 'ply2468', 44, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2271', 'mt742', 'ply739', 69, 'ply2514', 'right-footed shot');
INSERT INTO goals VALUES ('gl2272', 'mt743', 'ply113', 12, 'ply109', 'header');
INSERT INTO goals VALUES ('gl2273', 'mt743', 'ply115', 16, '', 'penalty');
INSERT INTO goals VALUES ('gl2274', 'mt743', 'ply857', 42, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2275', 'mt744', 'ply699', 20, 'ply818', 'right-footed shot');
INSERT INTO goals VALUES ('gl2276', 'mt744', '', 27, 'ply1869', 'bicycle kick');
INSERT INTO goals VALUES ('gl2277', 'mt744', 'ply690', 61, '', 'right-footed shot');
INSERT INTO goals VALUES ('gl2278', 'mt744', 'ply699', 64, 'ply828', 'right-footed shot');
INSERT INTO goals VALUES ('gl2279', 'mt744', 'ply834', 90, 'ply1371', 'left-footed shot');

SELECT * FROM players;
SELECT * FROM player_stats;
SELECT * FROM teams;
SELECT * FROM managers;
SELECT * FROM stadiums;
SELECT * FROM tournaments;
SELECT * FROM matches;
SELECT * FROM match_report;
SELECT * FROM goals;

--Query 1
SELECT p.*
FROM players p
JOIN player_stats ps ON p.pid = ps.pid JOIN managers m ON m.team = ps.team_id
--change the input and enter the managers name
WHERE m.first_name = 'Pep' AND m.last_name = 'Guardiola'; 

--Query 2
SELECT m.*
FROM matches m
JOIN stadiums s ON m.stadium = s.sid
--name of the country
WHERE s.country = 'Spain';

--Query 3
SELECT t.*, wins.home_wins
FROM teams t
JOIN ( SELECT home_team, COUNT(*) as home_wins
    FROM matches m
    JOIN match_report mr ON m.match_id = mr.match_id
    WHERE mr.ht_score > mr.at_score GROUP BY home_team HAVING COUNT(*) > 3) 
	wins ON t.team_id = wins.home_team;

--Query 4
SELECT t.*, m.first_name AS manager_first_name, m.last_name AS manager_last_name
FROM teams t
JOIN managers m ON t.team_id = m.team WHERE t.country = 'England' AND m.nationality <> 'England';

--Query 5
SELECT m.*, s.capacity AS stadium_capacity
FROM matches m
JOIN stadiums s ON m.stadium = s.sid WHERE s.capacity > 60000;

--query 6
SELECT g.goal_id, g.pid, ps.height, g.duration, g.goal_desc
FROM goals g
JOIN players p ON g.pid = p.pid  JOIN player_stats ps ON g.pid = ps.pid  JOIN matches m ON g.match_id = m.match_id
WHERE g.assist LIKE '' AND YEAR(m.date_time) = '2020' AND ps.height > 180;


--Query 7
SELECT t.team_id, t.team_name, t.country, (COALESCE(SUM(CASE WHEN mr.ht_score > mr.at_score THEN 1 ELSE 0 END), 0) * 100.0 / COUNT(*)) AS win_percentage
FROM teams t
JOIN matches m ON t.team_id = m.home_team JOIN match_report mr ON m.match_id = mr.match_id
WHERE t.country = 'Russia' GROUP BY t.team_id, t.team_name, t.country HAVING (COALESCE(SUM(CASE WHEN mr.ht_score > mr.at_score THEN 1 ELSE 0 END), 0) * 100.0 / COUNT(*)) < 50;

--Query 8
SELECT s.sid, s.name, COUNT(*) AS total_matches,
       SUM(CASE WHEN mr.ht_score > mr.at_score THEN 1 ELSE 0 END) AS total_home_wins, (SUM(CASE WHEN mr.ht_score > mr.at_score THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS win_percentage
FROM stadiums s
JOIN matches m ON s.sid = m.stadium JOIN match_report mr ON m.match_id = mr.match_id GROUP BY s.sid, s.name
HAVING COUNT(*) > 6 AND (SUM(CASE WHEN mr.ht_score > mr.at_score THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) < 50;

--Query 9
SELECT season, left_foot_goals
FROM ( SELECT t.season, COUNT(*) AS left_foot_goals, ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_num
    FROM goals g
    JOIN player_stats ps ON g.pid = ps.pid JOIN matches m ON g.match_id = m.match_id JOIN tournaments t ON m.tour = t.tour_id
    WHERE ps.foot = 'L' GROUP BY t.season ) AS subquery
WHERE row_num = 1;

--Query 10
SELECT p.nationality, COUNT(DISTINCT p.pid) AS num_players
FROM players p
WHERE p.pid IN ( SELECT DISTINCT g.pid
    FROM goals g)
GROUP BY p.nationality ORDER BY num_players DESC, p.nationality
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;

--Query 11
SELECT s.sid, s.name,
    (SELECT COUNT(*) FROM goals g JOIN player_stats ps ON g.pid = ps.pid JOIN matches m ON g.match_id = m.match_id
     WHERE ps.foot = 'L' AND m.stadium = s.sid ) AS left_foot_shots,
    (SELECT COUNT(*) FROM goals g JOIN player_stats ps ON g.pid = ps.pid JOIN matches m ON g.match_id = m.match_id
     WHERE ps.foot = 'R' AND m.stadium = s.sid ) AS right_foot_shots
FROM stadiums s
WHERE ( SELECT COUNT(*) FROM goals g JOIN player_stats ps ON g.pid = ps.pid JOIN matches m ON g.match_id = m.match_id
    WHERE ps.foot = 'L' AND m.stadium = s.sid ) > ( SELECT COUNT(*) FROM goals g
JOIN player_stats ps ON g.pid = ps.pid JOIN matches m ON g.match_id = m.match_id
    WHERE ps.foot = 'R' AND m.stadium = s.sid
);


--Query 12
SELECT m.match_id, m.date_time, m.home_team, m.away_team, s.country, SUM(st.capacity) AS cumulative_capacity
FROM matches m
JOIN stadiums st ON m.stadium = st.sid JOIN (
    SELECT country
    FROM stadiums GROUP BY country HAVING SUM(capacity) = (
        SELECT MAX(total_capacity)
        FROM ( SELECT country, SUM(capacity) AS total_capacity
            FROM stadiums GROUP BY country
		) t ) ) s ON st.country = s.country
GROUP BY m.match_id, m.date_time, m.home_team, m.away_team, s.country ORDER BY m.date_time DESC;


--Query 13
SELECT TOP 1 CONCAT(p1.first_name, ' ', p1.last_name) AS player1, CONCAT(p2.first_name, ' ', p2.last_name) AS player2, COUNT(*) AS goals_assists
FROM goals g1
JOIN goals g2 ON g1.assist = g2.pid AND g1.pid <> g2.pid JOIN players p1 ON g1.pid = p1.pid JOIN players p2 ON g2.pid = p2.pid
GROUP BY p1.pid, p1.first_name, p1.last_name, p2.pid, p2.first_name, p2.last_name ORDER BY goals_assists DESC;


--Query 14 --------------------------------*
SELECT TOP 1 t.team_id, t.team_name, t.country, 
       ROUND(MAX(hg_percentage), 2) AS max_header_goal_percentage
FROM ( SELECT g.pid, t.team_id, 
           SUM(CASE WHEN ps.position = 'FW' AND (g.goal_desc = 'Header' OR g.goal_desc IS NULL) THEN 1.0 ELSE 0 END) / NULLIF(COUNT(g.goal_id),0) * 100.0 AS hg_percentage
    FROM goals g
    JOIN player_stats ps ON g.pid = ps.pid JOIN matches m ON g.match_id = m.match_id JOIN teams t ON ps.team_id = t.team_id
    WHERE YEAR(m.date_time) = 2020 GROUP BY g.pid, t.team_id ) AS subquery JOIN teams t ON subquery.team_id = t.team_id
GROUP BY t.team_id, t.team_name, t.country ORDER BY max_header_goal_percentage DESC;


--Query 15
SELECT CONCAT(m.first_name, ' ', m.last_name) AS full_name, COUNT(*) AS win_count
FROM managers m
JOIN teams t ON m.team = t.team_id JOIN matches ma ON t.team_id = ma.home_team OR t.team_id = ma.away_team JOIN match_report mr ON ma.match_id = mr.match_id JOIN tournaments tn ON ma.tour = tn.tour_id
WHERE tn.season BETWEEN '2016' AND '2022' AND (t.team_id = ma.home_team AND mr.ht_score > mr.at_score OR t.team_id = ma.away_team AND mr.at_score > mr.ht_score)
GROUP BY m.mid, m.first_name, m.last_name ORDER BY win_count DESC;


--Querry 16-----------------------------*
SELECT t.team_name, tn.season
FROM teams t
JOIN matches m ON t.team_id = m.home_team OR t.team_id = m.away_team JOIN match_report mr ON m.match_id = mr.match_id JOIN tournaments tn ON m.tour = tn.tour_id
WHERE tn.season BETWEEN '2016' AND '2022' AND
    (t.team_id = m.home_team AND mr.ht_score > mr.at_score OR t.team_id = m.away_team AND mr.at_score > mr.ht_score)
GROUP BY tn.season, t.team_id, t.team_name HAVING COUNT(*) = (
    SELECT COUNT(*)
    FROM matches m2
	JOIN tournaments tn2 ON m2.tour = tn2.tour_id WHERE tn2.season = tn.season )
ORDER BY tn.season ASC;





DROP TABLE goals;
DROP TABLE player_stats;
DROP TABLE players;
DROP TABLE match_report;
DROP TABLE matches;
DROP TABLE managers;
DROP TABLE tournaments;
DROP TABLE teams;
DROP TABLE stadiums;