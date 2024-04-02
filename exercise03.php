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
    </fieldset>
    
    <fieldset>
        <legend>滿意度</legend>
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