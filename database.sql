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

SELECT "owners".name, "owners".id, COUNT("owner_name")
FROM "pets"
	JOIN "owners" ON "owners".id = "pets".owner_name
GROUP BY "owners".id;
--GETS THE COUNT OF PETS PER THE ID OF EACH USER--

SELECT "owners".name AS "owner_name", "pets".id, "pets".breed, "pets".checked_in, "pets".color, "pets".pet_name
FROM "owners"
	JOIN "pets" ON "owners".id = "pets".owner_name
GROUP BY "pets".id, "owners".name;
--GETS THE PET SAGA 