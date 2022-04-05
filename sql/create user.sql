CREATE USER hdhandsome
IDENTIFIED BY handsome
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE temp
QUOTA 10m ON users
QUOTA 10m ON apps;

grant create session, 
create table,
create procedure,
create trigger,
create view,
create sequence
to hdhandsome;
