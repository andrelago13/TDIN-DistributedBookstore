drop table if exists store_orders;
create table store_orders (
  id VARCHAR(40) PRIMARY KEY,
  book_id INT,
  quantity INT,
  client_name VARCHAR(50),
  client_address VARCHAR(50),
  client_email VARCHAR(50),
  state INT,
  state_date DATE
);
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('cb7752bf-2764-45ea-850e-39a75ad27578', 40, 7, 'Jeanelle Meni', '75 Debs Terrace', 'jmeni0@about.me', 0, '2016-05-21 22:19:52');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('562bb4a2-7949-4bb8-b436-c2aec32674b0', 34, 5, 'Thaxter Catlette', '1866 Caliangt Plaza', 'tcatlette1@plala.or.jp', 1, '2016-09-30 01:07:51');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('4e283a0b-b299-42c0-93c2-23e83f4c0210', 49, 13, 'Sherm Josling', '735 Hudson Lane', 'sjosling2@auda.org.au', 0, '2017-03-28 08:47:19');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('a2d401e0-9a44-4e34-a692-6394383ca518', 22, 4, 'Deonne Berling', '90 Anhalt Avenue', 'dberling3@mac.com', 2, '2017-02-15 17:04:15');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('3f69e4df-71d4-4e41-b1ce-13b18d481044', 43, 20, 'Kippy Ianniello', '2 Del Mar Plaza', 'kianniello4@census.gov', 2, '2016-10-25 19:26:35');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('57b92092-d18d-4248-bf35-29364494e69b', 50, 14, 'Eudora Buckwell', '30 Melvin Terrace', 'ebuckwell5@tamu.edu', 0, '2017-05-14 02:32:19');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('ff08093c-5691-47f7-a512-a155e6b6a6df', 24, 20, 'Goldina Aguilar', '413 Corscot Place', 'gaguilar6@nba.com', 0, '2016-11-02 18:38:07');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('9207f78f-5aa6-4be7-bbc3-fbd0e17f8678', 24, 5, 'Adelind Preist', '643 Morrow Lane', 'apreist7@slate.com', 0, '2016-12-07 16:23:24');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('fd1136c2-d7d9-48ba-91f4-655865562499', 5, 11, 'Maure Vondra', '3 Sachs Park', 'mvondra8@constantcontact.com', 1, '2016-10-03 20:44:45');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('4a6d9065-3a75-4056-a1a2-bb1f58308ea5', 36, 13, 'Claudetta Rewbottom', '6267 Clarendon Alley', 'crewbottom9@gmpg.org', 2, '2017-03-11 03:17:45');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('98ec37e3-dcf2-4ae3-ab31-54f14b48ae15', 2, 20, 'Elita Chatres', '1208 Grasskamp Point', 'echatresa@ameblo.jp', 1, '2017-01-02 02:43:33');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('a6439f82-4df3-4c38-aaa6-fdc180e36165', 35, 11, 'Hyacinth Sange', '4766 Fairfield Crossing', 'hsangeb@wisc.edu', 2, '2016-08-10 13:15:06');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('7c006657-3ff3-4c1a-a57b-1ffc379227d4', 7, 16, 'Nicholle Agirre', '235 Bellgrove Terrace', 'nagirrec@furl.net', 0, '2016-07-08 13:34:01');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('38e2eeea-d80a-411d-b54a-1756f47b1a64', 22, 1, 'Rodolphe Hawking', '132 Crowley Trail', 'rhawkingd@accuweather.com', 1, '2017-02-10 10:04:41');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('fa2efbaf-8490-47ce-a86e-1550db60f409', 5, 7, 'Katy Prendergast', '9 Kedzie Way', 'kprendergaste@ovh.net', 2, '2016-06-04 19:54:14');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('3def96a2-2255-4f65-b79a-32e62c7ddbbd', 8, 13, 'Ingaberg Esslemont', '3635 Forster Crossing', 'iesslemontf@fotki.com', 2, '2017-05-11 21:35:00');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('cb93f894-0d81-4b00-8e36-ac5743bbc5e1', 10, 12, 'Arny McNess', '97754 Golf View Road', 'amcnessg@qq.com', 2, '2016-07-23 14:02:51');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('8b9bf101-219b-4673-b9c5-706ab2d1fe25', 21, 15, 'Teodor Woodworth', '2 Calypso Parkway', 'twoodworthh@weibo.com', 0, '2017-04-09 17:01:54');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('c3181acf-4308-4edd-b9d1-8ae46d9aab7b', 46, 19, 'Arturo McCarrell', '27 Paget Center', 'amccarrelli@behance.net', 1, '2016-10-24 20:06:12');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('874794c8-300d-4fc4-a0f1-7b702e7235f5', 15, 9, 'Garv Pendell', '197 Susan Terrace', 'gpendellj@ebay.co.uk', 0, '2016-08-22 07:06:58');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('2c40e719-73f9-4a61-a823-f930c270b420', 49, 6, 'Skelly Ricards', '2634 Burrows Trail', 'sricardsk@state.gov', 2, '2016-10-18 12:41:37');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('d2503a8d-8906-4d91-9291-2f82fb212cb0', 5, 10, 'Gene Skelcher', '1019 Twin Pines Hill', 'gskelcherl@abc.net.au', 2, '2016-10-09 13:54:10');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('12f63d6f-0967-46ea-93ff-003d0579584d', 13, 16, 'Lind Anthona', '805 Jay Road', 'lanthonam@ameblo.jp', 0, '2017-03-29 16:28:51');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('421862c2-b4de-4b45-b277-0923c4b4a069', 27, 8, 'Hamid Ducker', '7 Shasta Park', 'hduckern@reference.com', 1, '2017-01-18 08:58:10');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('e393e4c3-b603-444a-9539-3d06c2a8e11e', 10, 18, 'Willis Conklin', '431 Vahlen Center', 'wconklino@msn.com', 2, '2017-03-25 14:24:31');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('63069a05-c185-4a84-9a66-803c9d405e09', 41, 17, 'Dennie Kochl', '13467 4th Crossing', 'dkochlp@ucsd.edu', 0, '2016-11-13 19:17:42');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('223ea02a-4418-450c-8135-710d161cfaad', 17, 1, 'Ulrike Videneev', '46688 Atwood Alley', 'uvideneevq@disqus.com', 0, '2017-02-25 04:24:04');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('71e2211b-6956-4141-a80e-0da82ea02bb7', 43, 4, 'Stephie Vasilyevski', '15754 Hermina Way', 'svasilyevskir@w3.org', 1, '2017-03-31 17:02:47');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('d974c36d-ee97-4a88-9bb5-b5a9258f8617', 42, 2, 'Chucho Bedingfield', '7 Melby Place', 'cbedingfields@dion.ne.jp', 0, '2016-07-04 07:28:00');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('8a0d4151-4a3b-42bd-8f10-4404b886cb5c', 11, 16, 'Garry Dorcey', '2210 Old Gate Place', 'gdorceyt@princeton.edu', 1, '2016-08-17 19:58:07');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('ad493350-193b-4434-9460-5052d461c417', 29, 17, 'Gillie Aven', '9 Red Cloud Trail', 'gavenu@hc360.com', 0, '2016-07-09 21:22:54');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('02a5a439-961e-4727-91dd-2d050774a941', 16, 5, 'Ariela Haugg', '79 Kinsman Pass', 'ahauggv@bizjournals.com', 1, '2017-02-03 14:17:52');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('50edb47f-2941-402f-8068-63f20b10a388', 30, 14, 'Christen Varden', '853 Vermont Trail', 'cvardenw@dailymail.co.uk', 2, '2016-08-10 22:14:44');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('2ac01ec4-e88d-471a-b30b-59d6e9cc01ab', 37, 9, 'Crin Kornalik', '3 Luster Avenue', 'ckornalikx@sphinn.com', 2, '2016-07-24 21:12:38');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('aa642322-3681-4f3c-b4fc-8141eb2bf8c1', 20, 4, 'Meagan Eccott', '15 Brickson Park Center', 'meccotty@dagondesign.com', 2, '2016-09-20 20:46:26');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('5acfa2b7-8c15-4817-9c38-649c769b3745', 2, 5, 'Norina Polson', '7 4th Way', 'npolsonz@bbb.org', 0, '2017-03-26 21:57:51');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('3a8f16c7-727e-43d0-b3cd-b2cd297f585e', 41, 8, 'Merline Rickaby', '91790 Shopko Point', 'mrickaby10@mapquest.com', 2, '2017-03-08 21:43:29');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('1e192ff9-630d-4b3c-89c2-ea767ee2b54a', 7, 3, 'Karalee Walne', '8 Quincy Court', 'kwalne11@yellowpages.com', 0, '2017-04-09 07:58:18');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('e063d602-c7fb-4bcf-93f2-12c20569a567', 17, 3, 'Elvis Trattles', '9956 Vermont Junction', 'etrattles12@economist.com', 2, '2017-01-26 07:32:19');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('37bd17b5-db2d-4b16-9873-082bfd70f4ef', 13, 8, 'Adlai Kerslake', '4 Mayfield Alley', 'akerslake13@squidoo.com', 2, '2016-07-12 08:22:21');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('f79e394e-3f09-45b1-8a63-a61b7e3845f7', 32, 14, 'Pepe Andrieu', '6 David Crossing', 'pandrieu14@apple.com', 0, '2016-09-05 15:17:13');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('d2dbf9a3-bad2-4f53-927d-55816eeebb00', 38, 15, 'Marcellus McElory', '29 Arrowood Drive', 'mmcelory15@apple.com', 2, '2017-01-13 13:44:43');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('8a209407-66f1-47bf-a36c-fb0a87617562', 14, 11, 'Mallory Minchell', '687 Kim Circle', 'mminchell16@state.tx.us', 1, '2016-07-25 16:00:05');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('75cc52e8-85a1-4f69-bfaa-73d1cde816cf', 32, 11, 'Jorrie Strood', '1918 Daystar Street', 'jstrood17@uiuc.edu', 0, '2016-09-15 03:15:47');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('45411695-a2db-4b0c-b029-4f6c7f23c862', 10, 14, 'Nikolai Murdie', '2168 Monument Pass', 'nmurdie18@nymag.com', 1, '2017-01-22 13:29:36');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('b72c40fb-18fa-4140-9671-f7103e7089c7', 19, 20, 'Nani Hiscoke', '5 Meadow Vale Plaza', 'nhiscoke19@ibm.com', 1, '2016-08-23 21:07:55');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('93b82f51-c7c6-4d26-baac-a4964fa17f3b', 45, 19, 'Artemas Feldon', '30639 Duke Trail', 'afeldon1a@ucsd.edu', 2, '2017-03-21 14:10:44');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('75e26879-d6b1-4c6a-9b58-2c4f9602eb36', 44, 16, 'Staci Bonsale', '69 Hoard Terrace', 'sbonsale1b@samsung.com', 0, '2016-06-10 17:43:16');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('c1457d31-daa9-417d-9b26-dcb68cfe2ae1', 2, 10, 'Rosamond Charte', '258 Reinke Drive', 'rcharte1c@apache.org', 0, '2016-05-30 04:53:10');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('e2df49ca-7912-4756-8c03-a6e21090bbfb', 12, 18, 'Creighton Aldins', '54 Victoria Court', 'caldins1d@theglobeandmail.com', 1, '2016-10-23 18:50:54');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('c760e7ec-3544-4dc5-9a20-fc4d986811c2', 23, 7, 'Clara Haines', '32 Kenwood Street', 'chaines1e@tiny.cc', 2, '2016-08-04 16:04:08');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('3af75faa-dd17-44f5-bdb1-33742c6d983f', 35, 5, 'Prudy Touzey', '650 Kingsford Park', 'ptouzey1f@drupal.org', 2, '2016-10-02 04:22:01');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('f49d584a-5485-46f8-afa5-c6d2fe6dfa37', 9, 7, 'Garrard Dudenie', '14325 Doe Crossing Junction', 'gdudenie1g@sciencedirect.com', 0, '2016-12-09 23:57:35');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('52b96530-65be-431e-8a52-0bce98b9f68f', 3, 5, 'Drew Hinder', '0 Shoshone Alley', 'dhinder1h@feedburner.com', 1, '2016-10-14 12:10:13');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('dc8c9bb8-c13a-48c9-a5c4-a8ddce1929a8', 30, 3, 'Moritz Swalowe', '73 Loomis Center', 'mswalowe1i@taobao.com', 0, '2016-11-08 12:48:26');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('55c18583-62cf-45e9-95e1-839f39720e9b', 25, 14, 'Juline Gerauld', '8 Spaight Court', 'jgerauld1j@g.co', 1, '2016-05-18 08:29:39');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('862081dd-350b-4eff-8574-d209c3e91ca7', 13, 18, 'Bernete Grigg', '58747 Sauthoff Point', 'bgrigg1k@ifeng.com', 1, '2016-07-02 09:11:59');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('bd7d8983-2350-4c4c-b810-6b2f78be0af2', 3, 14, 'Fin Ledwich', '220 Northwestern Park', 'fledwich1l@istockphoto.com', 0, '2016-07-10 10:38:02');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('0899b941-ac36-4efb-9e0b-2d30556897f0', 4, 6, 'Lesley Gendricke', '95609 Lien Park', 'lgendricke1m@163.com', 0, '2016-09-16 07:53:33');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('08230c93-f1a9-4842-9b58-b8f3b35cf977', 47, 11, 'Yetta Wooffitt', '95450 Utah Court', 'ywooffitt1n@artisteer.com', 0, '2016-07-19 17:02:30');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('9f653d63-483d-4eb3-8b9a-50d9a2dc6f64', 36, 14, 'Caria Dabels', '935 Tennyson Court', 'cdabels1o@oaic.gov.au', 2, '2016-06-07 21:17:32');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('bfde3846-61b1-4e83-9e96-38da78f57279', 36, 10, 'Lidia Vreede', '3 Waubesa Center', 'lvreede1p@theglobeandmail.com', 1, '2016-10-14 04:02:54');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('a8205dd8-7c0d-453b-9c1c-7860bcd1b327', 19, 3, 'Neddy Perrycost', '97 Ohio Park', 'nperrycost1q@globo.com', 2, '2016-12-29 19:15:38');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('ed6958a3-fda5-4c9b-b4f5-5ac56d47e05d', 29, 6, 'Lauraine Tedstone', '01 Comanche Way', 'ltedstone1r@acquirethisname.com', 0, '2017-01-10 11:04:31');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('572224c9-534f-422e-8332-3366fe789981', 28, 11, 'Tammy Worrell', '7474 Gale Point', 'tworrell1s@studiopress.com', 0, '2016-09-09 12:06:28');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('ce7d84e6-f096-48b9-965f-04d282b5823d', 45, 7, 'Alta Sharrocks', '1 Dwight Avenue', 'asharrocks1t@ocn.ne.jp', 2, '2016-09-15 18:09:09');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('1fab63a6-f550-4e9e-a1e4-1257b9fc596a', 31, 8, 'Kacie Hold', '085 Summer Ridge Hill', 'khold1u@twitpic.com', 2, '2016-09-18 09:11:17');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('35a8ca19-f9cb-4cf7-baaf-0d95a7a87989', 42, 9, 'Cass Gemlbett', '2 Algoma Center', 'cgemlbett1v@altervista.org', 0, '2016-11-02 17:57:18');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('9e837522-8ef1-49f1-bc2e-23e315593a39', 25, 16, 'Gaspard Scrimshaw', '4097 Nelson Terrace', 'gscrimshaw1w@twitter.com', 0, '2016-10-11 23:46:29');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('3154d802-6b35-4acd-8b68-5a0141a09411', 25, 16, 'Bailie Kincla', '80 Continental Park', 'bkincla1x@gnu.org', 0, '2016-08-24 04:21:00');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('33a8b96a-3368-45ce-9f8c-47e36101fe61', 42, 19, 'Elvin Piperley', '94045 Marquette Junction', 'epiperley1y@vistaprint.com', 1, '2016-07-26 17:46:29');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('f8dc3d0a-f10d-48b1-82fa-3de185331130', 44, 19, 'Glenine Atherley', '1161 Lotheville Circle', 'gatherley1z@comsenz.com', 2, '2016-07-07 01:36:20');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('3fd6f0e9-5cee-44b1-ba8f-1f81ea13853d', 45, 7, 'Virge Showte', '68442 Continental Way', 'vshowte20@ca.gov', 1, '2016-09-12 14:34:49');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('ad54e729-b32f-463c-b921-9129e54cd398', 20, 14, 'Todd MacCaig', '87549 Reinke Center', 'tmaccaig21@microsoft.com', 0, '2017-04-15 14:46:36');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('52fb918d-ee0a-4436-8ed6-009b60ae1d8b', 12, 6, 'Clevie Harrinson', '67438 Monica Lane', 'charrinson22@purevolume.com', 1, '2016-08-30 19:02:43');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('4aa7344a-eef1-4f58-94fb-c2357d6c769d', 44, 15, 'Hilliary McCabe', '115 Eastwood Junction', 'hmccabe23@de.vu', 1, '2016-05-18 13:32:51');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('e0336e26-7bd4-4faf-9b2f-268dc4c4d2fe', 40, 5, 'Rolando Minchinden', '492 Havey Plaza', 'rminchinden24@nytimes.com', 2, '2016-07-23 12:27:12');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('882a654e-f9c1-47f5-80ed-32c354e17721', 40, 16, 'Zulema Workes', '311 Myrtle Alley', 'zworkes25@mail.ru', 1, '2016-12-31 04:56:36');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('49441a7f-cb8f-4767-8afa-30b40944531a', 34, 14, 'Ester Luckie', '599 Atwood Trail', 'eluckie26@xinhuanet.com', 1, '2016-09-25 15:42:50');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('e1ef6b06-fe99-4ec4-b949-c985b3105449', 26, 10, 'Rita McKibben', '5 Sachs Court', 'rmckibben27@bing.com', 2, '2017-03-03 11:10:40');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('d9b9d8e9-39e7-4b37-b325-34838bf5eadd', 44, 2, 'Kerrill Nutting', '608 Bluejay Junction', 'knutting28@wikia.com', 1, '2017-01-18 06:06:50');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('a5b0d72e-8656-421e-93dd-bf37fbb30071', 3, 7, 'Davey Barnewall', '4831 Kingsford Lane', 'dbarnewall29@digg.com', 2, '2016-06-06 06:24:40');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('81a95d37-9ea4-482d-8841-4d96af9ad4de', 41, 3, 'Don Lansdowne', '37468 Miller Place', 'dlansdowne2a@imgur.com', 1, '2017-02-04 19:35:08');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('f3e1c33c-2c87-4915-9d87-340c124b51de', 13, 20, 'Zandra Georghiou', '4451 Swallow Circle', 'zgeorghiou2b@friendfeed.com', 2, '2016-10-27 23:12:44');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('f69db1fb-8e3b-47ac-acb0-5629469ffe72', 2, 18, 'Archy Waterfield', '85 Green Plaza', 'awaterfield2c@harvard.edu', 2, '2016-10-02 16:11:53');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('810bccb6-40aa-4df0-aeb1-a329bb7d8637', 23, 8, 'Kirsten Blazewicz', '8287 Holmberg Terrace', 'kblazewicz2d@chicagotribune.com', 2, '2016-07-05 05:08:47');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('73c7885d-4fa5-482a-be77-d372d56f130c', 27, 7, 'Philippe Miskelly', '76143 Declaration Alley', 'pmiskelly2e@ca.gov', 1, '2017-01-07 04:46:54');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('39a3f07d-bc42-4f04-a515-f00447f55448', 20, 13, 'Sarine Fripp', '32 Eastlawn Pass', 'sfripp2f@marriott.com', 2, '2016-11-07 02:34:11');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('a9337de1-fdd7-4a37-b013-6a6a6991988b', 21, 12, 'Julio Menichini', '9 Calypso Place', 'jmenichini2g@people.com.cn', 0, '2016-09-16 05:08:01');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('427a7dc1-72af-42ba-a1eb-dd37d54a46bb', 20, 9, 'Ingelbert Davidovic', '2416 Hudson Parkway', 'idavidovic2h@myspace.com', 0, '2017-02-21 10:40:17');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('7a91dd9c-6a7d-41ba-81f2-e92ba4d4ff27', 11, 12, 'Judi Deluca', '9 Hollow Ridge Street', 'jdeluca2i@bbc.co.uk', 2, '2016-06-28 16:47:25');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('e87f6edb-4375-4d35-ae8b-9754b46f6ffd', 38, 7, 'Tara Medling', '970 Crest Line Park', 'tmedling2j@e-recht24.de', 0, '2016-09-24 04:33:32');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('73e07927-817d-4446-bc5e-0b9e5aac6d78', 47, 10, 'Olivie Duck', '3833 Barby Terrace', 'oduck2k@godaddy.com', 1, '2016-05-29 14:19:54');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('5dead224-a7c7-49c4-b319-2a6e7a2714fc', 34, 17, 'Valentina Skepper', '6 Orin Place', 'vskepper2l@topsy.com', 2, '2016-11-10 09:24:08');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('4435fb1a-c213-468a-8681-c9250c9bdf9f', 41, 19, 'Merrel Berger', '485 Di Loreto Alley', 'mberger2m@skyrock.com', 2, '2016-11-12 13:00:17');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('db20fed8-ca79-4e0a-8be7-8a3df9600bb4', 28, 9, 'Guglielmo Ruggs', '6 Spohn Parkway', 'gruggs2n@angelfire.com', 0, '2017-04-06 19:04:47');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('4b5c40cb-4b25-4e5e-98f2-3dfa5d56db1d', 44, 7, 'Joana Baruch', '4 Helena Junction', 'jbaruch2o@huffingtonpost.com', 2, '2016-10-26 08:37:31');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('2e733fce-c002-46fa-8788-4b234cf5ddc0', 12, 20, 'Cherlyn Ferrari', '1 Memorial Parkway', 'cferrari2p@domainmarket.com', 2, '2016-07-24 22:20:09');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('534ec646-7c7f-4fdf-8457-e0c8a6420ccb', 24, 19, 'Wendy McCoveney', '61710 Badeau Drive', 'wmccoveney2q@yandex.ru', 2, '2016-10-05 11:53:14');
insert into store_orders (id, book_id, quantity, client_name, client_address, client_email, state, state_date) values ('d3bfe376-6a01-412d-967f-cb8907f9a0b9', 8, 12, 'Eldon Kingsman', '65436 Pond Plaza', 'ekingsman2r@sakura.ne.jp', 0, '2017-04-19 02:40:58');