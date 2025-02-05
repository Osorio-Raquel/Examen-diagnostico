USE tw2_diagnos;

-- inserts

-- blood_types
INSERT INTO `blood_types`(`Antigen`, `Rh`, `Is_Deleted`) VALUES ('O',true,false);
INSERT INTO `blood_types`(`Antigen`, `Rh`, `Is_Deleted`) VALUES ('A',true,false);
INSERT INTO `blood_types`(`Antigen`, `Rh`, `Is_Deleted`) VALUES ('B',true,false);
INSERT INTO `blood_types`(`Antigen`, `Rh`, `Is_Deleted`) VALUES ('AB',true,false);
INSERT INTO `blood_types`(`Antigen`, `Rh`, `Is_Deleted`) VALUES ('O',false,false);
INSERT INTO `blood_types`(`Antigen`, `Rh`, `Is_Deleted`) VALUES ('A',false,false);
INSERT INTO `blood_types`(`Antigen`, `Rh`, `Is_Deleted`) VALUES ('B',false,false);
INSERT INTO `blood_types`(`Antigen`, `Rh`, `Is_Deleted`) VALUES ('AB',false,false);

-- campuses
INSERT INTO `campuses`(`Location`, `Is_Deleted`) VALUES ('La Paz', false);
INSERT INTO `campuses`(`Location`, `Is_Deleted`) VALUES ('Santa Cruz', false);
INSERT INTO `campuses`(`Location`, `Is_Deleted`) VALUES ('Cochabamba', false);
INSERT INTO `campuses`(`Location`, `Is_Deleted`) VALUES ('Tarija', false);
INSERT INTO `campuses`(`Location`, `Is_Deleted`) VALUES ('La Plata', false);
INSERT INTO `campuses`(`Location`, `Is_Deleted`) VALUES ('Oruro Virgen del Socavón', false);

-- careers
INSERT INTO `careers`(`Name`, `Initials`, `Is_Deleted`) VALUES ('Ingeniería de Sistemas','SIS',false);
INSERT INTO `careers`(`Name`, `Initials`, `Is_Deleted`) VALUES ('Ingeniería Química','IQM',false);
INSERT INTO `careers`(`Name`, `Initials`, `Is_Deleted`) VALUES ('Ingeniería Mecatrónica','IMT',false);
INSERT INTO `careers`(`Name`, `Initials`, `Is_Deleted`) VALUES ('Ingeniería Industrial','IND',false);
INSERT INTO `careers`(`Name`, `Initials`, `Is_Deleted`) VALUES ('Ingeniería Civil','CIV',false);
INSERT INTO `careers`(`Name`, `Initials`, `Is_Deleted`) VALUES ('Ingeniería Biomédica','INB',false);
INSERT INTO `careers`(`Name`, `Initials`, `Is_Deleted`) VALUES ('Psicología','PSI',false);
INSERT INTO `careers`(`Name`, `Initials`, `Is_Deleted`) VALUES ('Administración de Empresas','ADM',false);
INSERT INTO `careers`(`Name`, `Initials`, `Is_Deleted`) VALUES ('Derecho','DER',false);
INSERT INTO `careers`(`Name`, `Initials`, `Is_Deleted`) VALUES ('Arquitectura','ARQ',false);
INSERT INTO `careers`(`Name`, `Initials`, `Is_Deleted`) VALUES ('Diseño Digital','DIG',false);
INSERT INTO `careers`(`Name`, `Initials`, `Is_Deleted`) VALUES ('Diseño Gráfico','DGR',false);
INSERT INTO `careers`(`Name`, `Initials`, `Is_Deleted`) VALUES ('Comunicación Social','COM',false);
INSERT INTO `careers`(`Name`, `Initials`, `Is_Deleted`) VALUES ('Economía','ECO',false);
INSERT INTO `careers`(`Name`, `Initials`, `Is_Deleted`) VALUES ('Contadría Pública','CPA',false);

-- school_shifts
INSERT INTO `school_shifts`(`School_Shift`, `Is_Deleted`) VALUES ('Turno mañana',false);
INSERT INTO `school_shifts`(`School_Shift`, `Is_Deleted`) VALUES ('Turno tarde',false);

-- school_types
INSERT INTO `school_types`(`School_Type`, `Is_Deleted`) VALUES ('Privado',false);
INSERT INTO `school_types`(`School_Type`, `Is_Deleted`) VALUES ('Fiscal',false);
INSERT INTO `school_types`(`School_Type`, `Is_Deleted`) VALUES ('De Convenio',false);
INSERT INTO `school_types`(`School_Type`, `Is_Deleted`) VALUES ('Particular',false);

