<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\helpers\CrudHelper;
/* @var $this yii\web\View */
/* @var $model app\models\Horas */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="horas-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'HorasRealizadas')->textInput() ?>

    <?= $form->field($model, 'HorasRestantes')->textInput() ?>
    
    <?= $form->field($model, 'ProyectoCompleto')->dropDownList(CrudHelper::getSiNo(), 
             ['prompt'=>'- Seleccione si el estudiante ha completado el proyecto-']) ?>    
    
    <?= $form->field($model, 'PersonaActiva')->dropDownList(CrudHelper::getSiNo(), 
             ['prompt'=>'- Seleccione si el estudiante sigue activo en el proyecto-']) ?>      

    <?= $form->field($model, 'IdUsuarioRegistro')->hiddenInput(['value' => Yii::$app->user->id])->label(false) ?>

    <?= $form->field($model, 'EstadoRegistro')->dropDownList(CrudHelper::getEstadosRegistro(), 
             ['prompt'=>'- Seleccione el estado del registro-']) ?>

  
	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
