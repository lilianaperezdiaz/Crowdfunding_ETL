CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(255) NOT NULL,
	description VARCHAR(255) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT,
	outcome VARCHAR(255) NOT NULL,
	backers_count INT,
	country VARCHAR(2),
	currency VARCHAR(3),
	launched_date TIMESTAMP,
	end_date TIMESTAMP,
	category_id INT,
	subcategory_id INT,
	PRIMARY KEY (contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);


CREATE TABLE contacts(
	contact_id INT NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	PRIMARY KEY (contact_id),
	FOREIGN KEY (contact_id) REFERENCES campaign(contact_id)
);

CREATE TABLE category(
	category_id INT NOT NULL,
	category VARCHAR(255) NOT NULL,
	PRIMARY KEY (category_id)
);

CREATE TABLE subcategory(
	subcategory_id INT NOT NULL,
	subcategory VARCHAR(255) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");



SELECT * from subcategory;
SELECT * from category;
SELECT * from campaign;
SELECT * from contacts;
