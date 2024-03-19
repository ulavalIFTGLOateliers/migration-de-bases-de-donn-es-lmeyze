ALTER TABLE singer RENAME TO musician, ADD COLUMN role varchar(50), ADD COLUMN bandName varchar(50);
ALTER TABLE musician CHANGE singerName musicianName varchar(50);

UPDATE musician
SET role =
    CASE
        WHEN musicianName = 'Alina' THEN 'vocals'
        WHEN musicianName = 'Mysterio' THEN 'guitar'
        WHEN musicianName = 'Rainbow' THEN 'percussion'
        WHEN musicianName = 'Luna' THEN 'piano'
    END,
    bandName =
    CASE
        WHEN musicianName = 'Alina' THEN 'Crazy Duo'
        WHEN musicianName = 'Mysterio' THEN 'Mysterio'
        WHEN musicianName = 'Rainbow' THEN 'Crazy Duo'
        WHEN musicianName = 'Luna' THEN 'Luna'
    END;

CREATE TABLE IF NOT EXISTS band (      bandName varchar(50),
                                        creation YEAR,
                                        genre varchar(50),
                                        PRIMARY KEY (bandName));
INSERT INTO band VALUES ('Crazy Duo', 2015, 'rock'), ('Luna', 2009, 'classical'), ('Mysterio', 2019, 'pop');
