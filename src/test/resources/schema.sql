CREATE TABLE QUESTLINE
(
    ID          BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    NAME        VARCHAR(256) NOT NULL
);

CREATE TABLE QUEST
(
    ID          BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    QUESTLINEID BIGINT REFERENCES QUESTLINE(ID),
    NAME        VARCHAR(256) NOT NULL,
    DESCRIPTION VARCHAR(256) NOT NULL,
    TYPE        ENUM('NONE', 'DAILY', 'WEEKLY', 'MONTHLY', 'YEARLY') DEFAULT 'NONE',
    LOCATION    VARCHAR(256),
    DUE_DATE    VARCHAR(256),
    REWARD      VARCHAR(256) NOT NULL,
    COMPLETED   BIT NOT NULL
);

CREATE TABLE OBJECTIVE
(
    ID          BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    QUESTID     BIGINT REFERENCES QUEST(ID),
    ORDERING    TINYINT NOT NULL,
    NAME        VARCHAR(256) NOT NULL,
    COMPLETED   BIT NOT NULL
);