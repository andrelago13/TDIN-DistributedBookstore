DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id       INT PRIMARY KEY,
  username VARCHAR(50) UNIQUE,
  password VARCHAR(50),
  name     VARCHAR(50),
  email    VARCHAR(50) UNIQUE,
  address  VARCHAR(50)
);
INSERT INTO users (id, username, password, name, email, address)
VALUES (1, 'mchiles0', 'hJLQ0bu3L', 'Modestia Chiles', 'mchiles0@wunderground.com', '65255 Forest Circle');
INSERT INTO users (id, username, password, name, email, address)
VALUES (2, 'ebroe1', 'Mb65zzdc', 'Essie Broe', 'ebroe1@hatena.ne.jp', '58 Warner Court');
INSERT INTO users (id, username, password, name, email, address)
VALUES (3, 'galbrook2', 'nXlpBvhP', 'Gal Albrook', 'galbrook2@goodreads.com', '30430 Barnett Park');
INSERT INTO users (id, username, password, name, email, address)
VALUES (4, 'aconsadine3', 'o9H67eXqb', 'Ase Consadine', 'aconsadine3@etsy.com', '8 Mitchell Crossing');
INSERT INTO users (id, username, password, name, email, address)
VALUES (5, 'ktyne4', 'Zd9Izv', 'Krysta Tyne', 'ktyne4@un.org', '3614 Arizona Plaza');
INSERT INTO users (id, username, password, name, email, address)
VALUES (6, 'mfranca5', 'N5SWOleZt5aI', 'Mano Franca', 'mfranca5@g.co', '6 Reindahl Trail');
INSERT INTO users (id, username, password, name, email, address)
VALUES (7, 'bsoppett6', 'fhkYIblf88', 'Betteann Soppett', 'bsoppett6@si.edu', '4 Vidon Road');
INSERT INTO users (id, username, password, name, email, address)
VALUES (8, 'aboynes7', 'Zd1EIYUm', 'Armand Boynes', 'aboynes7@reddit.com', '44 Burning Wood Hill');
INSERT INTO users (id, username, password, name, email, address)
VALUES (9, 'glennon8', '01iU6SX87M6j', 'Gladi Lennon', 'glennon8@smh.com.au', '00 Amoth Point');
INSERT INTO users (id, username, password, name, email, address)
VALUES (10, 'fplak9', 'ws5sUHY', 'Filippo Plak', 'fplak9@weibo.com', '04204 Bartillon Way');
INSERT INTO users (id, username, password, name, email, address)
VALUES (11, 'dmcneelya', 'EoezlJJ7', 'Dorian McNeely', 'dmcneelya@tmall.com', '0 Westerfield Trail');
INSERT INTO users (id, username, password, name, email, address)
VALUES (12, 'mgeorgiusb', 'kitl9nEnr7K', 'Mamie Georgius', 'mgeorgiusb@theglobeandmail.com', '2353 Fisk Road');
INSERT INTO users (id, username, password, name, email, address)
VALUES (13, 'pbussyc', 'hlC4ErcaLs', 'Patin Bussy', 'pbussyc@tmall.com', '589 Montana Lane');
INSERT INTO users (id, username, password, name, email, address)
VALUES (14, 'iluigid', 'PzRXxK', 'Isa Luigi', 'iluigid@vinaora.com', '0462 International Drive');
INSERT INTO users (id, username, password, name, email, address)
VALUES (15, 'bdurbyne', '8DwIDvmvp4', 'Brig Durbyn', 'bdurbyne@mlb.com', '57711 Veith Way');
INSERT INTO users (id, username, password, name, email, address)
VALUES (16, 'edarceyf', 'eE1cdzbAgFS0', 'Emylee Darcey', 'edarceyf@csmonitor.com', '2 Mayer Court');
INSERT INTO users (id, username, password, name, email, address)
VALUES (17, 'bcartmaelg', 'cdTACjnzd', 'Ben Cartmael', 'bcartmaelg@i2i.jp', '7 Melrose Court');
INSERT INTO users (id, username, password, name, email, address)
VALUES (18, 'mimpletonh', 'NpBRZCZu', 'Mari Impleton', 'mimpletonh@blogspot.com', '24190 Russell Road');
INSERT INTO users (id, username, password, name, email, address)
VALUES (19, 'lussheri', 'B35hr5Ztdq', 'Lennard Ussher', 'lussheri@amazonaws.com', '4 Forest Run Avenue');
INSERT INTO users (id, username, password, name, email, address)
VALUES (20, 'bbasirej', 'gfTyvhbG', 'Blair Basire', 'bbasirej@mashable.com', '612 Northridge Pass');
INSERT INTO users (id, username, password, name, email, address)
VALUES (21, 'gmaliak', 'LwU3EIJ4AJQ', 'Godfry Malia', 'gmaliak@columbia.edu', '818 Daystar Road');
INSERT INTO users (id, username, password, name, email, address)
VALUES (22, 'fworledgel', 'GWVFQVHZ3y', 'Fonz Worledge', 'fworledgel@ox.ac.uk', '4009 Carioca Court');
INSERT INTO users (id, username, password, name, email, address)
VALUES (23, 'dreinerm', 'NUbB2I7C', 'Dori Reiner', 'dreinerm@imdb.com', '1826 Cardinal Hill');
INSERT INTO users (id, username, password, name, email, address)
VALUES (24, 'bmanilown', 'Qz3Akb8', 'Brand Manilow', 'bmanilown@wikipedia.org', '5 Leroy Street');
INSERT INTO users (id, username, password, name, email, address)
VALUES (25, 'mgaryo', 'J4T5lET', 'Matilde Gary', 'mgaryo@amazon.co.uk', '98 Lien Park');