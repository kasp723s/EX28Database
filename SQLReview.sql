SELECT PetBreed
FROM PET;

SELECT COUNT(*) AS NumberOfPets
FROM PET;

SELECT OwnerLastName, OwnerFirstName, OwnerPhone, OwnerEmail
FROM PET_OWNER
WHERE OwnerPhone IS NULL;

SELECT PetBreed, PetType, PetDOB
FROM PET
WHERE PetType = 'Dog';

SELECT PetId,PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerId
FROM PET

SELECT OwnerLastName, OwnerFirstName, OwnerEmail
FROM PET_OWNER
WHERE OwnerEmail LIKE '%somewhere.com';

SELECT PetBreed, PetType, PetDOB
FROM PET
WHERE PetType = 'Dog' AND PetBreed = 'Std. Poodle';

SELECT	PetName, PetBreed, PetType
FROM PET
WHERE PetType NOT IN ('Dog', 'Cat', 'Fish');

SELECT DISTINCT PetBreed
FROM PET;

SELECT PetName, PetBreed
FROM PET
ORDER BY PetName;

SELECT COUNT(DISTINCT PetBreed) AS NumberOfBreeds
FROM PET;

SELECT	MIN(PetWeight) AS MinimumPetWeight,
		MAX(PetWeight) AS MaxiumumPetWeight,
		AVG(PetWeight) AS AveragePetWeight
FROM PET

SELECT PetBreed,	
		AVG(PetWeight) as AveragePetWeight
FROM PET
GROUP BY PetBreed;

SELECT PetBreed, COUNT(*) AS NumberOfBreeds,
		AVG(PetWeight) as AveragePetWeight
FROM PET
GROUP BY PetBreed
HAVING COUNT(*) > 1; 

SELECT PetBreed, COUNT(*) AS NumberOfBreeds,
		AVG(PetWeight) as AveragePetWeight
FROM PET
WHERE PetBreed NOT IN ('Unknown')
GROUP BY PetBreed
HAVING COUNT(*) > 1; 

SELECT OwnerLastName, OwnerFirstName, OwnerEmail
FROM PET_OWNER
WHERE OwnerId IN 
	(SELECT DISTINCT OwnerId
	 FROM PET
	 WHERE PetType = 'Cat');

SELECT OwnerLastName, OwnerFirstName, OwnerEmail
FROM PET_OWNER
WHERE OwnerId IN 
	(SELECT DISTINCT OwnerId
	 FROM PET
	 WHERE PetName = 'Teddy');