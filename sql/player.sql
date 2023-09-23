-- player.sql

CREATE TABLE players (
    player_id INT AUTO_INCREMENT PRIMARY KEY, --プレーヤーID
    name VARCHAR(24) NOT NULL DEFAULT 'プレーヤー', --プレーヤー名
    research_exp INT NOT NULL DEFAULT 0 CHECK (research_exp >= 0), --リサーチEXP
    ingredient_bag_capacity INT NOT NULL DEFAULT 80 CHECK (ingredient_bag_capacity >= 0), --食材バッグ容量
    tool_bag_capacity INT NOT NULL DEFAULT 80 CHECK (tool_bag_capacity >= 0), --道具バッグ容量
    pot_capacity INT NOT NULL DEFAULT 10 CHECK (pot_capacity >= 0), -- 鍋の容量
    dream_fragment_count INT NOT NULL DEFAULT 0 CHECK (dream_fragment_count >= 0), --ゆめのかけら数
    diamond_count INT NOT NULL DEFAULT 0 CHECK (diamond_count >= 0) --ダイヤ数
);