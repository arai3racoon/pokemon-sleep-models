-- player_tool_bag.sql

CREATE TABLE player_tool_bag (
    player_id INT, -- プレーヤーID (複合キー)
    tool_id INT, -- 道具ID (複合キー)
    count INT NOT NULL DEFAULT 0 CHECK (count >= 0), -- 個数
    PRIMARY KEY (player_id, tool_id),
    FOREIGN KEY (player_id) REFERENCES players (player_id),
    FOREIGN KEY (tool_id) REFERENCES tools (tool_id)
);