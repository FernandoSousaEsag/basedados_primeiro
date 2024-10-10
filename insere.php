<?php
include('./database/mysqli.php');
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Insere dados</title>    
</head>
<body>
    <div>
        <h3> Insere </h3>
        <form name="FormInsereDados" autocomplete="on" action="insere.php" method="post">
            <div>
                <div>
                    <input type="text" autocomplete="Dado-nome"  id="username" name="Nome"
                        required placeholder="Nome">
                </div>
            </div>
            <div>
                <div>
                    <input type="date"  id="data" name="dataNascimento" required placeholder="Data Nascimento">
                </div>
            </div>

            <div>

                <div>
                    <input type="number" id="NrProcesso" name="NrProcesso" placeholder="NrProcesso"
                        required>
                </div>
            </div>
            <div>

                <div>
                    <input type="number"  id="telefone" name="telefone" required
                        placeholder="Telefone">
                </div>
            </div>
            <div>

                <div>
                    <input type="email"  id="telefone" name="telefone" required
                        placeholder="email">
                </div>
            </div>
            <button type="submit" id="btn">submeter </button>
        </form>
    </div>
    <div>
        <p class="resultado" id="resultado"></p>
    </div>
</body>

</html>
<?php
if ($_POST){ // Se existir um post, entra!
   
	$username = mysqli_real_escape_string($conn, $_POST['nome']); // mysqli_real_escape_string é paraproteger a base de dados com SQL injection 
	$dataNascimento = mysqli_real_escape_string($conn, $_POST['dataNascimento']);
    $nrProcesso = mysqli_real_escape_string($conn, $_POST['nrProcesso']);
    $telefone = mysqli_real_escape_string($conn, $_POST['telefone']);   $telefone = mysqli_real_escape_string($conn, $_POST['telefone']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);  

    	 
	$sql = "INSERT INTO leituras (nome, dia, altura, peso) VALUES ('$username','$dia,', $altura, $peso)";
	if (mysqli_query($conn, $sql)) {
		//echo "Novo registo adicionado com sucesso!";
	 } else {
		echo "Erro: " . $sql . "
" . mysqli_error($conn);
	 }
	 mysqli_close($conn);
	
}