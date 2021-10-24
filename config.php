<?php
error_reporting(0);
try {
    $connection= new PDO('mysql:host=localhost;port=3306;dbname=netgocio','root','12345678');
} catch (Exception $error) {
    echo 'Ocorreu o erro'.$error->getMessage();
}




require __DIR__.'/vendor/autoload.php';
use App\WebService\Liga;
//id liga 501
$id_liga=501;
$id_temporada=18369;
$dadosLiga= Liga::DadosLiga($id_liga);
$name= $dadosLiga->data->name;
$logo_path= $dadosLiga->data->logo_path;
//INSERIR
$sql= 'select * from ligas';
$result= $connection->prepare($sql);
$result->execute();
$retorno= $result->fetchAll(PDO::FETCH_OBJ);
$id=$retorno[0]->id;
if($id==''){
if($id==''){
    $sql= "insert into ligas(id, name, logo_path) 
    values (:id, :name, :logo_path)";
    $result= $connection->prepare($sql);
    $result->bindValue(':id',$id_liga);
    $result->bindValue(':name',$name);
    $result->bindValue(':logo_path',$logo_path);
    $result->execute();
}else{
    //UPDATE
    $sql= "update ligas set name= :name, logo_path= :logo_path  where id= :id";
    $result= $connection->prepare($sql);
    $result->bindValue(':name',$name);
    $result->bindValue(':logo_path',$logo_path);
    $result->bindValue(':id',$id);
    $result->execute();

}


$dadosClassificacao= Liga::DadosClassificacao($id_temporada);
$idTeams='';
$contadorClassifica= count($dadosClassificacao->data[0]->standings->data);
$eClassifica=0;
while($eClassifica <= ($contadorClassifica-1)){
    
    $sql= 'select * from liga_premiere';
    $result= $connection->prepare($sql);
    $result->execute();
    $retorno= $result->fetchAll(PDO::FETCH_OBJ);
    $idTeams=$retorno[$eClassifica]->id_teams;
    

   $teamName= $dadosClassificacao->data[0]->standings->data[$eClassifica]->team_name;
   $Name= $dadosClassificacao->data[0]->standings->data[$eClassifica]->team_name;
   $team_id= $dadosClassificacao->data[0]->standings->data[$eClassifica]->team_id;
   $position=$dadosClassificacao->data[0]->standings->data[$eClassifica]->position;
   $Played= $dadosClassificacao->data[0]->standings->data[$eClassifica]->team_id;
   $won=$dadosClassificacao->data[0]->standings->data[$eClassifica]->overall->won;
   $draw=$dadosClassificacao->data[0]->standings->data[$eClassifica]->overall->draw;
   $lost=$dadosClassificacao->data[0]->standings->data[$eClassifica]->overall->lost;
   $Goal=$dadosClassificacao->data[0]->standings->data[$eClassifica]->overall->goals_scored;
   $Difference=$dadosClassificacao->data[0]->standings->data[$eClassifica]->total->goal_difference;
   $Points=$dadosClassificacao->data[0]->standings->data[$eClassifica]->overall->points;

   //print_r('banco'.$idTeams);
   //print_r('api'.$team_id);
   if($idTeams!=$team_id){
   $sqlClassifica= "insert into liga_premiere(Position, id_teams, Team, Name, Played, Won, Drawn, Lost, Goal, Difference, Points)
   values (:Position, :id_teams, :Team, :Name, :Played, :Won, :Drawn, :Lost, :Goal, :Difference, :Points)";
  
$resultClassifica= $connection->prepare($sqlClassifica);  
$resultClassifica->bindValue(':Position', $position); 
$resultClassifica->bindValue(':id_teams', $team_id); 
$resultClassifica->bindValue(':Team', $teamName); 
$resultClassifica->bindValue(':Name', $Name);
$resultClassifica->bindValue(':Played', $Played);
$resultClassifica->bindValue(':Won', $won);
$resultClassifica->bindValue(':Drawn', $draw);
$resultClassifica->bindValue(':Lost', $lost);
$resultClassifica->bindValue(':Goal', $Goal);
$resultClassifica->bindValue(':Difference', $Difference); 
$resultClassifica->bindValue(':Points', $Points);
$resultClassifica->execute();

        /*
        $dadosPlayed= Liga::DadosPlayed($team_id);
        $IdPlayed= $dadosPlayed->data->squad->data[$eClassifica]->player_id;
        while($IdPlayed!=""){
        $sqlPlayed= "insert into played_team(id_team, id_played) 
        values (:id_team, :id_played)";
        $resultPlayed= $connection->prepare($sqlPlayed);
        $resultPlayed->bindValue(':id_team',$team_id);
        $resultPlayed->bindValue(':id_played',$IdPlayed);
        $resultPlayed->execute();  }*/
  
  



   }/*
    else{
        $sqlClassifica= "update liga_premiere set Position= :Position, id_teams=:id_teams, Team=:Team, Name= :Name, Played= :Played, Won= :Won, Drawn= :Drawn, Lost= :Lost, Goal= :Goal, Difference= :Difference, Points= :Points  where id_teams= :id_teams";
    $resultClassifica= $connection->prepare($sqlClassifica);
    $resultClassifica->bindValue(':Position',$position); 
$resultClassifica->bindValue(':Team',$teamName); 
$resultClassifica->bindValue(':Name',$Name);
$resultClassifica->bindValue(':Played',$Played);
$resultClassifica->bindValue(':Won',$won);
$resultClassifica->bindValue(':Drawn',$draw);
$resultClassifica->bindValue(':Lost',$lost);
$resultClassifica->bindValue(':Goal',$Goal);
$resultClassifica->bindValue(':Difference',$Difference); 
$resultClassifica->bindValue(':Points',$Points);
$resultClassifica->bindValue(':id_teams',$idTeams); 
$resultClassifica->execute();


$dadosPlayed= Liga::DadosPlayed($team_id);
$IdPlayed=$dadosPlayed->data->squad->data[$eClassifica]->player_id;
$sqlPlayed= "update played_team set id_team= :id_team, id_played= :id_played";
$resultPlayed= $connection->prepare($sqlPlayed);
$resultPlayed->bindValue(':id_team',$team_id);
$resultPlayed->bindValue(':id_played',$IdPlayed);
$resultPlayed->execute();



print_r ($resultClassifica);
   print 'update';
    }*/



    $eClassifica++;
}
}
?>