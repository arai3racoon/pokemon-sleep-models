-- player_ingredient_bag.sql

CREATE TABLE player_ingredient_bag (
    player_id INT, -- プレーヤーID (複合キー)
    ingredient_id INT, -- 食材ID (複合キー)
    count INT NOT NULL DEFAULT 0 CHECK (count >= 0), -- 現在の個数
    total_count INT NOT NULL DEFAULT 0 CHECK (total_count >= 0), -- トータル食材獲得数
    PRIMARY KEY (player_id, ingredient_id),
    FOREIGN KEY (player_id) REFERENCES players (player_id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients (ingredient_id)
);