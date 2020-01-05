select * from dba_tables;

alter session set "_ORACLE_SCRIPT"=true;

CREATE USER isem IDENTIFIED BY hr;

GRANT CREATE SESSION TO isem;

SELECT username, account_status FROM dba_users
WHERE username = 'ISEM';

ALTER USER ISEM quota unlimited on USERS;