INSERT INTO petEvent VALUES ('Fluffy','2020-10-15','vet','antibiotics');
INSERT INTO petPet VALUES ('Hammy', 'Diane','hamster', 'M', '2010-10-30', NULL);
INSERT INTO petEvent VALUES ('Hammy', '2020-10-15','vet','antibiotics');
INSERT INTO petEvent VALUES ('Claws','1997-08-03', 'birthday', 'broken rib');

UPDATE petEvent SET remark = '5 kittens, 3 females, 2 males' 
WHERE petname = 'Fluffy' AND eventdate = '1995-05-15';

UPDATE petPet SET death = '2020-09-01' WHERE petname = 'Puffball';

DELETE FROM petEvent WHERE petname = 'Buffy';
DELETE FROM petPet WHERE petname = 'Buffy';






