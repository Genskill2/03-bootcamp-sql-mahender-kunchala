  
CREATE TABLE publisher(
        id INTEGER PRIMARY KEY,
        name TEXT NOT NULL,
        country TEXT NOT NULL
        );

CREATE TABLE books(
        id INTEGER PRIMARY KEY,
        title TEXT NOT NULL,
        publisher INTEGER references publisher(id)
        );
        

CREATE TABLE subjects(
        id INTEGER PRIMARY KEY,
        name TEXT NOT NULL
        );
        
        
CREATE TABLE books_subjects(
        book INTEGER references books(id),
        subject INTEGER references subjects(id)
        );
        
