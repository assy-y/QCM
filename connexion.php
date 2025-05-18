<?php
require_once("connexion_traitement.php");
if(isset($_POST['btn'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM utilisateurs WHERE Email='$username' AND Mot_de_passe='$password'";
    $result = mysqli_query($mysqli, $sql);

    if ($result && mysqli_num_rows($result) > 0) {
        header("Location: niveau.php");
        exit();
    } else {
        echo "Email ou mot de passe incorrect. Veuillez réessayer.";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Se connecter</title>
    <script src="https://kit.fontawesome.com/f0348e92ee.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style/cnx.css">
</head>
<body>
<div class="container">
    <span class="borderline"></span>
        <form action="" method="post">
          <h2>Connexion</h2>
            <div class="inputBox">
                <input type="text" id="username" name="username" required>
                <span>Email</span>
                <i></i>
            </div>
            <div class="inputBox">
                <input type="password" id="mdp" name="password" required>
                <span>Mot de passe </span>
                <i></i>
            </div>
            <div class="links">
            <a href="">Mot de passe oublié</a> 
            <a href="inscription.php">s'inscrire</a> </h5>
            </div>
            <div class="submit">
            <input type="submit" name="btn" value="se connecter">
            </div>
        </form>
 </div>
</body>
</html>