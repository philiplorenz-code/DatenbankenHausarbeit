CREATE TABLE "Anbieter" (
	"AnbieterID"	    INTEGER NOT NULL UNIQUE,
	"Name"	          VARCHAR(100),
	"Trustscore"	    INTEGER,
	"Website"	        VARCHAR(50),
	"Emailadresse"	  VARCHAR(50),
	PRIMARY KEY("AnbieterID" AUTOINCREMENT)
)

