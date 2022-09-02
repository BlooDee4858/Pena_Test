<?php
include 'comment.php';


require_once 'Paginator.php';

$conn = new mysqli('localhost', 'root', '', 'book');

$limit = (isset($_GET['limit'])) ? $_GET['limit'] : 5;
$page = (isset($_GET['page'])) ? $_GET['page'] : 1;
$links = (isset($_GET['links'])) ? $_GET['links'] : 3;
$query = "Select * from book.records";

$Paginator = new Paginator($conn, $query);

$results = $Paginator->getData( $limit, $page);

?>

<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Гостевая книга</title>
<!--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">-->
    <link rel="stylesheet" href = "style/style.css">
    <link rel="stylesheet" href="style/bootstrap.min.css">
</head>
<body>
    <form action="" method="post">
        <input class = "forma" type="text" name="Name" placeholder="Ваше имя" required>
        <input class = "forma"  type="email" name="Email" placeholder="Почта" required>
        <input class = "forma"  type="url" name="Homepage" placeholder="Домашняя страница">
        <textarea class = "forma"  name="Comment"  cols="30" rows="5" placeholder="Комментарий"></textarea>
        <label for="code"">
            <?php
            $captcha->build(150, 40);
            $_SESSION['captcha'] = $captcha->getPhrase();
            ?>
            <img class = "forma"  src="<?= $captcha->inline() ?>" alt="">
        </label>
        <input class = "forma"  type="text" name="code" placeholder="Введите числа с картинки" required>
        <input class = "forma"  type="submit">
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
                    <?php for( $i = 0; $i < count( $results->data ); $i++ ) : ?>
                <tr>
                    <td><?php echo $results->data[$i]['Date']; ?></td>
                    <td><?php echo $results->data[$i]['Name']; ?></td>
                    <td><?php echo $results->data[$i]['Email']; ?></td>
                    <td><?php echo $results->data[$i]['Homepage']; ?></td>
                    <td><?php echo $results->data[$i]['Text']; ?></td>
                </tr>
                <?php endfor; ?>
                </tbody>
            </table>
            <?php echo $Paginator->createLinks( $links, 'pagination pagination-sm' ); ?>
        <?} else{?>

<p>Здесь пока нет сообщений</p>

<?}?>



</body>
</html>
