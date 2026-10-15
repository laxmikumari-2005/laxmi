Use MyDatabase

/*Create new table called persons with columns:id,person_names,birth_date,and phone*/

Create TABLE persons(
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY(id)
)
SELECT * FROM persons

--ADD a new column called email to the persons table
ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL
SELECT * FROM persons

