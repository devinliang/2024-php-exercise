<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Book List</title>
</head>
<body>

<?php
    if (isset($_POST["submit"])) {
        echo "收到表單送出資料了";
    }
?>

    <div class="container">
        <h1 class="text-center">Book List</h1>

        <form action="" method="post">
            <p>
                <label for="bookname">書名：</label>
                <input type="text" name="bookname" id="bookname" placeholder="請輸入書名" required>
            </p>

            <p>
                <label for="author">作者：</label>
                <input type="text" name="author" id="author" placeholder="請輸入作者" required>
            </p>

            <p>
                <label for="publisher">出版社：</label>
                <input type="text" name="publisher" id="publisher" placeholder="請輸入出版社" required>
            </p>

            <p>
                <label for="pubdate">出版日期：</label>
                <input type="date" name="pubdate" id="pubdate" value="<?= date('Y-m-d'); ?>"  required>
            </p>

            <p>
                <label for="price">定價：</label>
                <input type="number" name="price" id="price" placeholder="請輸入定價" required>
            </p>
            
            <p>
                <textarea name="content" id="content" cols="30" rows="10"></textarea>
            </p>

            <p><input type="submit" name="submit" value="確認新增"></p>
        </form>

    </div>
</body>
</html>