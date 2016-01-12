CREATE TABLE EMPLOYEE1(	
  EMP NUMBER(8,0), 
  DEP NUMBER(8,0), 
  SAL NUMBER
);
Insert into EMPLOYEE1 (EMP,DEP,SAL) values (1,1,100);
Insert into EMPLOYEE1 (EMP,DEP,SAL) values (2,1,34);
Insert into EMPLOYEE1 (EMP,DEP,SAL) values (3,1,123);
Insert into EMPLOYEE1 (EMP,DEP,SAL) values (4,1,56);
Insert into EMPLOYEE1 (EMP,DEP,SAL) values (5,2,234);
Insert into EMPLOYEE1 (EMP,DEP,SAL) values (6,2,23);
Insert into EMPLOYEE1 (EMP,DEP,SAL) values (7,2,456);
Insert into EMPLOYEE1 (EMP,DEP,SAL) values (8,3,23);
Insert into EMPLOYEE1 (EMP,DEP,SAL) values (9,3,45);
Insert into EMPLOYEE1 (EMP,DEP,SAL) values (10,3,46);
Insert into EMPLOYEE1 (EMP,DEP,SAL) values (11,1,123);

CREATE TABLE EMPLOYEE2(	
  EMP NUMBER(8,0), 
  SAL NUMBER
);
Insert into EMPLOYEE2 (EMP,SAL) values (1,12);
Insert into EMPLOYEE2 (EMP,SAL) values (2,34);
Insert into EMPLOYEE2 (EMP,SAL) values (3,45);
Insert into EMPLOYEE2 (EMP,SAL) values (4,9);
Insert into EMPLOYEE2 (EMP,SAL) values (5,23);
Insert into EMPLOYEE2 (EMP,SAL) values (6,34);
Insert into EMPLOYEE2 (EMP,SAL) values (7,45);
Insert into EMPLOYEE2 (EMP,SAL) values (8,45);

CREATE TABLE EMPLOYEE3(	
  EMP NUMBER(8,0), 
  SAL NUMBER
);
Insert into EMPLOYEE3 (EMP,SAL) values (1,123);
Insert into EMPLOYEE3 (EMP,SAL) values (2,123);
Insert into EMPLOYEE3 (EMP,SAL) values (3,123);
Insert into EMPLOYEE3 (EMP,SAL) values (4,123);
Insert into EMPLOYEE3 (EMP,SAL) values (5,null);

create table TEAM (
  ID NUMBER(8,0),
  NAME NVARCHAR2(16)
);
Insert into TEAM (ID, NAME) values (1, 't1');
Insert into TEAM (ID, NAME) values (2, 't2');
Insert into TEAM (ID, NAME) values (3, 't3');
Insert into TEAM (ID, NAME) values (4, 't4');
Insert into TEAM (ID, NAME) values (5, 't5');
Insert into TEAM (ID, NAME) values (6, 't6');

create table city (
  name NVARCHAR2(16),
  country NVARCHAR2(16),
  population NUMBER(8,0)
);
insert into city(name, country, population) values ('Moscow', 'Russia', 10381288);
insert into city(name, country, population) values ('Saint Petersburg', 'Russia', 4039751);
insert into city(name, country, population) values ('Asd', 'Russia', 432);
insert into city(name, country, population) values ('Dsa', 'Russia', 3451);
insert into city(name, country, population) values ('Asd', 'Russia', 432);
insert into city(name, country, population) values ('Dsa', 'Russia', 3451);
insert into city(name, country, population) values ('Dsa', 'Russia', 3451);
