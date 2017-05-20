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
VALUES ('64fc0d5b-45f4-4be2-bdbc-ff46bdbd9572', 48, 11, 229.72, NULL, '2016-12-11 09:49:48', 'Ivett Turpin',
                                                '63 Tennyson Avenue', 'iturpin0@cdc.gov', 1, '2017-06-14 14:57:05');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('3275a32e-1e2b-4934-b6a4-fce2c1deea73', 3, 15, 132.89, NULL, '2016-07-21 21:10:37', 'Craig Pickhaver',
                                                '0 Florence Road', 'cpickhaver1@google.com.hk', 2,
                                                '2017-06-10 21:19:26');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('1a47f5a4-a7d5-40cd-bd81-9251b4c0bf62', 4, 12, 77.95, NULL, '2017-05-12 08:21:50', 'Audie Banghe',
                                                '4 Messerschmidt Trail', 'abanghe2@usatoday.com', 1,
                                                '2017-06-06 05:44:28');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('e87c5a73-4157-4005-af4d-c0fd382c7823', 20, 7, 241.56, 0, '2016-06-12 20:02:36', 'Hilary Ley', '44 Buhler Parkway',
                                           'hley3@xinhuanet.com', 2, '2017-06-06 02:06:47');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('cbc9ecf6-ca30-46ae-b6df-8fcc9d4673c1', 25, 4, 16.73, 0, '2017-04-24 01:57:04', 'Ignacius Warcup',
                                                '24 Reindahl Crossing', 'iwarcup4@angelfire.com', 1,
                                                '2017-05-28 05:39:36');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('b218a6e6-b9d4-4b67-91c6-afd704b251d8', 7, 10, 151.72, NULL, '2016-12-28 07:47:47', 'Melosa Hamberston',
                                                '4388 Holy Cross Hill', 'mhamberston5@example.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('b755fe66-77be-4801-a973-0d29e9a791ed', 29, 12, 145.25, NULL, '2016-12-17 10:54:17', 'Revkah Vale',
                                                '07554 Buena Vista Road', 'rvale6@epa.gov', 1, '2017-05-20 03:59:38');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('ddcccd3e-728c-4744-a515-06ce8a7c6a39', 10, 4, 52.63, 7, '2016-10-29 01:36:04', 'Meris Cornes', '618 East Court',
                                           'mcornes7@vimeo.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('da98b2f5-962a-482b-b94c-66b00f8436c4', 40, 3, 268.82, NULL, '2016-12-06 09:19:54', 'Iosep Dolan',
                                                '91 Northfield Way', 'idolan8@feedburner.com', 2,
                                                '2017-06-12 09:47:01');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('37a0905f-93fe-407f-86fd-4854dba691bf', 12, 11, 222.27, NULL, '2016-12-04 17:01:57', 'Armando Wethered',
                                                '88 Center Alley', 'awethered9@so-net.ne.jp', 1, '2017-05-24 23:20:38');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('5089c6c3-454a-4463-8842-efa59ce9658b', 32, 1, 70.41, NULL, '2017-02-08 08:17:33', 'Keelby Pyatt', '14 Loomis Alley',
                                           'kpyatta@nih.gov', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('5c8ebc99-f670-4e10-9c2e-0e474235ef58', 31, 15, 295.95, 20, '2016-11-02 14:22:39', 'Florry Fishbie', '07 East Court',
                                           'ffishbieb@pinterest.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('f991cce6-3087-4985-9345-3b51d8148537', 15, 12, 45.8, NULL, '2017-05-03 10:47:04', 'Tomasine Melburg',
                                                '2763 Tony Court', 'tmelburgc@mozilla.org', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('447cea0e-6cf3-4c6f-8c7e-5babdcde79b8', 15, 13, 269.32, NULL, '2016-10-29 13:14:40', 'Devinne Crallan',
                                                '360 Schurz Court', 'dcralland@photobucket.com', 1,
                                                '2017-05-20 10:03:58');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('d8d4b9e9-b9dc-4bb0-a35a-39835b742b1a', 7, 16, 21.5, 20, '2016-06-16 19:15:52', 'Linoel Norsworthy',
                                                '479 Reindahl Trail', 'lnorsworthye@sun.com', 1, '2017-05-22 22:24:04');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('72dc3f5d-629a-4be8-b253-9e095c29f5b1', 10, 7, 81.05, NULL, '2016-07-07 02:48:40', 'Emmaline O''Dare',
                                                '64 Cardinal Drive', 'eodaref@rakuten.co.jp', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('8f05529f-a9c7-41b4-b2a5-b8c693f6927d', 10, 3, 289.81, NULL, '2017-03-16 22:31:27', 'Delmar Takkos',
                                                '44213 Grasskamp Plaza', 'dtakkosg@1und1.de', 1, '2017-06-14 18:33:55');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('bcee46af-1295-4517-97e5-47aadcb76e88', 13, 5, 284.69, NULL, '2016-06-30 14:02:09', 'Callie Bewlay',
                                                '88066 Ridgeview Parkway', 'cbewlayh@go.com', 2, '2017-05-18 21:20:22');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('c11b41a5-904b-4cd9-a498-8854b34b7e28', 16, 11, 288.24, NULL, '2017-04-18 14:35:31', 'Teodor Muncaster',
                                                '0 5th Pass', 'tmuncasteri@home.pl', 1, '2017-05-28 00:36:13');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('a4e5cf87-7d10-4b15-821f-eb9e324e3c87', 43, 5, 51.96, 17, '2016-11-11 22:29:39', 'Kendre Lilford',
                                                '91864 Emmet Center', 'klilfordj@abc.net.au', 2, '2017-06-07 11:56:51');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('92acbba7-dfb2-4cae-bcf8-c6abe18fd000', 7, 2, 143.02, NULL, '2016-11-25 05:45:21', 'Edie Cleeves',
                                                '605 Tennyson Park', 'ecleevesk@yelp.com', 2, '2017-05-19 00:14:54');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('d7ece2b6-f954-4c25-9e4b-a439202cf9ab', 24, 6, 167.36, NULL, '2016-06-07 09:00:30', 'Sher Dosdell', '3 Kipling Lane',
                                           'sdosdelll@amazonaws.com', 2, '2017-05-27 22:35:10');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('4f5a16e9-90ae-4c6d-8032-39db40f8cf69', 48, 2, 255.23, NULL, '2017-02-06 23:08:52', 'Stillmann Raiker',
                                                '749 Raven Hill', 'sraikerm@vistaprint.com', 2, '2017-06-03 01:09:56');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('4106f429-418b-47c3-bd4c-1cd2e59c5bb0', 40, 1, 84.95, 8, '2016-09-01 16:54:41', 'Baxter Thurlbourne',
                                                '315 Canary Street', 'bthurlbournen@yelp.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('d01a4a1e-36f8-4ec2-a6e3-3dca246143e4', 48, 20, 261.62, 13, '2017-01-07 01:10:52', 'Tadeo Stoeckle',
                                                '896 Banding Alley', 'tstoeckleo@w3.org', 1, '2017-06-07 16:11:53');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('e99e5e29-0c8d-4ec8-b1bd-3f03d745bb40', 6, 12, 50.96, 18, '2017-05-12 15:59:33', 'Rodolph Grzeszczak',
                                                '3675 Farwell Plaza', 'rgrzeszczakp@msu.edu', 1, '2017-06-11 08:13:12');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('2d14c826-8b09-4c9c-ab88-a4a86c7e6610', 14, 4, 248.54, 5, '2016-10-06 23:01:10', 'Torrey Ganderton',
                                                '747 Amoth Avenue', 'tgandertonq@dion.ne.jp', 2, '2017-05-20 20:40:07');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('bb13d573-d75d-46ac-b1ee-0900ec46d581', 44, 7, 6.09, NULL, '2017-04-03 14:59:02', 'Ezequiel Dayment',
                                                '662 Lerdahl Way', 'edaymentr@cam.ac.uk', 1, '2017-06-09 14:45:00');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('2a803091-86b5-41e2-b740-08544cc423d0', 17, 11, 270.67, NULL, '2016-11-25 13:05:12', 'Samaria Moggle',
                                                '995 Village Green Parkway', 'smoggles@miibeian.gov.cn', 1,
                                                '2017-05-28 06:53:15');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('84d08860-2fde-4be7-a96b-f55cc3a3676c', 38, 15, 41.97, NULL, '2016-10-08 20:03:14', 'Olivie Karel',
                                                '9 Carberry Road', 'okarelt@soundcloud.com', 2, '2017-05-20 23:41:52');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('ea44fd04-531a-44aa-a36b-fd9a7b4be66d', 16, 1, 261.28, NULL, '2016-11-24 02:11:45', 'Gael Sreenan',
                                                '638 Judy Crossing', 'gsreenanu@geocities.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('c8c911ce-cb12-43c3-b6cc-3275cd3f515b', 33, 19, 169.07, 4, '2016-12-11 14:20:31', 'Rollin Ollander',
                                                '5055 Fulton Center', 'rollanderv@diigo.com', 1, '2017-05-24 05:01:58');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('629cacb0-0b73-4ec0-9eca-93b2d8441bb8', 33, 12, 102.51, NULL, '2017-02-01 09:48:50', 'Ajay Zappel',
                                                '28631 Hallows Trail', 'azappelw@mapquest.com', 2,
                                                '2017-05-28 12:29:12');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('6cde6f18-07c2-4941-87e5-c694ef3c9a3f', 34, 14, 131.84, NULL, '2017-02-27 13:52:50', 'Gertruda Knoles',
                                                '378 Farwell Circle', 'gknolesx@nyu.edu', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('a66a73d6-f2b5-4d87-b1cc-8b63fa4fcaf2', 45, 5, 25.24, NULL, '2016-12-30 19:15:50', 'Toby Hawley', '84 Sage Point',
                                           'thawleyy@goodreads.com', 1, '2017-06-08 19:24:23');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('568158f5-f694-47ce-a061-9196bb5dfdee', 30, 4, 86.41, 20, '2016-07-05 03:13:55', 'Miranda Densumbe',
                                                '923 Annamark Alley', 'mdensumbez@furl.net', 1, '2017-06-12 03:10:56');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('49ddd97e-77c2-406e-b2e3-4ddca7d4000c', 45, 9, 240.18, 20, '2016-12-03 15:28:08', 'Barnebas Pettus',
                                                '3001 Waubesa Alley', 'bpettus10@npr.org', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('49911229-3a69-44bb-8093-542450462032', 1, 3, 224.47, NULL, '2016-07-22 13:30:04', 'Markus Linnock',
                                                '225 Maple Junction', 'mlinnock11@github.com', 1,
                                                '2017-05-26 08:46:44');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('04ca0e00-c7d6-4d70-8a00-8ffac0ac9656', 31, 20, 101.84, NULL, '2016-06-03 18:01:47', 'Jacqui Sowter',
                                                '3935 Dottie Junction', 'jsowter12@woothemes.com', 1,
                                                '2017-06-04 13:19:59');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('de527afa-e259-4d9d-995b-36c7d2deff18', 3, 7, 51.97, NULL, '2016-07-31 00:14:36', 'Lea Pickance',
                                                '79256 Saint Paul Center', 'lpickance13@wired.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('20fb41ca-72e1-40f8-b6f6-cd7f045f7098', 37, 5, 152.4, NULL, '2017-03-06 08:17:26', 'Bronnie Jonsson',
                                                '69 Thackeray Avenue', 'bjonsson14@reuters.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('74a580be-c7eb-49ea-a5bc-0963e894b4f5', 46, 4, 110.62, 8, '2017-04-29 07:19:50', 'Josee Babe', '203 Transport Pass',
                                           'jbabe15@infoseek.co.jp', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('bcb97125-2d8c-455b-990d-c4f34179adeb', 18, 10, 197.75, 19, '2016-05-18 22:19:18', 'Pasquale Brookes',
                                                '20417 Little Fleur Avenue', 'pbrookes16@4shared.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('07c65e05-166f-46d2-988e-6197e97b39ba', 27, 6, 178.82, NULL, '2017-04-18 09:50:14', 'Mallissa Geraghty',
                                                '72 Crownhardt Alley', 'mgeraghty17@4shared.com', 2,
                                                '2017-06-01 18:24:22');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('58588a00-e27f-415e-b3a6-5e93d90c7702', 46, 5, 258.15, NULL, '2017-04-05 19:19:16', 'Adrienne Pendlebery',
                                                '37752 Hoffman Terrace', 'apendlebery18@odnoklassniki.ru', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('e2a6be9e-9566-433d-b08d-86f04bd79804', 13, 13, 233.57, 16, '2017-01-18 12:48:20', 'Jane Allinson',
                                                '0 Garrison Pass', 'jallinson19@multiply.com', 2,
                                                '2017-06-04 13:54:25');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('e39d6e7a-e05e-417d-9d1b-19a820fa60c7', 21, 15, 73.41, NULL, '2016-08-23 19:44:12', 'Chrystel Jarad',
                                                '4015 Sage Place', 'cjarad1a@i2i.jp', 1, '2017-06-12 00:51:06');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('fb7b9cfa-9a88-498c-b0bd-4f952da28c2e', 43, 4, 67.2, NULL, '2017-04-17 11:34:34', 'Sonny Orleton',
                                                '56127 Nelson Street', 'sorleton1b@feedburner.com', 2,
                                                '2017-05-23 13:29:00');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('6a0ac493-e13d-4a7c-8add-a32e4a4c5c9c', 12, 12, 282.02, NULL, '2017-04-27 05:13:32', 'Ban Stoggell',
                                                '84 Amoth Center', 'bstoggell1c@vimeo.com', 1, '2017-05-30 21:06:21');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('00b0cf0f-1b7f-4504-8208-def249819203', 36, 2, 258.0, NULL, '2017-04-03 10:35:38', 'Moll Fairpool',
                                                '5 Anderson Avenue', 'mfairpool1d@xinhuanet.com', 2,
                                                '2017-05-31 14:02:14');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('c2dc0659-12a0-43c9-be5c-0b07cc4859c2', 31, 3, 126.8, 18, '2016-06-01 23:31:13', 'Berty Kinforth', '11 Hagan Street',
                                           'bkinforth1e@apple.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('9b9af565-8fb3-4772-b27a-7d837d28ee88', 46, 12, 105.36, NULL, '2016-08-28 15:24:57', 'Candy Iacabucci',
                                                '619 Swallow Pass', 'ciacabucci1f@surveymonkey.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('75dba3c8-0ba6-4bfc-82b3-d8bc490150bb', 19, 11, 49.18, 10, '2016-12-28 08:33:10', 'Gladys Beaford',
                                                '8034 Florence Terrace', 'gbeaford1g@blinklist.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('68010f3a-8e5a-475d-9724-de5625cdc4cc', 7, 7, 81.96, NULL, '2017-01-31 20:13:15', 'Marlee Linnit', '5 Emmet Park',
                                           'mlinnit1h@opensource.org', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('9386220e-9e77-4f79-8786-05f2637079f3', 12, 17, 83.92, NULL, '2017-03-23 23:43:52', 'Way Titherington',
                                                '6261 Columbus Pass', 'wtitherington1i@nba.com', 1,
                                                '2017-05-28 00:40:35');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('859d019b-84cf-4f20-97a3-9541a6bfbc9c', 17, 10, 254.74, 7, '2016-12-22 22:26:13', 'Engelbert Signore',
                                                '6 Veith Point', 'esignore1j@constantcontact.com', 2,
                                                '2017-05-18 05:14:32');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('971270c6-f088-4e8a-a45e-375432529e74', 24, 5, 288.89, NULL, '2017-04-16 12:39:28', 'Kimmie Tibbs',
                                                '95 Banding Pass', 'ktibbs1k@pen.io', 2, '2017-05-31 14:33:57');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('1c0214a8-64e0-4986-842b-6d95d4236542', 15, 14, 220.5, NULL, '2016-08-13 02:34:04', 'Parke Rapps', '7 West Avenue',
                                           'prapps1l@elegantthemes.com', 2, '2017-06-04 00:27:27');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('142ae56d-cf29-4326-8068-62e41926b5f3', 37, 8, 299.51, NULL, '2017-01-13 23:46:03', 'Samaria Seville',
                                                '3617 2nd Center', 'sseville1m@youtu.be', 2, '2017-05-26 00:21:38');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('28fc5389-1bf4-4ca4-ab8a-fe468d70ef6e', 32, 12, 58.43, NULL, '2016-12-29 14:02:15', 'Kahlil Mulford',
                                                '5662 Mendota Alley', 'kmulford1n@4shared.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('66fca013-357d-4d74-a204-dab80a4fea99', 16, 18, 290.72, NULL, '2016-07-09 19:57:58', 'Boot Leake',
                                                '69305 Fair Oaks Plaza', 'bleake1o@alibaba.com', 2,
                                                '2017-05-29 10:32:10');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('98084829-b292-4135-a337-8b2eac12ab28', 14, 7, 246.15, NULL, '2016-08-07 03:30:07', 'Harwell MacGowing',
                                                '95591 Debs Plaza', 'hmacgowing1p@nps.gov', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('714de304-4b79-457d-9f13-d1e8462a2117', 47, 12, 88.47, NULL, '2016-11-26 01:40:11', 'Francoise Halls',
                                                '1246 Monterey Avenue', 'fhalls1q@storify.com', 1,
                                                '2017-06-01 05:59:01');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('1f7e935e-c9bc-483b-8223-f3b4b78e3e38', 39, 6, 90.04, NULL, '2017-04-21 16:49:03', 'Townie Vowels',
                                                '15 Westport Junction', 'tvowels1r@gov.uk', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('55abeb2c-127e-496c-a1ad-2ebdcddabf86', 31, 15, 199.81, NULL, '2016-11-16 20:44:01', 'Danella Deares',
                                                '4597 Main Pass', 'ddeares1s@dmoz.org', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('aa92fc38-015a-44ba-8c1a-f63013ca0f5c', 30, 1, 175.68, NULL, '2017-03-30 15:27:39', 'Iorgo Jailler',
                                                '2140 Farwell Terrace', 'ijailler1t@geocities.com', 1,
                                                '2017-06-08 22:53:36');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('0f7f8ae5-bb87-43ff-b01d-e989a98c7e89', 38, 11, 77.58, NULL, '2017-02-15 15:33:54', 'Clemmy Pallas',
                                                '72 Goodland Pass', 'cpallas1u@shareasale.com', 1,
                                                '2017-05-24 07:29:20');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('94386428-bb37-4a34-9246-71dda85ef975', 25, 5, 293.84, NULL, '2016-08-21 02:36:52', 'Mead Pexton',
                                                '6142 Homewood Hill', 'mpexton1v@photobucket.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('179b8b7e-fb35-454b-809f-0562f6b1c462', 29, 14, 194.75, 8, '2016-11-28 14:37:30', 'Astra Minogue',
                                                '64894 Fisk Place', 'aminogue1w@mtv.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('14e83cc2-5bad-47f6-bf0c-cb1600e36790', 49, 18, 26.32, NULL, '2016-06-26 21:07:48', 'Jamison Turnor',
                                                '15476 Holy Cross Place', 'jturnor1x@tuttocitta.it', 1,
                                                '2017-05-18 03:59:33');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('9680f518-9e66-46a4-8ae1-940e4f01e73d', 41, 1, 93.53, NULL, '2017-02-09 12:07:10', 'Crystal Kilbourn',
                                                '3 Springs Point', 'ckilbourn1y@army.mil', 1, '2017-06-04 13:12:06');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('0d2bda9a-d8fa-415e-9245-f61428a6f4a1', 39, 14, 3.02, NULL, '2017-05-01 07:40:27', 'Delbert Capner',
                                                '89489 Lawn Point', 'dcapner1z@soundcloud.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('d85f0dcf-25b4-4572-8f67-af26d7476474', 20, 5, 114.6, NULL, '2016-10-26 06:08:47', 'Mikkel Delamere',
                                                '8 Roxbury Alley', 'mdelamere20@amazon.co.jp', 1,
                                                '2017-05-20 15:13:07');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('61d2d298-4bba-48e0-b7c1-ed260581f3f1', 38, 7, 81.55, NULL, '2016-12-06 00:26:47', 'Ailsun Ashbe',
                                                '3678 Coleman Center', 'aashbe21@yandex.ru', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('c5c3e05d-8980-48ec-b909-9ebd2baa3d3b', 27, 12, 251.58, NULL, '2017-02-19 10:57:59', 'Eugenia Tuplin',
                                                '25692 Buhler Court', 'etuplin22@goo.gl', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('3cbbae9a-99c7-476b-8fdd-8fe3127f1c3f', 36, 11, 186.96, NULL, '2017-03-05 21:22:56', 'Emerson Berrecloth',
                                                '78678 Michigan Court', 'eberrecloth23@technorati.com', 2,
                                                '2017-06-14 15:31:15');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('af8eeea7-27e3-4d90-8a1a-696af071188f', 6, 2, 294.17, NULL, '2016-09-13 02:16:32', 'Corny Ruppert',
                                                '4726 Dawn Court', 'cruppert24@amazon.com', 1, '2017-05-18 17:21:45');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('ea52bfa6-bfdc-47ff-ae3a-ef8b858432a2', 44, 15, 203.41, NULL, '2016-11-05 23:27:59', 'Sallyanne Dilloway',
                                                '9 Onsgard Park', 'sdilloway25@ucla.edu', 2, '2017-06-10 17:48:03');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('f2609e32-4143-4ee8-9848-cb1f09e5c107', 43, 19, 30.03, NULL, '2016-09-26 03:42:16', 'Yorgos Challace', '0 Elka Lane',
                                           'ychallace26@php.net', 1, '2017-06-03 23:19:04');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('6a5e681a-bf69-4679-98c8-ed2b38e3bc30', 6, 18, 114.44, NULL, '2016-12-06 02:18:32', 'Ingaberg Kemsley',
                                                '24533 Talmadge Center', 'ikemsley27@wikispaces.com', 2,
                                                '2017-06-05 20:04:16');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('3e9fbdb7-9b73-4b40-bc27-4fc1f500f89c', 44, 1, 276.99, 18, '2017-01-23 00:53:16', 'Angelita Grenfell',
                                                '25640 Vidon Way', 'agrenfell28@cornell.edu', 1, '2017-05-19 06:46:15');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('cd65b34c-ccff-4139-8819-a6c018a7108d', 28, 19, 233.02, NULL, '2016-06-02 03:43:52', 'Charlie Puve',
                                                '0404 Carpenter Hill', 'cpuve29@google.co.jp', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('284adb55-9adc-4007-9e34-cd225c70e207', 49, 9, 183.96, NULL, '2017-02-21 02:20:08', 'Ramon Toothill',
                                                '021 Eagle Crest Crossing', 'rtoothill2a@creativecommons.org', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('47a8c23c-1968-4475-bbfc-dfdf86120500', 35, 16, 267.88, 10, '2016-09-10 00:38:14', 'Lurline Wathell',
                                                '4595 Donald Place', 'lwathell2b@nhs.uk', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('08cf9760-e88d-4d65-a714-57fee2e0d87d', 49, 15, 29.32, NULL, '2016-11-18 08:11:44', 'Sukey Dunston', '0 5th Trail',
                                           'sdunston2c@constantcontact.com', 1, '2017-06-07 13:30:28');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('b9bfe51f-e47e-4146-b921-1a5ce60a2ecc', 7, 19, 140.34, 0, '2017-03-13 13:49:54', 'Waverly Dulinty',
                                                '236 Fairfield Pass', 'wdulinty2d@theguardian.com', 2,
                                                '2017-06-06 11:08:09');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('703b2587-e629-45b6-b800-36e52d0f6b2c', 28, 12, 175.58, 15, '2016-07-11 00:25:25', 'Zollie Shreeves',
                                                '03 Shasta Center', 'zshreeves2e@facebook.com', 1,
                                                '2017-05-30 03:49:48');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('8a7e111b-496c-4c4d-bf87-ff391b13847b', 46, 1, 245.43, NULL, '2017-02-04 14:14:27', 'Garrick Vanyarkin',
                                                '5294 Dakota Circle', 'gvanyarkin2f@cnbc.com', 1,
                                                '2017-06-07 11:28:21');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('2fa5d4a6-0d7b-4326-a262-9001f2e12719', 18, 1, 139.09, NULL, '2016-11-30 11:04:00', 'Jocelin Mulvany',
                                                '9542 Forest Run Drive', 'jmulvany2g@vistaprint.com', 2,
                                                '2017-06-12 01:48:14');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('f1431d8c-8119-43fe-a7de-329413bf934e', 28, 6, 61.22, NULL, '2016-07-03 12:55:39', 'Remington Phelips',
                                                '1486 Charing Cross Center', 'rphelips2h@economist.com', 1,
                                                '2017-06-01 14:04:21');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('c4697f7a-18b5-4ff5-96b9-f6221ed2cb0f', 5, 8, 288.42, NULL, '2017-04-09 04:13:13', 'Donny Moyler', '93 Canary Hill',
                                           'dmoyler2i@networkadvertising.org', 2, '2017-05-21 04:38:59');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('70b5a64c-3167-49f6-a9ff-a615dd09b3d5', 9, 11, 138.99, NULL, '2016-10-25 07:19:55', 'Leland Demaine',
                                                '9 Walton Drive', 'ldemaine2j@thetimes.co.uk', 1,
                                                '2017-05-31 06:35:08');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('0abe91cb-f3a3-4565-a132-b7c1427df757', 16, 5, 285.05, 9, '2017-03-03 21:18:10', 'Mill Threadgold',
                                                '076 Summit Junction', 'mthreadgold2k@ask.com', 1,
                                                '2017-05-26 14:10:21');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('32a4517a-b4f1-45de-9bdd-6b55b452c2f8', 46, 11, 212.85, NULL, '2016-10-21 21:02:51', 'Bethanne Champ',
                                                '16690 Vidon Point', 'bchamp2l@spotify.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES
  ('b109178b-19a4-4819-8247-12d7d2b5560f', 32, 18, 11.94, NULL, '2017-04-24 23:51:34', 'Rey Cord', '0430 American Road',
                                           'rcord2m@va.gov', 1, '2017-05-22 20:23:35');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('399ac111-775e-4c36-b924-6b78901be00d', 39, 17, 28.72, 11, '2017-03-21 07:50:06', 'Johnnie McMichan',
                                                '5 Vermont Point', 'jmcmichan2n@virginia.edu', 2,
                                                '2017-05-31 09:40:11');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('9a392836-5850-40e1-81fc-79b5ff096f2b', 27, 14, 10.2, NULL, '2016-06-15 18:14:45', 'Janessa Edess',
                                                '4221 Dayton Road', 'jedess2o@pbs.org', 1, '2017-05-16 15:34:11');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('71a49b31-9ddc-4c19-87b6-62731abb1fd9', 24, 14, 104.63, NULL, '2017-02-05 07:03:38', 'Fee Bardsley',
                                                '1058 Mesta Court', 'fbardsley2p@cafepress.com', 1,
                                                '2017-06-12 11:40:06');
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('22741a10-cc2e-40dd-87c8-c1d97bc3be67', 29, 17, 71.63, NULL, '2016-06-16 12:50:05', 'Mathilda Strete',
                                                '517 Hoepker Road', 'mstrete2q@wp.com', 0, NULL);
INSERT INTO store_orders (id, book_id, quantity, total_price, user_id, order_date, client_name, client_address, client_email, state, dispatch_date)
VALUES ('84373d89-6b2c-45b6-a6ba-7567ecf8f0e2', 30, 17, 184.38, NULL, '2016-07-21 04:50:39', 'Phyllis MacGillacolm',
                                                '208 Petterle Point', 'pmacgillacolm2r@slashdot.org', 1,
                                                '2017-06-09 03:12:22');