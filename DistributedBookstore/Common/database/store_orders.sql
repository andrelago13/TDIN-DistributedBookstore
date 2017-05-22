DROP TABLE IF EXISTS store_orders;
CREATE TABLE store_orders (
  id             VARCHAR(40),
  book_id        INT,
  quantity       INT,
  total_price    DECIMAL(5, 2),
  user_id        INT,
  order_date     DATETIME,
  client_name    VARCHAR(50),
  client_address VARCHAR(50),
  client_email   VARCHAR(50),
  state          INT,
  dispatch_date  DATETIME
);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('db2536c9-5401-4399-903d-8b0030f5bfa7', 25, 5, 283.24, NULL, '2017-01-16 19:27:14', 'Rhiamon Yearne',
                                                '82 Declaration Junction', 'ryearne0@examiner.com', 2,
                                                '2017-04-25 21:50:54');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('34c2b6e4-f996-4aab-9007-54b12fa239cc', 32, 10, 275.28, NULL, '2016-07-19 13:13:12', 'Iolande Cotes',
                                                '0454 Monica Terrace', 'icotes1@toplist.cz', 2, '2017-04-11 19:19:44');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('d776fcff-2562-4459-8595-2538127a3eb4', 21, 6, 4.24, NULL, '2016-10-05 05:41:09', 'Gilberto Treherne',
                                                '3 Loomis Trail', 'gtreherne2@ihg.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('f36a8929-801f-41dc-8eb6-5d320f497f5a', 35, 13, 48.2, NULL, '2016-09-09 22:43:57', 'Robinia Grundell',
                                                '1689 Packers Alley', 'rgrundell3@answers.com', 2,
                                                '2017-03-07 12:26:23');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('93674fa6-f258-405f-8565-c3ca315b4cd1', 21, 18, 63.83, NULL, '2016-10-13 14:51:36', 'Shina Cheak', '1 Almo Plaza',
                                           'scheak4@google.com', 1, '2017-03-28 19:50:30');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('38098721-9669-4366-8d7d-cb4aa176697f', 6, 10, 195.95, NULL, '2016-10-29 21:49:44', 'Claudianus Casaccia',
                                                '8394 Mandrake Place', 'ccasaccia5@sakura.ne.jp', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('ac1440b2-0f69-4962-ad44-c5518933e9a1', 21, 15, 94.17, 21, '2016-08-22 01:32:05', 'Holly-anne Bushel',
                                                '121 Karstens Drive', 'hbushel6@cocolog-nifty.com', 2,
                                                '2017-03-17 22:43:57');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('14e38a60-6f71-4feb-bcd7-04e6a64dd676', 4, 14, 72.44, NULL, '2016-08-14 20:12:33', 'Ulrike Tran',
                                                '10827 Randy Circle', 'utran7@slate.com', 1, '2017-03-22 08:56:20');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('944796f9-7799-42ed-b58f-5f73e1c57c88', 48, 13, 105.34, NULL, '2016-11-22 16:32:10', 'Clare Leglise',
                                                '571 Bay Terrace', 'cleglise8@dyndns.org', 2, '2017-05-14 10:55:33');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('b67a4efc-76ba-4f66-9d74-eb6f571eb0e6', 36, 18, 273.55, NULL, '2016-10-11 03:58:29', 'Waverley Izkovici',
                                                '462 Manitowish Crossing', 'wizkovici9@hubpages.com', 1,
                                                '2017-04-11 16:13:52');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('6806ef64-e081-4952-b5fe-b774d7bc1ec8', 12, 14, 282.53, NULL, '2016-08-02 07:57:06', 'Lavinia Cottier',
                                                '5 Moland Alley', 'lcottiera@earthlink.net', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('c3ce034e-fdf3-4d02-8caf-b4f9d901293f', 30, 5, 145.87, NULL, '2016-12-19 06:25:03', 'Ronnie Bulger',
                                                '016 Transport Court', 'rbulgerb@mlb.com', 1, '2017-05-07 19:13:56');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('b4ad03b5-bb70-4ce2-b445-bbf1655a16c2', 27, 7, 262.95, NULL, '2017-04-04 15:58:31', 'Ely Dowey',
                                                '5 Summer Ridge Pass', 'edoweyc@slate.com', 2, '2017-03-27 04:16:41');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('e096c402-6c0d-45cc-81d2-3424b970bb3e', 30, 16, 292.21, NULL, '2016-10-13 22:42:52', 'Evvie Sleney',
                                                '07962 Gale Street', 'esleneyd@opera.com', 2, '2017-03-05 03:27:25');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('97a7f8d4-065b-4e96-94f9-bfcf901f89b4', 26, 12, 19.96, 8, '2016-08-17 22:36:35', 'Thedrick Boick',
                                                '5772 Arkansas Crossing', 'tboicke@eventbrite.com', 1,
                                                '2017-04-07 07:11:06');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('823045bb-4498-496d-8716-1746d310f5fb', 43, 10, 102.33, NULL, '2016-06-17 21:36:26', 'Renate Le Teve',
                                                '3257 Sommers Road', 'rlef@reference.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('55237e3d-551a-4cd0-9206-5e7573d21b36', 14, 3, 110.01, NULL, '2017-01-31 18:48:21', 'Annora Lippett',
                                                '75067 Bluejay Crossing', 'alippettg@ucoz.ru', 2,
                                                '2017-03-25 13:01:32');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('c0ac00af-2344-42aa-86c1-a2f2b07b087e', 25, 4, 224.61, NULL, '2017-05-08 17:12:50', 'Teador Eschelle',
                                                '75 Meadow Vale Lane', 'teschelleh@house.gov', 2,
                                                '2017-05-10 11:56:22');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('e7d5aabb-7dba-41eb-82b9-d21c649229a2', 22, 9, 287.54, NULL, '2016-12-27 04:37:48', 'Hartley Beau',
                                                '505 Forest Trail', 'hbeaui@delicious.com', 2, '2017-03-23 02:06:27');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('9965b7de-286d-4eeb-8c51-ac17d7735d11', 49, 19, 60.19, 22, '2016-10-07 23:57:22', 'Fayette Chapman',
                                                '22458 Truax Court', 'fchapmanj@mtv.com', 1, '2017-03-03 04:09:48');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('40ea7b5f-f8ae-451c-a0a7-04feeb5d5a01', 43, 15, 59.84, NULL, '2016-07-24 04:14:12', 'Lissi Rubinowitsch',
                                                '298 Farmco Way', 'lrubinowitschk@goo.gl', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('9e68a494-7c88-4838-9a09-5dd3b5d58c31', 50, 13, 190.99, NULL, '2017-01-08 10:42:56', 'Dan Orthmann',
                                                '74 Oriole Alley', 'dorthmannl@4shared.com', 2, '2017-05-17 08:09:04');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('ac517bef-7eef-492a-89b9-d2d68ebc9b66', 27, 4, 96.91, 25, '2016-06-19 05:49:30', 'Pincas McQuie', '4238 Toban Lane',
                                           'pmcquiem@opera.com', 2, '2017-04-08 21:40:42');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('7719ffa3-80c1-4f77-8e5f-9b6b4ce53f74', 44, 8, 232.76, NULL, '2016-12-27 22:24:12', 'Kerk D''Acth',
                                                '30006 Stephen Court', 'kdacthn@addthis.com', 2, '2017-04-16 04:54:00');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('de9a4a88-2b1f-4490-85a2-f13e0ff22568', 40, 12, 139.87, NULL, '2016-06-16 19:49:55', 'Phelia Aronoff',
                                                '2 Dawn Center', 'paronoffo@barnesandnoble.com', 2,
                                                '2017-03-21 07:24:54');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('325b236d-79e8-4ddb-a427-fb2bd75474f7', 32, 4, 187.85, NULL, '2016-10-30 22:14:36', 'Karolina Banasevich',
                                                '1 Holmberg Way', 'kbanasevichp@elegantthemes.com', 1,
                                                '2017-04-15 12:34:14');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('23ab1165-aa3b-4b52-9292-45b684acba36', 12, 9, 149.9, 8, '2017-05-04 13:20:34', 'Carla Toop',
                                                '85660 Hoepker Junction', 'ctoopq@icio.us', 2, '2017-03-24 23:01:11');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('287c1139-98da-4765-830f-960cf893fd7f', 8, 2, 18.12, 10, '2016-07-20 15:34:58', 'Shelia Kellaway',
                                                '8 Meadow Valley Way', 'skellawayr@ftc.gov', 2, '2017-02-27 21:21:01');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('e2df945c-edd4-4f56-b597-7fc5ccfe907c', 45, 18, 295.16, 11, '2017-03-07 12:33:33', 'Thalia Pettyfar',
                                                '44628 Holy Cross Hill', 'tpettyfars@comcast.net', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('6151543f-a726-424b-b32d-f9eddb4c7f97', 1, 16, 104.9, 6, '2016-11-01 10:50:50', 'Vaughan Pratley', '07 Nancy Lane',
                                           'vpratleyt@msu.edu', 2, '2017-04-27 07:21:56');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('adce2b5f-b393-434c-be22-fd698751dae6', 10, 1, 39.26, NULL, '2016-10-16 10:58:24', 'Lenard Tollow',
                                                '0 Westport Place', 'ltollowu@yandex.ru', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('6f55db42-1903-42b3-8d8a-ddc09afba97f', 45, 13, 287.6, NULL, '2016-09-09 05:37:19', 'Valerye Mandeville',
                                                '4698 Schlimgen Plaza', 'vmandevillev@yellowpages.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('aa0614ab-7ebc-4afd-b224-9c58395b9209', 24, 8, 18.51, NULL, '2016-05-28 15:48:40', 'Candide Schlagh',
                                                '635 Meadow Vale Lane', 'cschlaghw@ebay.co.uk', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('7e3fe25a-596f-4539-841c-78d5817eb08e', 6, 1, 247.49, NULL, '2017-05-10 02:34:39', 'Wally Zanneli',
                                                '90 Sunfield Point', 'wzannelix@meetup.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('bc2950f3-c5b9-46db-8b33-259922999ded', 40, 11, 280.52, NULL, '2017-01-23 23:33:22', 'Dunc Connah',
                                                '82717 Del Mar Circle', 'dconnahy@virginia.edu', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('e1d31662-4b93-4ace-940e-ff4e9ac88b08', 32, 18, 168.44, NULL, '2016-07-27 01:46:01', 'Devinne Mahon',
                                                '97184 Esch Street', 'dmahonz@latimes.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('bfbcb38b-6678-40df-b0bf-cb626c5e0ee9', 40, 2, 29.78, NULL, '2016-10-21 19:32:23', 'Merrick Lindholm',
                                                '7 Gulseth Terrace', 'mlindholm10@thetimes.co.uk', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('f5559613-991a-41eb-a831-2d13b962b181', 48, 19, 184.01, 22, '2016-07-06 07:06:32', 'Dag Betteson',
                                                '398 Oxford Terrace', 'dbetteson11@bigcartel.com', 1,
                                                '2017-03-31 04:51:27');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('3f7c7782-e30e-4490-a845-bbaaf051c42b', 27, 14, 233.77, 17, '2017-03-26 08:02:37', 'Jewell Dupre', '53 Monica Point',
                                           'jdupre12@apache.org', 1, '2017-03-11 22:36:24');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('2e82b126-9b67-4b36-8bb6-ddac39f87338', 50, 6, 210.78, NULL, '2016-08-12 12:39:33', 'Teresina Bellelli',
                                                '64 Orin Point', 'tbellelli13@woothemes.com', 1, '2017-04-04 00:28:37');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('7898027c-93a4-4a8d-9857-8dd0f447a812', 9, 6, 69.41, NULL, '2016-12-09 18:22:24', 'Luce Whittek',
                                                '2167 Bultman Lane', 'lwhittek14@xinhuanet.com', 1,
                                                '2017-04-24 00:17:02');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('574c25b5-7f32-48ad-9a12-45ad48cbbada', 47, 18, 15.32, NULL, '2016-08-28 03:28:54', 'Arabela Newhouse',
                                                '5151 Rockefeller Terrace', 'anewhouse15@washington.edu', 1,
                                                '2017-04-29 05:11:08');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('179998ba-0aa6-4adb-a4eb-db1f7e40f330', 27, 19, 216.37, NULL, '2016-12-20 15:31:20', 'Benedicta Fludder',
                                                '09112 Artisan Drive', 'bfludder16@ning.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('d16c683a-a7bb-45ab-8581-debc2884473b', 6, 8, 241.86, NULL, '2017-02-08 13:20:30', 'Dre Vauter', '3811 Toban Park',
                                           'dvauter17@woothemes.com', 1, '2017-02-23 22:48:48');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('0bd8615a-386b-4547-9061-03230f081904', 30, 11, 229.19, NULL, '2016-07-17 06:59:59', 'Melany Philson',
                                                '2963 Kedzie Street', 'mphilson18@princeton.edu', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('3a8b72c3-f7b7-424f-94bf-3352882ab5a8', 28, 17, 13.91, NULL, '2017-03-21 09:34:37', 'Yovonnda Reede',
                                                '94710 Corry Hill', 'yreede19@sbwire.com', 2, '2017-04-07 01:30:21');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('a86bc761-a155-4e50-b82c-3d616c484ae7', 2, 2, 4.46, 18, '2016-09-22 17:01:36', 'Hillery Goff', '5 Rieder Lane',
                                                'hgoff1a@ft.com', 2, '2017-04-11 07:59:20');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('385eb07d-60a5-4101-ab7e-bc655461a041', 30, 12, 125.32, NULL, '2017-02-20 00:28:52', 'Minetta Glanders',
                                                '551 Lake View Park', 'mglanders1b@fotki.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('c5d6da6c-3f5b-413a-bdc4-f6e9e433216d', 6, 9, 263.35, NULL, '2016-12-01 19:47:20', 'Shelley Deinhardt',
                                                '890 Upham Way', 'sdeinhardt1c@qq.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('2454dd3d-59c5-4d3b-8b1d-da6c455ff837', 13, 5, 123.25, 5, '2017-03-30 15:00:13', 'Kathryne Bain',
                                                '3813 Nobel Terrace', 'kbain1d@friendfeed.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('3ec0127d-b798-4ddd-ba54-123211945e87', 34, 15, 63.45, NULL, '2017-04-26 02:13:17', 'Neale McDowall',
                                                '804 Norway Maple Street', 'nmcdowall1e@google.it', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('a9a6825a-462a-4885-8ce1-34b746f6e007', 38, 6, 17.04, NULL, '2016-09-26 13:49:56', 'Dacia Springate',
                                                '16116 Fallview Lane', 'dspringate1f@cafepress.com', 2,
                                                '2017-02-27 08:14:35');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('964bfff4-aab5-4f4b-bfa7-f1bde47abc32', 39, 1, 229.36, 21, '2017-04-13 10:15:23', 'Bartel Paulsen',
                                                '856 Namekagon Lane', 'bpaulsen1g@yandex.ru', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('ed03f8cf-5fa0-4a8d-9b9b-5c57ffdfb175', 18, 14, 64.62, 2, '2016-10-31 09:58:14', 'Kathryne Deaves',
                                                '855 Rutledge Park', 'kdeaves1h@ameblo.jp', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('0fcb9c25-48a2-4a76-9858-65be6cd89c82', 45, 17, 71.63, NULL, '2016-06-18 07:53:45', 'Nicoli Retter',
                                                '1628 Fremont Drive', 'nretter1i@ask.com', 2, '2017-04-03 00:43:17');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('7d429a58-bc5b-4ae8-887b-1350e0d0be15', 45, 17, 203.6, NULL, '2017-04-07 09:41:12', 'Marchelle Warbrick',
                                                '641 Sunbrook Street', 'mwarbrick1j@dailymail.co.uk', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('e4986dd8-bb41-4f14-b522-1176d4e97b9f', 49, 1, 186.75, NULL, '2016-10-09 03:40:29', 'Alfy Leguey', '6 Dapin Road',
                                           'aleguey1k@geocities.com', 2, '2017-04-05 23:26:52');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('00eb20ee-95ec-4b62-90b9-e7c56f0d863d', 38, 16, 100.52, NULL, '2017-02-22 17:40:17', 'Fitz Bourdice',
                                                '720 Kinsman Plaza', 'fbourdice1l@sphinn.com', 2,
                                                '2017-04-23 15:08:26');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('65f603ac-80db-4ee5-af33-f60a93c16beb', 11, 13, 132.57, NULL, '2017-02-16 20:17:48', 'Konstantin Bellwood',
                                                '144 Maple Wood Parkway', 'kbellwood1m@telegraph.co.uk', 1,
                                                '2017-05-18 04:12:46');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('220802ab-7bee-4e33-a9a0-585ccfbf96be', 12, 8, 244.02, 18, '2016-06-24 21:47:09', 'Michelle Nowakowska',
                                                '39 Emmet Alley', 'mnowakowska1n@jugem.jp', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('a7ccf544-5b28-4996-80d6-d9225cd093b7', 19, 20, 35.03, 14, '2016-09-21 05:09:02', 'Olav Bowle',
                                                '689 Twin Pines Park', 'obowle1o@ibm.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('543d48b5-5e4b-41e9-b703-cfe2d6ddd831', 22, 6, 136.94, NULL, '2017-03-13 22:35:22', 'Bradan Aldrich',
                                                '05566 Reindahl Trail', 'baldrich1p@yale.edu', 2,
                                                '2017-03-25 21:33:37');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('06c60919-79cc-4e68-b753-ed6d8c2aa794', 6, 12, 196.63, NULL, '2017-04-11 09:13:11', 'Becca Hanton',
                                                '20 Brown Junction', 'bhanton1q@nature.com', 1, '2017-03-15 05:34:28');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('c4aa0a1b-b7d0-421b-9615-de84a7f6f910', 32, 18, 299.62, NULL, '2016-09-10 19:53:56', 'Katherina Losebie',
                                                '3 Monterey Parkway', 'klosebie1r@merriam-webster.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('844c893f-f3df-4f9a-a890-60055230f81f', 50, 1, 267.64, NULL, '2016-08-16 19:14:14', 'Theodor Meeks',
                                                '16 Northridge Court', 'tmeeks1s@nasa.gov', 2, '2017-03-01 14:06:27');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('b13759c7-c536-42c2-b0ab-d959c248d058', 22, 12, 291.12, NULL, '2017-01-31 23:35:39', 'Lizzy Ambrosetti',
                                                '2 Pepper Wood Road', 'lambrosetti1t@a8.net', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('40047f06-10f7-4141-b810-2339d967bcda', 13, 14, 18.13, NULL, '2016-09-16 06:31:47', 'Emlyn Lukesch',
                                                '0930 Maryland Drive', 'elukesch1u@1688.com', 2, '2017-05-12 22:06:26');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('e5a79a3e-4131-4030-be06-94c79a584ff3', 44, 17, 266.92, 16, '2016-11-25 07:37:50', 'Katy Dearlove',
                                                '45 Porter Circle', 'kdearlove1v@xrea.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('998f49b5-cc65-4b42-8a49-61fb318d4957', 44, 17, 29.53, NULL, '2016-10-10 22:05:27', 'Porty Gudahy',
                                                '3 Lillian Crossing', 'pgudahy1w@addthis.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('c5899c74-b521-4c8a-8c38-3a008b874c99', 45, 20, 271.9, NULL, '2017-05-07 20:11:17', 'Crosby Weed',
                                                '4 Hansons Junction', 'cweed1x@mac.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('83450d3f-7463-4764-8358-4c6747a4742d', 19, 12, 286.38, 6, '2016-06-09 05:39:30', 'Victoir Paye',
                                                '8556 Sheridan Alley', 'vpaye1y@home.pl', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('95ac2388-7708-41de-9ee5-46948f040871', 25, 20, 136.28, NULL, '2017-02-12 06:48:08', 'Temp Linstead',
                                                '5 Becker Pass', 'tlinstead1z@uiuc.edu', 1, '2017-05-09 11:41:41');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('52eb3513-baa2-441c-a931-3a8764435bb8', 11, 13, 86.89, NULL, '2017-05-12 21:36:53', 'Vernor Nolda', '981 Lien Trail',
                                           'vnolda20@wordpress.org', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('7dc443eb-bc8b-4211-b1a0-745888f406cf', 28, 14, 218.39, NULL, '2016-08-21 15:13:43', 'Grier Coskerry',
                                                '5549 Gulseth Hill', 'gcoskerry21@uiuc.edu', 2, '2017-04-17 19:30:49');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('0d897e53-ce4a-4fe4-9dbc-65a71206ddfa', 4, 19, 255.61, 18, '2016-05-31 16:35:20', 'Lannie Bison',
                                                '19890 Glacier Hill Court', 'lbison22@apple.com', 2,
                                                '2017-03-12 18:45:42');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('52656ae7-6628-42ee-98f9-266f579919e6', 35, 7, 279.1, NULL, '2016-11-17 05:16:32', 'Reade Ginger',
                                                '869 Anderson Street', 'rginger23@engadget.com', 2,
                                                '2017-02-23 16:04:48');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('c981b6c9-ff77-4f69-aac2-e1cc0c30da30', 21, 8, 135.28, NULL, '2016-09-30 23:16:23', 'Deonne Doick',
                                                '91 Rusk Parkway', 'ddoick24@unblog.fr', 2, '2017-04-14 16:51:46');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('b5c9fce0-f3b5-444e-a6b3-d426a8476d16', 1, 1, 279.64, 24, '2017-02-21 08:19:39', 'Nat Kershow',
                                                '48271 Atwood Center', 'nkershow25@patch.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('e43c6c0c-eb6b-475e-9d24-347344f56441', 40, 9, 211.58, 2, '2016-09-30 15:48:14', 'Kalie Meggison', '5 Novick Drive',
                                           'kmeggison26@sitemeter.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('e68a874d-03ad-4cab-a04e-493c0bfd4e1a', 13, 4, 15.99, 3, '2016-09-12 16:08:18', 'Hedvige Perrone', '82 Aberg Trail',
                                           'hperrone27@tripod.com', 1, '2017-05-02 01:30:34');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('b4c31f1c-9738-4379-b9af-b3c46d3a1b37', 15, 5, 45.33, NULL, '2017-02-09 15:52:43', 'Gaspar Epton',
                                                '959 Hallows Junction', 'gepton28@cnbc.com', 1, '2017-04-30 06:14:24');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('44e236ad-daeb-4829-8f61-12a6e1c059b2', 6, 10, 129.05, 7, '2016-07-26 20:30:54', 'Doll Wakes', '942 West Parkway',
                                           'dwakes29@who.int', 1, '2017-02-28 02:00:55');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('a0781cfc-7114-4c75-9cbc-b6015b59edea', 11, 12, 9.45, NULL, '2016-10-05 23:25:26', 'Stu Fearnsides',
                                                '5 Tennessee Drive', 'sfearnsides2a@virginia.edu', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('f9608c25-d452-401e-b4b6-6489177cfc15', 17, 3, 110.45, NULL, '2016-09-19 15:19:59', 'Nancy Maude',
                                                '448 Ridgeview Court', 'nmaude2b@geocities.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('bdb2ec9e-43df-4f27-8c80-64066e4c385d', 12, 19, 184.15, NULL, '2017-01-05 09:11:21', 'Evita Leek',
                                                '8 Sachtjen Alley', 'eleek2c@google.ca', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('efb0489a-1ed4-4911-bbcd-e56cf1204008', 34, 8, 259.57, 21, '2016-05-22 14:35:37', 'Tiffany Capun', '6 Rowland Pass',
                                           'tcapun2d@timesonline.co.uk', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('67c944ab-62bb-4491-b977-aca533424e23', 49, 1, 294.35, NULL, '2017-03-12 11:51:14', 'Tiertza Cripps',
                                                '42 Reinke Terrace', 'tcripps2e@google.co.uk', 2,
                                                '2017-05-14 19:52:32');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('42f6ff83-3c4e-4dee-b72c-9c2a9274e371', 27, 13, 147.74, 17, '2017-04-26 00:04:44', 'Wiatt Krolak',
                                                '9 Pepper Wood Place', 'wkrolak2f@huffingtonpost.com', 1,
                                                '2017-03-22 11:31:33');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('dc4cb987-a51e-4e9e-9918-f897996c43fd', 30, 9, 83.59, 6, '2016-05-21 01:31:03', 'Mellie Backs',
                                                '1031 Manufacturers Crossing', 'mbacks2g@123-reg.co.uk', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('0c5ecd6d-782c-48ba-bcdc-534c322f7dc0', 39, 10, 40.54, NULL, '2016-12-16 13:32:01', 'Dru Benedite',
                                                '059 Derek Place', 'dbenedite2h@imdb.com', 1, '2017-04-06 05:35:16');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('0d63ec06-5acc-4d25-8ac0-d388cece4372', 36, 2, 250.31, NULL, '2016-08-04 04:17:54', 'Constantia Goldsack',
                                                '722 Darwin Road', 'cgoldsack2i@sogou.com', 1, '2017-04-29 08:08:10');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('fb580130-9b28-4f05-833f-d55c6eb3d860', 31, 11, 68.92, 5, '2016-07-16 11:49:19', 'Cristal Crawshay',
                                                '80976 Gerald Lane', 'ccrawshay2j@cbc.ca', 1, '2017-05-04 02:46:41');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('6fd90213-4790-4ecd-a8a0-5e154521c3f0', 19, 18, 201.66, 22, '2016-05-15 11:08:22', 'Winona Whysall',
                                                '62 Springs Crossing', 'wwhysall2k@dailymail.co.uk', 1,
                                                '2017-05-02 12:26:43');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('5f07fb9f-6586-47a4-b196-66d3b714899f', 20, 1, 186.1, NULL, '2016-10-31 19:47:02', 'Meryl Stern',
                                                '919 Portage Plaza', 'mstern2l@dot.gov', 1, '2017-05-08 13:22:10');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('1997cc5c-cef7-4bc2-acc7-f21d09994ce9', 10, 18, 217.48, NULL, '2016-06-25 10:08:09', 'Marylynne Shear',
                                                '62 Vidon Plaza', 'mshear2m@mac.com', 2, '2017-05-10 06:57:36');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('b815f29a-edee-4536-9d08-bf51d732c610', 24, 1, 269.37, NULL, '2016-10-21 01:30:05', 'Kipp Beaman',
                                                '671 Annamark Avenue', 'kbeaman2n@msu.edu', 1, '2017-04-02 03:12:02');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('9142346a-1c80-48a9-8dbc-2700f8e41b69', 49, 7, 38.12, NULL, '2016-12-03 04:33:30', 'Raquela Gorgler',
                                                '4169 Spohn Parkway', 'rgorgler2o@noaa.gov', 2, '2017-05-08 04:03:38');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('8f10173d-61c4-44f6-ad51-d8dd2f2d8642', 10, 15, 277.29, 5, '2016-10-22 17:55:42', 'Gwynne Aldus',
                                                '29719 Summit Place', 'galdus2p@yellowbook.com', 2,
                                                '2017-03-26 06:04:42');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('02beeb0a-7e26-4ce5-b56e-aa58bded9407', 47, 8, 120.58, NULL, '2017-04-10 06:27:44', 'Danna Briscoe',
                                                '71434 Clove Junction', 'dbriscoe2q@ucla.edu', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('bf062ad6-c1d2-4c3f-8b53-264bf45bf2ea', 47, 16, 100.02, 16, '2017-03-05 04:54:41', 'Nathan Solloway',
                                                '84 Burning Wood Hill', 'nsolloway2r@amazon.co.uk', 2,
                                                '2017-03-25 00:27:00');