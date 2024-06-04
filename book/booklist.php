<?php 
session_start();
function loginOK() {
    return (isset($_SESSION["loggedin"]) && ($_SESSION["loggedin"]===true));
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Book List</title>
</head>
<body>

    <div class="container">
        <h1 class="text-center">Book List</h1>

        <?php if (loginOK()) { ?>
        <p class="text-center">使用者：<?= $_SESSION["username"] ?></p>
        <?php } ?>

<?php
// Include config file
require_once "dbconfig.php";

try {
    $conn = new PDO("mysql:host=$hostname;dbname=$database;charset=UTF8", $dbuser, $dbpass);

    // 設定錯誤處理模式 set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // 送出SQL語法給資料庫
    $sql = "SELECT * FROM book";
    $stmt = $conn->query($sql);

    // 設定資料取出的方式
    $stmt->setFetchMode(PDO::FETCH_ASSOC);

    // 取出資料集
    $rows = $stmt->fetchAll();

    // 以表格形式呈現資料
    echo "<table class='table table-hover table-striped'>";
    echo '<tr> <td>書名</td> <td>作者</td> <td>出版日期</td>
     <td>定價</td><td>';

    if (loginOK()) {
        echo '<a class="btn btn-primary" href="./bookadd.php">新增資料</a>
        <a class="btn btn-primary" href="./logout.php">登出</a>';
    } else {
        echo '<a class="btn btn-primary" href="./login.php">登入</a> /
        <a class="btn btn-warning"  href="./register.php">註冊</a>';
    }
     
    echo '</td></tr>';

    foreach ($rows as $row) {
        echo "<tr>";
        echo "<td>". $row['bookname'] ."</td>\n";
        echo "<td>". $row['author']   ."</td>\n";
        echo "<td>". $row['pubdate']  ."</td>\n";
        echo "<td>". $row['price']    ."</td>\n";
        
        echo "<td>";

        echo '<a class="btn btn-success" href=./bookshow.php?key='.$row['id'].'>';
        echo "details";
        echo "</a>";

        if (loginOK()) {
            echo ' | <a class="btn btn-primary" href=./bookedit.php?key='.$row['id'].'>';
            echo "edit";
            echo "</a> | ";

            echo '<a class="btn btn-warning" href=./bookdelete.php?key='.$row['id'].' onClick="return confirm(\'確定要刪除此筆資料?\');">';
            echo "delete";
            echo "</a>";
        }

        echo "</td>";

        echo "</tr>";
    }

    echo "</table>";

} catch(PDOException $e) {

    echo "連線失敗 Connection failed: " . $e->getMessage();

}

$conn = null;
?>
        
    </div>

    <hr>
    <p class="text-center">1111xxx name &copy; 2024 Wenzao DCAM</p>
</body>
</html>