CREATE TYPE sex AS ENUM('man', 'woman');

CREATE TABLE PERSON (
        id serial PRIMARY KEY,
        name varchar(25) ,
        sex sex NOT NULL,
        CHECK (name SIMILAR TO '[A-Za-z]+')
);

CREATE TABLE COMPANY (
    id serial PRIMARY KEY,
    description varchar(255)
);

CREATE TABLE PERSONINCOMPANY (
    id serial PRIMARY KEY,
    person_id integer REFERENCES PERSON (id) ON DELETE CASCADE NOT NULL,
    company_id integer REFERENCES COMPANY (id) ON DELETE CASCADE NOT NULL
);

CREATE TABLE ACTION (
        id serial PRIMARY KEY,
        company_id integer REFERENCES COMPANY (id) ON DELETE CASCADE NOT NULL,
        description varchar(255) NOT NULL,
        time timestamp(0) DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE REACTION (
        id serial PRIMARY KEY,
        person_id integer REFERENCES PERSON (id) ON DELETE CASCADE NOT NULL,
        action_id integer REFERENCES ACTION (id) ON DELETE CASCADE NOT NULL,
        description varchar(255) NOT NULL,
        time timestamp(0) DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE SCENE (
       id serial PRIMARY KEY,
       place varchar(255) NOT NULL
);

CREATE TABLE ACTIONINSCENE (
    id serial PRIMARY KEY,
    action_id integer REFERENCES ACTION (id) ON DELETE CASCADE NOT NULL,
    scene_id integer REFERENCES SCENE (id) ON DELETE CASCADE NOT NULL
);
