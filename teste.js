//cadastro.php	
//bota no form


		//<label><strong>xxxxx:</strong>
                   //<input name="xxxxx" id="xxxxxx" type="text" placeholder="xxxxx" required>
                //</label>




//type="number": Este tipo de input especifica que o campo deve aceitar apenas números.
//step="any": Este atributo permite que o usuário insira valores decimais. Sem ele, o input só aceitaria números inteiros. Alternativamente, você pode usar um valor específico para step se quiser controlar a precisão (por exemplo, step="0.01" para duas casas decimais).

//cadastrarusuario.php:

///DADOS GERAIS

//muda varuiavel
//$xxx = filter_input(INPUT_POST, "xxx");

//depois muda add 

// $cadastroUsuarioSQL = $pdo->prepare("INSERT INTO usuario (cpf, nome, sobrenome, dtaNascimento, telefone, endereco, cidade, email, >>>>xxx<<<<, senha, foto) VALUES (:cpf, :nome, :sobrenome, :dtaNascimento, :telefone, :endereco, :cidade, :email, :xxx, :senha,:foto)");

//e depois

//$cadastroUsuarioSQL->bindValue(':xxx', $xxx);

//listausuario.php:

//<th class="list-head-content">xxxx</th>

//listaTodosusuarios.php:

//primeiro aqui: 

//$querySQL = "SELECT u.idUsuario, u.nome, u.cpf, u.dtaNascimento, u.email, u.xxx, u.telefone, u.cidade, CASE WHEN b.pk_idUsuario IS NOT NULL AND p.pk_idUsuario IS NOT NULL THEN 'Pai e Baba' WHEN b.pk_idUsuario IS NOT NULL THEN 'Baba' WHEN p.pk_idUsuario IS NOT NULL THEN 'Pai' ELSE 'Nenhum' END AS tipo_usuario FROM usuario u LEFT JOIN baba b ON u.idUsuario = b.pk_idUsuario LEFT JOIN pais p ON u.idUsuario = p.pk_idUsuario;";

//depois aqui


//<td class="list-body-content"><?= $users['xxxx']; ?></td>


//AGORA PHPMYADMIN

//usuario
//estrutura
//adicionar
//nome var e tipo dados




//criar novo adm eh no inserir e valor 1
