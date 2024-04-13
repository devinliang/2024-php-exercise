-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-04-13 05:23:24
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `school`
--

-- --------------------------------------------------------

--
-- 資料表結構 `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `bookname` varchar(32) NOT NULL COMMENT '書名',
  `author` varchar(32) NOT NULL COMMENT '作者',
  `publisher` varchar(32) NOT NULL COMMENT '出版社',
  `pubdate` date NOT NULL COMMENT '出版日期',
  `price` int(6) NOT NULL COMMENT '定價',
  `content` text NOT NULL COMMENT '內容簡介'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `book`
--

INSERT INTO `book` (`id`, `bookname`, `author`, `publisher`, `pubdate`, `price`, `content`) VALUES
(1, '原子思考：減少80%的無效努力，增加1000%的驚人成長', '菅原健一', '平安文化', '2024-04-01', 360, '你的努力是否有成果，\r\n從開始努力之前就決定了。\r\n \r\n日本商業界NO.1「疑難解決專家」價值百億的思考方式！\r\n幫助你化繁為簡，排除無效努力，讓所有的付出開花結果！\r\n \r\n　　不管是多大的難題，\r\n　　只要拆解成小問題後重新思考，\r\n　　就能夠輕鬆解決！\r\n \r\n　　不管再努力，都無法獲得成果，即使再拚命，也無法受到肯定……\r\n \r\n　　你是否也曾經有這種想法？在當今的社會，想要在工作上有所成就，靠的不是努力，而是腦力，沒頭沒腦的苦幹，是最沒有效率的行為。想要順利解決問題，就必須選擇最有效率的工作方式。\r\n \r\n　　而「原子思考」就是你的最佳解決方案！當你能將一件事情拆分成許多小部分，再針對每個小部分一一思考，就可以讓問題更明確，直擊真正的要害，在工作開始之前，就能馬上判斷什麼是沒有意義的事，不再只是模糊地提出概念或感覺。減少無用功，大幅提升你的工作品質！\r\n \r\n　　本書作者是享譽日本企業界的「疑難解決」專家，他透過「原子思考」來強化自己的工作能力，不但能夠同時負責30家公司，更曾將自己的企業以十幾億出售，並繼續經營至數百億的規模。只要學會本書傳授的「思考方式」，就能有效幫助你釐清思緒、提高產能，拿出人人稱羨的最佳成果！'),
(2, '讓思考品質飛躍提升的結構讀解力', '河村有希繪', '方舟文化', '2024-04-03', 380, '邏輯解讀 × 理解對方心情 × 組織自身想法\r\n東大、MBA、諮商\r\n都在用的思考技巧，原來小學國語課就學過了?!\r\n \r\n職場最強INPUT／OUTPUT基本功，\r\n「結構讀解力」首本入門書！\r\n \r\n　　可以同時鍛鍊「邏輯思考力」和「對人的理解、共感力」。\r\n　　真心地非常推薦！\r\n　　——日本暢銷書《LISTEN》監譯者「篠田真貴子」\r\n \r\n　　在職場上，你也有這些煩惱？\r\n　　．想法及想表達的話，總是說清不楚。\r\n　　．覺得自己的理解速度比別人慢。\r\n　　．學過的各種商務框架，總是沒辦法運用自如。\r\n　　．自己的解釋別人常聽不懂，覺得自己很不會說服人。\r\n　\r\n　　你的無敵解方，就是「結構讀解」！\r\n　　（1）INPUT：閱讀論說文，讀解邏輯。\r\n　　．更快、更正確地解讀資料和數據。\r\n　　．準確掌握對方的指示和意見。\r\n　　（2）INPUT：閱讀記敘文，讀解對方的心情。\r\n　　．在溝通交流時，洞悉對方意圖。\r\n　　．掌握行銷或交涉時的要點。\r\n \r\n　　透過結構讀解訓練，完全學會上述二招後——\r\n　　　★ OUTPUT：組職想法，重新用自己的方式表達出來！\r\n　　．活用商務框架，進行創造性思考。\r\n　　．整理複雜的問題，得出結論。\r\n　　．製作出條理分明的簡報和資料。');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
