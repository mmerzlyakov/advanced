<?php

$str = 'SHORTEST: ['.$_GET['address']. '] [Side='.$_GET['side'].' ID='.$_GET['id'].' L='.$_GET['route'].']';
echo json_encode($str);

?>