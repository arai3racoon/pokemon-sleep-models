-- evolution_lineage.sql

CREATE TABLE evolution_lineages (
    lineage_id INT AUTO_INCREMENT PRIMARY KEY, -- 進化系譜ID
    name VARCHAR(50) NOT NULL -- 進化系譜名
);