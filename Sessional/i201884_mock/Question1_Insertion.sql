CREATE DATABASE healthcare;

USE healthcare;


CREATE TABLE Patient (
  Pid INT NOT NULL,
  Name VARCHAR(20) NOT NULL,
  Address VARCHAR(50),
  Phone_number VARCHAR(20),
  PRIMARY KEY(Pid)
);

CREATE TABLE Doctor (
  DocID INT NOT NULL,
  Name VARCHAR(20) NOT NULL,
  Phone_number VARCHAR(20),
  Speciality VARCHAR(50) NOT NULL,
  PRIMARY KEY(DocID)
);

CREATE TABLE Clinic (
  Clinic_name VARCHAR(50) NOT NULL,
  Address VARCHAR(50),
  Opening TIME NOT NULL,
  Closing TIME NOT NULL,
  PRIMARY KEY(Clinic_name)
);

CREATE TABLE Clinic_Specialities (
  Clinic_name VARCHAR(50) NOT NULL,
  Speciality VARCHAR(50) NOT NULL,
  PRIMARY KEY(Clinic_name, Speciality),
  FOREIGN KEY(Clinic_name) REFERENCES Clinic(Clinic_name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Waiting_List (
  Id INT NOT NULL,
  Day DATE NOT NULL,
  PRIMARY KEY(Id)
);

CREATE TABLE Appointment (
  Appointment_id INT NOT NULL,
  PID INT NOT NULL,
  DocID INT NOT NULL,
  Clinic_name VARCHAR(50) NOT NULL,
  Time TIME NOT NULL,
  Date DATE NOT NULL,
  Waiting_list INT,
  Recurrence_type VARCHAR(20),
  Recurrence_Start_date DATE,
  Recurrence_End_date DATE,
  PRIMARY KEY(Appointment_id),
  FOREIGN KEY(DocID) REFERENCES Doctor(DocID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY(PID) REFERENCES Patient(Pid) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY(Waiting_list) REFERENCES Waiting_List(Id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY(Clinic_name) REFERENCES Clinic(Clinic_name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Assigned_To (
  DocID INT NOT NULL,
  Clinic_name VARCHAR(50) NOT NULL,
  Start_time TIME NOT NULL,
  End_time TIME NOT NULL,
  Recurrence_type VARCHAR(20),
  Recurrence_Start_date DATE,
  Recurrence_End_date DATE,
  PRIMARY KEY(DocID, Clinic_name),
  FOREIGN KEY(DocID) REFERENCES Doctor(DocID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY(Clinic_name) REFERENCES Clinic(Clinic_name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Assigned_Days (
  DocID INT NOT NULL,
  Clinic_name VARCHAR(50) NOT NULL,
  Working_day VARCHAR(20) NOT NULL,
  PRIMARY KEY(DocID, Clinic_name, Working_day),
  FOREIGN KEY(DocID) REFERENCES Doctor(DocID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY(Clinic_name) REFERENCES Clinic(Clinic_name) ON DELETE CASCADE ON UPDATE CASCADE
);



INSERT INTO Patient (Pid, Name, Address, Phone_number)
VALUES 
(1, 'Khan Ali', '999 Bahria Avn', '0334-5777712'),
(2, 'Amjad Sabri', '738 Oak Ave', '0312-5263636'),
(3, 'Baku Jamil', '789 Model Twn', '0300-9747412'),
(4, 'Sam Lauren', '321 Gulberg Ph', '0311-3456223'),
(5, 'Momina Babar', '654 Garden Avnue', '0335-5890789');


select * from Patient;

INSERT INTO Doctor (DocID, Name, Phone_number, Speciality)
VALUES 
(1, 'Dr.Ahmed Baig', '0334-5220789', 'Neurology'),
(2, 'Dr.Ali Khan', '0335-5778991', 'Dentist'),
(3, 'Dr.Osman Kamal', '0336-4456873', 'Pediatrics'),
(4, 'Dr.Ameera Haider', '0300-9876342', 'Dermatology'),
(5, 'Dr.Owais Idreas', '0322-7534123', 'Cardiology');

select * from Doctor;

INSERT INTO Clinic (Clinic_name, Address, Opening, Closing)
VALUES 
('D-12 Clinic', 'D-12 St 4', '09:00:00', '17:00:00'),
('U-10  Clinic', 'Umar Block', '08:00:00', '18:00:00'),
('E-11 Clinic', 'E11/4 Main Margala Road', '09:30:00', '17:30:00'),
('W-10 Clinic', 'Westridge St 24', '08:30:00', '18:30:00'),
('N-12 Clinic', 'N-12 Motoway', '07:30:00', '16:30:00');

select * from Clinic

INSERT INTO Clinic_Specialities (Clinic_name, Speciality)
VALUES 
('D-12 Clinic', 'Cardiology'),
('D-12 Clinic', 'Pediatrics'),
('U-10  Clinic', 'Dermatology'),
('E-11 Clinic', 'Dentist'),
('W-10 Clinic', 'Neurology'),
('N-12 Clinic', 'Cardiology'),
('N-12 Clinic', 'Pediatrics');

select * from Clinic_Specialities

INSERT INTO Waiting_List (Id, Day)
VALUES 
(1, '2021-01-05'),
(2, '2022-03-06'),
(3, '2023-02-07'),
(4, '2023-01-08'),
(5, '2023-03-09');

select *from Waiting_List;


INSERT INTO Appointment (Appointment_id, PID, DocID, Clinic_name, Time, Date, Waiting_list, Recurrence_type, Recurrence_Start_date, Recurrence_End_date)
VALUES 
(1, 1, 1, 'D-12 Clinic', '09:00:00', '2021-01-05', NULL, NULL, NULL, NULL),
(2, 2, 2, 'U-10  Clinic', '10:00:00', '2022-03-06', 1, 'Daily', '2022-03-06', '2023-04-10'),
(3, 3, 3, 'E-11 Clinic', '11:00:00', '2023-02-07', 2, NULL, NULL, NULL),
(4, 4, 4, 'W-10 Clinic', '12:00:00', '2023-01-08', 3, 'Weekly', '2023-01-08', '2023-05-06'),
(5, 5, 5, 'N-12 Clinic', '13:00:00', '2023-03-09', NULL, NULL, NULL, NULL),
(6, 1, 2, 'D-12 Clinic', '14:00:00', '2023-02-10', NULL, NULL, NULL, NULL),
(7, 2, 3, 'U-10  Clinic', '15:00:00', '2023-01-11', NULL, NULL, NULL, NULL),
(8, 3, 4, 'E-11 Clinic', '16:00:00', '2023-01-12', NULL, NULL, NULL, NULL),
(9, 4, 5, 'W-10 Clinic', '17:00:00', '2023-01-13', NULL, NULL, NULL, NULL),
(10, 5, 1, 'N-12 Clinic', '18:00:00', '2023-02-14', NULL, NULL, NULL, NULL);


select *  from Appointment

INSERT INTO Assigned_To (DocID, Clinic_name, Start_time, End_time, Recurrence_type, Recurrence_Start_date, Recurrence_End_date)
VALUES 
(1, 'D-12 Clinic', '08:00:00', '12:00:00', 'Weekly', '2023-04-05', '2023-05-03'),
(2, 'U-10  Clinic', '09:00:00', '13:00:00', NULL, NULL, NULL),
(3, 'E-11 Clinic', '10:00:00', '14:00:00', 'Daily', '2023-04-05', '2023-04-30'),
(4, 'W-10 Clinic', '11:00:00', '15:00:00', NULL, NULL, NULL),
(5, 'N-12 Clinic', '12:00:00', '16:00:00', 'Weekly', '2023-04-05', '2023-05-03');

select * from Assigned_To


INSERT INTO Assigned_Days (DocID, Clinic_name, Working_day)
VALUES 
(1, 'D-12 Clinic', 'Monday'),
(1, 'D-12 Clinic', 'Wednesday'),
(1, 'D-12 Clinic', 'Friday'),
(2, 'U-10  Clinic', 'Tuesday'),
(2, 'U-10  Clinic', 'Thursday'),
(3, 'E-11 Clinic', 'Monday'),
(3, 'E-11 Clinic', 'Tuesday'),
(3, 'E-11 Clinic', 'Wednesday'),
(3, 'E-11 Clinic', 'Thursday'),
(3, 'E-11 Clinic', 'Friday'),
(4, 'W-10 Clinic', 'Monday'),
(4, 'W-10 Clinic', 'Wednesday'),
(4, 'W-10 Clinic', 'Friday'),
(5, 'N-12 Clinic', 'Tuesday'),
(5, 'N-12 Clinic', 'Thursday');

select * from Assigned_Days

select * from Patient;
select * from Doctor;
select * from Clinic;
select * from Clinic_Specialities;
select * from Waiting_List;
select * from Appointment;
select * from Assigned_To;
select * from Assigned_Days;



