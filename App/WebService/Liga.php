<?php

namespace App\WebService;

class Liga{
    public static function DadosLiga($id_liga){
        //inicia curl
        $curl= curl_init();
        //configura curl
        curl_setopt_array($curl, [
            CURLOPT_URL=> "https://soccer.sportmonks.com/api/v2.0/leagues/".$id_liga."?api_token=HOLCAStI6Z0OfdoPbjdSg5b41Q17w2W5P4WuoIBdC66Z54kUEvGWPIe33UYC",
            CURLOPT_RETURNTRANSFER=> true,
            CURLOPT_CUSTOMREQUEST=>'GET'
        ]);
        //response
        $response= curl_exec($curl);

        //fecha a conexão
        curl_close($curl);
        //print_r($response);
        $valorLiga=json_decode($response);
        return $valorLiga;
    }

    public static function DadosClassificacao($id_temporada){
        //inicia curl
        $curl= curl_init();
        //configura curl
        curl_setopt_array($curl, [
            CURLOPT_URL=> "https://soccer.sportmonks.com/api/v2.0/standings/season/".$id_temporada."?api_token=HOLCAStI6Z0OfdoPbjdSg5b41Q17w2W5P4WuoIBdC66Z54kUEvGWPIe33UYC",
            CURLOPT_RETURNTRANSFER=> true,
            CURLOPT_CUSTOMREQUEST=>'GET'
        ]);
        //response
        $response= curl_exec($curl);

        //fecha a conexão
        curl_close($curl);
        //print_r($response);
        $valorTemporada=json_decode($response);
        return $valorTemporada;
    }

    public static function DadosPlayed($id_teams){
        //inicia curl
        $curl= curl_init();
        //configura curl
        curl_setopt_array($curl, [
            CURLOPT_URL=> "https://soccer.sportmonks.com/api/v2.0/teams/".$id_teams."?api_token=HOLCAStI6Z0OfdoPbjdSg5b41Q17w2W5P4WuoIBdC66Z54kUEvGWPIe33UYC&include=squad",
            CURLOPT_RETURNTRANSFER=> true,
            CURLOPT_CUSTOMREQUEST=>'GET'
        ]);
        //response
        $response= curl_exec($curl);

        //fecha a conexão
        curl_close($curl);
        //print_r($response);
        $valorTemporada=json_decode($response);
        return $valorTemporada;
    }
    public static function TimeId($id_teams){
        //inicia curl
        $curl= curl_init();
        //configura curl
        curl_setopt_array($curl, [
            CURLOPT_URL=> "https://soccer.sportmonks.com/api/v2.0/teams/".$id_teams."?api_token=HOLCAStI6Z0OfdoPbjdSg5b41Q17w2W5P4WuoIBdC66Z54kUEvGWPIe33UYC",
            CURLOPT_RETURNTRANSFER=> true,
            CURLOPT_CUSTOMREQUEST=>'GET'
        ]);
        //response
        $response= curl_exec($curl);

        //fecha a conexão
        curl_close($curl);
        //print_r($response);
        $valorTemporada=json_decode($response);
        return $valorTemporada;
    }


}



?>