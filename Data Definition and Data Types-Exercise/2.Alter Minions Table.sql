USE minions;
ALTER TABLE minions.towns
    CHANGE COLUMN town_id id INT AUTO_INCREMENT NOT NULL;

ALTER TABLE minions
ADD COLUMN town_id INT,
ADD CONSTRAINT fk_minions_towns
FOREIGN KEY (town_id)
REFERENCES towns(id)