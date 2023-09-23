-- ingredient.sql

CREATE TABLE ingredients (
    ingredient_id INT AUTO_INCREMENT PRIMARY KEY, -- 食材ID
    name VARCHAR(40) NOT NULL, -- 食材名
    base_energy INT NOT NULL DEFAULT 0 CHECK (base_energy >= 0), -- 基本獲得エネルギー
    description VARCHAR(255) -- 説明
);