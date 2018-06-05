<?php 
	session_start();
    $db = mysqli_connect("localhost", "root", "", "zavrsni");
    $username = $_SESSION['username'];

?>

<!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Profil</title>
    <style>
        fieldset {
            display: block;
            margin-left: 570px;
            margin-right: 570px;
            padding-top: 0.35em;
            padding-bottom: 0.625em;
            padding-left: 0.75em;
            padding-right: 0.75em;
            border: 2px groove (internal value);   
        }
    </style>
</head>
<body>
    <p>Profil: <?php echo $username; ?></p>
    <p id="user" name="user" style="display: none"><?php echo $username; ?></p>
    <a href="../login/profesor.php">Natrag</a>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <fieldset>
        <table align="center">
            <tr>
                <td><h3>Stara lozinka:</h3></td>
                <td><input type="password" name="loz_stara" id="loz_stara"></td>
            </tr>
            <tr>
                <td><h3>Nova lozinka:</h3></td>
                <td><input type="password" name="loz_nova" id="loz_nova"></td>
            </tr>
            <tr>
                <td><h3>Ponovite novu lozinku:</h3></td>
                <td><input type="password" name="loz_nova2" id="loz_nova2"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Potvrdite"></td>
            </tr>
        </table>
    </fieldset>
</body>
</html>