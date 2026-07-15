DROP DATABASE IF EXISTS bibliotheque_php;

DROP USER IF EXISTS 'bibliothequePHP'@'localhost';

CREATE DATABASE bibliotheque_php;
CREATE USER 'bibliothequePHP'@'localhost' IDENTIFIED BY 'root';

GRANT ALL PRIVILEGES ON bibliotheque_php.* TO 'bibliothequePHP'@'localhost';


CREATE TABLE User(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  lastname VARCHAR(50) NOT NULL,
  firstname VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  city VARCHAR(30) NOT NULL,
  city_code CHAR(5) NOT NULL,
  sex CHAR(1) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE=InnoDB;

INSERT INTO User(lastname, firstname, email, city, city_code, sex)
VALUES
("Rambo", "John", "cpasmaguerre@gmail.com", "Rouen", "76000", "H"),
("Wayne", "Bruce", "iambatman@gmail.com", "St etienne du rouvray", "76575", "H"),
("Sacquet", "Frodon", "monprecieux@gmail.com", "Evreux", "27000", "H"),
("Ripley", "Ellen", "alien@gmail.com", "Bois guillaume", "76230", "F"),
("Quaid", "Doug", "total-recall@gmail.com", "Rouen", "76100", "H"),
("Spartan", "John", "demolition-man@gmail.com", "Nice", "06000", "H"),
("Connor", "Sarah", "terminator@gmail.com", "le havre", "76600", "F"),
("Ventura", "Ace", "detective-animalier@gmail.com", "Paris", "75001", "H");

CREATE TABLE Book(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(50) NOT NULL,
  author VARCHAR(50) NOT NULL,
  synopsis TEXT(1000) NOT NULL,
  release_date DATE NOT NULL,
  category VARCHAR(50),
  PRIMARY KEY (id),
  user_id INT UNSIGNED NULL,
  FOREIGN KEY (user_id) REFERENCES User(id)
)
ENGINE=InnoDB;

INSERT INTO Book(title, author, synopsis, release_date, category,user_id)
VALUES
("Dragon ball", "Akira Toryiama", "synopsis", "1987-10-07", "manga",2),
("L'heresie d'horus", "Dan Abnett", "synopsis", "2000-02-08", "roman",5),
("Civil war", "Mark Millar", "synopsis", "2005-04-06", "comics",3),
("Berserk", "Kenturo Miura", "synopsis", "1987-05-11", "manga",5),
("Harry Potter", "J.K Rowling", "synopsis", "2005-10-04", "roman",2),
("Game of thrones", "Georges.R Martin", "synopsis", "2003-03-01", "roman",6),
("Akira", "Katsuhiro Otomo", "synopsis", "1986-02-01", "manga",10),
("Seven Deadly Sins", "Nakaba Suzuki", "synopsis", "2005-03-05", "manga",5),
("Rage", "Stephen King", "synopsis", "1980-05-04", "roman",1),
("Hokuto no Ken", "Buronson, Tetsuo Hara", "synopsis", "1984-05-08", "manga",1),
("Le faucheur", "David Gunn", "synopsis", "2010-02-04", "roman",3),
("Carbone modifié", "Richard Morgan", "synopsis", "2012-04-03", "roman",3),
("Le seigneur des anneaux", "J.R Tolkien", "synopsis", "1970-06-04", "roman",1),
("Sun Ken Rock", "Boichi", "synopsis", "2014-02-03", "manga",4),
("Saint Seiya", "Masami Kurumada", "synopsis", "1983-01-02", "roman",2),
("The Boys", "Garth Ennis", "synopsis", "2011-04-06", "comics",5),
("Preacher", " Garth Ennis", "synopsis", "1990-06-07", "comics",2),
("Batman - La cour des hiboux", "Greg Capullo", "synopsis", "2015-03-04", "comics",2),
("Bleach", "Tite Kubo", "synopsis", "2000-05-07", "manga",5),
("Naruto", "Masashi Kishimoto", "synopsis", "2002-03-07", "manga",2),
("L'attaque des titans", "Hajime Isayama", "synopsis", "2014-05-09", "manga",5);

