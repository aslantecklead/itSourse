create database itSolusions;

use itSolusions;

CREATE TABLE [Client] (
    id_client INT PRIMARY KEY,
    [name] VARCHAR(100),
    [phone_number] VARCHAR(20)
);

CREATE TABLE [Application] (
    id_application INT PRIMARY KEY,
    [number] VARCHAR(150),
    [date] DATE,
    [equipment] VARCHAR(150),
    [problem_type] VARCHAR(20),
    [problem_description] VARCHAR(200),
    [status] VARCHAR(20) check ([status] IN ('выполнено', 'в работе', 'не выполнено')),
    [id_client] INT,
    FOREIGN KEY (id_client) REFERENCES Client(id_client)
);	

CREATE TABLE [Notification] (
    id_notification INT PRIMARY KEY,
    [date] DATE,
    [text] VARCHAR(200),
    [id_application] INT,
    FOREIGN KEY (id_application) REFERENCES Application(id_application)
);

CREATE TABLE [Employee] (
    id_employee INT PRIMARY KEY,
    [name] VARCHAR(100),
    [position] VARCHAR(50),
    [phone_number] VARCHAR(20)
);

CREATE TABLE [Comment] (
    id_comment INT PRIMARY KEY,
    [date] DATE,
    [text] VARCHAR(200),
    [id_application] INT,
    [id_employee] INT,
    FOREIGN KEY (id_application) REFERENCES Application(id_application),
    FOREIGN KEY (id_employee) REFERENCES Employee(id_employee)
);

