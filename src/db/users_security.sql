-- Crear usuario administrador

CREATE USER 'mochi_admin'@'localhost'
IDENTIFIED BY 'admin123';

GRANT ALL PRIVILEGES
ON mochi_house.*
TO 'mochi_admin'@'localhost';

-- Crear usuario para la aplicación

CREATE USER 'mochi_app'@'localhost'
IDENTIFIED BY 'app123';

GRANT SELECT, INSERT, UPDATE
ON mochi_house.*
TO 'mochi_app'@'localhost';

FLUSH PRIVILEGES;
