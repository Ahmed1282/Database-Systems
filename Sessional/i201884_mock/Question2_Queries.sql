--1
SELECT Doctor.Name, COUNT(*) AS appointmentstoday FROM Doctor INNER JOIN Appointment ON 
Doctor.DocID = Appointment.DocID
WHERE Appointment.Date = '2023-04-05' GROUP BY Doctor.Name , Doctor.DocID HAVING COUNT(*) > 2;

--2
SELECT Name FROM Patient
WHERE PiD IN ( SELECT Appointment.PID FROM Appointment INNER JOIN Doctor ON Appointment.DocID = Doctor.DocID LEFT JOIN Assigned_To ON Appointment.DocID = Assigned_To.DocID AND Appointment.Clinic_name = Assigned_To.Clinic_name
    WHERE Assigned_To.DocID IS NULL
);

--3
SELECT TOP 3 Clinic.Clinic_name, num_appointments FROM Clinic 
INNER JOIN (SELECT Clinic_name, COUNT(*) AS num_appointments FROM Appointment GROUP BY Clinic_name ) AS apcount ON Clinic.Clinic_name = apcount.Clinic_name ORDER BY num_appointments DESC;


--4
SELECT Doctor.Name, Doctor.Phone_number FROM Doctor 
INNER JOIN Assigned_Days ON Doctor.DocID = Assigned_Days.DocID
INNER JOIN Appointment ON Doctor.DocID = Appointment.DocID AND Assigned_Days.Working_day = 'Monday';


