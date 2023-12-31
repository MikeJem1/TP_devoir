CREATE DATABASE TO_DO_LIST;

USE TO_DO_LIST;

CREATE TABLE TASKS(
TASK_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
TASK_NAME VARCHAR(50) NOT NULL,
TASK_DESCRIPTION TEXT(1000),
DUE_DATE DATE,
STATUS_TASK CHAR(10) DEFAULT "PENDING"
);


INSERT INTO TASKS(task_name,task_description,due_date,STATUS_TASK) values
('problem zye','mwen gen randevou a dokte Michel pou problem zye nan lopital kanapeve a','23-08-08','PENDING'),
('bal','gen yon bal karibe Roody Roodboy Vyab ak Kreyol la mwen prale','23-08-18','PENDING'),
('vakans','nou pral okap a fanmi a pou nou pase vakans','23-07-15','COMPLETE'),
('egzamen medikal','yon egzamn ECG mwen gen poum mnn manmanl al fe','23-05-05','COMPLETE'),
('lekol','mwen gen egzamen entra nan inivesite a','23-08-14','COMPLETE'),
('entevyou',' entevyou ak responsab sogebank yo pou post administrate baz done yo','23-09-09','PENDING');

select *from tasks;
SELECT *FROM TASKS WHERE STATUS_TASK='PENDING';
SELECT *FROM TASKS WHERE DUE_DATE='23-08-25';
SELECT *FROM TASKS WHERE STATUS_TASK='COMPLETE';

UPDATE TASKS
SET STATUS_TASK='COMPLETE'
WHERE DUE_DATE='23-08-08';

ALTER TABLE TASKS ADD PRIORITY INT;

UPDATE TASKS
SET PRIORITY=1
WHERE TASK_NAME='problem zye';

UPDATE TASKS
SET PRIORITY=1
WHERE  TASK_NAME='egzamen medikal';

UPDATE TASKS
SET PRIORITY=2
WHERE TASK_NAME='entevyou';

UPDATE TASKS
SET PRIORITY=3
WHERE TASK_NAME='LEKOL';

UPDATE TASKS
SET PRIORITY=4
WHERE PRIORITY<=>NULL;

SELECT *FROM TASKS;

CREATE TABLE CATEGORIES(
ID_CATEGORIE INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
NOM_C VARCHAR(30) NOT NULL,
TASK_ID INT,
FOREIGN KEY (TASK_ID) REFERENCES TASKS(TASK_ID)
);

INSERT INTO CATEGORIES(NOM_C,TASK_ID) VALUES
('SANTE',1),
('SANTE',4),
('EDIKASYON',5),
('LWAZI',2),
('LWAZI',3),
('TRAVAY',6);

SELECT *FROM TASKS WHERE PRIORITY=1;

ALTER TABLE categories
ADD CONSTRAINT T_Catego FOREIGN KEY (TASK_ID) REFERENCES TASKS(TASK_ID)
ON DELETE SET NULL;

delete from tasks where STATUS_TASK='complete';

select *from tasks;

