school 資料庫
    announce 資料表
    - id - primary key, auto increment
    - title    - 公告標題 varchar(50)
    - category - 公告類別 varchar(10)
    - anndate  - 公告日期 date
    - content  - 公告內容 text


CREATE TABLE `announce` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '公告標題',
  `category` varchar(10) NOT NULL COMMENT '公告頪別',
  `anndate` date NOT NULL COMMENT '公告日期',
  `content` text NOT NULL COMMENT '公告內容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `announce`
--

INSERT INTO `announce` (`id`, `title`, `category`, `anndate`, `content`) VALUES
(1, '課程補課說明', '調補課', '2024-05-04', '5/4/(六) 9:10-12:00 使用同步遠距上課\r\n\r\n軟體: MS Teams\r\n\r\n請使用 學號@ms.wzu.edu.tw 的帳號登入~!\r\n\r\nhttps://teams.microsoft.com/l/team/19%3a-nZxM35Qu-REo-E44iNJ8maya6Mnd_4K2YauILQg0xk1%40thread.tacv2/conversations?groupId=e40d9af2-1a10-409e-a606-34e299bb6b74&tenantId=42b6f829-d2aa-4135-8c60-11a96bbb2ae4\r\n\r\n'),
(2, '期中考通知', '考試通知', '2024-05-01', '5/7(二)上午 9:10-10:30 在 Q707 進行期中考,\r\n\r\n題型：實務操做\r\n\r\n主題：建立一個單一資料表的瀏覽、詳細內容、新增、修改、刪除（CRUD）功能。');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `announce`
--
ALTER TABLE `announce`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `announce`
--
ALTER TABLE `announce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

