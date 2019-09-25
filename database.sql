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
