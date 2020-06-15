CREATE USER 'recipeuser'@'localhost' IDENTIFIED BY 'recipeuser';

GRANT ALL PRIVILEGES ON * . * TO 'recipeuser'@'localhost';

ALTER USER 'recipeuser'@'localhost' IDENTIFIED WITH mysql_native_password BY 'recipeuser';