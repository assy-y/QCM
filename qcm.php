<?php
require_once("connexion_traitement.php");
if (!isset($_SESSION['nom_utilisateur'])) {
    header("Location: connexion.php");
    exit();
}
?> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QCM</title>
    <script src="https://kit.fontawesome.com/f0348e92ee.js" crossorigin="anonymous"></script>
    <style>
        body {
    font-family: "Playfair Display", serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
}

.container {
    width: 80%;
    max-width: 800px;
    margin: 50px auto;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 20px;
}

.question-container {
    border-bottom: 1px solid #ccc;
    padding-bottom: 20px;
    margin-bottom: 20px;
}

h3 {
    color: #333;
    margin-bottom: 10px;
    font-family: serif;
    font-weight: 800;
    font-size: 18px;
    text-transform: uppercase;
}

input[type="radio"] {
    margin-right: 10px;
}

button[type="submit"] {
    margin-top: 20px;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    background-color: rgb(248, 76, 90);
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    font-family: "Playfair Display", serif;
    font-weight: 700;
    text-transform: uppercase;
}

button[type="submit"]:hover {
    background-color: #ffa502;
}

    </style>
</head>
<body>
<div class="container">
<form action="reponse.php" method="post">
    <?php
        $niveau = $_POST['niveau'];
        $id = mysqli_connect("localhost", "root","","qcm");  
        if ($niveau === "Débutant") {
            $req = "SELECT * FROM questions WHERE niveau = 0 ORDER BY RAND() LIMIT 10";
        } elseif ($niveau === "Confirmé") {
            $req = "SELECT * FROM questions WHERE niveau = 1 ORDER BY RAND() LIMIT 10";
        }
        $res = mysqli_query($id, $req);
        $i = 1;
        while($ligne = mysqli_fetch_assoc($res)){
            $libelleQ = $ligne["libelleQ"];
            $idq = $ligne["idq"];
            echo "<h3>$i : $libelleQ -----$idq</h3>";
            $req2 = "select * from reponses where idq = $idq";
            $res2 = mysqli_query($id,$req2);
            while($ligne2 = mysqli_fetch_assoc($res2)){
                $libeller = $ligne2["libeller"]; 
                $verite = $ligne2["verite"]; ?>
                <input type="radio" name="<?=$idq?>" value="<?=$verite?>" checked> <?=$libeller?><br>
           <?php
            }
            $i++; //$i = $i + 1
        }
    ?> 
    <br>
    <button type="submit">Soumettre</button>
</div>
</body>
</html>