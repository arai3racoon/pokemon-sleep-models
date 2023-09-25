-- personality.sql

/*パラメータは以下の5種類*/
-- おてつだいスピード
-- 食材おてつだい確率
-- EXP獲得量
-- メインスキル発生確率
-- げんき回復量


CREATE TABLE personalities (
    personality_id INT AUTO_INCREMENT PRIMARY KEY, -- 性格ID
    name VARCHAR(64) NOT NULL, -- 性格名
    increase_parameter_name INT, -- 上昇パラメータ名
    increase_parameter_effect_amount INT, -- 上昇パラメータ効果量
    decrease_parameter_name INT, -- 下降パラメータ名
    decrease_parameter_effect_amount INT -- 下降パラメータ効果量
);