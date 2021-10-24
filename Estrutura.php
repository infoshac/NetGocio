
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap4.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">


<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>
<link rel="stylesheet" href="layout/layout.css">
<style>
    
    #camisa{
        color: green;
    }
    #gol{
        color: blue;
    }
    #amarelo{
        color: yellow;
    }
    #vermelho{
        color: red;
    }
    .stime{
        font-weight: bold;
    }
</style>


<?php

require __DIR__.'/vendor/autoload.php';
use App\WebService\Liga;
include_once "config.php";

try {
    $connection= new PDO('mysql:host=localhost;port=3306;dbname=netgocio','root','12345678');
} catch (Exception $error) {
    echo 'Ocorreu o erro'.$error->getMessage();
}

$sql= 'select * from liga_premiere';
    $result= $connection->prepare($sql);
    $result->execute();
    $retorno= $result->fetchAll(PDO::FETCH_OBJ);

    $sqlTeam= 'select * from played_team';
    $resultTeam= $connection->prepare($sqlTeam);
    $resultTeam->execute();
    $retornoTeam= $resultTeam->fetchAll(PDO::FETCH_OBJ);

    $sqlligas= 'select * from ligas';
    $resultligas= $connection->prepare($sqlligas);
    $resultligas->execute();
    $retornoligas= $resultligas->fetchAll(PDO::FETCH_OBJ);
    
?>
