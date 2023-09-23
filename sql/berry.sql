-- berry.sql

CREATE TABLE berries (
    berry_id INT AUTO_INCREMENT PRIMARY KEY, -- きのみID
    name VARCHAR(40) NOT NULL, -- きのみ名
    base_energy INT NOT NULL DEFAULT 0 CHECK (base_energy >= 0), -- 基本獲得エネルギー
    description VARCHAR(255) -- 説明
);