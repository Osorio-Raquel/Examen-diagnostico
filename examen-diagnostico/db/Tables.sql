DROP SCHEMA IF EXISTS tw2_diagnos;
CREATE SCHEMA tw2_diagnos;
USE tw2_diagnos;

-- tables
-- Table: Blood_Types
CREATE TABLE Blood_Types (
    Id_Blood_Type serial  NOT NULL,
    Antigen varchar(2)  NOT NULL,
    Rh boolean  NOT NULL,
    Is_Deleted boolean NOT NULL,
    CONSTRAINT Blood_Types_pk PRIMARY KEY (Id_Blood_Type)
);

-- Table: Campuses
CREATE TABLE Campuses (
    Id_Campus serial  NOT NULL,
    Location varchar(20)  NOT NULL,
    Is_Deleted boolean NOT NULL,
    CONSTRAINT Campuses_pk PRIMARY KEY (Id_Campus)
);

-- Table: Careers
CREATE TABLE Careers (
    Id_Career serial  NOT NULL,
    Name varchar(100)  NOT NULL,
    Initials char(3)  NOT NULL,
    Is_Deleted boolean NOT NULL,
    CONSTRAINT Careers_pk PRIMARY KEY (Id_Career)
);

-- Table: School_Shifts
CREATE TABLE School_Shifts (
    Id_Sch_Shift serial  NOT NULL,
    School_Shift varchar(20)  NOT NULL,
    Is_Deleted boolean NOT NULL,
    CONSTRAINT School_Shifts_pk PRIMARY KEY (Id_Sch_Shift)
);

-- Table: School_Types
CREATE TABLE School_Types (
    Id_Sch_Type serial  NOT NULL,
    School_Type varchar(20)  NOT NULL,
    Is_Deleted boolean NOT NULL,
    CONSTRAINT School_Types_pk PRIMARY KEY (Id_Sch_Type)
);

-- Table: Schools
CREATE TABLE Schools (
    Id_School serial  NOT NULL,
    School_Name varchar(50)  NOT NULL,
    Id_Sch_Type bigint unsigned  NOT NULL,
    Is_Deleted boolean NOT NULL,
    CONSTRAINT Schools_pk PRIMARY KEY (Id_School)
);

-- Table: Stu_School_Info
CREATE TABLE Stu_School_Info (
    Id_Sch_Info serial  NOT NULL,
    Grad_Year int  NOT NULL,
    Id_Student bigint unsigned  NOT NULL,
    Id_School bigint unsigned NOT NULL,
    Id_Sch_Shift bigint unsigned  NOT NULL,
    Is_Deleted boolean NOT NULL,
    CONSTRAINT Stu_School_Info_pk PRIMARY KEY (Id_Sch_Info)                         
);

-- Table: Genders
CREATE TABLE Genders (
    Id_Gender serial NOT NULL,
    Name varchar(10) NOT NULL,
    Is_Deleted boolean NOT NULL,
    CONSTRAINT Genders_pk PRIMARY KEY (Id_Gender)   
);

-- Table: Students
CREATE TABLE Students (
    Id_Student serial  NOT NULL,
    Id int  NOT NULL,
    Names varchar(50)  NOT NULL,
    F_Surname varchar(50)  NOT NULL,
    M_Surname varchar(50)  NOT NULL,
    Birthday date  NOT NULL,
    Address varchar(200)  NOT NULL,
    Phone_Number int  NOT NULL,
    Email varchar(100)  NOT NULL,
    Id_Gender bigint unsigned NOT NULL,
    Id_Campus bigint unsigned  NOT NULL,
    Id_Career bigint unsigned  NOT NULL,
    Id_Blood_Type bigint unsigned  NOT NULL,
    Is_Deleted boolean NOT NULL,
    CONSTRAINT Students_pk PRIMARY KEY (Id_Student)
);

-- Table: Users
CREATE TABLE Users (
    Id_User serial  NOT NULL,
    Username varchar(40)  NOT NULL,
    Pass varchar(40)  NOT NULL,
    Is_Deleted boolean NOT NULL,
    CONSTRAINT Users_pk PRIMARY KEY (Id_User)
);

-- foreign keys

-- Reference: Schools_School_Types (table: Schools)
ALTER TABLE Schools ADD CONSTRAINT Schools_School_Types FOREIGN KEY (Id_Sch_Type)
    REFERENCES School_Types (Id_Sch_Type);

-- Reference: Stu_School_Info_Schools (table: Stu_School_Info)
ALTER TABLE Stu_School_Info ADD CONSTRAINT Stu_School_Info_Schools FOREIGN KEY (Id_School)
    REFERENCES Schools (Id_School);

-- Reference: Stu_School_Info_Students (table: Stu_School_Info)
ALTER TABLE Stu_School_Info ADD CONSTRAINT Stu_School_Info_Students FOREIGN KEY (Id_Student)
    REFERENCES Students (Id_Student);

-- Reference: Schools_School_Shifts (table: Stu_School_Info)
ALTER TABLE Stu_School_Info ADD CONSTRAINT Stu_School_Info_Shifts FOREIGN KEY (Id_Sch_Shift)
    REFERENCES School_Shifts (Id_Sch_Shift);

-- Reference: Students_Genders (table: Students)
ALTER TABLE Students ADD CONSTRAINT Students_Genders FOREIGN KEY (Id_Gender)
    REFERENCES Genders (Id_Gender);

-- Reference: Students_Blood_Types (table: Students)
ALTER TABLE Students ADD CONSTRAINT Students_Blood_Types FOREIGN KEY (Id_Blood_Type)
    REFERENCES Blood_Types (Id_Blood_Type);

-- Reference: Students_Campuses (table: Students)
ALTER TABLE Students ADD CONSTRAINT Students_Campuses FOREIGN KEY (Id_Campus)
    REFERENCES Campuses (Id_Campus);

-- Reference: Students_Careers (table: Students)
ALTER TABLE Students ADD CONSTRAINT Students_Careers FOREIGN KEY (Id_Career)
    REFERENCES Careers (Id_Career);


-- End of file
