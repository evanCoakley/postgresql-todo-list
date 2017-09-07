CREATE TABLE todos (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    details TEXT,
    priority INTEGER NOT NULL DEFAULT 1,
    created_at TIMESTAMP NOT NULL,
    completed_at TIMESTAMP  NULL );

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Pay Bill','The credit card bill is due today', 5, '2017-09-06 15:00:22','2017-09-06 16:00:01');

INSERT INTO todos (title, details, priority, created_at) VALUES ('Eat food','Make sure to eat before you pass out from fatigue', 4, '2017-09-06 15:04:23');

INSERT INTO todos (title, details, priority, created_at) VALUES ('Coffee', 'Prepare coffee for the morning', 3, '2017-09-06 15:15:46');

INSERT INTO todos (title, details, priority, created_at) VALUES ('Wife', 'Kiss your wife and tell her how much she means to you', 2, '2017-09-06 15:20:06');

INSERT INTO todos (title, details, priority, created_at) VALUES ('Adjust', 'Think about the day, forgive yourself for your humanity and meditate on the idea that your life symbolizes an incandescent beacon of subjectivity in a netherworld of Cosmic Nothingness', 1, '2017-09-06 16:00:00');

SELECT * FROM todos WHERE completed_at IS null;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = '2017-09-07 5:30:00' WHERE id = 1;

DELETE FROM todos WHERE completed_at IS not null;