-- schools
INSERT INTO `schools`(`School_Name`, `Id_Sch_Type`, `Is_Deleted`) VALUES ('Calvert',1,false);
INSERT INTO `schools`(`School_Name`, `Id_Sch_Type`, `Is_Deleted`) VALUES ('Afredo Vargas',2,false);
INSERT INTO `schools`(`School_Name`, `Id_Sch_Type`, `Is_Deleted`) VALUES ('San Ignacio',3,false);
INSERT INTO `schools`(`School_Name`, `Id_Sch_Type`, `Is_Deleted`) VALUES ('Montessori',4,false);

-- genders
INSERT INTO `genders`(`Name`, `Is_Deleted`) VALUES ('Femenino',false);
INSERT INTO `genders`(`Name`, `Is_Deleted`) VALUES ('Masculino',false);

-- students
INSERT INTO `students`(`Id`, `Names`, `F_Surname`, `M_Surname`, `Birthday`, `Address`, `Phone_Number`, `Email`, `Id_Campus`, `Id_Career`, `Id_Blood_Type`, `Is_Deleted`,`Id_Gender`) VALUES ('7071375','Raquel','Osorio','Mamani','2004-04-24','Santa Rosa','78800693','rack707@gmail.com',1,1,1,false,1);
INSERT INTO `students`(`Id`, `Names`, `F_Surname`, `M_Surname`, `Birthday`, `Address`, `Phone_Number`, `Email`, `Id_Campus`, `Id_Career`, `Id_Blood_Type`, `Is_Deleted`,`Id_Gender`) VALUES ('8467131','Alina','Mollinedo','Dávila','2004-12-10','Meseta de Achumani','68176568','mollinedo.alina@gmail.com',1,1,1,false,1);
INSERT INTO `students`(`Id`, `Names`, `F_Surname`, `M_Surname`, `Birthday`, `Address`, `Phone_Number`, `Email`, `Id_Campus`, `Id_Career`, `Id_Blood_Type`, `Is_Deleted`,`Id_Gender`) VALUES ('12345678','Luciana Camila','Rodas','Torres','2002-02-05','Los Pinos','76578932','lurodas@gmail.com',2,4,3,false,1);
INSERT INTO `students`(`Id`, `Names`, `F_Surname`, `M_Surname`, `Birthday`, `Address`, `Phone_Number`, `Email`, `Id_Campus`, `Id_Career`, `Id_Blood_Type`, `Is_Deleted`,`Id_Gender`) VALUES ('64317439','Axel Leonardo','Quiroga','Flores','2000-10-27','Miraflores','677597408','axelito2727@gmail.com',3,10,2,false,2);
INSERT INTO `students`(`Id`, `Names`, `F_Surname`, `M_Surname`, `Birthday`, `Address`, `Phone_Number`, `Email`, `Id_Campus`, `Id_Career`, `Id_Blood_Type`, `Is_Deleted`,`Id_Gender`) VALUES ('876547391','Mauricio Camilo','Villanueva','Paredes','2005-06-11','Calacoto','74619563','mau05.villanueva@gmail.com',1,13,5,false,2);
INSERT INTO `students`(`Id`, `Names`, `F_Surname`, `M_Surname`, `Birthday`, `Address`, `Phone_Number`, `Email`, `Id_Campus`, `Id_Career`, `Id_Blood_Type`, `Is_Deleted`,`Id_Gender`) VALUES ('97574289','Lucio','Lafuente','Romero','2004-11-01','Achumani','71284759','lucio.lafuente04@gmail.com',1,6,1,false,2);

-- stu_school_info
INSERT INTO `stu_school_info`(`Grad_Year`, `Id_Student`, `Id_School`, `Is_Deleted`, `Id_Sch_Shift`) VALUES (2021,1,2,false,1);
INSERT INTO `stu_school_info`(`Grad_Year`, `Id_Student`, `Id_School`, `Is_Deleted`, `Id_Sch_Shift`) VALUES (2022,2,4,false,1);
INSERT INTO `stu_school_info`(`Grad_Year`, `Id_Student`, `Id_School`, `Is_Deleted`, `Id_Sch_Shift`) VALUES (2021,3,1,false,2);
INSERT INTO `stu_school_info`(`Grad_Year`, `Id_Student`, `Id_School`, `Is_Deleted`, `Id_Sch_Shift`) VALUES (2021,4,4,false,1);
INSERT INTO `stu_school_info`(`Grad_Year`, `Id_Student`, `Id_School`, `Is_Deleted`, `Id_Sch_Shift`) VALUES (2021,5,3,false,1);
INSERT INTO `stu_school_info`(`Grad_Year`, `Id_Student`, `Id_School`, `Is_Deleted`, `Id_Sch_Shift`) VALUES (2021,6,3,false,2);


-- users
INSERT INTO `users`(`Username`, `Pass`, `Is_Deleted`) VALUES ('admin','admin1234',false);