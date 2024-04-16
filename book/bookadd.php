<?php
    if (isset($_POST["submit"])) {
        
        $bookname = $_POST["bookname"];
        $author = $_POST["author"];
        $publisher = $_POST["publisher"];
        $pubdate = $_POST["pubdate"];
        $price = $_POST["price"];
        $content = $_POST["content"];


        // 設定主機、資料庫名稱、權限帳密
        $hostname = 'localhost';
        $database = 'school';
        $dbuser = 'root';
        $dbpass = '';

        try {
            $conn = new PDO("mysql:host=$hostname;dbname=$database;charset=UTF8", $dbuser, $dbpass);

            // 設定錯誤處理模式 set the PDO error mode to exception
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            // 送出SQL語法給資料庫
            $sql = "INSERT INTO `book` (`id`, `bookname`, `author`, `publisher`, `pubdate`, `price`, `content`) VALUES 
            (NULL, '$bookname', '$author', '$publisher', '$pubdate', '$price', '$content')";

            $stmt = $conn->query($sql);

            header('Location: booklist.php');
            exit;
            
        } catch(PDOException $e) {

            echo "連線失敗 Connection failed: " . $e->getMessage();

        }

        $conn = null;
        
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Book Add</title>
</head>
<body>

    <div class="container">
        <h1 class="text-center">Book ADD</h1>

        <form action="" method="post">
            <div class="mb-3">
                <label for="bookname" class="form-label">書名：</label>
                <input type="text" class="form-control" name="bookname" id="bookname" placeholder="請輸入書名" required>
            </div>

            <div class="mb-3">
                <label for="author" class="form-label">作者：</label>
                <input type="text" class="form-control" name="author" id="author" placeholder="請輸入作者" required>
            </div>

            <div class="mb-3">
                <label for="publisher" class="form-label">出版社：</label>
                <input type="text" class="form-control" name="publisher" id="publisher" placeholder="請輸入出版社" required>
            </div>

            <div class="mb-3">
                <label for="pubdate" class="form-label">出版日期：</label>
                <input type="date" class="form-control" name="pubdate" id="pubdate" value="<?= date('Y-m-d'); ?>"  required>
            </div>

            <div class="mb-3">
                <label for="price" class="form-label">定價：</label>
                <input type="number" class="form-control" name="price" id="price" placeholder="請輸入定價" required>
            </div>
            
            <div class="mb-3">
                <label for="content" class="form-label">內容簡介：</label>
                <textarea name="content" class="form-control" id="content" cols="30" rows="10"></textarea>
            </div>

            <div class="mb-3"><input type="submit" class="form-control" name="submit" value="確認新增"></div>
        </form>

    </div>
</body>
</html>