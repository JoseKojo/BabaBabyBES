<?php
include_once 'C:\xampp\htdocs\baba-baby2\conn.php';


if ((!isset($_SESSION['idUsuario'])) AND (!isset($_SESSION['nome']))) {
    $_SESSION['msgErro'] = "Necessário realizar o login para acessar a página!";
    header("Location: index.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Menu Pais</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="imagex/png" href="imgIndex">
    <!-- Estilo customizado -->
    <link rel="stylesheet" href="pais/menuPais.css">
    <!-- Font Awesome para ícones -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <!-- Flatpickr para seleção de datas -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/pt.js"></script>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar">
        <div class="navbar-content">
            <img src="imgIndex/Babababypng.png" alt="Logo BabáBaby" class="logo-img">
        </div>
        <div class="navbar-ola">
            <p>Olá, <?php echo $_SESSION['nome']; ?></p>
        </div>
    </nav>

    <!-- Conteúdo Principal -->
    <div class="content">
        <!-- Sidebar -->
        <div class="sidebar">
            <a href="menuPais.php" class="sidebar-nav active"><i class="icon fa-solid fa-house" style="color: #000000;"></i><span>Início</span></a>
            <a href="pais/dadosPais.php" class="sidebar-nav"><i class="icon fa-solid fa-user" style="color: #000000;"></i><span>Dados</span></a>     
            <a href="pais/propostasPais.php" class="sidebar-nav"><i class="icon fa-solid fa-clock-rotate-left" style="color: #000000;"></i><span>Propostas</span></a>        
            <a href="login/sair.php" class="sidebar-nav"><i class="icon fa-solid fa-right-from-bracket" style="color: #e90c0c;"></i><span>Sair</span></a>
        </div>

        <!-- Conteúdo da página -->
        <div class="wrapper">
            <!-- Formulário de Pesquisa -->
            <form class="pesquisa-container" action="#" method="GET">
                <input class="inp-buscar" name="busca" placeholder="Digite um nome ou cidade" type="text">
                <button type="submit" class="btn-pesquisa">Buscar</button>
            </form>

            <!-- Container dos Resultados -->
            <div class="container">
                <?php
                if (isset($_GET['busca']) && !empty($_GET['busca'])) {
                    $pesquisa = $_GET['busca'];
                    $param = '%' . $pesquisa . '%';

                    $querySQL = "SELECT DISTINCT b.idBaba, b.tempoExp, b.sobre, b.valor, b.pk_idUsuario,
                        u.nome, u.cidade
                        FROM baba AS b
                        LEFT JOIN usuario AS u ON b.pk_idUsuario = u.idUsuario
                        WHERE u.nome LIKE :pesquisa OR u.cidade LIKE :pesquisa";

                    $queryPreparada = $pdo->prepare($querySQL);
                    $queryPreparada->bindParam(':pesquisa', $param, PDO::PARAM_STR);
                    $queryPreparada->execute();
                    $listaBaba = $queryPreparada->fetchAll(PDO::FETCH_ASSOC);
                } else {
                    $querySQL = "SELECT DISTINCT b.idBaba, b.tempoExp, b.sobre, b.valor, b.pk_idUsuario,
                        u.nome, u.cidade
                        FROM baba AS b
                        LEFT JOIN usuario AS u ON b.pk_idUsuario = u.idUsuario";

                    $queryPreparada = $pdo->prepare($querySQL);
                    $queryPreparada->execute();
                    $listaBaba = $queryPreparada->fetchAll(PDO::FETCH_ASSOC);
                }

                // Verifica se há resultados da pesquisa
                if (count($listaBaba) > 0) {
                    // Itera sobre os resultados e exibe cada card
                    foreach ($listaBaba as $baba):
                ?>
                    <!-- Card de Babá -->
                    <div class="card">
                        <div class="card-img">
                            <img src="">
                        </div>

                        <!-- Conteúdo do Card -->
                        <div class="content-card">
                            <h3><?=$baba['nome'];?></h3>
                            <ul>
                                <li>Onde mora: <?=$baba['cidade'];?></li>
                                <li>Valor/turno: <?=$baba['valor'];?></li>
                            </ul>
                            <button class="open-modal sobre-button">Sobre</button>
                        </div>
                    </div>
                    <!-- Modal de Detalhes da Babá -->
                    <div class="fade hide"></div>
                    <div class="modal hide">
                        <!-- Cabeçalho do Modal -->
                        <div class="modal-header">
                            <ul>
                                <li class="nome"><?=$baba['nome'];?></li>
                                <li>Babá desde: <?=$baba['tempoExp'];?></li>
                                <li>Valor/turno: R$ <?=$baba['valor'];?></li>
                            </ul>
                            <button class="close-modal">x</button>
                        </div>
                        <!-- Corpo do Modal -->
                        <div class="modal-body"> 
                            <div class="about">
                                <h3>Sobre mim:</h3>
                                <p><?=$baba['sobre'];?></p><br>
                            </div>
                            <!-- Disponibilidade da Babá -->
                            <div class="dispo">
                                <h3>Disponibilidade:</h3>
                                <p></p><br>
                            </div>
                            <!-- Formulário de Proposta -->
                            <button class="bnt-openProposta">Criar Proposta</button>
                            <div class="formProposta hide">
                                <form class="dynamicForm" action="pais/propostaBack.php" method="POST">

                                    <input type="hidden" name="idBaba" value="<?=$baba['idBaba']?>">
                                    <input type="hidden" name="pk_idUsuario" value="<?=$baba['pk_idUsuario']?>">

                                    <label for="dateInput<?=$baba['idBaba']?>">Quando:</label>
                                    <input type="text" id="dataInput<?=$baba['idBaba']?>" class="data" name="dateInput" required>

                                    <label for="turno">Turno:</label>
                                    <select name="turno" required>
                                        <option value="Manhã">Manhã</option>
                                        <option value="Tarde">Tarde</option>
                                        <option value="Noite">Noite</option>
                                    </select><br>
                                    <button type="submit">Enviar</button>
                                    <div id="result<?=$baba['idBaba']?>"></div>
                                </form>
                            </div>  
                        </div>
                    </div>
                    <?php 
                    endforeach;
                } else {
                ?>
                    <!-- Alerta caso nenhuma babá seja encontrada -->
                    <h1 class="alerta">Nenhuma babá encontrada...</h1>
                <?php
                }
                ?>
            </div>
            <!-- Fim do Conteúdo de Pesquisa -->

        </div>
        <!-- Fim do Conteúdo Principal -->
    </div>

    <!-- Scripts -->
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Seleciona todos os botões "Sobre", "Voltar", "Criar Proposta", modais e fades
            const openModalButtons = document.querySelectorAll(".open-modal");
            const closeModalButtons = document.querySelectorAll(".close-modal");
            const fades = document.querySelectorAll(".fade");
            const modals = document.querySelectorAll(".modal");
            const bntOpenPropostaButtons = document.querySelectorAll(".bnt-openProposta");
            const formPropostas = document.querySelectorAll(".formProposta");

            // Adiciona evento de clique para abrir o modal correspondente
            openModalButtons.forEach((button, index) => {
                button.addEventListener("click", () => {
                    modals[index].classList.remove("hide");
                    fades[index].classList.remove("hide");
                });
            });

            // Adiciona evento de clique para fechar o modal correspondente
            closeModalButtons.forEach((button, index) => {
                button.addEventListener("click", () => {
                    modals[index].classList.add("hide");
                    fades[index].classList.add("hide");
                });
            });

            // Adiciona evento de clique para fechar o modal ao clicar fora dele (fade)
            fades.forEach((fade, index) => {
                fade.addEventListener("click", () => {
                    modals[index].classList.add("hide");
                    fade.classList.add("hide");
                });
            });

            // Adiciona evento de clique para alternar a visibilidade do formulário de proposta
            bntOpenPropostaButtons.forEach((button, index) => {
                button.addEventListener("click", () => {
                    formPropostas[index].classList.toggle("hide");
                });
            });

            // Inicializa o flatpickr para todos os campos de data
            flatpickr(".data", {
                dateFormat: "Y-m-d",
                locale: "pt",
                minDate: "today" // Bloqueia datas anteriores à data atual
            });
        });

    </script>
</body>
</html>
