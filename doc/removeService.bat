set MYSQL_HOME=D:\work\tools\MySQL5
set path=%path%;%MYSQL_HOME%\bin

rem %MYSQL_HOME%\bin\mysqld-nt --defaults-file=%MYSQL_HOME%\my.ini mysql

%MYSQL_HOME%\bin\mysqld --remove MySQL
