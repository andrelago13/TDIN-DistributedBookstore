DROP TABLE IF EXISTS store_orders;
DROP TABLE IF EXISTS store_orders;
CREATE TABLE store_orders (
  id             VARCHAR(40),
  book_id        INT,
  quantity       INT,
  total_price    DECIMAL(5, 2),
  client_name    VARCHAR(50),
  client_address VARCHAR(50),
  client_email   VARCHAR(50),
  state          INT,
  state_date     DATE
);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('1c1b32f0-661a-43ce-bd82-6f40e38c9839', 33, 11, 179.12, 'Fenelia Darbishire', '6 Aberg Way', 'fdarbishire0@etsy.com',
   0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('dcd87396-3779-4b45-b5b1-c3fc1ee31ba7', 50, 10, 263.06, 'Georgena Slott', '8 Village Green Hill',
        'gslott1@cargocollective.com', 2, '2017-06-09 07:06:56');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('cbdec581-3b22-43f6-8941-0dfbb91f7159', 3, 13, 213.13, 'Olly Stansbie', '5640 Dayton Place', 'ostansbie2@i2i.jp', 1,
   '2017-06-01 18:09:23');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('bf78c8c0-a90f-4abd-9a8c-377c6fcb9c50', 41, 10, 181.12, 'Rollins Claisse', '6102 Melrose Point',
        'rclaisse3@upenn.edu', 1, '2017-06-06 04:44:12');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('1a4b7cb0-f9fd-4b70-b884-2dc02a6436d0', 40, 15, 89.54, 'Homer Coneybeer', '8 Sommers Hill', 'hconeybeer4@joomla.org',
   0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('9848ea28-6808-44c1-a017-c510ac45abf5', 36, 2, 9.22, 'Uriel Piatkow', '76986 Lakewood Crossing',
        'upiatkow5@digg.com', 2, '2017-05-23 19:27:57');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('fb067c19-ac39-451e-93b7-2b160878bdc9', 8, 11, 172.81, 'Bartholemy Vanin', '3 Barnett Hill', 'bvanin6@xinhuanet.com',
   1, '2017-05-26 14:52:07');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('54e3fffc-1928-4db9-8abe-cbcff7e42a43', 10, 15, 267.15, 'Vikky Crosston', '31395 Thompson Point',
        'vcrosston7@networksolutions.com', 2, '2017-06-12 14:24:20');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('05d23f58-c894-462d-8fe9-62b021f332e9', 23, 18, 85.14, 'Kerianne Skettles', '7 Anniversary Alley',
        'kskettles8@vkontakte.ru', 2, '2017-06-09 04:46:04');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('b64f11c0-0c50-42f4-8ad6-a3fb57f76fbd', 6, 8, 87.16, 'Esme Varey', '92 Helena Center', 'evarey9@wsj.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('a4b15735-4147-44db-91d1-800b1a6da287', 41, 1, 107.5, 'Aland Battaille', '84476 Little Fleur Way',
        'abattaillea@soundcloud.com', 1, '2017-05-22 17:26:36');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('366c4fc0-0785-423e-ab66-49199ea03db5', 44, 6, 176.94, 'Cecilius Whitby', '290 Alpine Street', 'cwhitbyb@elpais.com',
   1, '2017-05-17 02:45:42');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('091136ed-5886-4107-a254-2175e231d86c', 44, 13, 25.33, 'Lettie Corringham', '8 Scofield Hill',
        'lcorringhamc@uol.com.br', 2, '2017-05-17 19:15:22');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('6e178364-9102-4589-b4be-008a3148341d', 50, 7, 121.32, 'Christy De Carteret', '87 Manufacturers Drive',
        'cded@jugem.jp', 1, '2017-05-17 20:11:40');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('8c849641-48ea-4e66-96ee-81168aa6d924', 39, 16, 136.15, 'Joelle Duffield', '05191 Crescent Oaks Way',
        'jduffielde@zdnet.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('c075df49-ed17-4745-998a-d3f6778daf38', 32, 9, 295.09, 'Hermon Martland', '275 Green Ridge Center',
        'hmartlandf@barnesandnoble.com', 2, '2017-06-10 09:02:43');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('6efa51e0-3a80-4217-80e9-d83641746cf9', 44, 14, 159.37, 'Charlot Geraudel', '53013 Fieldstone Park',
        'cgeraudelg@abc.net.au', 2, '2017-05-25 05:03:04');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('15f84bce-4eb0-4631-bb7e-95c1953a243e', 41, 1, 89.54, 'Stepha Bosden', '7300 Del Sol Alley', 'sbosdenh@last.fm', 1,
   '2017-06-13 19:59:48');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('36846dde-bb2f-4f50-aeb4-ca9ad5202425', 2, 9, 123.29, 'Johnnie Bearward', '196 Towne Way',
        'jbearwardi@slideshare.net', 2, '2017-06-01 07:43:34');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('26e6d21b-409c-4d97-a859-f905c2360432', 36, 8, 196.85, 'Legra Steinhammer', '95 Eastlawn Road',
        'lsteinhammerj@networkadvertising.org', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('ffa6c7cf-718b-4bc9-ae3c-c447e6562530', 49, 1, 131.09, 'Coreen Keavy', '054 Commercial Center', 'ckeavyk@discuz.net',
   1, '2017-05-27 17:29:17');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('112b0cfd-cec4-462d-b789-d3745cd14780', 43, 3, 72.46, 'Duff Hantusch', '70166 Monterey Circle',
        'dhantuschl@joomla.org', 1, '2017-06-05 08:22:11');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('334e4f85-4791-406e-904c-863a31957af9', 7, 4, 292.74, 'Rosy Stappard', '8 Roxbury Terrace',
        'rstappardm@indiegogo.com', 1, '2017-06-05 13:28:29');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('736aa5b1-233e-40a9-b46d-61edb3926256', 10, 20, 187.36, 'Donetta Thorne', '87 Londonderry Place',
        'dthornen@wikipedia.org', 1, '2017-05-29 19:54:24');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('cfd831cb-65cc-454f-bc79-54cd79b571bf', 20, 13, 118.35, 'Alane Hampton', '9 Grayhawk Trail',
        'ahamptono@cocolog-nifty.com', 2, '2017-06-09 12:14:31');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('491d8147-748c-44ee-b495-be9cd62d50f6', 7, 7, 176.78, 'Collete Beacon', '343 Esch Center', 'cbeaconp@freewebs.com',
   1, '2017-06-12 02:38:24');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('2310b87f-3eea-4f9a-a4a5-ac32f7102458', 5, 17, 294.29, 'Valeria Caccavale', '9908 Karstens Avenue',
        'vcaccavaleq@dmoz.org', 1, '2017-05-28 22:58:18');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('e93df303-a127-4115-b916-df03fc3dd2da', 26, 12, 7.51, 'Eve Ordemann', '73 Kipling Pass', 'eordemannr@amazon.co.uk',
   2, '2017-05-29 19:27:09');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('79680673-7bbd-41ee-9305-034c7c181c59', 44, 5, 126.16, 'Karissa Hackinge', '86762 Stuart Terrace',
        'khackinges@creativecommons.org', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('07aad8b0-cffc-496c-8e37-94ada36853aa', 37, 14, 277.9, 'Baxy Geggie', '43 Delaware Park', 'bgeggiet@altervista.org',
   2, '2017-05-21 19:17:20');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('bdbcb1ec-38f1-47a2-9c59-b4f7bbac57e4', 33, 17, 223.29, 'Amalee Tylor', '048 Arkansas Crossing', 'atyloru@mapy.cz',
   0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('0d90682f-5312-4973-8104-d1120302bb8e', 30, 6, 291.91, 'Carole Paton', '101 Sundown Street', 'cpatonv@blogspot.com',
   0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('a5cc5504-85b6-42bb-9cf1-b57755d69cd1', 10, 20, 91.92, 'Lamar Collister', '25646 Derek Court',
        'lcollisterw@unesco.org', 2, '2017-06-13 20:10:08');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('fee83db0-c9c4-468b-9891-a1eaffab60ee', 26, 14, 222.63, 'Clementine Gumery', '603 Garrison Lane', 'cgumeryx@un.org',
   0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('a1b18517-fdc5-40ba-baaa-8c535b2175a7', 29, 18, 79.71, 'Priscilla Kingswood', '9447 Sherman Terrace',
        'pkingswoody@infoseek.co.jp', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('53843983-f795-434d-bae5-9851c95e53ab', 46, 19, 240.94, 'Reinaldos Colliar', '11861 Michigan Place',
        'rcolliarz@rakuten.co.jp', 2, '2017-05-25 13:55:28');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('a4638cd0-197c-44c0-b23a-c5c47e00c5ba', 46, 12, 24.91, 'Ana Reames', '58713 Sunbrook Parkway',
        'areames10@sina.com.cn', 1, '2017-05-31 00:43:35');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('0c42cd55-3139-45d8-b51f-4f814eb8ad68', 46, 12, 81.31, 'Mickey Gaskal', '949 Pearson Way', 'mgaskal11@amazonaws.com',
   2, '2017-05-22 20:27:20');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('ad72562f-4c09-4b2c-a1a8-479581e4b4b0', 24, 2, 156.36, 'Darrel Djordjevic', '14 Waxwing Hill',
        'ddjordjevic12@dedecms.com', 1, '2017-06-10 08:30:12');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('a579fdbf-fbd0-4bc9-81a8-b08de25ce4bd', 10, 8, 254.84, 'Hilliary Craig', '4 Petterle Park', 'hcraig13@reuters.com',
   2, '2017-05-28 00:33:38');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('3f3510f1-2f39-4bd7-812c-c0bc1f70cd5b', 3, 18, 18.35, 'Ami Jumont', '2691 Darwin Way', 'ajumont14@kickstarter.com',
   1, '2017-05-20 23:04:28');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('ad52e04d-b859-437b-a71a-a98a6e141838', 21, 13, 63.43, 'Niven De Luna', '93476 Del Mar Avenue', 'nde15@wikia.com', 1,
   '2017-06-14 04:47:12');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('f2103a0b-0352-4f80-b83d-27d50a5b3051', 20, 14, 14.01, 'Fair Nelane', '4513 Drewry Point', 'fnelane16@xrea.com', 1,
   '2017-05-25 12:42:39');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('fb0de37a-d1fe-461e-bf6f-45f137636988', 2, 9, 28.2, 'Amanda Gypps', '5674 Mallory Way', 'agypps17@yahoo.co.jp', 2,
   '2017-05-21 08:46:40');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('03b78140-4ab9-4f35-bb67-12f72550a6a0', 1, 10, 74.23, 'Vincenz Girkin', '05683 Gale Plaza', 'vgirkin18@i2i.jp', 2,
   '2017-06-12 13:47:39');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('7e1839e1-cb60-4932-b56c-a852c59191ac', 33, 13, 9.61, 'Jeannine Drakes', '3341 Harper Crossing',
        'jdrakes19@simplemachines.org', 1, '2017-06-13 15:22:48');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('837b87f4-1f57-4d6a-bfd5-855ae67e4a81', 39, 14, 32.01, 'Melisandra Wasylkiewicz', '12 Bartillon Plaza',
        'mwasylkiewicz1a@zimbio.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('e7564ce8-c8d5-403a-8d3a-200e328a16c9', 13, 12, 105.52, 'Kristyn Motton', '7722 Morningstar Avenue',
        'kmotton1b@newsvine.com', 2, '2017-06-03 00:11:13');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('86f42e90-a0bf-48af-b6b7-887513cf36f6', 4, 13, 200.96, 'Leontyne Firsby', '92 Dwight Way', 'lfirsby1c@about.me', 0,
   NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('20b1d310-f26c-43ae-9dab-225727c88538', 25, 11, 177.12, 'Taylor Dimitriev', '20 Harper Trail',
        'tdimitriev1d@prweb.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('2b163b67-541e-4941-9cf1-9ebb07a97d7b', 28, 3, 246.59, 'Sheryl Elgie', '32 Golden Leaf Hill',
        'selgie1e@thetimes.co.uk', 1, '2017-06-01 07:18:07');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('6c45f437-8211-47f6-ab9a-9cf13ca57603', 16, 5, 68.4, 'Gay Chrstine', '6386 Longview Terrace', 'gchrstine1f@cnet.com',
   2, '2017-05-26 08:18:15');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('bc3daad5-43dd-4e41-9525-b5ff03e83467', 16, 6, 190.98, 'Adolphe Mutton', '8910 Melvin Court', 'amutton1g@va.gov', 0,
   NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('bede4113-484f-48fe-84f8-2971ea589e0d', 5, 15, 1.85, 'Niven Balaison', '872 Carioca Place', 'nbalaison1h@sbwire.com',
   2, '2017-06-10 11:59:38');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('8c292204-8a11-4d38-bae3-8c318665090b', 2, 7, 212.68, 'Ingrim Melesk', '65 Homewood Hill', 'imelesk1i@cbsnews.com',
   2, '2017-05-25 12:37:25');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('948955bd-f0da-4dc9-bc65-6c5f07c0805b', 18, 12, 39.33, 'Allistir McMillan', '57 Raven Parkway', 'amcmillan1j@vk.com',
   2, '2017-06-09 10:38:46');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('0d6a1eb4-2ba2-4964-9892-c556a2dcdb5c', 42, 9, 119.64, 'Isac Pavier', '0 Westerfield Road', 'ipavier1k@dmoz.org', 2,
   '2017-05-27 21:50:57');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('993083b0-66da-43c3-8a68-83ad588bd81d', 36, 20, 141.35, 'Crin Borkett', '4087 Ridgeway Place',
        'cborkett1l@nytimes.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('c07228fc-ed16-4260-8d33-a704a1c117ef', 17, 10, 158.72, 'Rakel Filipchikov', '04 Karstens Way',
        'rfilipchikov1m@go.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('9f3f255f-64a4-4df8-8187-e29f20782466', 37, 9, 205.4, 'Beck Haresnaip', '79 Scott Junction', 'bharesnaip1n@admin.ch',
   1, '2017-06-12 22:58:17');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('b244ce17-455a-4f10-9f1f-a8fc25e9d874', 29, 13, 296.81, 'Inger Heinsius', '485 Bultman Circle',
        'iheinsius1o@domainmarket.com', 2, '2017-06-01 07:30:42');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('4aa45305-f6b0-4c91-97ec-f51ce86a0972', 37, 13, 290.63, 'Ebeneser Frisby', '6705 Summit Circle',
        'efrisby1p@mozilla.org', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('94275d40-fe29-400e-8af2-1ffd43e8483d', 36, 4, 111.45, 'Alexandre Pickersail', '49 Schmedeman Lane',
        'apickersail1q@skype.com', 1, '2017-05-19 01:02:58');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('7b04081c-41ae-4260-ad78-9073e3046edb', 15, 2, 236.28, 'Jessa Toll', '45053 Mallard Drive',
        'jtoll1r@yellowpages.com', 2, '2017-05-27 05:45:15');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('07d094cb-c4ed-41f6-979a-c2f3260ac147', 27, 14, 91.03, 'Colette Phelps', '7047 Brentwood Trail', 'cphelps1s@fc2.com',
   1, '2017-06-01 09:55:34');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('5c6bd49f-0828-41e2-b429-38ebcdcc955e', 35, 20, 61.31, 'Thacher Garric', '97844 Green Ridge Road',
        'tgarric1t@soup.io', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('a9ab4eed-d1f3-4a45-8013-c6c3a18fb911', 40, 14, 19.16, 'Ewart Bubbear', '55 Southridge Alley',
        'ebubbear1u@studiopress.com', 1, '2017-05-20 14:23:44');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('e4edf17c-6059-4bbc-b516-0db62ec3d5e3', 15, 11, 132.28, 'Weidar Warke', '6113 Almo Road', 'wwarke1v@shareasale.com',
   2, '2017-06-07 10:13:40');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('709f99ac-7a75-4282-b793-7016294dae7a', 19, 12, 7.17, 'Bernie Tully', '3220 Erie Pass', 'btully1w@photobucket.com',
   1, '2017-05-22 17:23:15');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('3bcfab6f-552e-4708-8acf-85528b3ffa90', 32, 12, 181.11, 'Berkley Vakhonin', '1 Sundown Road',
        'bvakhonin1x@rediff.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('46895667-8978-437e-a3ee-50c5b97e2d0b', 13, 20, 105.28, 'Carroll Gino', '5 Lighthouse Bay Center',
        'cgino1y@google.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('7ecac3eb-1551-48b5-8ef5-8c12c6e16882', 7, 17, 0.24, 'Lucien Pateman', '16 Rockefeller Trail',
        'lpateman1z@amazon.co.uk', 2, '2017-05-25 12:43:51');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('630e1edb-3999-4d5e-b079-c389669abf03', 20, 17, 107.99, 'Ellary Felix', '85127 Graceland Hill',
        'efelix20@unicef.org', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('fee3efa7-47ae-4aa5-8e8f-a70cfb32a51b', 42, 14, 113.56, 'Leonid Crosen', '1 Shasta Point', 'lcrosen21@slate.com', 0,
   NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('717d1528-11d8-41aa-9dcb-027b71094aec', 26, 9, 188.88, 'Laetitia Barrie', '43326 Portage Parkway',
        'lbarrie22@feedburner.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('a275ea2a-df31-4436-b55d-a69d15c9ed73', 17, 1, 84.02, 'Selle Lafford', '97645 Moose Plaza', 'slafford23@dion.ne.jp',
   0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('cbc8f1d5-b696-41ac-a30d-47be739f4120', 29, 20, 297.18, 'Isidora Phillis', '8306 Eagle Crest Crossing',
        'iphillis24@t.co', 1, '2017-05-20 03:22:22');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('833cff12-c0d5-4ad6-b526-add95aece30f', 12, 4, 30.18, 'Tom Croser', '7767 Bellgrove Avenue',
        'tcroser25@macromedia.com', 1, '2017-06-13 10:59:34');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('2a049111-a9fe-4ad4-acf2-62bab177a8bd', 13, 5, 243.82, 'Clerissa Chiplen', '872 East Trail', 'cchiplen26@hexun.com',
   2, '2017-06-13 08:59:17');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('0c9478dd-7086-4561-ab0e-d7e9bdcce4db', 6, 2, 242.94, 'Constantine Driscoll', '4278 Cambridge Circle',
        'cdriscoll27@wunderground.com', 2, '2017-06-02 02:31:26');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('9ccdd146-b298-46f2-a84b-68edef9d6d2c', 11, 5, 184.25, 'Rebeka Raccio', '212 Reinke Lane',
        'rraccio28@photobucket.com', 1, '2017-06-11 05:19:54');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('b55d9c1d-1996-48d6-b17c-8add6b75e0ed', 5, 6, 226.2, 'Kimmie Mallebone', '45743 Coolidge Parkway',
        'kmallebone29@stanford.edu', 2, '2017-06-06 21:05:43');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('91591447-cd8e-404a-b19e-e084b1b9ff92', 43, 20, 240.96, 'Tobi Dunhill', '0983 Claremont Center', 'tdunhill2a@qq.com',
   1, '2017-06-02 08:30:37');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('6c43c28b-c599-4191-bd31-6386c839a48f', 8, 4, 97.77, 'Salmon Ruttgers', '15 Lawn Plaza', 'sruttgers2b@globo.com', 2,
   '2017-05-30 07:59:55');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('bfcd48bd-db44-4094-b399-d524525c55e0', 10, 12, 103.52, 'Page Loughead', '3632 New Castle Pass',
        'ploughead2c@mayoclinic.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('194a5c51-27e2-447f-b397-3db0bcdc51e2', 15, 12, 138.81, 'Jean Clearie', '41203 Debra Center',
        'jclearie2d@123-reg.co.uk', 1, '2017-06-10 19:59:14');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('07786590-b427-4228-bfd2-b5768f470f26', 1, 6, 244.88, 'Casandra Abrahamowitcz', '1 Farragut Park',
        'cabrahamowitcz2e@cbc.ca', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('9af7032f-aa67-49b4-9861-bee1dd414ece', 10, 12, 81.64, 'Gil Dulanty', '717 Miller Hill',
        'gdulanty2f@dagondesign.com', 2, '2017-05-23 19:55:00');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('97b56c4b-79e2-426f-9c38-b21cc8826a90', 37, 18, 210.67, 'Gage Pymar', '91932 Maryland Avenue', 'gpymar2g@youtu.be',
   0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('7d0933a5-45a5-4131-8d0a-2ac9076eb0fd', 10, 16, 285.93, 'Yoshiko Markey', '03 Sunbrook Lane',
        'ymarkey2h@e-recht24.de', 1, '2017-06-12 20:09:45');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('b776437c-f6c9-41a7-9806-f0bc082a885f', 38, 15, 65.46, 'Raine Catmull', '539 Cottonwood Center', 'rcatmull2i@51.la',
   0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('7e19fe7c-7f3b-4ce2-a13b-42b166c2f192', 6, 16, 122.24, 'Dyann Dani', '0340 Jenna Court', 'ddani2j@google.com.au', 2,
   '2017-06-01 13:23:58');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('f6874581-15cf-4b87-b83e-ae0214f87aa5', 22, 11, 102.6, 'Roselin Gunn', '974 Daystar Circle', 'rgunn2k@noaa.gov', 0,
   NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('b1153980-f08c-41d7-8bc1-7ef5121f7fef', 39, 20, 91.4, 'Viviyan McIlenna', '2662 Lindbergh Alley',
        'vmcilenna2l@geocities.jp', 2, '2017-05-28 06:20:53');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('7d223269-07f9-49c5-886d-8d643d4c1036', 29, 16, 151.02, 'Ahmed Sewter', '850 Bowman Circle',
        'asewter2m@gravatar.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('9482b5ca-3978-407c-a22c-a9e0993210c0', 35, 17, 154.27, 'Tamiko Kemmett', '74896 Lake View Alley',
        'tkemmett2n@twitpic.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES
  ('3abae8ae-6ab6-40f9-a5e4-8a10945df216', 21, 19, 112.7, 'Garvin Feyer', '5783 Stang Alley', 'gfeyer2o@cdbaby.com', 0,
   NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('a5c768cb-a174-495d-9be3-7bdaeac9f3ec', 11, 9, 129.72, 'Erl Kubasek', '3 Forest Dale Trail',
        'ekubasek2p@bizjournals.com', 2, '2017-05-26 03:32:35');
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('6afbf464-9b16-44fb-8fd0-fe8deeb471a3', 33, 16, 21.67, 'Worthington Blaylock', '829 Harper Terrace',
        'wblaylock2q@flavors.me', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, client_name, client_address, client_email, state, state_date)
VALUES ('fe4f5c32-e03a-4d6a-beb1-e5513cb74624', 26, 9, 211.28, 'Nady Schaumaker', '26163 Sundown Hill',
        'nschaumaker2r@mediafire.com', 1, '2017-06-14 15:03:21');