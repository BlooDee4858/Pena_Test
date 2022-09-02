<?php
$connect = new PDO("mysql:host=localhost; dbname=Book; charset=utf8", 'root', '');

//echo "<pre>";
//var_dump($_SERVER['HTTP_CLIENT_IP']);
//echo "</pre>";

require_once __DIR__ . '/vendor/autoload.php';
session_start();
$phraseBuilder = new \Gregwar\Captcha\PhraseBuilder(5, '0123456789');
$captcha = new \Gregwar\Captcha\CaptchaBuilder(null, $phraseBuilder);
$captcha->setIgnoreAllEffects(true);

if (count($_POST) > 0) {
    $name = trim($_POST['Name']);
    $email = trim($_POST['Email']);
    $comment = trim($_POST["Comment"]);
    $date = date('Y-m-d h:i');
    $ip = $_SERVER['REMOTE_ADDR'];
    $browser = $_SERVER['HTTP_USER_AGENT'];
    $homepage = trim($_POST['Homepage']);

    $name = htmlspecialchars($name);
    $email = htmlspecialchars($email);
    $comment = htmlspecialchars($comment);
    $homepage = htmlspecialchars($homepage);


    if($name != '' && $email != '' && $comment != '') {
        if(filter_var($email, FILTER_VALIDATE_EMAIL)) {
            if($_SESSION['captcha'] == $_POST['code']) {
                $query = $connect->prepare("Insert into book.records 
                                          Set Name = :name, Email = :email, Homepage = :homepage, Text = :comment, Date = :date, Browser = :browser, IP = :ip");
                $params = ['name' => $name, 'email' => $email, 'homepage' => $homepage, 'comment' => $comment, 'date' => $date, 'browser' => $browser, 'ip' => $ip];
                $query->execute($params);
                if ($query) {
                    echo "Сообщение успешно добавлено";
                } else {
                    echo "<pre>";
                    var_dump($connect->errorInfo());
                    echo "</pre>";
                }

                header("Location: index.php");
                exit();
            }
            else
            {
                echo "Капча введена неверно";
            }
        }
        else{
            echo "Некорректный email";
        }
    }
    else
    {
        echo "Заполните все необходимые поля";
    }

}
?>