--Using name appuser because key word user is reserved in some databases
CREATE SEQUENCE seq_appuser;
CREATE TABLE appuser (
    id INT NOT NULL PRIMARY KEY DEFAULT nextval('seq_appuser'),
    email varchar(255) NOT NULL,
    password char(60) NOT NULL,
    old_id char(24) NOT NULL,
    CONSTRAINT proper_user_email CHECK (email ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$')
)    


