CREATE TABLE users (

id SERIAL PRIMARY KEY,
username VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
password_hash TEXT NOT NULL,
/*
This column stores the hashed password of the user. 
Instead of saving the user’s plain text password
*/
first_name VARCHAR(50),
last_name VARCHAR(50),
profile_picture_url TEXT,
bio TEXT,
role VARCHAR(20) DEFAULT 'user',
is_active BOOLEAN DEFAULT TRUE,
last_login TIMESTAMP,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
deleted_at TIMESTAMP

);

/* Songs table */
CREATE TABLE songs (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    artist VARCHAR(255) NOT NULL,
    album VARCHAR(255),
    release_year INT
);


CREATE TABLE reviews (
    id SERIAL PRIMARY KEY, -- unique for each review
    user_id INT REFERENCES users(id) ON DELETE CASCADE, -- user who wrote the review
    song_id INT REFERENCES songs(id) ON DELETE CASCADE, -- song being reviewed
    rating INT CHECK (rating BETWEEN 1 AND 5), -- rating of the song
    review_text TEXT, -- review of the song
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- when the review was created

);

CREATE TABLE user_top_songs (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    song_id INT REFERENCES songs(id) ON DELETE CASCADE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);