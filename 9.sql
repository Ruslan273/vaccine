use vaccine;

CREATE TABLE vaccine_incident (
    VaccineIncidentID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ClinicName VARCHAR(45),
    ContactName VARCHAR(45),
    Code VARCHAR(45),
    AddressIDVcIncident_FK INT NOT NULL,
    FOREIGN KEY (AddressIDVcIncident_FK)
        REFERENCES address (AddressID)
        ON UPDATE CASCADE ON DELETE RESTRICT
);
	