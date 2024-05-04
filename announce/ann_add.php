<?php
    if (isset($_POST["submit"])) {
        
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
            $sql = "INSERT INTO `$dbtable` (`id`, `title`, `category`, `anndate`, `content`) VALUES 
            (NULL, '$title', '$category', '$anndate', '$content')";

            $stmt = $conn->query($sql);

            header('Location: index.php');
            exit;
            
        } catch(PDOException $e) {

            echo "連線失敗 Connection failed: " . $e->getMessage();

        } finally {
            $conn = null;
        }
        
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>新增公告</title>
</head>
<body>

    <div class="container">
        <h1 class="text-center">新增公告</h1>

        <form action="" method="post">
            <div class="mb-3">
                <label for="category" class="form-label">類別</label>
                <input type="text" class="form-control" name="category" id="category" placeholder="請輸入分類" required>
            </div>

            <div class="mb-3">
                <label for="title" class="form-label">標題</label>
                <input type="text" class="form-control" name="title" id="title" placeholder="請輸入公告標題" required>
            </div>

            <div class="mb-3">
                <label for="anndate" class="form-label">日期</label>
                <input type="date" class="form-control" name="anndate" id="anndate" value="<?= date('Y-m-d'); ?>"  required>
            </div>
           
            <div class="mb-3">
                <label for="content" class="form-label">內容</label>
                <textarea name="content" class="form-control" id="content" cols="30" rows="10"></textarea>
            </div>

            <div class="mb-3"><input type="submit" class="form-control" name="submit" value="確認新增"></div>
        </form>

    </div>
    <hr>
    <p class="text-center">1111xxx name &copy; 2024 Wenzao DCAM</p>
</body>
</html>