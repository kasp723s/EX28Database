INSERT INTO PET_OWNER VALUES (1, 'Downs', 'Marsha', '555 537 8765', 'Marsha.Downs@somewhere.com');
INSERT INTO PET_OWNER VALUES (2, 'James', 'Richard', '555 537 6754', 'Richard.James@somewhere.com');
INSERT INTO PET_OWNER VALUES (3, 'Frier', 'Liz', '555 537 6543', 'Liz.Frier@somewhere.com');
INSERT INTO PET_OWNER (OwnerId, OwnerLastName, OwnerFirstName, OwnerEmail)
VALUES (4, 'Trent', 'Miles', 'Miles.Trent@somewhere.com');


INSERT INTO PET VALUES (1, 'King', 'Dog', 'Std. Poodle', '21.02.2011', 25.5, 1);
INSERT INTO PET VALUES (2, 'Teddy', 'Cat', 'Cashmere', '01.02.2012', 10.5, 2);
INSERT INTO PET VALUES (3, 'Fiddo', 'Dog', 'Std. Poodle', '17.07.2010', 28.5, 1);
INSERT INTO PET VALUES (4, 'Aj', 'Dog', 'Collie Mix', '05.05.2011', 20.0, 3);
INSERT INTO PET VALUES (5, 'Cedro', 'Cat', 'Unknown', '06.06.2009', 9.5, 2);
INSERT INTO PET (PetId, PetName, PetType, PetBreed, PetWeight, OwnerId) 
VALUES (6, 'Wooley', 'Cat', 'Unknown', 9.5, 2);
INSERT INTO PET VALUES (7, 'Buster', 'Dog', 'Border Collie', '11.12.2008', 25.0, 4);
