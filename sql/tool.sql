-- tool.sql

CREATE TABLE tools (
    tool_id INT AUTO_INCREMENT PRIMARY KEY, -- 道具ID
    name VARCHAR(40) NOT NULL, -- 道具名
    description VARCHAR(255) -- 道具説明
);