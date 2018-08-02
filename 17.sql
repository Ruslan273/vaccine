use vaccine;

CREATE TABLE vaccine_master (
    VaccineID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    PublishName VARCHAR(45),
    CostPerUnit VARCHAR(45),
    ExpDate VARCHAR(45),
    VisID_FK INT NOT NULL,
    VaccineIncident_FK INT NOT NULL,
    VaccineReactionID_FK INT NOT NULL,
	FOREIGN KEY (VisID_FK)
        REFERENCES doctor (DoctorID)
        ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY (VaccineIncident_FK)
        REFERENCES vaccine_incident (VaccineIncidentID)
        ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY (VaccineReactionID_FK)
        REFERENCES vaccine_reaction (VaccineReactionID)
        ON UPDATE CASCADE ON DELETE RESTRICT
);
	