<?php 
session_start();

$mysqli = mysqli_connect("localhost","root","","qcm");
mysqli_set_charset($mysqli,"UTF-8");

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['username']) && isset($_POST['password'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    $sql = "SELECT * FROM utilisateurs WHERE Email='$username' AND Mot_de_passe='$password'";
    $result = mysqli_query($mysqli, $sql);

    if ($result && mysqli_num_rows($result) > 0) {
        $_SESSION['nom_utilisateur'] = $username; // Stockage du nom d'utilisateur dans la session
        $_SESSION['role'] = $row['role']; 
        header("Location: niveau.php");
        exit();
    } else {
        echo "Email ou mot de passe incorrect. Veuillez réessayer.";
    }
}
?>
