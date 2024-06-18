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
    <link rel="stylesheet" href="//cdn.datatables.net/2.0.8/css/dataTables.dataTables.min.css">

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
    echo "<table class='table table-hover table-striped' id='myTable'>";
    echo '<thead><tr> <td>書名</td> <td>作者</td> <td>出版日期</td>
     <td>定價</td><td>';

    if (loginOK()) {
        echo '<a class="btn btn-primary" href="./bookadd.php">新增資料</a> ';
        echo '<a class="btn btn-success" href="#" id="logout">登出</a>';
        
    } else {
        echo '<a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#loginModal">登入</a>';
    }
     
    echo '</td></tr></thead>';
    echo '<tbody>';
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
    echo '</tbody>';
    echo "</table>";

} catch(PDOException $e) {

    echo "連線失敗 Connection failed: " . $e->getMessage();

}

$conn = null;
?>
        
    </div>

    <hr>
    <p class="text-center">1111xxx name &copy; 2024 Wenzao DCAM</p>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="//cdn.datatables.net/2.0.8/js/dataTables.min.js"></script>

    <script>
        let table = new DataTable('#myTable', {
            ordering: false
        });
    </script>

<script>
$(document).ready(function () {

    // 執行登入認證
    $('#login_button').click(function () {

        // 取出登入表單中，使用者帳號密碼的輸入值
        var username = $('#username').val();
        var userpass = $('#userpass').val();

        // alert("username"+username+ " userpass"+userpass);

        if (username != '' && userpass != '') {
            $.ajax({
                url: "action.php",
                method: "POST",
                data: {
                    "action": "login",
                    "username": username,
                    "userpass": userpass
                },

                success: function (data) {
                    if (data == 'Yes') {
                        location.reload();
                        // alert("成功登入系統...");
                    } else {
                        // location.reload();
                        alert('帳密無法使用!');
                    }
                },

                error: function (data) {
                    alter('無法登入');
                }
            });
        } else {
            alert("兩個欄位都要填寫!");
        }
    });

    // 執行登出
    $('#logout').click(function () {
        $.ajax({
            url: "action.php",
            method: "POST",
            data: {
                "action": "logout",
            },
            success: function () {
                location.reload();
            }
        });
    });
});
</script>



<!-- Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="loginModalLabel">User Login</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

            <form action="#" method="post">
                <div class="form-floating m-1">
                    <input type="text" class="form-control" name="username" id="username" placeholder="User Name" required="required">
                    <label for="username">User Name</label>
                </div>
                <div class="form-floating m-1">
                    <input type="password" class="form-control" name="userpass" id="userpass" placeholder="Password" required="required">
                    <label for="userpass">Password</label>
                </div>
            </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="login_button">Login</button>
            </div>
        </div>
    </div>
</div>

</body>
</html>