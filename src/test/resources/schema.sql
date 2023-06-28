CREATE TABLE QUESTLINES
(
    ID          BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY
);

CREATE TABLE QUESTS
(
    ID          BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    QUESTLINEID BIGINT REFERENCES QUESTLINES(ID),
    NAME        VARCHAR(256) NOT NULL,
    DESCRIPTION VARCHAR(256) NOT NULL,
    TYPE        VARCHAR(256) NOT NULL,
    LOCATION    VARCHAR(256),
    DUE_DATE    VARCHAR(256),
    REWARD      VARCHAR(256) NOT NULL,
    COMPLETED   BIT NOT NULL
);

CREATE TABLE OBJECTIVES
(
    ID          BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    QUESTID     BIGINT REFERENCES QUESTS(ID),
    ORDERING    INT NOT NULL,
    NAME        VARCHAR(256) NOT NULL,
    COMPLETED   BIT NOT NULL
);