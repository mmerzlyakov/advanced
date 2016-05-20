<?php
// Извлекаем имя хоста из URL
preg_match('@^(?:http://)?([^/]+)@i',"http://www.php.net/index.html", $matches);
$host = $matches[1];
var_dump($matches);

// извлекаем две последние части имени хоста
preg_match('/[^.]+\.[^.]+$/', $host, $matches);
var_dump($matches);
echo "доменное имя: {$matches[0]}\n";


$str = "http://extremeshop.ru/shops";
preg_match('/http:\/\/(?<www>[w]*).(?<domain>\w*).(?<updomain>\w*).(?<script1>[^\/]*)\/(?<script2>[^\/]*)/i',$str, $match);		
var_dump($match);


$str = 'foobar: 2008';
preg_match('/foobar: (?P<digit>\d+)/', $str, $matches);
var_dump($matches);

$str = '/shops/seo';

preg_match('/\/(?<controller>\w*)(\/)?(?<script>\w*)/', $str, $matches);

var_dump($str);
var_dump($matches);



$str = '20:21';
$str = '20:21:39';

preg_match('/^(([0,1][0-9])|(2[0-3])):[0-5][0-9]:[0-5][0-9]$/i', $str, $m);
//preg_match('/^([0-9]+{0,2}):([0-9]+{0,2}):([0-9]+{0,2})$/', $str, $m);

var_dump($m);

//$str = 'adfadfa2asdf3жопа39';
//$str = '1232134';

$str = '34532452342';


preg_match('/(\D)+/i', $str, $m1);
var_dump($m1);

//['time_begin', 'match', 'pattern' => '/^(([0,1][0-9])|(2[0-3])):[0-5][0-9]:[0-5][0-9]$/i']
//['time_end', 'match', 'pattern' => '/^(([0,1][0-9])|(2[0-3])):[0-5][0-9]:[0-5][0-9]$/i']

?>
