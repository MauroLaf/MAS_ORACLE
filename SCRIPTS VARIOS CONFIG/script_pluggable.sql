--bash
--sqlplus sys/mauro@localhost/XE as sysdba
--sqlplus sys as sysdba, contraseña y luego cambiar session al enchufable "ALTER SESSION SET CONTAINER=XEPDB1"

--Abre la base de datos pluggable XEPDB1:
--sql
ALTER PLUGGABLE DATABASE XEPDB1 OPEN;


--Verifica que la base de datos pluggable esté abierta:
--sql
SELECT name, open_mode FROM v$pdbs;
--Debería aparecer XEPDB1 con el estado "READ WRITE".
--Verificar la conexión de SQL*Plus: Tras abrir la base de datos pluggable, intenta nuevamente conectarte desde SQL*Plus con la siguiente cadena de conexión:
--bash
sqlplus JARDINERIA/JARDINERIA@//localhost:1521/XEPDB1
