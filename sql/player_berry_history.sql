-- player_berry_history.sql

CREATE TABLE player_berry_history (
    player_id INT, -- プレーヤーID (複合キー)
    berry_id INT, -- きのみID (複合キー)
    total_count INT NOT NULL DEFAULT 0 CHECK (total_count >= 0), -- トータルきのみ獲得数
    PRIMARY KEY (player_id, berry_id),
    FOREIGN KEY (player_id) REFERENCES players (player_id),
    FOREIGN KEY (berry_id) REFERENCES berries (berry_id)
);