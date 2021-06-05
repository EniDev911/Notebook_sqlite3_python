CREATE TABLE project(
    name TEXT PRIMARY KEY,
    description text,
    deadline date
);

CREATE TABLE task(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    priority INTEGER DEFAULT 1,
    detail TEXT,
    status TEXT,
    deadline date,
    completed_on date,
    project TEXT NOT NULL REFERENCES project(name)
);