<?php
    if (isset($_POST["submit"])) {
        
        $key = $_POST["id"];
        $category  = htmlentities($_POST["category"]);
        $title    = htmlentities($_POST["title"]);
        $anndate   = htmlentities($_POST["anndate"]);
        $content   = htmlentities($_POST["content"]);

        include_once('dbconfig.php');

        try {
            $conn = new PDO("mysql:host=$hostname;dbname=$database;charset=UTF8", $dbuser, $dbpass);

            // 設定錯誤處理模式 set the PDO error mode to exception
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            // 送出SQL語法給資料庫
            $sql = "UPDATE `$dbtable` SET 
                    `category` = '$category', 
                    `title`   = '$title', 
                    `anndate` = '$anndate', 
                    `content` = '$content' 
                    WHERE `$dbtable`.`id` = " . $key;

            $stmt = $conn->query($sql);
            $conn = null;

            header('Location: index.php');
            
        } catch(PDOException $e) {

            echo "連線失敗 Connection failed: " . $e->getMessage();

        } finally {
            $conn = null;
        }
        
    }

if ( isset($_GET["key"]) && ($_GET["key"]!="")) {
    
    include_once('dbconfig.php');

    try {
        $conn = new PDO("mysql:host=$hostname;dbname=$database;charset=UTF8", $dbuser, $dbpass);

        // 設定錯誤處理模式 set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $key = $_GET['key'];
        
        // 送出SQL語法給資料庫
        $sql = "SELECT * FROM $dbtable WHERE `id`=".$key;
        $stmt = $conn->query($sql);

        // 設定資料取出的方式
        $stmt->setFetchMode(PDO::FETCH_ASSOC);

        // 取出資料集
        $row = $stmt->fetch();

    } catch(PDOException $e) {

        echo "連線失敗 Connection failed: " . $e->getMessage();

    } finally {
        $conn = null;
    }


} else {
    header('Location: index.php');
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>修改公告</title>
</head>
<body>

    <div class="container">
        <h1 class="text-center">修改公告</h1>

        <form action="" method="post">
            <div class="mb-3">
                <label for="category" class="form-label">分類</label>
                <input type="text" class="form-control" name="category" id="category" value="<?= $row['category'] ?>" required>
            </div>

            <div class="mb-3">
                <label for="title" class="form-label">標題</label>
                <input type="text" class="form-control" name="title" id="title" value="<?= $row['title'] ?>" required>
            </div>

            <div class="mb-3">
                <label for="anndate" class="form-label">日期</label>
                <input type="date" class="form-control" name="anndate" id="anndate" value="<?= $row['anndate'] ?>"  required>
            </div>

            <div class="mb-3">
                <label for="content" class="form-label">內容</label>
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