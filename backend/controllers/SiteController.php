<?php
namespace backend\controllers;

use Yii;
use yii\base\Security;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\db\Query;
use common\models\LoginForm;
use yii\filters\VerbFilter;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['index','indy','login', 'error'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout', 'index'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

////////////////////////


public function actionFormSubmission()
{
}

public function actionTime()
{
    return $this->render('time-date', ['response' => date('H:i:s')]);
}

public function actionDate()
{
    return $this->render('time-date', ['response' => date('d.m.Y')]);
}

/////////////////////////////

    public function actionIndex($stringHash = '')
    {	
    $phone = Yii::$app->request->post('string');

		if(!empty($phone)){
			$query = new Query;
			$users = $query
			->select('id,name,phone')
			->from('users')
			->where(['status' => 1])
//			->andWhere(['phone' => $phone])
			->andFilterWhere(['like','phone',$phone])
			->one();   

//			return $this->render('index',['phone' => 'empty']);
			return $this->render('index',['stringHash' => $users['name']]);
		}else{
			return $this->render('index',['stringHash' => 'empty']);
		}
		   
/*    $security = new Security();
    $string = Yii::$app->request->post('string');
    $stringHash = '';
    if (!is_null($string)) {
        $stringHash = $security->generatePasswordHash($string);
    }         
    return $this->render('index', [
        'stringHash' => $stringHash,
    ]);
              */
//		return $this->render('index',['phone' => $phone]);

///        return $this->render('index');
    }

	public function actionIndy($phone = '')
	{
		if(!empty($phone)){
			$query = new Query;
			$users = $query
			->select('id,name,phone')
			->from('users')
			->where(['status = 1'])
			->andWhere('like','phone',$phone)
			->one();

			return $this->render('index',['phone' => $users['phone']]);
		}else{
			return $this->render('index',['phone' => 'empty1','post' => $_POST]);
		}
	}



    public function actionLogin()
    {
        if (!\Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }
}
