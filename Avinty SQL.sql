DROP DATABASE hospital;
CREATE DATABASE hospital;
USE hospital;

CREATE TABLE `patients` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `first_name` varchar(200),
  `last_name` varchar(200),
  `mothers_name` varchar(200),
  `sex` ENUM ('Female', 'Male'),
  `date_of_birth` date,
  `date_of_death` date,
  `place_of_birth` varchar(200),
  `phone_number` varchar(20),
  `country_code` varchar(3)
);

CREATE TABLE `address_of_patients` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `postcode` varchar(10),
  `city` varchar(70),
  `street_name` varchar(100),
  `house_number` varchar(20)
);

CREATE TABLE `relationship_between_patients` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_of_patient1` int,
  `id_of_patient2` int,
  `type_of_connection` varchar(50),
  `quality_of_connection` varchar(50),
  `distance` ENUM ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10') DEFAULT 1,
  `start_of_connection` date,
  `end_of_connection` date
);

ALTER TABLE `address_of_patients` ADD FOREIGN KEY (`id`) REFERENCES `patients` (`id`);

ALTER TABLE `relationship_between_patients` ADD FOREIGN KEY (`id_of_patient1`) REFERENCES `patients` (`id`);

ALTER TABLE `relationship_between_patients` ADD FOREIGN KEY (`id_of_patient2`) REFERENCES `patients` (`id`);

insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Townie', 'Epgrave', 'Averil', 'Female', '2016-01-22 10:50:21', null, 'Qianying', '+86 (613) 195-5831', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Benedetto', 'Pargent', 'Lanette', 'Male', '1986-03-24 13:32:16', null, 'Dadamtu', '+86 (828) 381-9395', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Franni', 'Gremain', 'Martelle', 'Female', '1972-08-02 13:28:39', null, 'Choujiang', '+86 (498) 930-0218', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Burr', 'Preddle', 'Star', 'Female', '2007-12-12 13:19:42', null, 'Mouzourás', '+30 (894) 932-0300', 'GR');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Delmar', 'Feavearyear', 'Shandy', 'Male', '1968-06-08 19:50:34', '2015-10-17 23:39:34', 'Luzhou', '+86 (782) 236-4579', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Dinah', 'Crookston', 'Crysta', 'Female', '1971-07-01 05:28:48', null, 'Žamberk', '+420 (911) 752-4144', 'CZ');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Klemens', 'Levens', 'Pammy', 'Male', '1962-07-10 10:14:20', null, 'Bil‘īn', '+970 (989) 219-7920', 'PS');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Helen-elizabeth', 'Aulds', 'Ronica', 'Female', '2022-01-23 11:34:32', '2009-09-05 22:00:58', 'Silago', '+63 (766) 906-1029', 'PH');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Muhammad', 'Satchel', 'Roselle', 'Female', '2014-04-26 18:10:14', '2013-07-22 19:06:46', 'Shuixi', '+86 (998) 734-5400', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Muriel', 'Kayzer', 'Milly', 'Male', '1972-12-03 07:41:01', '2013-03-26 16:58:46', 'Belozërskoye', '+7 (798) 421-4860', 'RU');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Penelopa', 'Bedward', 'Dorena', 'Female', '1990-05-03 07:57:29', '2003-11-28 03:53:07', 'Pescadería', '+1 (334) 885-9449', 'DO');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Sharity', 'Valois', 'Otha', 'Female', '1973-05-30 21:19:50', null, 'Kadusimbar', '+62 (389) 652-5963', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Cariotta', 'Haacker', 'Candida', 'Male', '2014-05-30 05:32:53', null, 'Huyuan', '+86 (687) 346-1346', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Giustina', 'Oxton', 'Pauly', 'Male', '1960-06-09 19:02:03', null, 'Utan', '+62 (354) 463-6372', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Cari', 'Wiltsher', 'Angelina', 'Female', '2012-02-06 02:06:30', null, 'El Alto', '+51 (448) 550-4133', 'PE');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Warden', 'Klampk', 'Eveline', 'Male', '1983-10-04 02:52:59', '2008-05-13 09:10:23', 'Niaojin', '+86 (624) 475-3882', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Paulie', 'Grief', 'Abigale', 'Male', '1991-08-14 16:49:00', null, 'Ladoang', '+62 (698) 726-3890', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Bax', 'Bromage', 'Kelsi', 'Male', '2021-05-25 19:46:34', null, 'Nakhon Phanom', '+66 (201) 783-1634', 'TH');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Sigfrid', 'Senecaux', 'Chelsea', 'Male', '1973-04-24 01:34:27', '2006-10-03 08:07:47', 'Maracaju', '+55 (870) 342-0074', 'BR');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Ingram', 'Stuehmeier', 'Lynnelle', 'Male', '1998-11-13 20:59:57', null, 'Bianba', '+86 (464) 197-2937', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Remington', 'Whordley', 'Gina', 'Male', '2017-02-22 17:22:27', null, 'Desakolot', '+62 (524) 529-7070', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Keriann', 'Antonignetti', 'Marnia', 'Female', '1978-09-29 01:12:43', null, 'Houston', '+1 (713) 551-1840', 'US');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Theressa', 'Chessor', 'Devonna', 'Female', '2020-07-30 04:52:55', '2016-05-10 09:49:45', 'Espérance Trébuchet', '+230 (115) 364-0272', 'MU');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Cyrillus', 'Coultas', 'Rozamond', 'Male', '1990-06-28 15:30:39', null, 'Alaghsas', '+227 (648) 740-2827', 'NE');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Ray', 'Wickie', 'Nicky', 'Male', '2008-06-06 06:28:03', null, 'London', '+44 (433) 242-8245', 'GB');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Hillard', 'Wollrauch', 'Ingunna', 'Male', '1987-11-19 14:18:16', null, 'Batulenger Barat', '+62 (505) 781-5396', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Patrice', 'Krug', 'Willa', 'Female', '1970-06-03 07:36:29', null, 'Kamal', '+62 (655) 340-7374', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Harlen', 'Bodman', 'Mahala', 'Male', '2011-02-01 04:09:22', null, 'Mori', '+81 (674) 808-0184', 'JP');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Bernetta', 'Windrum', 'Ashla', 'Male', '1986-05-04 19:37:33', '2004-06-04 11:07:15', 'Trompsburg', '+27 (861) 527-3041', 'ZA');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Lennie', 'Bedo', 'Georgianne', 'Male', '2017-12-09 10:19:07', null, 'Bethlehem', '+27 (850) 111-0944', 'ZA');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Dominica', 'Terrazzo', 'Susie', 'Female', '1960-12-20 11:33:14', '1999-05-02 15:59:03', 'Rättvik', '+46 (433) 962-9169', 'SE');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Nyssa', 'McConigal', 'Kelila', 'Female', '1996-12-15 23:10:24', null, 'Jinping', '+86 (763) 693-2235', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Peggie', 'Durkin', 'Fannie', 'Female', '1999-09-28 20:56:46', null, 'Niwiska', '+48 (785) 940-9102', 'PL');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Cati', 'Rusling', 'Selia', 'Male', '1991-07-26 17:32:13', '2013-06-26 19:21:53', 'Luže', '+420 (340) 501-8810', 'CZ');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Chryste', 'Gammel', 'Michaelina', 'Female', '2001-05-10 07:29:15', '2013-03-09 13:52:55', 'Amsterdam Noord west', '+31 (766) 153-7413', 'NL');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Aurora', 'Lesurf', 'Etty', 'Male', '1995-08-07 10:16:35', '2006-12-07 15:42:38', 'Ifanadiana', '+261 (596) 855-8665', 'MG');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Henriette', 'Hedge', 'Verla', 'Female', '2000-05-09 09:52:02', '2007-06-26 12:25:56', 'Yecun', '+86 (620) 585-6075', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Ellyn', 'Crowthe', 'Libbie', 'Female', '1989-04-24 06:19:59', null, 'Manquiring', '+63 (515) 128-3715', 'PH');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Prue', 'Lowndesbrough', 'Robina', 'Female', '1983-12-05 09:13:02', null, 'Guimbal', '+63 (818) 641-6101', 'PH');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Elianore', 'Duckels', 'Tera', 'Female', '2012-04-23 15:30:50', '2008-01-11 22:03:30', 'Vallenar', '+56 (987) 896-9515', 'CL');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Babbie', 'Raiman', 'Morganne', 'Male', '1977-08-09 08:25:23', '2009-04-08 00:27:56', 'Chongmin', '+86 (706) 770-6973', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Jade', 'Neaverson', 'Lorilyn', 'Male', '2010-09-06 10:03:10', '2000-02-16 02:36:42', 'Fengmu', '+86 (118) 672-8917', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Whitney', 'Neasham', 'Maggy', 'Male', '1969-06-17 06:26:51', '2018-08-24 22:58:11', 'Bershet’', '+7 (343) 213-4714', 'RU');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Lacy', 'Welberry', 'Gerda', 'Female', '1969-11-28 03:46:27', null, 'Zhangxi', '+86 (318) 845-4536', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Cherilyn', 'Lissenden', 'Jsandye', 'Male', '2014-04-07 19:17:43', '2015-12-16 18:11:05', 'Belyye Stolby', '+7 (887) 789-9581', 'RU');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Mike', 'Stork', 'Andromache', 'Female', '1968-12-01 19:57:56', '2017-05-12 03:24:29', 'Durham', '+1 (919) 157-4274', 'US');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Duffy', 'Wareham', 'Asia', 'Female', '1986-05-07 07:37:29', null, 'Krajan', '+62 (224) 556-9061', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Timmi', 'Rex', 'Gavrielle', 'Female', '2020-11-29 09:12:36', null, 'Cinyumput', '+62 (804) 550-2664', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Andromache', 'Pollack', 'Walliw', 'Male', '1973-10-20 08:26:16', '2007-05-27 01:40:05', 'Taoyang', '+86 (124) 149-3522', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Shanta', 'Antill', 'Kaylil', 'Female', '2018-03-17 20:55:30', null, 'Otaniemi', '+358 (503) 494-1804', 'FI');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Bernice', 'Martugin', 'Aggi', 'Male', '1978-11-16 02:59:57', null, 'Jilili', '+51 (560) 757-9420', 'PE');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Wernher', 'Whinney', 'Mariann', 'Male', '1964-02-01 09:09:50', null, 'Vishnyeva', '+375 (853) 524-8968', 'BY');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Melessa', 'Oldham', 'Joellyn', 'Female', '2002-02-09 07:28:38', '2020-03-14 11:09:09', 'Changshan', '+86 (879) 918-9687', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Gaven', 'Meadowcraft', 'Susanetta', 'Female', '1980-04-30 02:27:54', null, 'Jianshe', '+86 (935) 953-6668', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Agretha', 'Shrimpling', 'Gabriellia', 'Female', '1995-06-13 16:11:31', '2004-02-04 08:15:49', 'Trakan Phut Phon', '+66 (300) 362-2031', 'TH');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Nikos', 'Zimmermanns', 'Alleen', 'Male', '1974-07-25 01:53:09', null, 'Jolo', '+63 (263) 753-7842', 'PH');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Hedvige', 'Giuroni', 'Jerrilee', 'Male', '1977-03-08 00:21:05', '2001-10-03 03:26:09', 'Longgang', '+86 (374) 133-9793', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Corly', 'Haack', 'Viole', 'Male', '1991-12-23 19:49:19', null, 'Aldeia', '+351 (621) 401-5297', 'PT');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Hettie', 'Tourle', 'Milena', 'Male', '1985-05-28 03:33:26', null, 'Anaheim', '+1 (714) 332-1668', 'US');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Dusty', 'McClosh', 'Marla', 'Female', '1971-01-25 09:09:53', null, 'Colombo', '+94 (207) 505-9107', 'LK');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Michele', 'Saffer', 'Wrennie', 'Female', '1990-05-26 19:30:15', null, 'Al Wajh', '+966 (429) 389-6696', 'SA');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Edithe', 'Meakin', 'Mellisent', 'Female', '1982-01-23 22:44:24', '2002-09-26 21:12:40', 'Salsipuedes', '+1 (190) 589-1338', 'DO');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Ed', 'Appleton', 'Tiphani', 'Male', '2011-02-26 06:44:42', '2011-08-21 08:16:05', 'Borisova Griva', '+7 (401) 534-3954', 'RU');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Ivette', 'Frisdick', 'Libby', 'Female', '2004-06-21 14:58:23', '2001-03-02 11:53:08', 'Ciudad Vieja', '+502 (253) 138-0649', 'GT');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Annalee', 'Elsay', 'Susan', 'Male', '1965-05-24 12:52:26', null, 'Sindangkerta', '+62 (369) 803-8155', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Weber', 'Abbison', 'Nadya', 'Male', '1978-08-16 04:49:53', null, 'Byuravan', '+374 (696) 395-0319', 'AM');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Justinian', 'Quadling', 'Eddie', 'Female', '2000-05-13 12:34:06', '2015-12-10 00:44:30', 'Marićka', '+387 (591) 305-2610', 'BA');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Prentiss', 'Wank', 'Clareta', 'Female', '1996-04-30 05:29:49', '2012-03-20 18:22:37', 'La Sarrosa', '+504 (389) 784-6140', 'HN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Cacilie', 'Dunbobin', 'Carey', 'Female', '1960-03-15 05:27:20', '2005-12-08 06:50:28', 'Bang Kho Laem', '+66 (383) 938-6656', 'TH');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Ludvig', 'Russi', 'Heida', 'Male', '1977-04-21 01:35:54', null, 'Babakankiray', '+62 (410) 870-9573', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Kimberli', 'Dicte', 'Haily', 'Female', '2017-02-09 04:10:10', '2000-12-10 03:43:37', 'Boshkengash', '+992 (733) 341-7349', 'TJ');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Clarey', 'Gillise', 'Desiri', 'Female', '1998-12-07 23:44:49', null, 'Nagcarlan', '+63 (382) 550-5412', 'PH');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Derward', 'Maymond', 'Evanne', 'Male', '2013-10-25 18:13:30', '2018-11-20 20:41:29', 'Jeponkrajan', '+62 (944) 311-8599', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Camille', 'Bruhnsen', 'Anastassia', 'Male', '1966-12-04 21:49:07', '2007-10-17 13:00:27', 'Caijiazha', '+86 (589) 184-4343', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Rhodia', 'Tchaikovsky', 'Concettina', 'Female', '1981-07-28 05:38:28', '2020-12-01 06:33:37', 'Real', '+351 (660) 990-1884', 'PT');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Trescha', 'Melville', 'Sibley', 'Male', '2001-12-20 16:24:33', null, 'Sankeyushu', '+86 (604) 807-9034', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Cori', 'de Leon', 'Nicol', 'Female', '1987-05-13 16:59:05', null, 'Kinnula', '+358 (651) 662-5147', 'FI');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Gerard', 'Harnott', 'Esmaria', 'Male', '1999-08-08 12:53:31', '2002-12-01 21:54:24', 'Ziftá', '+20 (133) 926-6292', 'EG');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Michell', 'Sempill', 'Gertie', 'Female', '1987-06-13 07:47:18', null, 'Bumpe', '+232 (495) 805-0293', 'SL');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Leta', 'Browell', 'Farrah', 'Female', '1975-03-22 12:16:48', null, 'Bromma', '+46 (876) 768-4395', 'SE');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Kellen', 'Davids', 'Selia', 'Female', '2006-09-19 04:14:53', null, 'Kanekomachi', '+81 (810) 453-3385', 'JP');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Horace', 'Burnet', 'Lainey', 'Male', '1969-05-03 12:47:23', null, 'Ampelákia', '+30 (225) 751-5244', 'GR');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Hershel', 'Kyffin', 'Robenia', 'Female', '2015-12-25 12:47:00', '2008-12-13 22:41:59', 'Dongshan', '+86 (153) 449-4370', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Vincenty', 'Loiterton', 'Becki', 'Female', '2000-12-04 05:59:33', null, 'Jacareí', '+55 (735) 790-8295', 'BR');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Alexine', 'McNess', 'Gwendolen', 'Female', '1982-01-13 10:26:37', null, 'Shar’ya', '+7 (445) 464-4026', 'RU');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Carey', 'Lamplugh', 'Ardyce', 'Male', '2011-02-23 17:29:06', null, 'Sekartaji', '+62 (418) 499-6806', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Dasya', 'Dikle', 'Anderea', 'Female', '2010-12-03 19:35:31', null, 'Gangsha', '+86 (999) 113-7166', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Jenilee', 'Ingry', 'Kali', 'Male', '2017-09-20 19:49:50', null, 'Kemiri', '+62 (319) 972-6020', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Jessey', 'Angus', 'Phyllys', 'Female', '2006-09-22 10:50:04', null, 'Bantian', '+86 (126) 929-9107', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Frasquito', 'Grigorescu', 'Felicle', 'Female', '1966-05-12 22:38:48', '2016-06-18 01:40:09', 'Buket Teukuh', '+62 (727) 642-1577', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Dion', 'Ruttgers', 'Emiline', 'Female', '1985-08-16 10:00:14', null, 'Bajiao', '+86 (598) 117-6022', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Cozmo', 'Bottby', 'Hedy', 'Male', '1989-12-12 21:42:45', '2008-07-12 15:15:29', 'Piripiri', '+55 (738) 841-8521', 'BR');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Lonnie', 'Skylett', 'Golda', 'Female', '2001-06-18 02:14:06', null, 'Stockholm', '+46 (823) 795-3851', 'SE');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Rodd', 'Bradie', 'Josie', 'Male', '1976-09-23 18:30:38', null, 'Borodino', '+380 (564) 725-5879', 'UA');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Maurene', 'Petruszka', 'Nerissa', 'Male', '1980-03-23 06:27:55', null, 'Marabahan', '+62 (383) 807-5250', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Sophronia', 'Grishanin', 'Kellen', 'Male', '2018-03-09 16:20:50', '2005-09-23 12:36:50', 'Mahābād', '+98 (793) 514-8684', 'IR');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Edee', 'Stidever', 'Beverlie', 'Male', '1996-05-06 13:39:08', null, 'Changshou', '+86 (659) 558-2509', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Brewer', 'Cudihy', 'Maurita', 'Female', '1994-07-12 06:34:12', '2001-10-28 06:04:02', 'Xiangdong', '+86 (203) 320-9098', 'CN');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Ulrick', 'Deniskevich', 'Raynell', 'Female', '1991-06-21 04:34:35', '2009-10-31 21:36:48', 'Pilang', '+62 (221) 959-6963', 'ID');
insert into patients (first_name, last_name, mothers_name, sex, date_of_birth, date_of_death, place_of_birth, phone_number, country_code) values ('Ximenez', 'Gierok', 'Kori', 'Male', '2007-10-21 23:44:52', null, 'Sanligang', '+86 (178) 591-5279', 'CN');

insert into address_of_patients (postcode, city, street_name, house_number) values (8057, 'Vale de Vila', 'Kensington', '92624');
insert into address_of_patients (postcode, city, street_name, house_number) values (4292, 'El Pao', 'Lillian', '2');
insert into address_of_patients (postcode, city, street_name, house_number) values (7216, 'Xinyi', 'Sugar', '48');
insert into address_of_patients (postcode, city, street_name, house_number) values (6561, 'Dan Khun Thot', 'Manitowish', '60168');
insert into address_of_patients (postcode, city, street_name, house_number) values (7785, 'Pinega', 'Twin Pines', '78152');
insert into address_of_patients (postcode, city, street_name, house_number) values (8158, 'Gracias', 'Warrior', '28');
insert into address_of_patients (postcode, city, street_name, house_number) values (3829, 'Motala', 'Debs', '8');
insert into address_of_patients (postcode, city, street_name, house_number) values (6179, 'Batusangkar', 'Lakewood Gardens', '36');
insert into address_of_patients (postcode, city, street_name, house_number) values (1458, 'Xagqu', 'La Follette', '2');
insert into address_of_patients (postcode, city, street_name, house_number) values (1019, 'Rayside-Balfour', 'Fremont', '9036');
insert into address_of_patients (postcode, city, street_name, house_number) values (8963, 'Ciranca', 'Main', '5');
insert into address_of_patients (postcode, city, street_name, house_number) values (6434, 'Salamwates', 'Dovetail', '024');
insert into address_of_patients (postcode, city, street_name, house_number) values (4758, 'Gandajika', 'Pawling', '43');
insert into address_of_patients (postcode, city, street_name, house_number) values (1309, 'Sonsón', 'School', '1');
insert into address_of_patients (postcode, city, street_name, house_number) values (5272, 'Shitouhe', 'Bluejay', '2');
insert into address_of_patients (postcode, city, street_name, house_number) values (4824, 'Ribeira do Pombal', 'Center', '717');
insert into address_of_patients (postcode, city, street_name, house_number) values (3288, 'Hřebeč', 'Morning', '7022');
insert into address_of_patients (postcode, city, street_name, house_number) values (2548, 'Caibiran', 'Forest Run', '29541');
insert into address_of_patients (postcode, city, street_name, house_number) values (7263, 'Kréstena', 'Warner', '53');
insert into address_of_patients (postcode, city, street_name, house_number) values (9953, 'Umeå', 'Sutherland', '4413');
insert into address_of_patients (postcode, city, street_name, house_number) values (2363, 'Aimin', 'Transport', '57986');
insert into address_of_patients (postcode, city, street_name, house_number) values (9908, 'Jiwei', 'Caliangt', '15935');
insert into address_of_patients (postcode, city, street_name, house_number) values (5121, 'Malanday', 'La Follette', '5');
insert into address_of_patients (postcode, city, street_name, house_number) values (6626, 'Petaling Jaya', 'Stone Corner', '6');
insert into address_of_patients (postcode, city, street_name, house_number) values (7496, 'Casablanca', 'Novick', '5');
insert into address_of_patients (postcode, city, street_name, house_number) values (8580, 'Lanxi', 'Eagan', '610');
insert into address_of_patients (postcode, city, street_name, house_number) values (4957, 'Yangying', 'Florence', '1');
insert into address_of_patients (postcode, city, street_name, house_number) values (8416, 'Fangtang', 'Gerald', '1');
insert into address_of_patients (postcode, city, street_name, house_number) values (1501, 'Kot Sultan', 'Anthes', '2185');
insert into address_of_patients (postcode, city, street_name, house_number) values (5098, 'Apitong', 'Hudson', '45');
insert into address_of_patients (postcode, city, street_name, house_number) values (3845, 'Washington', 'Comanche', '62');
insert into address_of_patients (postcode, city, street_name, house_number) values (7380, 'Zaoxi', 'Independence', '1');
insert into address_of_patients (postcode, city, street_name, house_number) values (1950, 'Anka', 'Southridge', '0');
insert into address_of_patients (postcode, city, street_name, house_number) values (4540, 'Labytnangi', 'Spaight', '1796');
insert into address_of_patients (postcode, city, street_name, house_number) values (6315, 'Cikeper', 'Northview', '883');
insert into address_of_patients (postcode, city, street_name, house_number) values (9938, 'Carazinho', 'Nelson', '9');
insert into address_of_patients (postcode, city, street_name, house_number) values (1772, 'Paço', '2nd', '5366');
insert into address_of_patients (postcode, city, street_name, house_number) values (3282, 'Pandian', 'Bultman', '40');
insert into address_of_patients (postcode, city, street_name, house_number) values (3456, 'Paris 17', 'Arizona', '291');
insert into address_of_patients (postcode, city, street_name, house_number) values (1228, 'Colonia Catuete', 'Pawling', '7304');
insert into address_of_patients (postcode, city, street_name, house_number) values (6932, 'Osnabrück', 'Roxbury', '57541');
insert into address_of_patients (postcode, city, street_name, house_number) values (8612, 'Datarkadu', 'Twin Pines', '98');
insert into address_of_patients (postcode, city, street_name, house_number) values (4546, 'Zheleznogorsk', 'Surrey', '2');
insert into address_of_patients (postcode, city, street_name, house_number) values (1632, 'Margasari', 'Northridge', '160');
insert into address_of_patients (postcode, city, street_name, house_number) values (6511, 'Kalamangog', 'Kings', '9');
insert into address_of_patients (postcode, city, street_name, house_number) values (7781, 'Zhangye', 'Green', '4');
insert into address_of_patients (postcode, city, street_name, house_number) values (9640, 'Itapé', 'Forest Run', '138');
insert into address_of_patients (postcode, city, street_name, house_number) values (2202, 'Callanca', 'Gale', '2');
insert into address_of_patients (postcode, city, street_name, house_number) values (8097, 'Masākin', 'Moland', '471');
insert into address_of_patients (postcode, city, street_name, house_number) values (6107, 'Bocana de Paiwas', 'Anzinger', '39');
INSERT INTO `hospital`.`relationship_between_patients` (`id_of_patient1`, `id_of_patient2`, `type_of_connection`, `quality_of_connection`, `distance`, `start_of_connection`, `end_of_connection`) VALUES ('1', '2', 'sibling', 'tarara', '4', '2010-12-12', '2122-01-30');
INSERT INTO `hospital`.`relationship_between_patients` (`id_of_patient1`, `id_of_patient2`, `type_of_connection`, `quality_of_connection`, `distance`, `start_of_connection`, `end_of_connection`) VALUES ('2', '1', 'neighbor', 'tororo', '2', '1999-12-12', '2022-01-30');

DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `patients_AFTER_UPDATE` AFTER UPDATE ON `patients` FOR EACH ROW BEGIN
	DECLARE patient_id INTEGER;
	DECLARE newDOD DATE;
UPDATE relationship_between_patients SET end_of_connection = newDOD WHERE relationship_between_patients.id_of_patient1 = patient_id 
OR relationship_between_patients.id_of_patient2 = patient_id AND relationship_between_patients.end_of_connection > newDOD;
END */;;
DELIMITER ;

DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `relationship_between_patients_BEFORE_INSERT` BEFORE INSERT ON `relationship_between_patients` FOR EACH ROW BEGIN
    DECLARE patient1_dob DATE;
    DECLARE patient2_dob DATE;
    DECLARE start_of_conn DATE;
	
    select date_of_birth into patient1_dob from patient where id = patient1_id;
    select date_of_birth into patient2_dob from patient where id = patient2_id;
    select start_of_connection into start_of_conn from relationship_between_patients where relationship_id = id;

    if (start_of_conn < patient1_dob) or (start_of_conn < patient2_dob) then
        if patient1_dob < patient2_dob then
            update relationship set start_of_connection = patient1_dob where id = relationship_id;
        else
            update relationship set start_of_connection = patient2_dob where id = relationship_id;
        end if;
    end if;
END */;;
DELIMITER ;	
	
	
