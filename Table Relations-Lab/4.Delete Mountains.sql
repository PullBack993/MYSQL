CREATE TABLE mountains(
    id INT AUTO_INCREMENT PRIMARY KEY ,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE peaks(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL ,
    mountain_id INT,
    CONSTRAINT  fk_peaks_mountains
                  FOREIGN KEY (mountain_id)
                  REFERENCES mountains(id)
                  ON DELETE CASCADE
);