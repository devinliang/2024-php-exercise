<?php
    if (isset($_POST["submit"])) {
        
        $key = $_POST["id"];
        $bookname  = htmlentities($_POST["bookname"]);
        $author    = htmlentities($_POST["author"]);
        $publisher = htmlentities($_POST["publisher"]);
        $pubdate   = htmlentities($_POST["pubdate"]);
        $price     = htmlentities($_POST["price"]);
        $content   = htmlentities($_POST["content"]);

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
            $sql = "UPDATE `book` SET 
                    `bookname` = '$bookname', 
                    `author`   = '$author', 
                    `publisher` = '$publisher', 
                    `pubdate` = '$pubdate', 
                    `price` = '$price', 
                    `content` = '$content' 
                    WHERE `book`.`id` = " . $key;


            $stmt = $conn->query($sql);
            $conn = null;

            header('Location: booklist.php');
            exit;
            
        } catch(PDOException $e) {

            echo "連線失敗 Connection failed: " . $e->getMessage();

        }

        $conn = null;
        
    }

if ( isset($_GET["key"]) && ($_GET["key"]!="")) {
    
    // 設定主機、資料庫名稱、權限帳密
    $hostname = 'localhost';
    $database = 'school';
    $dbuser = 'root';
    $dbpass = '';

    try {
        $conn = new PDO("mysql:host=$hostname;dbname=$database;charset=UTF8", $dbuser, $dbpass);

        // 設定錯誤處理模式 set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $key = $_GET['key'];
        
        // 送出SQL語法給資料庫
        $sql = "SELECT * FROM book WHERE `id`=".$key;
        $stmt = $conn->query($sql);

        // 設定資料取出的方式
        $stmt->setFetchMode(PDO::FETCH_ASSOC);

        // 取出資料集
        $row = $stmt->fetch();

    } catch(PDOException $e) {

        echo "連線失敗 Connection failed: " . $e->getMessage();

    }

   $conn = null;

} else {
    header('Location: booklist.php');
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Book Edit</title>
</head>
<body>

    <div class="container">
        <h1 class="text-center">Book EDIT</h1>

        <form action="" method="post">
            <div class="mb-3">
                <label for="bookname" class="form-label">書名：</label>
                <input type="text" class="form-control" name="bookname" id="bookname" value="<?= $row['bookname'] ?>" required>
            </div>

            <div class="mb-3">
                <label for="author" class="form-label">作者：</label>
                <input type="text" class="form-control" name="author" id="author" value="<?= $row['author'] ?>" required>
            </div>

            <div class="mb-3">
                <label for="publisher" class="form-label">出版社：</label>
                <input type="text" class="form-control" name="publisher" id="publisher" value="<?= $row['publisher'] ?>" required>
            </div>

            <div class="mb-3">
                <label for="pubdate" class="form-label">出版日期：</label>
                <input type="date" class="form-control" name="pubdate" id="pubdate" value="<?= $row['pubdate'] ?>"  required>
            </div>

            <div class="mb-3">
                <label for="price" class="form-label">定價：</label>
                <input type="number" class="form-control" name="price" id="price" value="<?= $row['price'] ?>" required>
            </div>
            
            <div class="mb-3">
                <label for="content" class="form-label">內容簡介：</label>
                <textarea name="content" class="form-control" id="content" cols="30" rows="10"><?= $row['content'] ?></textarea>
            </div>

            <input type="hidden" name="id" value="<?= $row['id'] ?>">
            <div class="mb-3"><input type="submit" class="form-control" name="submit" value="確認修改"></div>
        </form>

    </div>

    <hr>
    <p class="text-center">1111xxx name &copy; 2024 Wenzao DCAM</p>
</body>
</html>