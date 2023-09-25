-- evolution.sql
-- 進化条件
CREATE TABLE evolution_condition_types (
    condition_type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(64) NOT NULL --飴、アイテム、睡眠時間、現在時刻など
);

-- 進化
CREATE TABLE evolutions (
    evolution_id INT AUTO_INCREMENT PRIMARY KEY, -- 進化ID
    candy_id INT NOT NULL, --飴＝進化系譜ID
    prev_character_id INT NOT NULL, -- 前段階キャラクターID
    next_character_id INT NOT NULL, -- 次段階キャラクターID
    condition1_type_id INT NOT NULL, -- 進化条件1タイプ
    condition1_parameter VARCHAR(64) NOT NULL, -- 進化条件1パラメータ
    condition1_value INT NOT NULL, -- 進化条件1必要値
    condition2_type_id INT NULL, -- 進化条件2タイプ
    condition2_parameter VARCHAR(64) NULL, -- 進化条件2パラメータ
    condition2_value INT NULL, -- 進化条件2必要値
    condition3_type_id INT NULL, -- 進化条件3タイプ
    condition3_parameter VARCHAR(64) NULL, -- 進化条件3パラメータ
    condition3_value INT NULL, -- 進化条件3必要値
    FOREIGN KEY (candy_id) REFERENCES candies(candy_id),
    FOREIGN KEY (prev_character_id) REFERENCES characters(character_id),
    FOREIGN KEY (next_character_id) REFERENCES characters(character_id),
    FOREIGN KEY (condition1_type_id) REFERENCES evolution_condition_types(condition_type_id),
    FOREIGN KEY (condition2_type_id) REFERENCES evolution_condition_types(condition_type_id),
    FOREIGN KEY (condition3_type_id) REFERENCES evolution_condition_types(condition_type_id)
);