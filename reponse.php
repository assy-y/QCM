<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultats</title>
    <style>
               body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            color: #333;
            line-height: 1.6;
        }

        .container {
            max-width: 800px;
            margin: 30px auto;
            padding: 20px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
        }

        .result-summary {
            background: #f1f8fe;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 30px;
            text-align: center;
            border-left: 5px solid #3498db;
        }

        .score {
            font-size: 2.5em;
            font-weight: bold;
            color: #2c3e50;
            margin: 10px 0;
        }

        .score-out-of {
            font-size: 1.2em;
            color: #7f8c8d;
        }

        .feedback {
            margin-top: 20px;
        }

        .correct {
            color: #27ae60;
            font-weight: bold;
        }

        .incorrect {
            color: #e74c3c;
        }

        .question-feedback {
            background: #f9f9f9;
            padding: 15px;
            margin-bottom: 15px;
            border-radius: 5px;
            border-left: 3px solid #e74c3c;
        }

        .correct-answer {
            background: #e8f5e9;
            padding: 8px;
            border-radius: 4px;
            margin-top: 10px;
            border-left: 3px solid #27ae60;
        }

        hr {
            border: 0;
            height: 1px;
            background: #ddd;
            margin: 20px 0;
        }

        .return-btn {
            display: inline-block;
            background: #3498db;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            transition: background 0.3s;
        }

        .return-btn:hover {
            background: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
    <h1>Résultats de votre QCM</h1>
    <?php
require_once("connexion_traitement.php");

$id = mysqli_connect("localhost", "root","","qcm");  

// Vérifie si l'utilisateur est connecté
if (!isset($_SESSION['nom_utilisateur'])) {
    header("Location: connexion.php");
    exit();
}

// Récupère le nom de l'utilisateur
$nom_utilisateur = $_SESSION['nom_utilisateur'];

$note = 0;
$i = 1;
foreach($_POST as $key => $value) {
    if($value == 1){
    $note += 2; //$note = $note + 2
    $i++;
}else {
    $req1 = "select * from questions where idq=$key";
    $req2 = "select * from reponses where idq=$key and verite=1";
    $res1 = mysqli_query($id,$req1);
    $ligne1 = mysqli_fetch_assoc($res1);
    $res2 = mysqli_query($id, $req2);
    $ligne2 = mysqli_fetch_assoc($res2);
    echo "Tu t'es planté à la question $i : ".$ligne1["libelleQ"].
                "<br>La réponse était <b>".$ligne2["libeller"]."</b><hr>";
    $i++;
    
}
}
echo "Tu as eu $note / 20";
$sql = "UPDATE utilisateurs SET Note = $note WHERE `Email` = '$nom_utilisateur'";
if (mysqli_query($mysqli, $sql)) {
    echo "La note a été mise à jour avec succès.";
} else {
    echo "Erreur lors de la mise à jour de la note : " . mysqli_error($mysqli);
}
?> 
</div>
    
    <center>
        <a href="niveau.php" class="return-btn">Retour à l'accueil</a>
    </center>
</div>
<br> <br>
</body>
</html>