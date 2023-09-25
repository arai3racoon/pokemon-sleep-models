-- main_skill.sql

CREATE TABLE main_skills (
    main_skill_id INT AUTO_INCREMENT PRIMARY KEY, -- メインスキルID
    name VARCHAR(64) NOT NULL, -- メインスキル名
    description VARCHAR(255) -- 説明
);