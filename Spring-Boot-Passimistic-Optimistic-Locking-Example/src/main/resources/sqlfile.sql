
--movieName convert to movie_name in mysql
CREATE TABLE test_schema.seat (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    movie_name VARCHAR(255),
    booked BOOLEAN NOT NULL DEFAULT FALSE,
    version INT NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--movieName convert to movie_name in mysql
INSERT INTO test_schema.seat (movie_name, booked, version) VALUES
('Inception', false, 0),
('Titanic', false, 0),
('Avengers: Endgame', false, 0),
('Interstellar', false, 0),
('The Dark Knight', false, 0);