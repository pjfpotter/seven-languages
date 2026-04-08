DROP TABLE IF EXISTS characters;
CREATE TABLE characters (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(100),
    class       VARCHAR(50),
    level       INTEGER,
    health      NUMERIC,
    alive       BOOLEAN
);

INSERT INTO characters (name, class, level, health, alive)
VALUES ('Ursula', 'Cyberwitch', 4, 27.0, TRUE);

INSERT INTO characters (name, class, level, health, alive)
VALUES ('Skelly', 'River-rat', 1, 0, FALSE);

INSERT INTO characters (name, class, level, health, alive)
VALUES ('Marketta', 'Shiver-whisperer', 5, 33.0, TRUE);

INSERT INTO characters (name, class, level, health, alive)
VALUES ('Sadie', 'Neurocrone', 2, 17.0, TRUE);

INSERT INTO characters (name, class, level, health, alive)
VALUES ('Amanda Loveless', 'God-maker', 9, NULL, FALSE);

SELECT * FROM characters WHERE alive = TRUE;

DROP TABLE IF EXISTS tarot_cards;
CREATE TABLE tarot_cards (
    id              SERIAL PRIMARY KEY,
    card_number     INTEGER,
    card_name       VARCHAR(100),
    major_arcana    BOOLEAN,
    upright         VARCHAR(200),
    reversed        VARCHAR(200)
);

INSERT INTO tarot_cards (card_number, card_name, major_arcana, upright, reversed)
VALUES (1, 'The Magician', TRUE, 'Your gifts are real — let yourself use them for something, not just perform them.
', 'You''ve mistaken being seen as clever for actually doing something with it.');

INSERT INTO tarot_cards (card_number, card_name, major_arcana, upright, reversed)
VALUES (2, 'The Priestess', TRUE, 'The deep dive is where your power lives — trust what you''re building in there.', 'The research phase has become a hiding place.');

INSERT INTO tarot_cards (card_number, card_name, major_arcana, upright, reversed)
VALUES (3, 'The Empress', TRUE, 'You were built for this — stop apologising for your intensity and let it run.
', 'The party ended three days ago and you''re still there.');

SELECT * FROM tarot_cards WHERE major_arcana IS TRUE;

SELECT name,
        CASE WHEN alive = TRUE THEN 'I''m ok!'
            ELSE 'Bleurgh...'
        END AS status
FROM characters;

SELECT name,
        CASE WHEN level <= 3 THEN 'Novice'
             WHEN level BETWEEN 4 AND 7 THEN 'Adventurer'
             WHEN level >= 8 THEN 'Veteran'
    END AS  aura
FROM characters;

DROP TABLE IF EXISTS integers;
CREATE TABLE integers (
    my_number       INTEGER
);

INSERT INTO integers (my_number)
VALUES ('A cheeky string!');







