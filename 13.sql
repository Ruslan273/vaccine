use vaccine;

CREATE TABLE patient (
    PatientID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    ParentSocial VARCHAR(45),
    AddressID_FK INT NOT NULL,
    FOREIGN KEY (AddressID_FK)
        REFERENCES address (AddressID)
        ON UPDATE CASCADE ON DELETE RESTRICT
);
	