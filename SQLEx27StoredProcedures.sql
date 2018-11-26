ALTER PROCEDURE spInsertPet
	(
	@PetId AS INT = 'Unknown'
	,@PetName AS NVARCHAR(25) = 'Unknown'
	,@PetType AS NVARCHAR(25) = 'Unknown'
	,@PetBreed AS NVARCHAR(25) = ' Unknown'
	,@PetDOB AS DATETIME2 = NULL
	,@PetWeight AS FLOAT = 'Unknown'
	,@OwnerId AS INT = 'Unknown'
	)
AS
BEGIN
INSERT INTO PET VALUES (@PetId, @PetName, @PetType, @PetBreed, @PetDOB, @PetWeight, @OwnerId);
END
GO

CREATE PROCEDURE spInsertOwner
	(
	@OwnerId AS INT = 'Unknown'
	,@OwnerLastName AS NVARCHAR(25) = 'Unknown'
	,@OwnerFirstName AS NVARCHAR(25) = 'Unknown'
	,@OwnerPhone AS NVARCHAR(25) = NULL
	,@OwnerEmail AS NVARCHAR(100) = ' Unknown'
	)
AS
BEGIN
INSERT INTO PET_OWNER VALUES (@OwnerId, @OwnerLastName, @OwnerFirstName, @OwnerPhone, @OwnerEmail);
END

GO

CREATE PROCEDURE spInsertBreed
	(
	@BreedName AS NVARCHAR(25) = 'Unknown'
	,@MinWeight AS FLOAT = NULL
	,@MaxWeight AS FLOAT = NULL
	,@AverageLifeExpectancy AS INT = NULL
	)
AS
BEGIN
INSERT INTO BREED VALUES (@BreedName, @MinWeight, @MaxWeight, @AverageLifeExpectancy);
END

GO

CREATE PROCEDURE spGetOwners
AS
BEGIN
SELECT 
	OwnerId
	,OwnerLastName
	,OwnerFirstName
	,OwnerPhone
	,OwnerEmail
FROM 
	PET_OWNER
END

EXECUTE spGetOwners

GO

CREATE PROCEDURE spGetPets
AS
BEGIN
SELECT 
	PetId
	,PetName
	,PetType
	,PetBreed
	,PetDOB
	,PetWeight
	,OwnerId
FROM 
	PET
END

EXECUTE spGetPets

GO

CREATE PROCEDURE spGetBreed
AS
BEGIN
SELECT 
	BreedName
	,MinWeight
	,MaxWeight
	,AverageLifeExpectancy
FROM 
	Breed
END

EXECUTE spGetBreed

GO

ALTER PROCEDURE spGetOwnersByLastName
	(
		@LastName AS NVARCHAR(25)
	)
AS
BEGIN
SELECT
	OwnerId
	,OwnerLastName
	,OwnerFirstName
	,OwnerPhone
	,OwnerEmail
FROM 
	PET_OWNER
WHERE
	OwnerLastName = @LastName
END

EXECUTE spGetOwnersByLastName 'Downs'

GO

ALTER PROCEDURE spGetOwnerByEmail
	(
		@FirstName AS NVARCHAR(25)
		,@Email AS NVARCHAR(100)
	)
AS
BEGIN
SELECT
	OwnerId
	,OwnerLastName
	,OwnerFirstName
	,OwnerPhone
	,OwnerEmail
FROM 
	PET_OWNER
WHERE
	OwnerFirstName = @FirstName AND
	OwnerEmail LIKE '%' + @Email + '%'
END

EXECUTE spGetOwnerByEmail @FirstName='Liz', @Email='somewhere'

GO

CREATE PROCEDURE spJoinTest
	(
	@OwnerID
	)
AS
BEGIN
SELECT
	PET_OWNER.OwnerId
	,PET_OWNER.OwnerLastName +
	PET_OWNER.OwnerFirstName
	,PET.PetName
	,PET.PetType
	,PET.PetBreed
	,BREED.AverageLifeExpectancy
FROM PET_OWNER
INNER JOIN PET_OWNER.OwnerId ON PET.OwnerId AND  



GO

CREATE PROCEDURE spEtEllerAndet
	(
		@OwnerId 
	)
AS
BEGIN
SELECT
	PO.OwnerId
	,PO.OwnerLastName +
	PO.OwnerFirstName
	,P.PetName
	,P.PetType
	,P.PetBreed
	,B.AverageLifeExpectancy
FROM 
	PET_OWNER AS PO, PET AS P, BREED AS B
WHERE
	PO.OwnerId = P.OwnerId  AND
	P.PetBreed = B.BreedName
END
