<?php

namespace app\controllers;

use Yii;
use yii\web\Controller;

use yii\helpers\ArrayHelper;


class SiteController extends Controller
{

	// Hardcoded user information 
	// Should be removed when user authentication is in place (not for now)
	private $accountId = 1;
	private $audioType= 1;
	private $videoType = 2;

    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    public function actionIndex($q = null)
    {
		
		/*
		$client = new \GuzzleHttp\Client();
		$res = $client->get('http://localhost:8080/BigSisterReboot/webresources/entities.event', [
		    'headers' => ['content-type' => 'application/json']
		]);
		echo $res->getStatusCode();           // 200
		echo $res->getHeader('content-type'); // 'application/json; charset=utf8'
		$data = $res->getBody();                 // {"type":"User"...'
		var_export($res->json());             // Outputs the JSON decoded data
	
		*/
        return $this->render('index', [
			//'data' => $data
			]);
    }
	
    public function actionAbout()
    {
		try{
			$content = file_get_contents(__DIR__ . '/../README.md');
		}catch(\Exception $e){
			// this shouldn't happen but hey
			$content = "Failed to retrieve README file";
		}
        return $this->render('about', ['content' => $content]);
    }
	
	public function actionVideolive(){
        return $this->render('videolive', [
			]);
	}
	public function actionData(){
		
		$today  = mktime(0, 0, 0, date("m")  , date("d"), date("Y"));
		$todayShow = date("d/m/Y");
		$now = time();
		
		$client = new \GuzzleHttp\Client();
		
		// Get video data
		$res = $client
				->get('http://192.168.1.116:8080/BigSisterReboot/webresources/entities.event/historydata/'
		.$this->accountId.'/'.$this->videoType.'/'.$today.'/'.$now, [
		    'headers' => ['content-type' => 'application/json']
		]);
		$videoData = $res->json();
		
		// Get audio data
		$res = $client
				->get('http://192.168.1.116:8080/BigSisterReboot/webresources/entities.event/historydata/'
						. $this->accountId.'/'.$this->audioType.'/'.$today.'/'.$now, [
		    'headers' => ['content-type' => 'application/json']
		]);			
		$audioData = $res->json();
		
		// sleep comfort
		$res = $client
				->get('http://192.168.1.116:8080/BigSisterReboot/webresources/entities.event/sleepcomfort/'
						. $this->accountId.'/'.'1'.'/'.$now, [
		    'headers' => ['content-type' => 'application/json']
		]);		
			
		$sleepComfort = $res->json();
		
		$audioValue = $sleepComfort['audioValue'];
		$audioCount = $sleepComfort['audioCount'];
		$videoValue = $sleepComfort['videoValue'];
		$videoCount = $sleepComfort['videoCount'];
		
		
		$comfortScore = 9;
		
		// Convert to easy arrays for graph
		$videoY = array();
		$videoX = array();
		$audioY = array();
		$audioX = array();
		$firstTimestamp = min($videoData[0]["timestamp"], $audioData[0]["timestamp"]);
		foreach($videoData as $event){
		   $videoY[] = $event["value"];
		   $videoX[] = $event["timestamp"] - $firstTimestamp;;
		}
		foreach($audioData as $event){
		   $audioY[] = $event["value"];
		   $audioX[] = $event["timestamp"] - $firstTimestamp;;
		}
		
		$videoHighest = end($videoX)['timestamp'];
		$audioHighest = end($audioX)['timestamp'];
		
		
		if($videoHighest > $audioHighest){
			$dataX = $videoX;
		} else {
			$dataX = $audioX;
		}
        return $this->render('data', [
			'todayShow' => $todayShow,   
			'dataX' => $dataX,    
			'videoY' => $videoY,
			'videoX' => $videoX,
			'audioY' => $audioY,
			'audioX' => $audioX,
			'audioValue' => $audioValue,
			'audioCount' => $audioCount,
			'videoValue' => $videoValue,
			'videoCount' => $videoCount,
			'comfortScore' => $comfortScore,
			'sleepComfort' => $sleepComfort,
			]);
	}
	
}
