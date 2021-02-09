-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 09 Feb 2021 pada 02.28
-- Versi server: 8.0.13-4
-- Versi PHP: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2WUhCT2g1R`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `comment`, `user_id`, `recipe_id`) VALUES
(1, 'Mudah dimengerti dan lezat', 34, 6),
(2, 'Mudah dimengerti dan lezat 1', 35, 1),
(4, 'Mudah dimengerti dan lezat 3', 13, 3),
(5, 'Mudah dimengerti dan lezat 56', 35, 6),
(6, 'Mudah dimengerti dan lezat 98', 19, 2),
(7, 'comment from postman', 18, 5),
(8, 'comment from postman 2', 34, 6),
(12, 'test', 35, 6),
(13, 'comment baru', 35, 6),
(15, 'bagus sekali kue nya', 35, 18),
(18, 'mana kue nya', 35, 19),
(19, 'manis banget donngg', 35, 20),
(20, 'ayo kamu pasti bisa', 35, 23),
(21, 'teteh manis banget sih', 39, 23),
(22, 'kue nya mantap gan', 39, 19),
(24, 'Akang oge meuni kasep pisan ih', 35, 23),
(25, 'sangat enak...', 41, 19),
(26, 'Test ke 1', 36, 26),
(27, 'duh laper..', 41, 23),
(31, 'barangnya ada?\n', 41, 19),
(32, 'Pengen Nikah ....', 35, 19),
(33, 'disuruh komen', 41, 24),
(34, 'disuruh komen', 41, 9),
(37, 'Senyuman mu mas, aku suka', 35, 25),
(41, 'bagus sekali', 35, 38),
(43, 'lucu ikannya', 35, 32),
(44, 'Iya teh jago deh, mau dong dimasakin', 39, 16),
(45, 'wa nya dong pls :)', 39, 16),
(46, 'Iya kaya teteh :)', 39, 32),
(47, 'Kayanya manis banget ihh ...', 35, 31),
(48, 'Kangen Pasta deh...', 35, 33),
(49, 'Siapa mau ngajakin makan pasta :(', 35, 33),
(50, 'Pisang kok coklat', 35, 34),
(51, 'Kaya kenal...', 35, 34),
(52, 'Mudah di pelajari, ga kaya ngoding susah, mending masak aja', 35, 35),
(53, 'Indomie dong...', 35, 36),
(54, '', 38, 34),
(55, 'mana saya tau saya kan ikan !!', 38, 34),
(57, 'eh masih kalah manis deh sama teteh :)', 39, 31),
(58, 'Ig nya dong kaka :D', 39, 31),
(59, 'Skuyyyy lah', 39, 33),
(60, 'Saya ada pisang nih...', 39, 34),
(61, 'pisang saya lokal punya hehehe :)', 38, 34),
(62, 'Iya aku juga suka', 39, 25),
(63, 'pepet tros jangan kasih nafas', 38, 31),
(64, 'ini wa saya : 085711356478, save dong :)', 39, 25),
(65, 'jangan mau dia bau belerang', 38, 25),
(68, 'Hello', 35, 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `likes`
--

INSERT INTO `likes` (`id`, `recipe_id`, `user_id`) VALUES
(7, 1, 34),
(2, 1, 35),
(8, 2, 34),
(3, 2, 35),
(4, 3, 34),
(6, 3, 35),
(1, 5, 18),
(128, 15, 41),
(73, 15, 43),
(176, 16, 35),
(88, 16, 43),
(23, 19, 35),
(94, 19, 39),
(124, 19, 41),
(109, 19, 43),
(39, 19, 44),
(114, 23, 35),
(32, 23, 39),
(119, 23, 41),
(47, 23, 43),
(108, 24, 35),
(35, 24, 39),
(53, 24, 43),
(36, 25, 39),
(140, 25, 43),
(177, 32, 35),
(139, 32, 41),
(154, 36, 39),
(155, 39, 39);

-- --------------------------------------------------------

--
-- Struktur dari tabel `recipes`
--

CREATE TABLE `recipes` (
  `id_rcp` int(11) NOT NULL,
  `title_rcp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_rcp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video_rcp` varchar(501) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ingridients_rcp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc_rcp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `id_user` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `recipes`
--

INSERT INTO `recipes` (`id_rcp`, `title_rcp`, `img_rcp`, `video_rcp`, `ingridients_rcp`, `desc_rcp`, `created_at`, `updated_at`, `id_user`) VALUES
(6, 'Rendang Daging Sapi Khas Padang', '[\"/images/image-1609067434635-rendang.jpg.jpg\"]', '[\"/videos/video-1608811440711-videos.mp4\",\"/videos/video-1608811440770-videos.mp4\"]', '1. 1 kg daging sapi\r\n2. 1 liter santan cair\r\n3. 1/4 kelapa serundeng tumbuk 4. halus hingga mengeluarkan 5. minyak\r\n6. secukupnya Garam\r\n7. secukupnya Gula\r\n8. secukupnya Minyak', 'Rendang ini salah satu makanan favorit keluarga, walaupun saya bukan asli minang tapi rasa rendangnya ga jauh beda dari RM padang pada umumnya', '2020-12-24', '2020-12-27', 19),
(16, 'Fried puff pastry', '[\"/images/image-1609157017673-image-1609069672597-pastel-goyeng.jpg.jpg.jpg\"]', '[\"/videos/video-1609158056911-semangat.mp4\",\"/videos/video-1609158056934-semangatku.mp4\"]', 'Cooked vermicelli\nBoiled potatoes (finely chopped)\nChopped carrot (I don’t)\nGarlic powder\nPepper\nChicken powder\nSugar', 'This can be served as appetizer or dessert or snack even breakfast, lol, up to you.\nHope you like it!', '2020-12-26', '2020-12-28', 35),
(25, 'Ayam Goreng (Indonesian Fried Chicken)', '[\"/images/image-1609069227708-ayam-goyeng.jpg.jpg\"]', '[\"/videos/video-1609072987740-banana-2.mp4\",\"/videos/video-1609072988135-banana-1.mp4\"]', '1 kg Chicken Wings\n2 cm fresh turmeric (or 2 tsp powder)\n2 cm fresh ginger\n2 cm fresh galangal\n5 cloves garlic\n1 cloves red onion\n1 teaspoon coriander seeds (toasted for better flavour)\nsalt pepper\nchicken powder\n5 tbsp olive oil', 'i used chicken wings because its finger licking good with this special marinate recipes', '2020-12-27', '2020-12-27', 39),
(31, 'Bubur hintalu', '[\"/images/image-1609143755803-bubur-hintalu.jpg.jpg\"]', '[\"/videos/video-1609143755846-bubur-hintaly.mp4\",\"/videos/video-1609143756486-hintalu-2.mp4\"]', '200 gr tepung ketan\n75 gr tepung beras\n1 sdt air kapur sirih\nsecukupnya air matang', 'Resep Bubur Hintalu Karuang. Bubur khas dari kalimantan selatan ini sekilas mmng mirip dgn bubur candil dari daerah pulau jawa', '2020-12-28', '2020-12-28', 41),
(32, 'Patin bakar', '[\"/images/image-1609143997176-patin-bakar.jpg.jpg\"]', '[\"/videos/video-1609143997192-patin-mbakar-2.mp4\",\"/videos/video-1609143997686-patin-mbakar-1.mp4\"]', '1 ekor Ikan patin, potong dan cuci bersih\n10 ml air jeruk nipis beserta ampasnya\n5 siung Bawang merah\n4 siung Bawang putih\n1 butir kemiri\n2 sdt kunyit bubuk\n2 sdt Garam', 'Mendekati event tahun baru pastinya yang dipikirkan sebelum pandemi pasti acara barbeque alias bakar-bakar. Mau bakar apa nih? Asal jangan bakar rumah orang aja yekan', '2020-12-28', '2020-12-28', 41),
(33, 'Big lasgana', '[\"/images/image-1609144406890-lasagna.jpg.jpg\"]', '[\"/videos/video-1609144406927-lasagna-2.mp4\",\"/videos/video-1609144407720-lasagna-1.mp4\"]', '6 lembar kulit lasagna, jumlah disesuaikan\n1 sdt minyak zaitun\nair secukupnya untuk merebus\n2 sdm minyak zaitun\n2 sdm saus tomat\n1 sdt gula pasir\n1 sdt oregano kering\n1 sdt garam', 'Beef lasagna yg meleleh bgt dimulutt yummm!!', '2020-12-28', '2020-12-28', 41),
(34, 'Banana Fritters', '[\"/images/image-1609144588510-pisang-goyeng-maknyus.jpg.jpg\"]', '[\"/videos/video-1609144588517-banana-2.mp4\",\"/videos/video-1609144589403-banana-1.mp4\"]', 'Banana, the one that\' s ok for baking or frying, cut at an angle\nFlour\nSome water or milk\nSugar\nVanilla essence\nOil for frying', 'This can be served as appetizer or dessert or snack even breakfast, lol, up to you.', '2020-12-28', '2020-12-28', 41),
(35, 'Healthy burger', '[\"/images/image-1609144930226-healthy-burger.jpg.jpg\"]', '[\"/videos/video-1609144930293-how-to-basic-1.mp4\",\"/videos/video-1609144930481-how-to-basic-2.mp4\"]', '4 chicken salami(you can add more)\n2 tsp mayonnaise\n1 tsp mustard paste\n1 tbsp tomato ketchup\n1 bunch salad leaves\nas needed French fries\n2 cheese slices\n1/2 cup olive', 'A very quick and easy recipe using chicken with some sauces and vegetables in potato buns.', '2020-12-28', '2020-12-28', 41),
(36, 'Ramen Noodles', '[\"/images/image-1609145209116-noodles.jpg.jpg\"]', '[\"/videos/video-1609145209128-how-to-basic-2.mp4\",\"/videos/video-1609145209288-how-to-basic-1.mp4\"]', '2-4 chicken thighs\nCornstarch\n3 tbsp Crisco oil\n1 tsp powdered ginger or fresh ginger\n1 tbsp red chili paste (I use Gochujang)\n1 tsp soy bean paste', 'This Ramen has it all: it\'s slurpable, easy to make, delicious rich flavor, just enough spice to wow your taste buds and all around good for you ingredients! Perfect way to warm you up on those cold winter days.', '2020-12-28', '2020-12-28', 41),
(51, 'Burger D\'besto', '[\"/images/image-1612772713300-healthy-burger.jpg.jpg\"]', '[\"/videos/video-1612772713312-semangat-1.mp4\",\"/videos/video-1612772713327-semangatku-4.mp4\"]', '1. kue\n2. kering\n3. coklat', 'Lorem impsum loemrem loream faafa', '2021-02-08', '2021-02-08', 35);

-- --------------------------------------------------------

--
-- Struktur dari tabel `saves`
--

CREATE TABLE `saves` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `saves`
--

INSERT INTO `saves` (`id`, `recipe_id`, `user_id`) VALUES
(3, 2, 13),
(5, 3, 18),
(1, 5, 13),
(34, 9, 41),
(25, 19, 35),
(19, 19, 39),
(26, 19, 43),
(17, 23, 39),
(20, 24, 39),
(44, 25, 39),
(50, 31, 39),
(55, 32, 35),
(51, 36, 35);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_otp`
--

