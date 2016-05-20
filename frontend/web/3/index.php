<?php

$str = "http://www.shoptest.name/shops/";

preg_match('/(?<url>.*).(?:.*) (?<phone>[0-9-+,. ]*)/i',$str, $match);

var_dump($match);

?>