-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-06-04 03:48:07
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.0.28

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
(2, '讓思考品質飛躍提升的結構讀解力', '河村有希繪', '方舟文化', '2024-04-03', 380, '邏輯解讀 × 理解對方心情 × 組織自身想法\r\n東大、MBA、諮商\r\n都在用的思考技巧，原來小學國語課就學過了?!\r\n \r\n職場最強INPUT／OUTPUT基本功，\r\n「結構讀解力」首本入門書！\r\n \r\n　　可以同時鍛鍊「邏輯思考力」和「對人的理解、共感力」。\r\n　　真心地非常推薦！\r\n　　——日本暢銷書《LISTEN》監譯者「篠田真貴子」\r\n \r\n　　在職場上，你也有這些煩惱？\r\n　　．想法及想表達的話，總是說清不楚。\r\n　　．覺得自己的理解速度比別人慢。\r\n　　．學過的各種商務框架，總是沒辦法運用自如。\r\n　　．自己的解釋別人常聽不懂，覺得自己很不會說服人。\r\n　\r\n　　你的無敵解方，就是「結構讀解」！\r\n　　（1）INPUT：閱讀論說文，讀解邏輯。\r\n　　．更快、更正確地解讀資料和數據。\r\n　　．準確掌握對方的指示和意見。\r\n　　（2）INPUT：閱讀記敘文，讀解對方的心情。\r\n　　．在溝通交流時，洞悉對方意圖。\r\n　　．掌握行銷或交涉時的要點。\r\n \r\n　　透過結構讀解訓練，完全學會上述二招後——\r\n　　　★ OUTPUT：組職想法，重新用自己的方式表達出來！\r\n　　．活用商務框架，進行創造性思考。\r\n　　．整理複雜的問題，得出結論。\r\n　　．製作出條理分明的簡報和資料。'),
(4, '當代英雄：黑暗時代的抗爭者（第一卷）', '余杰', '主流出版社', '2023-09-08', 480, '《當代英雄：黑暗時代的抗爭者》是一部記錄著當代中國抗爭者的心靈史。即使在這至暗時刻，一群有名或無名的反抗者挺身而出，他們不甘接受「韭菜」或「人礦」的命運。如普羅米修斯般，他們在黑暗中燃起火焰；如西西弗斯，他們推著巨石奮力前行。儘管被冷漠、辱罵所包圍，他們仍在黑暗中發光，因為與其詛咒黑暗，他們寧願讓自己發光。\r\n\r\n　　本書記錄了五十位抗爭者的故事，涵蓋了中國本土、圖博、東突厥斯坦、南蒙古、香港、台灣和海外華語圈。他們來自不同專業和背景，有教授、作家、記者、律師、藝術家、醫生、前官員，也有學生、農夫、工人、保安和殘障人士。他們跨越世代，年長者與年輕者相差八十歲，信仰各異，他們都心懷赤子之心並愛人如己、追求自由而輕視權力。\r\n\r\n　　這些抗爭者以多種形式反抗中共極權政府，卻遭受不同形式的迫害，包括開除學籍、取消教職、吊銷律師執業資格、關閉企業、剝奪工作機會，甚至遭受監控、拘留、折磨和判刑入獄等。其中被拘押和判刑者佔多數，有些人至今仍在獄中。本書希望成為一座橋樑，連接中國和海外的抗爭者，促進不同環境下的抗爭者之間的了解、交流和支持。\r\n\r\n　　法國思想家卡繆（Albert Camus）說：「反抗，讓人擺脫孤獨狀態，奠定人類首要價值的共通點。我反抗，故我們存在。」本書呼籲讓英雄不再只存在於獄中，而是得到支持者、社團、政黨和更宏大的生命共同體。若你無法成為英雄，成為英雄的土壤也是一種支持。閱讀並轉發抗爭者的言論，是對英雄的支持，也是人們的自我拯救。\r\n\r\n　　《當代英雄：黑暗時代的抗爭者》是對這些英雄的記錄和表彰，一部自由人的心靈史。他們或許只是滄海一粟，但他們的存在讓中國的未來不再只是崩潰的命運，而是有希望的鳳凰涅槃。這部書也關乎「世界會變好嗎？」的大哉問，是一部激勵、啟發和引領人心的重要著作。'),
(5, '此心安處：美國十年', '余杰', '主流出版社', '2023-02-17', 500, '余杰的《此心安處：美國十年》是一部罕見的醒世之作。它用最誠實和犀利的肺腑之言，清晰而強有力地定義了什麼是成為一位美國公民的真正含義。余杰先生素以愛憎分明、嫉惡如仇著稱，此書完整地解釋了余先生個性的精神源泉，即對專制制度下醬缸文化的徹底脫離和唾棄，和對美國自由民主精神完全認同和誓死捍衛的決心。他在美國的十年，不僅僅是沐浴自由、安身立命的十年，更是為自由吶喊、由「過客」速變為美國主人翁的十年，是為美國民主更加完善壯大而奮鬥的十年。每一位希望入籍美國和已經入籍美國的新移民，每一位希望尊嚴和自由、徹底解脫專制文化枷鎖的人，每一位熱愛自由、忠誠美國、立志捍衛美國立國根本原則的人，都應該閱讀此書。'),
(6, '暗黑民國史：兩岸歷史課本刻意迴避的空白30年', '余杰', '大是文化', '2020-04-29', 499, '蔣介石最崇拜的人是希特勒，毛澤東至少有六次感謝日本侵華，\r\n　　黃埔軍校是蘇聯人出人、出錢、出槍，建校這檔事跟蔣介石無關&hellip;&hellip;。\r\n \r\n　　抗日戰役中，黃河口決堤、長沙焚城，數十萬百姓無辜喪生，\r\n　　課本都寫是殘暴的日軍幹的，真相卻是：蔣介石異想天開的「焦土戰略」。\r\n \r\n　　共產黨搞工人、農民、學生運動，但裡面很少是真的工人、農人與學生。\r\n　　蔣介石攻陷共產黨老巢，迫使毛澤東殘軍走上長征之路。但，真是課本說的\r\n　　為建國而長征？一本西方傳教士回憶錄透露，根本是擄人勒贖的綁票集團。\r\n \r\n　　在國民黨與共產黨的官方歷史文件裡，你都不會看到以上這樣的記載，\r\n　　因為這是蔣介石與毛澤東刻意迴避的歷史真相。\r\n \r\n　　作者余杰是北京大學碩士，被譽為兩岸三地「最敢說真話的」的作家，\r\n　　2004年他和劉曉波等人共同起草中國年度人權報告，遭到審訊後非法軟禁數月；\r\n　　2012年他攜妻兒出走美國，目前定居華盛頓。\r\n \r\n　　余杰指出，凡是「大家都這麼認為」的觀點（往往是歷史教科書造成），\r\n　　一定要多打個問號。你渴望自由，還是擁護獨裁？端看你閱讀和接受哪一種歷史。\r\n \r\n　　因此，他以此為志重新查證歷史，在世界各大圖書館閱讀許多第一手文獻史料，\r\n　　才發現，很多歷史真相是某些當權者選擇性的記憶與空白。\r\n \r\n　　特別是1920至1950年代的抗戰與國共內戰時代，\r\n　　兩岸的課本總是說不清楚也寫不明白，為什麼？因為這是一段\r\n　　國民黨和共產黨都想竭力迴避的暗黑民國史。\r\n \r\n　　‧黃埔不是國民黨創的，是蘇聯人出錢、出人、出槍搞出來的\r\n　　欽點蔣介石當軍校校長的，不是孫文，而是莫斯科的大老闆史達林。\r\n　　因為在俄國人眼中，蔣介石是比孫文更好控制的傀儡。\r\n　　為什麼？因為孫文不懂軍事，而蔣介石想要擁有一支私人軍隊。\r\n　　\r\n　　‧蔣介石想學希特勒，有信為證\r\n　　美國紐約圖書館舉辦過「百年壓箱珍品展」，共分四大展區，\r\n　　蔣介石的親筆信被放在「看了反胃」區，為什麼？\r\n　　因為好幾封蔣介石寫給納粹元首希特勒的信，多次寫道：「吾所欽佩也。」\r\n \r\n　　‧從辛亥元老到抗日名將，全殺\r\n　　中共建政後，遺留在中國的國民政府黨政軍被害者約三百萬人，\r\n　　被共產黨處決的辛亥元老包括鄧玉麟、夏之時、何海清、宋鶴庚等，\r\n　　他們不曾參與國共內戰，卻被安上「反抗革命、惡霸地主」的罪名，\r\n　　就憑毛澤東「指示」。\r\n \r\n　　‧兩岸都不能說白的真相：隨軍妓女制\r\n　　想了解抗戰真相，你該讀一本被中國與美國同時查禁的書《敗走千里》。\r\n　　裡面寫了：被外國軍強暴是羞辱，換成本國軍就是勞軍，這就是戰爭的邏輯。\r\n \r\n　　在臺灣的學生都知道《中國之命運》是「蔣公」重要著作，\r\n　　但你知道內容嗎？為什麼該書闡述的理念種下國民黨敗亡的種子？\r\n　　\r\n　　中國國民黨是蘇俄的庶長子，中國共產黨是蘇俄的嫡次子，1927年之後的民國史，\r\n　　就是庶長子與嫡次子的殊死搏鬥。'),
(7, '顛倒的民國：臺灣和中國都不提起的近現代史', '余杰', '大是文化', '2019-07-03', 499, '◎「中華民國」是誰起的名字？「中華民族」是誰後悔莫及的發明？\r\n　　◎蔣介石誓師北伐，但最大功勞得給俄國將軍加倫。\r\n　　◎陳炯明並沒有叛變，他只是反對孫文破壞《約法》自立為非常大總統。\r\n　　◎課本說袁世凱是竊國大盜、民國罪人。看過他背黑鍋的證據你會想：他才算國父。\r\n\r\n　　你在兩黨的官方歷史文件裡，都不會看到這樣的記載。\r\n　　因為，歷史的書寫者常為權力服務，\r\n　　成王敗寇。敗的一方，就成了亂臣賊子。\r\n\r\n　　本書作者余杰是北京大學碩士，被譽為兩岸三地「最敢說真話的」的作家，\r\n　　2004年他和劉曉波等人共同起草中國年度人權報告，遭到非法軟禁數月；\r\n　　2012年他攜妻兒出走美國，目前定居華盛頓。\r\n\r\n　　這幾年來，他有如魯迅和柏楊般的批判性文字和思想，深深影響了年輕人。\r\n　　著作已有六十餘本，共1,500萬字。\r\n\r\n　　余杰認為，凡是人云亦云的地方，一定要多打個問號。\r\n　　你渴望自由，還是擁護獨裁？端看你閱讀和接受哪一種歷史（包括歷史教科書）。\r\n\r\n　　因此，他以此為志重新寫歷史，在世界各大圖書館查證許多第一手文獻史料，\r\n　　才發現，很多歷史真相是顛倒過來的。\r\n　　所以，這是一本反歷史的歷史書，臺灣和中國，都不提起的近現代史。\r\n\r\n　　◎清朝怎麼亡的？孫文有點狀況外：\r\n\r\n　　‧左宗棠是民族英雄，還是種族屠殺的侵略者？\r\n　　晚清四大名將之一左宗棠在歷史課本上的最大功績，就是收復新疆，\r\n　　使清帝國版圖擴大將近五分之一，但課本沒告訴你的是：\r\n　　他屠殺了兩千多萬新疆回民，左宗棠的勝利，是奠定在種族屠殺的基礎上。\r\n\r\n　　‧大清不是亡於辛亥革命，而是亡於「東南互保」：\r\n　　清末，清軍和義和團奉慈禧太后之命，對抗八國聯軍，導致華北戰火連天；\r\n　　華南各地卻與外國簽訂條約，兩不侵犯，互保平安，結果人民安居樂業。\r\n　　於是互保運動成為晚清地方化的開端、改革的力量。孫文的革命，只是最後結果。\r\n\r\n　　◎「中華民國」是誰發明？是誰統一的？\r\n\r\n　　‧袁世凱才算是中華民國的國父：\r\n　　兩岸課本都說袁世凱是竊國大盜。他為何被栽贓成竊國？書裡有答案。\r\n　　他答應日本「21條」要求，被罵賣國。事實上，21條大半是孫文主動提出，\r\n　　以爭取日本支持反袁──密函曝光為證。\r\n\r\n　　‧陳炯明為中華民國指出一條康莊大道：\r\n　　課本都寫孫中山很偉大，主政廣東的陳炯明是叛徒，還逐孫中山下臺。\r\n　　你不知道的是，陳炯明把福建建設成模範小中國，把廣州變成現代市政府。\r\n　　香港評論者於是寫下：陳炯明是國父的敵人，卻是國家的好人。\r\n\r\n　　◎「民國」原來是黨國、也是軍國：\r\n\r\n　　‧孫文──活著是竊國大盜，死後為赤色皇帝：\r\n　　1912年孫文「當選」為中華民國臨時大總統，理由只有一個──\r\n　　他被認為最會借錢。但最後還是沒借到。\r\n　　本書以文件證明：孫文做了哪些不顧法律、暗殺、安排接班人&hellip;&hellip;的威權行徑。\r\n　　你知道為中華民國命名、發明注音符號的國學大師章太炎如何評論孫文嗎？\r\n　　進入民國後根本沒有皇帝了，更沒有建「陵」的必要──除了「中山陵」。\r\n\r\n　　‧汪精衛──中國寧可日化，也絕不能赤化：\r\n　　歷史往往將主戰派稱為「民族英雄」，其實，主戰者比主和者更誤國。\r\n　　抗戰初期，國民黨軍隊棄守長沙，匆匆放火焚城，導致數萬平民被燒死。\r\n　　於是汪精衛決定主和，卻被國民黨稱為賣國漢奸。\r\n\r\n　　還有，誰才是殺了宋教仁的真凶？中國根本沒有打贏抗日戰爭？\r\n　　蔣介石到底是民族救星，還是扶不起的阿斗？\r\n\r\n　　你不需要看了本書就認同作者給的答案，但至少給自己一次看見真相的機會，\r\n　　因為，多數人被歷史耍了一生，卻不知道自己讀的是演義。'),
(8, '中國如何攻打臺灣', '余杰', '大是文化', '2023-07-31', 460, '「每一次的戰爭，總在被侵略者還沒做好充分準備時就打響了。」&mdash;&mdash;作者／余杰\r\n　　 \r\n　　‧武力封鎖、先攻外島、直占本島，中國攻臺，哪種路徑「最可行」？\r\n　　‧「當年打不下金門，如今用高粱酒買金門。」以商逼政，就可以兵不血刃。\r\n　　‧「臺灣有事就是日本有事」。美軍馳援最快也得17天，日本要多久才會到？\r\n　　‧先取東沙，再拿澎湖，到時候澎湖10萬人口就是中國最好的「人質」。\r\n \r\n　　作者余杰是北京大學碩士，被譽為兩岸三地「最敢說真話」的作家，\r\n　　2004年他和劉曉波等人共同起草「中國年度人權報告」，遭到非法軟禁數月；\r\n　　2012年他攜妻兒出走美國，目前定居華盛頓。\r\n \r\n　　2016年起，余杰每年必訪臺灣，走遍各縣市包括外島，視臺灣為第二故鄉，\r\n　　寫下5卷本的《臺灣民主地圖》系列、《從順民到公民：與民主台灣同行》\r\n　　等多部以臺灣為主題的著述。\r\n \r\n　　儘管國際社會和臺灣內部對中國是否真會攻臺有諸多討論，\r\n　　但余杰認為，更恰當的問題是：中國會以何種方式武統？\r\n　　武力封鎖、先攻外島、直占本島，哪種路徑「最可行」？\r\n　　臺灣一旦遭受攻擊，又該如何防守？\r\n \r\n　　他長期研究歷史的背景及三地生活經驗，最能完整詮釋這場\r\n　　中、美、臺不斷角力的「新三國」。\r\n \r\n　　◎攻臺時間點？歷史上三加四場戰爭有答案。\r\n　　所有戰爭都有跡可循，余杰從歷史上三場著名的國際戰爭：\r\n　　伊拉克併吞科威特、阿根廷侵略福克蘭群島、俄羅斯入侵烏克蘭，\r\n　　以及中共建政後四場對外戰爭：\r\n　　韓戰、中印邊境戰爭、中蘇珍寶島衝突、中越戰爭的規律──\r\n　　預測中共攻臺時間點和可能行徑。\r\n \r\n　　◎對臺動武三劇本，哪種最可能？\r\n　　．封鎖海域，取代開戰。\r\n　　臺灣對小麥和玉米的進口依存度很高，煤礦存量也只能撐36天。\r\n　　中國也可直接剪斷15條臺灣連外海底電纜，進行資訊封鎖，\r\n　　（烏克蘭有馬斯克的星鏈幫忙，臺灣呢？）\r\n　　此法被美國智庫專家稱為最有效果的「灰色地帶戰術」。\r\n \r\n　　．先攻外島，澎湖是人質還是阻礙？\r\n　　先取東沙再拿澎湖，澎湖10萬人口是最好的「人質」；\r\n　　澎湖一失，臺灣將無險可守。當年施琅攻臺就「先打澎湖」，\r\n　　習近平若想學康熙收復臺灣，誰會是他的施琅？\r\n \r\n　　．最後一招是渡海、搶灘、巷戰，三階段占領本島。\r\n　　 水淺浪險的臺灣海峽是天然屏障，但相對也是軍備補給的阻礙，\r\n　　 等待美軍馳援至少要花17天，臺灣島民有辦法奮戰到援軍趕到嗎？\r\n \r\n　　◎美日會為臺灣一戰？來得及嗎？\r\n　　疑美論認為，美國從阿富汗撤軍，也沒有真的派兵支援烏克蘭，\r\n　　所以絕對不會幫臺灣打中國&hellip;&hellip;。\r\n　　但坐視中國侵占臺灣，就等於宣告「美利堅治世」將告終結，\r\n　　美國勢必出手。只是，\r\n　　中國戰艦數量已居世界第一，美軍真有能力護臺到最後？\r\n \r\n　　滲透黨政軍、以商逼政、軍演恫嚇，渡海、搶灘、巷戰&hellip;&hellip;\r\n　　臺灣怎麼防？美日怎麼幫？來得及嗎？\r\n \r\n　　最知美、知中、知臺的余杰，從歷史、戰略角度，\r\n　　看美、中、臺新三國攻防。\r\n '),
(9, '活著就要RUN：潤者無疆，一部流亡的文化史', '余杰', '印刻', '2024-05-10', 780, '活著就要RUN：潤者無疆，一部流亡的文化史（上下冊不分售）\r\n\r\n是什麼讓他們甘於懷抱深刻的不安，餘生都揹負著鄉愁，\r\n也要邁向安危難卜的未知旅程？\r\n而又是什麼讓人寧願如此，也要頭也不回地奔逃和遠離？\r\n \r\n如果歷史能夠具象成一幅宏闊的立體圖景，那麼我們勢必會看見，在名為流放的脈絡裡站著一道道成排的人龍。這不只是任何單一文明的課題，古今中外，皆有無數秀異獨特的心靈，以其生命在這道艱難的路跡上履踏而過。無論他們是被迫或自願。\r\n \r\n流放的脈絡是如此悠遠綿亙，在歷史進程中遺落了數不盡的流亡者敘事；作者以自身移徙千里、流亡美國的經驗與之共鳴，銳意寫下皇皇二大冊的流亡者之歌。他仔細掇拾這群人流離喪亂的生命故事，從他們的流徙中窺見堅定的意志與勇氣，以及他們曾經身處並對抗的黑暗。\r\n \r\n上部講述華語文化圈的流亡故事。作者首先錨定四個關鍵年份：一九四九、一九七六、一九八九、二○一二。指出這是現代中國的四大流亡潮；從中串捻起張愛玲、余英時、齊邦媛、張大千、臺靜農、殷海光、王鼎鈞、梁羽生、倪匡、蘇曉康、高行健&hellip;&hellip;等文化人，他們的流亡並非挫敗，更在離散的道路上開創出更壯闊的風景。\r\n \r\n下部則講述全球範圍內的流亡故事。跨越蘇俄、納粹德國及東德、「血色大地」中東歐、拉丁美洲等，極權暴政肆虐、流亡者前赴後繼的地方加以書寫。爬梳人類歷史中暴力與流亡的辯證關係──暴政所在之處即為異鄉；而清醒的自由人唯有身在他方，才能對原屬的土地、族群和文化，做出最徹底的反省與批判。'),
(10, '大光：宗教改革、觀念對決與國族興衰【全套三卷】', '余杰', '八旗文化', '2021-04-21', 1600, '大分流、大革命、大變局\r\n從歐洲到新世界，再到華夏大陸，清教徒締造了現代世界的形成！\r\n清教徒不只信仰虔誠，更富於創新與反抗，更善於組織社區、建立社會，\r\n契約精神、法治社會及憲政國家，皆來自於清教徒追求自由的歷史！\r\n不了解清教徒文化，就無法真正了解歷史的變化與文明秩序的核心價值！\r\n \r\n★★華語世界第一部綜論清教徒歷史及英美保守主義思想的宏觀史著★★\r\n★★深入分析西方基督教文明，如何影響近代世界歷史發展★★\r\n \r\n　　＊＊＊＊＊＊＊＊＊＊\r\n \r\n　　【套書焦點】\r\n　　\r\n　　◎宗教改革運動孕育的基督新教精神與清教徒文化，\r\n　　如何催生法治社會及憲政國家，奠定現代文明的秩序基礎？\r\n \r\n　　◎歷經啟蒙運動，追求自由、平等普世價值的歐陸國家，\r\n　　為何會在近代發生一系列大革命，最終陷入極權主義的災難？\r\n \r\n　　◎近代中國面對「千年未有之大變局」，多次推動「西化」改革，\r\n　　為何總是以失敗收場，最終淪為無神論的共產專制國家？\r\n \r\n　　＊＊＊＊＊＊＊＊＊＊\r\n \r\n　　《大光：宗教改革、觀念對決與國族興衰》全書分為三卷，以宏觀的視野描繪了英美、歐陸及東亞（中國及日本）三地，自十六世紀宗教改革運動以來的五百年歷史變化。\r\n \r\n　　這些歷史變化包括了：宗教改革之後，日內瓦、荷蘭等小國的獨立，與英國與美國「清教徒秩序」的建立；啟蒙運動後的歐洲大陸，歷經法國大革命到俄國大革命的百年動亂，如何引發世界大戰，並最終催生了極權主義的災難；還有近代中國，自鴉片戰爭以來所面臨的西力入侵，與相應而生的社會轉型。\r\n \r\n　　本書雖分為獨立的三卷，但以一個相同的主題使三卷得以連貫為完整的長篇史詩，即&mdash;&mdash;清教徒的觀念秩序及追求自由的保守主義思想，如何影響歷史走向，最終推動了法治社會及憲政國家的建立，奠定了現代世界秩序的基礎。\r\n \r\n　　■近代世界的歷史「大分流」，始於十六世紀的宗教改革，而非地理大發現！\r\n \r\n　　近代世界歷史的開端，應該從十六世紀初的宗教改革運動談起，而非哥倫布發現美洲新世界的「地理大發現」。宗教改革起源於馬丁‧路德批判舊教會的腐敗，之後陸續形成了各種不同的基督教派別，其中最重要的一支，便是以喀爾文為首的歸正宗（Reformed church）。\r\n \r\n　　喀爾文思想從十六世紀開始傳播至西歐各地，他在英格蘭地區的追隨者被稱為「清教徒」（Puritan）；在蘇格蘭地區的追隨者，則建立了「長老會」（Presbyterian church）。直至十七世紀，在歐陸各地及北美大陸，形成了大大小小各種由清教徒與長老會信眾所組建的社區共同體，他們的「觀念秩序」形成了強大的社會力量，開啟了歷史邁向現代化進程的序幕。\r\n \r\n　　■清教徒的觀念秩序，是推動歷史進步、社會轉型、邁向現代世界的關鍵！\r\n \r\n　　觀念秩序（Ethos）是古希臘哲學家亞里斯多德使用的政治學概念，意指一個社區、國家的信仰傳統與公共精神，也就是一般常民所依循的社會倫理規範，而非高深的哲學思想或理論；現代的美國詩人及思想家艾略特（T. S. Eliot）更進一步指出，「人民的觀念秩序，決定了從政者的行為好壞」。\r\n \r\n　　本書是華語世界第一部將清教徒觀念秩序、精神和心靈秩序與英美保守主義政治哲學融會貫通的著作；並主張現代民主政治與自由社會運作的基礎，均源自於清教徒樸素的觀念秩序，及衍生的各種哲學思想與政治觀念，包括了權力制衡、資本主義、自由市場等重要的概念。\r\n \r\n　　最早提出這些觀念的思想家或學者，都是清教徒或是與清教徒文化關係密切的英國或蘇格蘭人。因此可以說，清教徒文化是西方社會轉型、發展為現代社會的重要關鍵。\r\n \r\n　　■國族興亡，才能有效地掌握文明秩序的核心價值，反思歷史興衰\r\n \r\n　　本書從十六世紀歐洲宗教改革出發，全面分析英美清教徒傳統的核心價值，並以此批判歐陸與中國現代化失敗經驗。作者認為，唯有透過清教徒的精神及文化，才能掌握西方以基督教文明為核心所建構的世界秩序，進而有效地理解近代國家興衰的脈絡，反思自身社會的不足與局限。\r\n \r\n　　作者認為，清教徒的歷史對於歷經白色恐怖及黨外運動的臺灣社會而言，更有著特殊的歷史情感與意義。「大光」一詞出自聖經，象徵了世人在黑暗中追求光明、在絕望中祈求希望的時刻。相信本書能帶給臺灣及使用華語的讀者，一個有別於傳統史觀的全新歷史圖像。\r\n \r\n　　＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝\r\n \r\n　　■分卷簡介\r\n \r\n　　《清教秩序五百年》（大光：第一卷）　\r\n \r\n　　真正的歷史大分流，始於宗教改革運動&mdash;&mdash;\r\n　　清教徒的觀念秩序，是文明歷史發展的原動力，更是今天世界秩序的基礎。\r\n \r\n　　自從馬丁路德反抗天主教會的絕對權威、開啟了宗教改革的大門以來，西方陸續誕生了數位重要的宗教思想家，如約翰‧喀爾文、約翰‧諾克斯、約拿單‧愛德華茲；通過他們的新思想，歷經中世紀千年以上的西方基督教傳統得以煥然一新，他們的追隨者陸續在西歐及北美建立了新的城邦共同體或國家，包括了日內瓦（瑞士）、尼德蘭（荷蘭共和國）、英國與北美殖民地。\r\n \r\n　　今天的現代世界，便是奠基於以英美為首的清教徒國家之上。本卷主要分析上述四個歐美清教徒國家的歷史文化，並分析這些國家興盛繁榮的根本原因，均源於清教徒的觀念秩序所形成的國族性格與社會規範。\r\n \r\n　　清教徒的觀念秩序包含了三種要素：\r\n　　（1）注重歷史傳統，講究權力制衡的保守思想，推動了三權分立、政教分立的憲政國家政體，具體展現在日內瓦、荷蘭的城邦共和制、英國及美國的憲政體制。\r\n　　（2）重視勞動及天職的觀念，發展出榮耀上帝的資本主義倫理。\r\n　　（3）神聖的契約觀念，確立人權與財產權的法律規範，奠定了現代法治社會的基礎。\r\n \r\n　　因此，可以說清教徒基於宗教文化所形成的各種社會與政治規範，不僅推動了自身的社會轉型、民強國富，更推動了西方乃至於世界歷史的「現代化」發展。\r\n \r\n　　【第一卷焦點】\r\n　　◎宗教改革與新教思想家的歷史重要性？\r\n　　◎誕生於宗教改革後的清教徒美德與衍生的保守主義思想內涵為何？\r\n　　◎日內瓦（瑞士）及尼德蘭（荷蘭）共和國的興起，為何能代表清教徒的反抗精神？\r\n　　◎英國「光榮革命」與美國「獨立革命」如何在追求自由的同時，維持社會傳統的連續性？\r\n　　◎英美清教徒重視契約與個人權利的觀念，如何建立現代法治社會及憲政國家？\r\n \r\n　　＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊\r\n \r\n　　《歐洲的歧路》（大光：第二卷）\r\n　\r\n　　極權主義的真正起源，來自於大革命的狂熱&mdash;&mdash;\r\n　　背離宗教改革，走上歷史歧路的歐陸，最終陷入政治極權與精神解構的危機。\r\n \r\n　　在十六世紀後半葉開始，歐洲大陸在「反宗教改革」的趨勢下，與英美清教徒社會走上不同的歷史發展道路。雖有啟蒙運動追求思想解放的理想，但也陷入了傳統基督教價值觀解構的精神危機中，尤其在法國大革命以後，革命與戰亂持續爆發，社會無法長期地保持穩定及秩序，最終在二十世紀陷入極權主義的災難。為什麼歐洲近代史的發展，與英美清教徒文化的差別如此巨大？\r\n \r\n　　本卷主要梳理五種歐洲國家，及相關地區（中南美洲、日本）的近代歷史發展模式，並深入討論他們的興衰原因。\r\n \r\n　　這五種模式包括了：\r\n　　（1）拉丁路徑，由反宗教改革的天主教為社會主流宗教，並在二十世紀淪為專制獨裁國家的義大利、西班牙與葡萄牙，以及作為西、葡殖民地的中南美諸國。\r\n　　（2）法國路徑，基於法國大革命的世俗主義、啟蒙主義、理性主義原則，所成立的法蘭西革命政權與拿破崙主義，是二十世紀所有極權國家的典範。\r\n　　（3）德國路徑，雖然遵循新教路德宗，但在十九世紀民族主義的影響下，最終於二十世紀走上極權主義的道路；\r\n　　（4）俄羅斯路徑，試圖脫離傳統東正教威權社會，最終爆發俄國大革命，信奉馬列主義的布爾什維克奪權成功，使俄國淪為無神論的共產主義極權國家。\r\n　　（5）日本路徑，雖於明治維新後迅速「脫亞入歐」成功，但最終陷入狂熱的軍國主義。\r\n \r\n　　本書認為，這些地區或國家的現代化模式均流於形式，而缺乏清教徒精神對心靈內在秩序的追求，容易被極端思想腐蝕，且最終都歷經了獨裁專制的悲慘命運。\r\n \r\n　　【第二卷焦點】\r\n　　◎宗教改革後，歐洲大陸何以走上與英美新教國家截然不同的歷史發展道路？\r\n　　◎啟蒙運動如何在解放思想的同時，造成精神解構、社會崩解的危機，最終引發了法國大革命？\r\n　　◎以法、德為主的歐陸模式「現代化」，與英美模式的主要差異是什麼？\r\n　　◎日本何以能在短時間內快速的「脫亞入歐」、轉型成功？\r\n　　◎極權主義政體（如法西斯主義、共產主義）為什麼會出現於二十世紀初的歐洲大陸呢？\r\n \r\n　　＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊\r\n \r\n　　《華夏轉型兩百年》（大光：第三卷）\r\n \r\n　　中國社會的轉型關鍵，在於清教徒觀念秩序的引入：\r\n　　但近代中國錯失宗教改革，現代化屢遭挫折，最終淪落為無神論的共產極權國家。\r\n \r\n　　本卷主要處理中國近代史與西方近代化諸模式之關係，企圖回溯中國歷史的根源，分析所謂「中華文化」的問題，並且明確指出清教徒觀念秩序和英美政治傳統是西方文明之精髓，應是當代中國社會轉型，以及政治上邁向自由民主的最終出路。\r\n \r\n　　今天所謂「中華文化」，肇始於二千餘年前的秦漢之際，秦始皇兼併六國後建立的皇帝獨裁制度，並由漢王朝承接，開啟了天下一統的「秦漢秩序」，成為中國歷史的真正開端。「秦漢秩序」主要由五個要素組成：中央集權的郡縣制度、編戶齊民的戶籍制度、鹽鐵國營的國家經濟，小農為主體的農業文化，與以「天朝」為中心的朝貢模式。在大一統文化的影響下，中國社會發展為農業內陸文明，人民普遍缺乏冒險性格與精神自主性。\r\n \r\n　　歐洲自十六世紀宗教改革後，包括利瑪竇、馬禮遜等許多傳教士來到中國，成為中西文化溝通的橋樑，既帶來西方的基督教思想與理性文化，也試圖理解中國文化的本質。他們雖然成功傳播許多新知如數學、天文學，以及實用的科學技術，也推動廢除纏足與抽鴉片等社會陋習，但受限於文化差異，始終無法真正促使舊中國轉型為真正的現代化社會。\r\n \r\n　　直到十九世紀，近代中國於鴉片戰爭後，面臨「千年未有之大變局」，在西方勢力軍事及經濟上的威脅下，先後以四波政治、經濟、文化運動應對現代化之挑戰，分別是：物質層面，追求船堅炮利的「自強運動」；政治層面，追求君主立憲的「維新運動」與自由共和的辛亥革命；以及思想文化層面，追求德先生（民主）與賽先生（科學）的「五四」運動，但這些改革都遭到挫敗。\r\n \r\n　　最終，在蘇聯與馬列共產主義的執導下，一九二七年國民黨軍北伐顛覆正統的中華民國（北京政府），以及一九四九年中共擊敗國民黨建立中華人民共和國政權，中華文化最終還是回歸「秦漢秩序」，結合無神論的共產主義，成為極權主義的專制國家。\r\n \r\n　　【第三卷焦點】\r\n　　◎為什麼「秦漢秩序」會成為中國歷史二千年來的主流觀念秩序？\r\n　　◎「秦漢秩序」的大一統體制，如何塑造中國社會及政治文化？\r\n　　◎近代以來，許多西方傳教士來到中國，他們如何影響中國文化？\r\n　　◎近代中國經歷了數次「現代化」的政治及社會轉型，為何總以失敗收場？\r\n　　◎馬列共產主義與「秦漢秩序」的大一統文化，如何形塑現代共產專制的中國？');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
