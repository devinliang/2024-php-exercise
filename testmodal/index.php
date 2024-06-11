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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <h1>Modal TEST</h1>

    <?php
    if (loginOK()) {
        
        echo "USERNAME:" . $_SESSION["username"];
        echo '<a class="btn btn-success" href="#" id="logout">登出</a>';
        
    } else {
        echo '<a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#loginModal">登入</a>';
    }
    ?>

    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<script>
$(document).ready(function () {
    // 執行登入認證
    $('#login_button').click(function () {

        // 取出登入表單中，使用者帳號密碼的輸入值
        var username = $('#username').val();
        var userpass = $('#userpass').val();

        // alert("username-"+username+ " userpass-"+userpass);

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
                        alert("成功登入系統...");
                    } else {
                        // location.reload()
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
                "action": "logout"
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
                <div class="form-group m-1">
                    <input type="text" class="form-control" name="username" id="username" placeholder="Username" required="required">
                </div>
                <div class="form-group m-1">
                    <input type="password" class="form-control" name="userpass" id="userpass" placeholder="Password" required="required">
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