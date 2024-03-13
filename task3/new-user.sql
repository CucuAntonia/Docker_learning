CREATE USER 'antonia'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON company.* TO 'antonia'@'%';
FLUSH PRIVILEGES;

SELECT user, host FROM mysql.user;

