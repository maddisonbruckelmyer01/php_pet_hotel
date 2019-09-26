CREATE TABLE "pets" (
	"id" SERIAL PRIMARY KEY,
	"owner_name" INT REFERENCES "owners",
	"pet_name" VARCHAR(200),
	"breed" VARCHAR(200),
	"color" VARCHAR (50),
	"checked-in" BOOLEAN
);

CREATE TABLE "owners" (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR(100)
);


INSERT INTO "pets"
	("pet_name", "breed", "color", "owner_name")
VALUES
	('Stuart', 'Hamster', 'White', '2');
--ADDS A PET INTO THE DATABASE--

INSERT INTO "owners"
	("name")
VALUES
	('Miles'),
	('Maddison'),
	('Dustin'),
	('Andy');
--ADDS AN OWNER INTO THE DATABASE-- 

SELECT *
FROM "pets"
	JOIN "owners" ON "pets".owner_name = "owners".id;
--GETS THE NUMBER OF PETS PER THE OWNER--

SELECT *
FROM "pets";
--GETS ALL THE PETS--

SELECT *
FROM "owners";
--GETS ALL THE OWNERS--