<?php

include_once 'C:\xampp\htdocs\baba-baby2\conn.php';


if ((!isset($_SESSION['idUsuario'])) AND (!isset($_SESSION['nome']))) {
    $_SESSION['msgErro'] = "Necessário realizar o login para acessar a página!";
    header("Location: index.php");
    exit();
}
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Menu Baba</title>
        <link rel="shortcut icon" type="imagex/png" href="../imgIndex/bbbyynew.ico">
        <link rel="stylesheet" href="baba/menuBaba.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
     </head>
    <body>
        <!-- Início Navbar -->
        <nav class="navbar">
            <div class="navbar-content">
                <div class="bars">
                    <i class="fa-solid fa-bars" style="color: #000000;"></i>
                </div>
                <img src="imgIndex/Babababypng.png" alt="Logo BabáBaby" class="logo-img">
            </div>
            <div class="navbar-ola">
                <p>Olá, <?php echo $_SESSION['nome']; ?></p>
            </div>
        </nav>

        <div class="content">
            <div class="sidebar">
                <a href="menuBaba.php" class="sidebar-nav active"><i class="icon fa-solid
                    fa-house" style="color: #000000;"></i><span>Início</span></a>

                <a href="baba/dadosBaba.php" class="sidebar-nav"><i class="icon fa-solid 
                    fa-user" style="color: #000000;"></i><span>Dados</span></a>     
                
                <a href="baba/servicosBaba.php" class="sidebar-nav"><i class="icon fa-solid 
                    fa-clock-rotate-left" style="color: #000000;"></i><span>Serviços</span></a>
                    
                <a href="baba/verificacaobaba.php" class="sidebar-nav"><i class="icon fa-solid 
                    fa-check" style="color: #000000;"></i><span>Verificar</span></a>     
                    
                <a href="login/sair.php" class="sidebar-nav"><i class="icon fa-solid 
                    fa-right-from-bracket" style="color: #e90c0c;"></i><span>Sair</span></a>       
            </div>

            <div class="wrapper">
                <div class="row">
                    <a href="baba/propostasBaba.php" class="box box-first">
                        <span class="fa-regular fa-handshake"></span>
                        <span></span>
                        <span>Propostas</span>
                    </a>

                    <a href="baba/disponibilidade.php" class="box box-third">
                        <span class="fa-regular fa-calendar"></span>
                        <span></span>
                        <span>Disponibilidade</span>
                    </a>
            </div>
            <!-- Fim do conteúdo do administrativo -->
        </div>
        <!-- Fim Conteúdo -->
    </body>
</html>