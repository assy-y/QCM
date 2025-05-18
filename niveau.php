<?php
require_once("connexion_traitement.php");
if (isset($_SESSION['nom_utilisateur'])) {
    $nom = $_SESSION['nom_utilisateur'];
} else {
    $nom = "";
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f2f2f2;
                margin: 0;
                padding: 0;
            }

            .Container {
                width: 80%;
                max-width: 600px;
                margin: 50px auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                text-align: center;
            }

            h2 {
                color: #333;
                margin-bottom: 20px;
            }

            input[type="radio"] {
                margin-right: 10px;
            }

            input[type="submit"] {
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                background-color: rgb(248, 76, 90);
                color: #fff;
                font-size: 16px;
                cursor: pointer;
            }

            input[type="submit"]:hover {
                background-color: #ffa502;
            }
        </style>
    </head>
    <body>
        <div class="Container">
            <h2>Bonjour, choisissez d'abord le niveau des questions :</h2>
            <form action="qcm.php" method="post">
                <div>
                    <input type="radio" name="niveau" value="Débutant">
                    Débutant
                    <input type="radio" name="niveau" value="Confirmé">
                    Confirmé
                </div>
                <br>
                <input type="submit" name="btn" value="Soumettre">
            </form>
        </div>
    </body>
    <script>
        function selectLevel(level) {
document.getElementById('selected-level').innerHTML = `<p>Niveau sélectionné : ${level}</p>`;
}
    </script>
</html>

