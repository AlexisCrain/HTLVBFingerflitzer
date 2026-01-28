CREATE TABLE challenges (
    id BIGSERIAL primary key,
    challenge_date DATE NOT NULL,
    usedText TEXT NOT NULL,
);

CREATE TABLE completed_challenges
(
    challenge_id BIGINT NOT NULL,
    user_id VARCHAR NOT NULL, 
    wpm DOUBLE PRECISION NOT NULL,
    accuracy DOUBLE PRECISION NOT NULL,
    PRIMARY KEY (challenge_id, user_id),
    FOREIGN KEY (challenge_id) REFERENCES challenges (id)
);