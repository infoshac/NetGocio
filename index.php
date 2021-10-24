<?php include_once "Estrutura.php" ?>
<div class="container mt-0 ">

<div class="row">
  <div class="col-sm">  <img class="mr-3" width='50%'  src="<?php echo $retornoligas[0]->logo_path ?>" alt="Imagem de exemplo genérica"></div>
  <div class="col-sm  mt-5" style="text-align:center">
    
          <h2 style="text-align: center; color:#191970"><?php echo $retornoligas[0]->name ?></h2>
</div>
  <div class="col-sm"></div>
</div>

<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Position</th>
                <th>Team</th>
                <th>Name</th>
                <th>Played</th>
                <th>Won</th>
                <th>Drawn</th>
                <th>Lost</th>
            </tr>
        </thead>
        <tbody>

<?php
    foreach($retorno as $key => $retornos){
?>     
  <tr>
    <td><?php print $retornos->Position ?></td>
    <td><img src="<?php echo $retornos->logo_path ?>" width="20%"></td>
    <td><?php print $retornos->Name ?></td>
    <td>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalExemplo">
  Jogadores
</button>
<!-- Modal -->
<div class="modal fade" id="modalExemplo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><?php print $retornos->Name ?></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <ul>
              
    <?php 
    foreach($retornoTeam as $key => $retornoTeams){
        if($retornos->id_teams== $retornoTeams->id_team){

            
    ?>
<!--modal time-->
    

       <?php print '<li> <span id="camisa" class="stime">Camisa:</span> '.($retornoTeams->number==''?0:$retornoTeams->number).' - <span id="gol" class="stime"> Gols: </span>'.($retornoTeams->Goals==''?0: $retornoTeams->Goals).' - <span id="amarelo" class="stime"> Cartão Amarelo: </span>'.($retornoTeams->yellowCard==''?0:$retornoTeams->yellowCard ).' <span id="vermelho" class="stime">Cartão Vermelho: </span>'.($retornoTeams->redCard==''?0:$retornoTeams->redCard).'</li> <p><hr>';?>
     
     
<!--modal time-->
    <?php

        }    
        
    }
?>
              
          </ul>
     </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
      </div>
    </div>
  </div>
</div>
    </td>
   
    <td><?php print $retornos->Won ?></td>
    <td><?php print $retornos->Drawn ?></td>
    <td><?php print $retornos->Lost ?></td>
 </tr>

    <?php } ?>
</tbody>
        <tfoot>
            <tr>
            <th>Position</th>
                <th>Team</th>
                <th>Name</th>
                <th>Played</th>
                <th>Won</th>
                <th>Drawn</th>
                <th>Lost</th>
            </tr>
        </tfoot>
    </table>
</div>


