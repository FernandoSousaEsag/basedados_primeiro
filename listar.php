<?php
//include("menu.php");
//include("./utilsData.php");
include('./database/mysqli.php');
?>


<!DOCTYPE html>
<html lang="pt">

<head>
    <title>Escola Website - Mostrar dados</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>

    <link rel='stylesheet' type='text/css' media='screen' href='./src/css/main.css'>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="imc.css" />
    <script src="./app.js"></script>
</head>

<body>
    <div class="col-md-6 offset-md-3 text-center bg-light  border-secondary mt-5 col-sm-12">
        <h3 class=" cabecalho mt-5"> Alunos Registados</h3>
        <table id=" dtBasicExample" class="table">
            <tr>
                <th scope="col">
                    <h5> Nome <h5>
                </th>

                <th scope="col">
                    <h5> Data Nascimento<h5>
                </th>
                <th scope="col">
                    <h5> Nr_ processo <h5>
                </th>
                <th scope="col">
                    <h5> Telefone <h5>
                </th>
                <th scope="col">
                    <h5> email <h5>
                </th>

                <?php
				$query = "SELECT * from alunos order by nome";
				$sql = mysqli_query($conn, $query);
				$leituras = mysqli_fetch_all($sql, MYSQLI_ASSOC);

				foreach ($leituras  as $leitura) {			
				?>
            <tr>
                <td> <?= $leitura['Nome'] ?></td>

                <td> <?= $leitura['DataNascimento'] ?></td>
                <td>
                    <?= $leitura['NrProcesso']?>
                </td>
                <td> <?= $leitura['Telefone'] ?></td>
                <td> <?= $leitura['Email'] ?></td>
            </tr>
            <?php
					}
			?>
        </table>
    </div>
</body>
</html>