CREATE TABLE `tb_otp` (
  `id` int(11) NOT NULL,
  `otp` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_otp`
--

INSERT INTO `tb_otp` (`id`, `otp`) VALUES
(42, '0CZMvP'),
(53, 'EaV98F'),
(40, 'Ejvzqd'),
(44, 'EtV8fJ'),
(34, 'hki6Ul'),
(37, 'iLPEzs'),
(41, 'JKqTZB'),
(36, 'ltKjg8'),
(35, 'MHLFQD'),
(47, 'N4hO9d'),
(43, 'qNRkNW'),
(46, 'tZYqJJ'),
(29, 'XauONk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `token_whitelist`
--

CREATE TABLE `token_whitelist` (
  `id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `token_whitelist`
--

INSERT INTO `token_whitelist` (`id`, `token`) VALUES
(93, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoidXNlcjAxQGdtYWlsLmNvbSIsImlhdCI6MTYwODk1NTE1NX0.k-l66Pq4xJm3k8OtWIp9EzSs0hcDa6MrlGddwqQG3so'),
(109, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiaGVuZHJhLnNvbGloLmpwQGdtYWlsLmNvbSIsImlhdCI6MTYwOTA1MTE5OH0.8AxFdUhsw0R-_SCZfYd9RnDchP-f5fgO_0Ruei5LVwc'),
(118, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsImlhdCI6MTYwOTA2MjQ5NH0.lYffaacpgCsVYhoGG8kQ1hJHyXjcI-fAIbxUtapUg60'),
(119, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsImlhdCI6MTYwOTA2MjUxMX0.AfBmSJRrcp4BS8ILh1GnE6fT-4LBkTCzchORLc5Y7TI'),
(120, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsImlhdCI6MTYwOTA2MjU1MX0.U_Gbg9YmnKQrA6e1i2b5whNexvaJlu5BpgJhMYwNhcQ'),
(123, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsImlhdCI6MTYwOTA2Mjk0MH0.C96B3StXiStvajRwoVw3oFhdJ9vXmbjG8YflKBuAtZc'),
(126, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsImlhdCI6MTYwOTA2OTkyMn0.lqU497O1g5dmzcr8JDHOau5ACL3tUBVgGzCrKTY7Slg'),
(127, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiaW50ZXJuZXR3YXJnYW5lZ2FyYUBnbWFpbC5jb20iLCJpYXQiOjE2MDkwODM4NDJ9.UHwBJc-_xHUPl0ej25QR_vOKrb7KDSbCqKOCbW7c6cI'),
(128, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiZ2hhbGlldmFuaG91dEBnbWFpbC5jb20iLCJpYXQiOjE2MDkwODQ3NTJ9.2YFX_mLNApfFRuLmBx836dqB19kqjPmVyIeFjmmZgA8'),
(129, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiZ2hhbGlldmFuaG91dEBnbWFpbC5jb20iLCJpYXQiOjE2MDkwODQ3NzB9.8NaboMD_QTk-2L2Vvi0jqLlmaqYHd1OGsugrKQa1x5Y'),
(141, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsImlhdCI6MTYwOTIzNzUzMX0.a0w9L17Uzq8TKDp_JSH1TK9_etgkI8QtatwCaPtVl2g'),
(142, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsImlhdCI6MTYwOTIzODQ3M30.Ovr-e9o7_GuWPwtI_PCdIfvye-odM0gL9tHXmmewg8E'),
(148, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoidXNlcjFAZ21haWwuY29tIiwiaWF0IjoxNjA5MjQzOTIyfQ.jioEiNoguxg197bk7XiiGJJv0WSqVzKPUovIM2Omcro'),
(151, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiYWtiYXIuenVsNzNAZ21haWwuY29tIiwiaWF0IjoxNjA5MjQ5NTM5fQ.TNb1GDE8FLEQ_ejrWv9eJHSamGHx1K7yBnV8KybKaaQ'),
(168, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoibWdoYWx5cmFtYWRoYW5AZ21haWwuY29tIiwiaWF0IjoxNjA5MjU3MTA2fQ.WpYLJiA89GnlUazoH3zauD_Y0xVstAki6nTBpqLzIPU'),
(169, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoibWdoYWx5cmFtYWRoYW5AZ21haWwuY29tIiwiaWF0IjoxNjA5MjU3MTA2fQ.WpYLJiA89GnlUazoH3zauD_Y0xVstAki6nTBpqLzIPU'),
(174, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiYWtiYXIuenVsNzNAZ21haWwuY29tIiwiaWF0IjoxNjA5MjgyNzE4fQ.2O2BC3C2xiXDPfQLDswLQC1tR0f479Dt_GDQVE7UazE'),
(177, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiYWtiYXIuenVsNzNAZ21haWwuY29tIiwiaWF0IjoxNjA5Mjg1NzM5fQ.WONOICCETHz88_8sdXsi0nJynQ8OeslpNFHdtsgw5Yo'),
(178, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiaGVuZHJhLnNvbGloLmpwQGdtYWlsLmNvbSIsImlhdCI6MTYwOTI5NDQzNn0.2q6NJaarA5aXKQMLudstzc1qYUPwyrBYzHqO4UHMeog'),
(187, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiaGVuZHJhLnNvbGloLmpwQGdtYWlsLmNvbSIsImlhdCI6MTYxMTA0MDg2Nn0.gd5Ios7sBuzKij315pZVRmLaF_zSA8vOmfSD78tsvOc'),
(188, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbF91c2VyIjoiaGVuZHJhLnNvbGloLmpwQGdtYWlsLmNvbSIsImlhdCI6MTYxMjY2MzU4Mn0.ZPtv3fmv3gL4ZRowAb0kXNGNZTiRdcETtojjl93M6_c');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `name_user`, `email_user`, `phone_user`, `password_user`, `photo_user`) VALUES
(23, 'user1', 'user1@gmail.com', '082466242424', '$2b$10$riAHK4fOzPGeUpOrryxNvOuVMhhGKuUTAvu3IEiq6UbmiLDAbqOYi', NULL),
(34, 'user03', 'user04@gmail.com', '085', '$2b$10$dwb2aBZpCxoXhfJUbvey4.Z8w4EnI9vTAvj/A3RaToQPcP2i2ygJi', '[\"/images/image-1608965219507-img.jpg\"]'),
(35, 'user01', 'hendra.solih.jp@gmail.com', '085', '$2b$10$QRxFfyN6qH7jM2o/3t6tuOGLfadt0YzI3Z88PlyK5QO2XN6VpWK9a', '[\"/images/image-1612770770757-User01.jpg.jpg\"]'),
(36, 'Elwandy ', 'elwanditirtana1945a@gmail.com', '0938535323253', '$2b$10$mDzTwUHqcoZw49Z15dzkR.VQnHu5Au.ynPH4m6giEfobwAEstTeze', '[\"/images/image-1608907434767-img.jpg\"]'),
(37, 'user01', 'user05@gmail.com', '085', '$2b$10$TKE.0HBNRfUJcTHJYXLaV.1NCOqu9/RuoTv9WzJywEgHgUvF47hau', NULL),
(38, 'Ghali Rmdn', 'mghalyramadhan@gmail.com', '081218962230', '$2b$10$v7ZXfw/I9whytcr1.zk3PO5gx8zj/l5sPddMcegfbSuOf8b0t5TO.', '[\"/images/image-1609257313203-Bulet.jpg.jpg\"]'),
(39, 'akbar', 'akbar.zul73@gmail.com', '08565656565', '$2b$10$pY3h1nlG1mOq42S5ah0Pl.ycmEHS.OB2yPl4T8WaGaVaSI2h3h.Dm', '[\"/images/image-1609062623928-11111.JPG.JPG\"]'),
(40, 'User Ghali', 'mochammadghaly@gmail.com', '085157537944', '$2b$10$3MZPRSNDSHnl/l5Hgxm1suC9hXIjuqnL34eWivJ1FSKcZXmLLt4M6', NULL),
(41, 'Ananda Muhammad', 'anandamtq@gmail.com', '083131001122', '$2b$10$DLMTEYsmh9DoU.NoHohmvO814MrTVHVS1s0ek478hBKVJ5rX8rvFq', '[\"/images/image-1609069989859-03-04.jpg.jpg\"]'),
(44, 'Mochammad Ghali', 'ghalievanhout@gmail.com', '084446448', '$2b$10$nQFLA78UzWLMw2OwacSe.OjdjYZKdNCNu9rajkkJnc.RWg3CONvtW', NULL),
(45, 'Test user 123', 'testuser123@gmail.com', '098674545645', '$2b$10$/92AbgYTu2lQf2ebgfpZGOg.BSYfwpjj8LDG500ePLFI8rnCtADri', '[\"/images/image-1609124367984-285195.jpg.jpg\"]'),
(46, 'user123', 'user123@gmail.com', '094754353453', '$2b$10$ST7cQ3grQbBuBgRjHIE2zeM3IZ7I2/.jmUsll0IKFgVgEinGP8X6a', NULL),
(47, 'user baru', 'userbaru@gmail.com', '085111111', '$2b$10$fupuZw9g.LZT7l5Vdm3TU.kZZA2EZtihvF2q635d/UUL2JhB4auyu', NULL),
(48, '1', 'userbaru1@gmail.com', '085711175630', '$2b$10$xBoMXsgOWBkuvrAR7NlzWO/16s8tIekxvRx0QCeLJoRmce0dpCWSW', NULL),
(51, 'user baru', 'userbaru123@gmail.com', '0857226664', '$2b$10$49Waa4XL6.2tv0rhqGi7zuiU2XbNAncmfJpAgYHF9PePddivH7XOm', NULL),
(53, 'user123', 'userbaru1232@gmail.com', '085212346798', '$2b$10$8x6a.M88BWP2P80p.B.eJuiIqpxe4HIqfclcwb/SJQImcJ6uFNoXS', NULL),
(55, 'User Baru 2020', 'user.solih.jp@gmail.com', '08570236548', '$2b$10$mlAKkvRpDUTapLlBJzCL8uOKHa1yIT941lnoDHp3oLSL1vxzk4aOu', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recipe_id` (`recipe_id`,`user_id`);

--
-- Indeks untuk tabel `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id_rcp`),
  ADD UNIQUE KEY `title_rcp` (`title_rcp`,`video_rcp`,`id_user`);

--
-- Indeks untuk tabel `saves`
--
ALTER TABLE `saves`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recipe_id` (`recipe_id`,`user_id`);

--
-- Indeks untuk tabel `tb_otp`
--
ALTER TABLE `tb_otp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `otp` (`otp`);

--
-- Indeks untuk tabel `token_whitelist`
--
ALTER TABLE `token_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email_user` (`email_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT untuk tabel `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id_rcp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `saves`
--
ALTER TABLE `saves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `tb_otp`
--
ALTER TABLE `tb_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `token_whitelist`
--
ALTER TABLE `token_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
