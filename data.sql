CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    age INTEGER);
    
INSERT INTO persons (fullname, age) VALUES ("Alice Smith", "22");
INSERT INTO persons (fullname, age) VALUES ("Bob Johnson", "34");
INSERT INTO persons (fullname, age) VALUES ("Charlie Brown", "27");
INSERT INTO persons (fullname, age) VALUES ("David Lee", "19");
INSERT INTO persons (fullname, age) VALUES ("Emily Davis", "31");

CREATE TABLE hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (person_id, name) VALUES (1, "painting");
INSERT INTO hobbies (person_id, name) VALUES (1, "reading");
INSERT INTO hobbies (person_id, name) VALUES (2, "swimming");
INSERT INTO hobbies (person_id, name) VALUES (2, "baking");
INSERT INTO hobbies (person_id, name) VALUES (3, "photography");
INSERT INTO hobbies (person_id, name) VALUES (3, "hiking");
INSERT INTO hobbies (person_id, name) VALUES (3, "reading");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "cooking");
INSERT INTO hobbies (person_id, name) VALUES (4, "gaming");

CREATE TABLE friends (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person1_id INTEGER,
    person2_id INTEGER);

INSERT INTO friends (person1_id, person2_id)
    VALUES (1, 4);
INSERT INTO friends (person1_id, person2_id)
    VALUES (2, 3);
    

/* Use a JOIN to display a table showing people's names with their hobbies. */
SELECT persons.fullname, hobbies.name
FROM persons
JOIN hobbies
ON persons.id = hobbies.person_id;

/* Use another SELECT with a JOIN to show the names of each pair of friends, 
based on the data in the friends table. */
SELECT a.fullname, b.fullname
FROM friends
JOIN persons a
ON a.id = friends.person1_id
JOIN persons b
ON b.id = friends.person2_id;
