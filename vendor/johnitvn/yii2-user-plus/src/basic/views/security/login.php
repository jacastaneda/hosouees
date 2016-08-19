<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

$this->title = Yii::t('user', 'Sign in');
$module = Yii::$app->getModule('user');
?>
<style>
    .loginForm{
        /*opacity: 0.9;*/
        /*margin-top: 100px;*/
    }
    
body {
/*  background: url(/img/logso.png)  !important;
    background-position: center bottom !important;
    background-repeat: no-repeat !important;
    background-size: contain !important;*/
    
background: -moz-radial-gradient(center, ellipse cover, rgba(153,218,255,1) 0%, rgba(153,218,255,1) 14%, rgba(0,128,128,1) 74%, rgba(255,255,0,1) 79%, rgba(0,128,128,1) 89%, rgba(0,128,128,1) 100%) !important; /* ff3.6+ */
background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, rgba(153,218,255,1)), color-stop(14%, rgba(153,218,255,1)), color-stop(74%, rgba(0,128,128,1)), color-stop(79%, rgba(255,255,0,1)), color-stop(89%, rgba(0,128,128,1)), color-stop(100%, rgba(0,128,128,1))) !important; /* safari4+,chrome */
background:-webkit-radial-gradient(center, ellipse cover, rgba(153,218,255,1) 0%, rgba(153,218,255,1) 14%, rgba(0,128,128,1) 74%, rgba(255,255,0,1) 79%, rgba(0,128,128,1) 89%, rgba(0,128,128,1) 100%) !important; /* safari5.1+,chrome10+ */
background: -o-radial-gradient(center, ellipse cover, rgba(153,218,255,1) 0%, rgba(153,218,255,1) 14%, rgba(0,128,128,1) 74%, rgba(255,255,0,1) 79%, rgba(0,128,128,1) 89%, rgba(0,128,128,1) 100%) !important; /* opera 11.10+ */
background: -ms-radial-gradient(center, ellipse cover, rgba(153,218,255,1) 0%, rgba(153,218,255,1) 14%, rgba(0,128,128,1) 74%, rgba(255,255,0,1) 79%, rgba(0,128,128,1) 89%, rgba(0,128,128,1) 100%) !important; /* ie10+ */
background:radial-gradient(ellipse at center, rgba(153,218,255,1) 0%, rgba(153,218,255,1) 14%, rgba(0,128,128,1) 74%, rgba(255,255,0,1) 79%, rgba(0,128,128,1) 89%, rgba(0,128,128,1) 100%) !important; /* w3c */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#99DAFF', endColorstr='#008080',GradientType=0 ) !important; /* ie6-9 */
}    
</style>
<div class=" text-center">
    <?= Html::img('@web/img/logo.png', ['width'=>'150px', 'height' =>'150px', 'align'=>'center']);?> 
</div>
<h1 class="text-center">SISTEMA DE GESTION DE HORAS SOCIALES</h1>
<div class="row">
    <div class="col-md-4 col-md-offset-4 loginForm">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><?= Html::encode($this->title) ?></h3>
            </div>
            <div class="panel-body">
                <?php $form = ActiveForm::begin([
                    'id'                     => 'login-form',
                    'enableAjaxValidation'   => true,
                    'enableClientValidation' => false,
                    'validateOnBlur'         => false,
                    'validateOnType'         => false,
                    'validateOnChange'       => false,
                ]) ?>

                <?= $form->field($model, 'login', ['inputOptions' => ['autofocus' => 'autofocus', 'class' => 'form-control', 'tabindex' => '1']]) ?>

                <?= $form->field($model, 'password', ['inputOptions' => ['class' => 'form-control', 'tabindex' => '2']])->passwordInput()->label(Yii::t('user', 'Password')) ?>
                <?php if ($module->enableRecoveryPassword): ?>
                    <?= Html::a(Yii::t('user', 'Forgot password?'), ['/user/security/recovery']) ?><BR><BR>
                <?php endif ?>  
                <?= $form->field($model, 'rememberMe')->checkbox(['tabindex' => '4']) ?>

                <?= Html::submitButton(Yii::t('user', 'Sign in'), ['class' => 'btn btn-primary btn-block', 'tabindex' => '3']) ?>

                <?php ActiveForm::end(); ?>
            </div>
        </div>
        <?php if ($module->enableRegister): ?>
            <p class="text-center">
                <?= Html::a(Yii::t('user', 'Don\'t have an account? Sign up!'), ['/user/security/register']) ?>
            </p>
        <?php endif ?>       
        <?php if ($module->enableConfirmation): ?>
            <p class="text-center">
                <?= Html::a(Yii::t('user', 'Didn\'t receive confirmation message?'), ['/user/security/resend']) ?>
            </p>
        <?php endif ?>    
    </div>
</div>
