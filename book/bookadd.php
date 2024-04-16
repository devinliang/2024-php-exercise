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