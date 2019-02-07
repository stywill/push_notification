<?php SESSION_START();
if (isset($_SESSION['username'])) {
    header('Location: index.php');
} include "dbconn.php";
include "sql.php";
$sql = new sql();
$user = $sql->listUser();
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <h2>Acessar o Sistema</h2>
        <form method="post"  action="<?php echo $_SERVER['PHP_SELF']; ?>">
            <table>
                <tr>
                    <td>Usuario</td>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr>
                    <td>Senha</td>
                    <td><input type="password" name="pass"></td>
                </tr>
                <tr>
                    <td colspan=2>
                        <hr>
                    </td>
                </tr>
                <tr>
                    <td><button type="submit" name="submit">Login</button></td>
                </tr>
            </table>
        </form>
        <?php
        if (isset($_POST['submit'])) {
            if (isset($_POST['username']) and isset($_POST['pass'])) { /* check login */
                $check = $sql->getLogin($_POST['username'], $_POST['pass']);
                if ($check[2] == 1) {
                    $_SESSION['username'] = $_POST['username'];
                    header('Location: index.php');
                } else {
                    echo '* usuario ou senha invalidos';
                }
            }
        }
        ?>
        <h2>Como fazer Web Push Notifications em PHP, JQuery , AJAX e Mysql</h2>
        <h3>#</h3>
        <h4>admin user : admin , password : 123</h4>
        <h5>usuario : ronaldo , password : 123</h5>
        <h5>usuario : donald , password : 123</h5>
    </body>
</html>