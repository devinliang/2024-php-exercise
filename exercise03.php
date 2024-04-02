<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>表單練習</h1>

    <form action="" method="post">

    <fieldset>
        <legend>基本資料</legend>
        <div>
            <label for="chname">姓名</label>
            <input type="text" name="chname" id="chname">
        </div>

        <div>
            性別：
            <input type="radio" name="gender" id="gender-male" value="male">
            <label for="gender-male">男生</label>
            <input type="radio" name="gender" id="gender-female" value="female">
            <label for="gender-female">女生</label>
        </div>

        <div>
            <label for="bday">生日</label>
            <input type="date" name="bday" id="bday">
        </div>

        <div>
            <label for="tel">電話</label>
            <input type="tel" name="tel" id="tel">
        </div>

        <div>
            <label for="place">居住區域</label>
            <select name="place" id="place">
                <option value="北部">北部</option>
                <option value="中部">中部</option>
                <option value="南部">南部</option>
                <option value="東部">東部</option>
                <option value="外島">外島</option>
            </select>

        </div>
    </fieldset>
    
    <fieldset>
        <legend>使用行為</legend>
        
        <input type="checkbox" name="behave[]" id="behave1" value="chat">
        <label for="behave1">聊天</label>

        <input type="checkbox" name="behave[]" id="behave2" value="cast">
        <label for="behave2">直播</label>

        <input type="checkbox" name="behave[]" id="behave3" value="mail">
        <label for="behave3">書信</label>

        <input type="checkbox" name="behave[]" id="behave4" value="social">
        <label for="behave4">社群</label>
        
        <input type="checkbox" name="behave[]" id="behave5" value="shopping">
        <label for="behave5">購物</label>

        <input type="checkbox" name="behave[]" id="behave6" value="finance">
        <label for="behave6">金融</label>

    </fieldset>
    
    <fieldset>
        <legend>滿意度</legend>
        <div>
            場地
            <input type="radio" name="venue" id="venue5" value="5">
            <label for="venue5">非常滿意</label>
            <input type="radio" name="venue" id="venue4" value="4">
            <label for="venue4">滿意</label>
            <input type="radio" name="venue" id="venue3" value="3">
            <label for="venue3">普通</label>
            <input type="radio" name="venue" id="venue2" value="2">
            <label for="venue2">不滿意</label>
            <input type="radio" name="venue" id="venue1" value="1">
            <label for="venue1">非常不滿意</label>
        </div>

        <div>
            設備
            <input type="radio" name="device" id="device5" value="5">
            <label for="device5">非常滿意</label>
            <input type="radio" name="device" id="device4" value="4">
            <label for="device4">滿意</label>
            
            <input type="radio" name="device" id="device3" value="3">
            <label for="device3">普通</label>

            <input type="radio" name="device" id="device2" value="2">
            <label for="device2">不滿意</label>
            <input type="radio" name="device1" id="device1" value="1">
            <label for="device1">非常不滿意</label>
        </div>

        <div>

            服務
            <input type="radio" name="service" id="service5" value="5">
            <label for="service5">非常滿意</label>
            <input type="radio" name="service" id="service4" value="4">
            <label for="service4">滿意</label>
            <input type="radio" name="service" id="service3" value="3">
            <label for="service3">普通</label>
            <input type="radio" name="service" id="service2" value="2">
            <label for="service2">不滿意</label>
            <input type="radio" name="service" id="service1" value="1">
            <label for="service1">非常不滿意</label>
        </div>

        </fieldset>
        
    <fieldset>
        <legend>資料上傳</legend>
    </fieldset>
    <input type="submit" value="送出">
    </form>

    <?php
    if (!empty($_POST)) {
        echo "<hr>";
        echo "<pre>";
        print_r($_POST);
        echo "</pre>";
    }
    ?>

</body>
</html>