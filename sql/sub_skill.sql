-- sub_skill.sql

/*パラメータは以下*/
-- おてつだいスピードS,M
-- 食材確率アップS,M
-- 最大所持数アップS,M,L
-- スキル確率アップS,M
-- スキルレベルアップS,M
-- きのみの数S
-- 睡眠EXPボーナス
-- おてつだいボーナス
-- リサーチEXPボーナス
-- ゆめのかけらボーナス
-- げんき回復ボーナス

CREATE TABLE sub_skills (
    sub_skill_id INT AUTO_INCREMENT PRIMARY KEY, -- サブスキルID
    name VARCHAR(64) NOT NULL, -- サブスキル名
    rank INT NOT NULL CHECK (rank > 0), -- スキルランク
    parameter_name VARCHAR(64) NOT NULL, -- 対象パラメータ名
    parameter_effect_amount INT NOT NULL, -- 対象パラメータ効果量
    parameter_effect_target ENUM('self', 'party', 'player') -- 対象パラメータ効果対象
);