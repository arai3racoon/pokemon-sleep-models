-- recipe.sql

CREATE TABLE recipes (
    recipe_id INT AUTO_INCREMENT PRIMARY KEY, -- レシピID
    name VARCHAR(24) NOT NULL, -- 料理名
    ingredient1_id INT NOT NULL, -- 必要食材1ID
    ingredient1_count INT NOT NULL CHECK (ingredient1_count >= 0), -- 必要食材1数
    ingredient2_id INT, -- 必要食材2ID
    ingredient2_count INT CHECK (ingredient2_count >= 0), -- 必要食材2数
    ingredient3_id INT, -- 必要食材3ID
    ingredient3_count INT CHECK (ingredient3_count >= 0), -- 必要食材3数
    ingredient4_id INT, -- 必要食材4ID
    ingredient4_count INT CHECK (ingredient4_count >= 0), -- 必要食材4数
    base_energy INT NOT NULL DEFAULT 0 CHECK (base_energy >= 0), -- 基本獲得エネルギー
    description VARCHAR(255), -- 説明
    FOREIGN KEY (ingredient1_id) REFERENCES ingredients(ingredient_id),
    FOREIGN KEY (ingredient2_id) REFERENCES ingredients(ingredient_id),
    FOREIGN KEY (ingredient3_id) REFERENCES ingredients(ingredient_id),
    FOREIGN KEY (ingredient4_id) REFERENCES ingredients(ingredient_id)
);