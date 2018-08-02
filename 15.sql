use vaccine;

CREATE TABLE vis (
    VisID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    PublishDate VARCHAR(45),
    VaccinationRecordNo VARCHAR(45),
    ChartNumber VARCHAR(45),
    DoctorID_FK INT NOT NULL,
    PatientID_FK INT NOT NULL,
    GuardianID_FK INT NOT NULL,
	FOREIGN KEY (DoctorID_FK)
        REFERENCES doctor (DoctorID)
        ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY (PatientID_FK)
        REFERENCES patient (PatientID)
        ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY ( GuardianID_FK)
        REFERENCES guardian (GuardianID)
        ON UPDATE CASCADE ON DELETE RESTRICT
);
	