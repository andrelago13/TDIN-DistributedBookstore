drop table if exists books;
create table books (
  id INT,
  isbn VARCHAR(50),
  name VARCHAR(50),
  author VARCHAR(50),
  price DECIMAL(4,2)
);
insert into books (id, isbn, name, author, price) values (1, '439668363-4', 'Rau Group', 'Elnora Binning', 19.49);
insert into books (id, isbn, name, author, price) values (2, '571072509-9', 'Zieme-Price', 'Pier Latimer', 12.93);
insert into books (id, isbn, name, author, price) values (3, '685554532-7', 'Renner, Graham and Moore', 'Mari Adamsen', 3.01);
insert into books (id, isbn, name, author, price) values (4, '416889098-8', 'Zulauf, Dibbert and Gottlieb', 'Helenelizabeth McGarry', 4.18);
insert into books (id, isbn, name, author, price) values (5, '087284288-6', 'Mills-Reynolds', 'Karoline Woollons', 13.06);
insert into books (id, isbn, name, author, price) values (6, '753571085-9', 'Ziemann, O''Conner and Greenfelder', 'Townie Epilet', 2.75);
insert into books (id, isbn, name, author, price) values (7, '926274143-X', 'Barrows Inc', 'Valaria Budnk', 4.92);
insert into books (id, isbn, name, author, price) values (8, '355452028-4', 'Corwin-Bartoletti', 'Alexia Cartledge', 7.79);
insert into books (id, isbn, name, author, price) values (9, '418780568-0', 'Johnston, Ward and Waters', 'Therese Birkenshaw', 17.01);
insert into books (id, isbn, name, author, price) values (10, '766368886-4', 'Feil, Quitzon and Zulauf', 'Brad Piletic', 8.35);
insert into books (id, isbn, name, author, price) values (11, '305226067-7', 'Erdman-Schmitt', 'Reagen McCrachen', 5.99);
insert into books (id, isbn, name, author, price) values (12, '424425196-0', 'Crist and Sons', 'Levy Surcomb', 13.16);
insert into books (id, isbn, name, author, price) values (13, '656885528-6', 'VonRueden-Wolf', 'Penelope O''Corhane', 11.74);
insert into books (id, isbn, name, author, price) values (14, '390943344-8', 'Homenick and Sons', 'Deirdre Whickman', 7.01);
insert into books (id, isbn, name, author, price) values (15, '027508080-3', 'Wintheiser and Sons', 'Aurie Eddoes', 11.53);
insert into books (id, isbn, name, author, price) values (16, '943008710-X', 'Waters Inc', 'Cazzie Meredyth', 4.03);
insert into books (id, isbn, name, author, price) values (17, '000733462-1', 'Heathcote-Swaniawski', 'Hobey Crayden', 10.1);
insert into books (id, isbn, name, author, price) values (18, '556173741-4', 'Russel LLC', 'Amelina Marwick', 5.82);
insert into books (id, isbn, name, author, price) values (19, '364306003-3', 'Roob-Koss', 'Jase Keeton', 3.46);
insert into books (id, isbn, name, author, price) values (20, '887518381-3', 'Crona Inc', 'Lane Grabb', 8.65);
insert into books (id, isbn, name, author, price) values (21, '312976808-4', 'Reinger-Fay', 'Ave Hamby', 19.9);
insert into books (id, isbn, name, author, price) values (22, '554050233-7', 'Hauck Inc', 'Margi Thresh', 3.87);
insert into books (id, isbn, name, author, price) values (23, '827770107-1', 'Runolfsdottir, Larson and Schinner', 'Melony Giraldon', 9.89);
insert into books (id, isbn, name, author, price) values (24, '023441035-3', 'Glover-Streich', 'Sallyanne Rothchild', 9.27);
insert into books (id, isbn, name, author, price) values (25, '757836747-1', 'Little Inc', 'Nerty Whopples', 2.0);
insert into books (id, isbn, name, author, price) values (26, '131528480-4', 'Lowe-Ortiz', 'Alyda Brownsmith', 1.77);
insert into books (id, isbn, name, author, price) values (27, '029801736-9', 'Stark-Gerhold', 'Ailsun Handrahan', 7.62);
insert into books (id, isbn, name, author, price) values (28, '716901391-6', 'Wilkinson Group', 'Gwennie Melmore', 17.08);
insert into books (id, isbn, name, author, price) values (29, '231400708-5', 'Huels Inc', 'Rani Thorndycraft', 16.26);
insert into books (id, isbn, name, author, price) values (30, '095932660-X', 'Fadel, Pfannerstill and Cole', 'Morena Gylle', 19.75);
insert into books (id, isbn, name, author, price) values (31, '889950035-5', 'Kreiger-Zulauf', 'Aretha Turbayne', 8.96);
insert into books (id, isbn, name, author, price) values (32, '072908802-2', 'Kshlerin LLC', 'Sissie Basterfield', 12.26);
insert into books (id, isbn, name, author, price) values (33, '788053012-6', 'Lubowitz Group', 'Gaspar Oddie', 9.94);
insert into books (id, isbn, name, author, price) values (34, '322490869-6', 'Jones-Wolff', 'Manuel Collingworth', 13.52);
insert into books (id, isbn, name, author, price) values (35, '949224055-6', 'Quitzon, Mosciski and Keebler', 'Zia Escalante', 5.15);
insert into books (id, isbn, name, author, price) values (36, '566613473-6', 'Rodriguez, Crona and Langworth', 'Jorry Blackborn', 2.25);
insert into books (id, isbn, name, author, price) values (37, '802551317-3', 'Hauck, Labadie and Kuvalis', 'Xenos Baker', 19.02);
insert into books (id, isbn, name, author, price) values (38, '689796778-5', 'Bogisich, Hauck and Daugherty', 'Devy Stillmann', 9.15);
insert into books (id, isbn, name, author, price) values (39, '748425764-8', 'Schamberger-Blanda', 'Dov Claire', 19.24);
insert into books (id, isbn, name, author, price) values (40, '891182091-1', 'Larkin Group', 'Quincy Zywicki', 4.35);
insert into books (id, isbn, name, author, price) values (41, '364439999-9', 'Blick, Hermiston and Wiegand', 'Morganne Phayre', 14.23);
insert into books (id, isbn, name, author, price) values (42, '622289582-4', 'Rowe, Toy and Parker', 'Kial Orrow', 15.27);
insert into books (id, isbn, name, author, price) values (43, '475272976-8', 'Beier Group', 'Joannes Knobell', 7.84);
insert into books (id, isbn, name, author, price) values (44, '751545206-4', 'Hudson LLC', 'Clement Ranner', 1.61);
insert into books (id, isbn, name, author, price) values (45, '962170207-0', 'Corkery and Sons', 'Garrard Witter', 2.74);
insert into books (id, isbn, name, author, price) values (46, '924150901-5', 'Baumbach, Gleason and Jast', 'Felicdad Pascho', 7.59);
insert into books (id, isbn, name, author, price) values (47, '179465421-6', 'Beahan-Durgan', 'Leila Penley', 17.45);
insert into books (id, isbn, name, author, price) values (48, '588467218-7', 'Jakubowski, Brakus and O''Keefe', 'Nicolette Eustes', 6.08);
insert into books (id, isbn, name, author, price) values (49, '926526100-5', 'Bins LLC', 'Marina Cullinan', 4.06);
insert into books (id, isbn, name, author, price) values (50, '292890703-3', 'Franecki, Feeney and Kuvalis', 'Burk Preist', 11.81);