use vaccine;

CREATE TABLE vaccine_reaction (
    VaccineReactionID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    IsLifeThreatening VARCHAR(45),
    HospitalizedNo VARCHAR(45)
);
	