-- player_cooking_history.sql

CREATE TABLE player_cooking_history (
    player_id INT, -- プレーヤーID (複合キー)
    recipe_id INT, -- レシピID (複合キー)
    cooking_exp INT NOT NULL DEFAULT 0 CHECK (cooking_exp >= 0), -- 料理EXP
    total_cooking_count INT NOT NULL DEFAULT 0 CHECK (total_cooking_count >= 0), -- トータル料理数
    PRIMARY KEY (player_id, recipe_id),
    FOREIGN KEY (player_id) REFERENCES players (player_id),
    FOREIGN KEY (recipe_id) REFERENCES recipes (recipe_id)
);