<?php

use yii\helpers\html;
use yii\bootstrap\Modal;
use yii\widgets\Pjax;
use yii\bootstrap\ActiveForm;
use common\models\User;

/* @var $this yii\web\View */

$this->title = 'My Yii Application';
?>
<div class="site-index">

    <div class="body-content">


	<?php

         //    var_dump($post);
/*
//Modal::begin(['header' => '<h2>Hello world</h2>','toggleButton' => ['label' => 'click me'],]);
Pjax::begin();
echo Html::beginForm(['site/index'], 'post', ['data-pjax' => '', 'class' => 'form-inline']); 
echo Html::input('text', 'phone', Yii::$app->request->post('phone'), ['class' => 'form-control']); 
echo Html::submitButton('Search phone', ['class' => 'btn btn-lg btn-primary', 'name' => 'hash-button']);
echo Html::endForm();
Pjax::end();            */
//Modal::end();

	?>

<?php 
Modal::begin(['header' => '<h2>Найти пользователя</h2>','toggleButton' => ['label' => 'Телефон'],]);
	Pjax::begin(); 
	echo Html::beginForm(['site/index'], 'post', ['data-pjax' => '', 'class' => 'form-inline']); 
	echo Html::input('text', 'string', Yii::$app->request->post('string'), ['class' => 'form-control']); 
	echo Html::submitButton('Найти пользователя', ['class' => 'btn btn-lg btn-primary', 'name' => 'hash-button']);
	echo Html::endForm();
	echo $stringHash; 
	Pjax::end();   
?>
<?php
Modal::end();     
?>



    </div>
</div>
