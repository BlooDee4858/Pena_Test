<?php
include 'comment.php';
?>

<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Гостевая книга</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href = "style.css">
</head>
<body>

    <form action="" method="post">
        <input type="text" name="Name" placeholder="Ваше имя" required>
        <input type="email" name="Email" placeholder="Почта" required>
        <input type="url" name="Homepage" placeholder="Домашняя страница">
        <textarea name="Comment"  cols="30" rows="5" placeholder="Комментарий"></textarea>
        <label for="code"">
            <?php
            $captcha->build(150, 40);
            $_SESSION['captcha'] = $captcha->getPhrase();
            ?>
            <img src="<?= $captcha->inline() ?>" alt="">
        </label>
        <input type="text" name="code" placeholder="Введите числа с картинки" required>
        <input type="submit">
    </form>
<hr>
<h2>Сообщения</h2>
<?
        $comments = $connect->query("Select * from book.records order by date desc");
        $comments = $comments->fetchAll(PDO::FETCH_ASSOC);

        if($comments)
        { ?>
            <table>
                <thead>
                <tr>
                    <th>Дата</th>
                    <th>Имя</th>
                    <th>Почта</th>
                    <th>Домашняя страница</th>
                    <th>Сообщение</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <?foreach ($comments as $comment)
                    {?>
                    <td><?="{$comment['Date']}"?></td>
                    <td><?="{$comment['Name']}"?></td>
                    <td><?="{$comment['Email']}"?></td>
                    <td><?="{$comment['Homepage']}"?></td>
                    <td><?="{$comment['Text']}"?></td>
                </tr>
                <?}?>
                </tbody>
            </table>
        <?} else{?>

<p>Здесь пока нет сообщений</p>

<?}?>



</body>
</html>
