INSERT INTO PERSON (name, sex) VALUES
       ('Floyd', 'man'),
       (NULL, 'woman'),
       ('Dora', 'woman'),
       ('Maks', 'man'),
       ('Senya', 'man');


INSERT INTO COMPANY (description) VALUES
        ('Floyd'),
        ('She'),
        ('Friends'),
        ('Dora'),
        ('Men');


INSERT INTO PERSONINCOMPANY (person_id, company_id) VALUES
    ((SELECT id FROM PERSON WHERE name = 'Floyd'), (SELECT id FROM COMPANY WHERE description = 'Floyd')),
    (2, (SELECT id FROM COMPANY WHERE description = 'She')),
    ((SELECT id FROM PERSON WHERE name = 'Dora'), 3),
    ((SELECT id FROM PERSON WHERE name = 'Dora'), 4),
    ((SELECT id FROM PERSON WHERE name = 'Maks'), 3),
    ((SELECT id FROM PERSON WHERE name = 'Senya'), 3),
    ((SELECT id FROM PERSON WHERE name = 'Maks'), (SELECT id FROM COMPANY WHERE description = 'Men')),
    ((SELECT id FROM PERSON WHERE name = 'Senya'), (SELECT id FROM COMPANY WHERE description = 'Men'));


INSERT INTO ACTION (company_id, description, time) VALUES
        (1, 'выкрикивал успокаивающие слова', '2023-10-01 10:23:54'),
        (2, 'держаться не так отчаянно', '2023-10-01 10:25:43' ),
        (3, 'встретились', '2023-10-01 18:25:40'),
        (4, 'чихнула', '2023-10-01 18:27:26'),
        (5, 'пошли на пару ИСиБД', '2023-10-01 20:20:20');

INSERT INTO ACTION (company_id, description)  VALUES ( 5, 'сказать привет');

INSERT INTO REACTION (person_id, action_id, description, time) VALUES
       (1, 2, 'сделать вздох', '2023-10-01 10:26:03'),
       (2, 1, 'слышать', '2023-10-01 10:23:57'),
       (4, 4, 'сказать будь здоров', '2023-10-01 18:27:30'),
       (3, 5, 'удивилась', '2023-10-01 20:20:23');


INSERT INTO REACTION (person_id, action_id, description) VALUES (3, 6, 'поприветствовать в ответ');


INSERT INTO SCENE (place) VALUES
      ('рев раскаленного газа'),
      ('университет'),
      ('кафе');

INSERT INTO ACTIONINSCENE (action_id, scene_id)  VALUES
        ((SELECT id FROM ACTION WHERE description = 'выкрикивал успокаивающие слова'), 1),
        (2, 1),
        (3, 2),
        (4, 2),
        (5, 2),
        (6, 3);
