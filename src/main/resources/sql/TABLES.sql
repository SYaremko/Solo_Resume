CREATE TABLE profile (
   id  BIGINT NOT NULL,
   uid  VARCHAR(100) NOT NULL,
   first_name  VARCHAR(45) NOT NULL,
   last_name  VARCHAR(45) NOT NULL,
   birth_day  DATE NULL,
   phone  VARCHAR(20) NULL,
   email  VARCHAR(100) NULL,
   country  VARCHAR(60) NULL,
   city  VARCHAR(80) NULL,
   objective  TEXT NULL,
   summary  TEXT NULL,
   large_photo  VARCHAR(255) NULL,
   small_photo  VARCHAR(255) NULL,
   info  TEXT NULL,
   password  VARCHAR(255) NOT NULL,
   completed  TINYINT NOT NULL,
   created  TIMESTAMP(0) NOT NULL DEFAULT now(),
   skype  VARCHAR(255) NULL,
   facebook  VARCHAR(255) NULL,
   linkedin  VARCHAR(255) NULL,
   github  VARCHAR(255) NULL,
   stackoverflow  VARCHAR(255) NULL,
  PRIMARY KEY ( id ),
  UNIQUE INDEX  phone_UNIQUE  ( phone  ASC),
  UNIQUE INDEX  email_UNIQUE  ( email  ASC));

CREATE TABLE certificate   (
    id   BIGINT NOT NULL,
    id_profile   BIGINT NOT NULL,
    name   VARCHAR(45) NOT NULL,
    large_url   VARCHAR(255) NOT NULL,
    small_url   VARCHAR(255) NOT NULL,
  PRIMARY KEY (  id  ),
  INDEX   id_profile_idx   (  id_profile   ASC),
  CONSTRAINT   FK_id_profile_certificate
    FOREIGN KEY (  id_profile  )
    REFERENCES profile   (  id  )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE course   (
    id   BIGINT NOT NULL,
    id_profile   BIGINT NOT NULL,
    name   VARCHAR(60) NOT NULL,
    school   VARCHAR(60) NOT NULL,
    finish_date   DATE NULL,
  PRIMARY KEY (  id  ),
  INDEX   id_profile_idx   (  id_profile   ASC),
    CONSTRAINT FK_id_profile_course
    FOREIGN KEY (  id_profile  )
    REFERENCES profile   (  id  )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

    CREATE TABLE education   (
    id   BIGINT NOT NULL,
    id_profile   BIGINT NOT NULL,
    summary   VARCHAR(100) NOT NULL,
    begin_year   INT NOT NULL,
    finish_year   INT NULL,
    university   TEXT NOT NULL,
    faculty   VARCHAR(255) NOT NULL,
  PRIMARY KEY (  id  ),
  INDEX   FK_id_profile_education_idx   (  id_profile   ASC),
  CONSTRAINT   FK_id_profile_education
    FOREIGN KEY (  id_profile  )
    REFERENCES profile   (  id  )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE hobby   (
    id   BIGINT NOT NULL,
    id_profille   BIGINT NOT NULL,
    name   VARCHAR(45) NOT NULL,
  PRIMARY KEY (  id  ),
  INDEX   FK_id_profile_hobby_idx   (  id_profille   ASC),
  CONSTRAINT   FK_id_profile_hobby
    FOREIGN KEY (  id_profille  )
    REFERENCES profile   (  id  )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

  CREATE TABLE language   (
    id   BIGINT NOT NULL,
    id_profile   BIGINT NOT NULL,
    name   VARCHAR(45) NOT NULL,
    level   VARCHAR(20) NOT NULL,
    type   VARCHAR(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (  id  ),
  INDEX   FK_id_profile_language_idx   (  id_profile   ASC),
  CONSTRAINT   FK_id_profile_language
    FOREIGN KEY (  id_profile  )
    REFERENCES profile   (  id  )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

    CREATE TABLE practic   (
    id   BIGINT NOT NULL,
    id_profile   BIGINT NOT NULL,
    position   VARCHAR(100) NOT NULL,
    company   VARCHAR(100) NOT NULL,
    begin_date   DATE NOT NULL,
    finish_date   DATE NULL,
    responsibilities   TEXT NOT NULL,
    demo   VARCHAR(255) NULL,
    src   VARCHAR(255) NULL,
  PRIMARY KEY (  id  ),
  INDEX   FK_id_profile_practic_idx   (  id_profile   ASC),
  CONSTRAINT   FK_id_profile_practic
    FOREIGN KEY (  id_profile  )
    REFERENCES profile   (  id  )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

    CREATE TABLE skill   (
    id   BIGINT NOT NULL,
    id_profile   BIGINT NOT NULL,
    category   VARCHAR(60) NOT NULL,
    value   TEXT NOT NULL,
  PRIMARY KEY (  id  ),
  INDEX   FK_id_profile_skill_idx   (  id_profile   ASC),
  CONSTRAINT   FK_id_profile_skill
    FOREIGN KEY (  id_profile  )
    REFERENCES profile   (  id  )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

    CREATE TABLE profile_restore   (
    id   BIGINT NOT NULL,
    token   VARCHAR(255) NOT NULL,
  PRIMARY KEY (  id  ),
  UNIQUE INDEX   token_UNIQUE   (  token   ASC));

CREATE TABLE skill_category   (
    id   BIGINT NOT NULL,
    category   VARCHAR(50) NOT NULL,
  PRIMARY KEY (  id  ),
  UNIQUE INDEX   category_UNIQUE   (  category   ASC));







