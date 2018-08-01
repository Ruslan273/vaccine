use vaccine;

CREATE TABLE doctor (
    DoctorID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    VaccinationRecordNo VARCHAR(45),
    VacinaterID INT,
    AddressID_FK INT NOT NULL,
    FOREIGN KEY (AddressID_FK)
        REFERENCES address (AddressID)
        ON UPDATE CASCADE ON DELETE RESTRICT
);
	