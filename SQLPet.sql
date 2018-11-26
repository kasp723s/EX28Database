DROP TABLE PET;
DROP TABLE PET_OWNER;

CREATE TABLE PET_OWNER (
	OwnerId			INT				NOT NULL, /*IDENTITY (1,1),*/
	OwnerLastName	NVarChar(25)	NOT NULL,
	OwnerFirstName	NVarChar(25)	NOT NULL,
	OwnerPhone		NVarChar(12)	NULL,
	OwnerEmail		NVarChar(100)	NOT NULL UNIQUE,
	CONSTRAINT		PET_OWNER_PK	PRIMARY KEY (OwnerId),
	);

CREATE TABLE PET (
	PetId			Int				NOT NULL, /*IDENTITY (1,1),*/
	PetName			NVarChar(25)	NOT NULL,
	PetType			NVarChar(25)	NOT NULL,
	PetBreed		NVarChar(25)	NOT NULL DEFAULT 'Unknown',
	PetDOB			DateTime2		NULL,
	PetWeight		FLOAT			NOT NULL,
	OwnerId			int				NOT NULL,
	CONSTRAINT		PET_PK			PRIMARY KEY (PetId),
	CONSTRAINT		PET_OWNER_FK	FOREIGN KEY (OwnerId)
						REFERENCES PET_OWNER (OwnerId)
						ON DELETE NO ACTION
	);