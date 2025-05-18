<?php
require_once("connexion_traitement.php");
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>S'inscrire</title>
        <script src="https://kit.fontawesome.com/f0348e92ee.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="style/inscr.css">
    </head>

    <body>
        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $nom = $_POST['nom'];
            $email = $_POST['email'];
            $password = $_POST['password'];

            $query = "INSERT INTO utilisateurs (`Nom d'utilisateur`, Email, Mot_de_passe) VALUES ('$nom', '$email', '$password')";
            $result = mysqli_query($mysqli, $query);

            if ($result) {
                header("Location: connexion.php");
            } else {
                echo "Erreur lors de l'inscription : " . mysqli_error($mysqli);
            }
            mysqli_close($mysqli);
        }
        ?>
        <div class="Formulaire">
            <div>
                <h2>Inscription</h2>
            </div>
            <form id="inscription-form" action="#" method="post">
                <div class="form-control">
                    <label for="nom">Nom d'utilisateur :</label>
                    <input type="text" id="nom" name="nom" required>
                </div>
                <div class="form-control">
                    <label for="email">Email :</label>
                    <input type="email" id="login" name="email" required>
                </div>
                <div class="mdp">
                    <label for="password">Mot de passe :</label>
                    <input type="password" id="mot_de_passe" name="password" required>
                    <i class="fa-solid fa-eye" id="eyeIcon"></i>
                </div>
                <div class="mdp">
                    <label for="password">Confirmation:</label>
                    <input type="password" id="mot_de_passe" name="password" required>
                    <i class="fa-solid fa-eye" id="eyeIcon"></i>
                </div>
                <input type="submit" name="btn" value="S'inscrire">

            </form>
        </div>
        <script>
            let input = document.querySelector('.mdp input');
let showBtn = document.querySelector('.mdp i');
showBtn.onclick = function () {
if (input.type === "password") {
input.type = "text";
showBtn.classList.add('active');
} else {
input.type = "password";
showBtn.classList.remove('active');
}
}
        </script>
    </body>
</html>

