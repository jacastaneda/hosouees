<?php

use yii\widgets\DetailView;
use app\helpers\CrudHelper;

/* @var $this yii\web\View */
/* @var $model app\models\Configuracion */
?>
<div class="configuracion-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
//            'IdConfiguracion',
            'CantidadHorasSociales',
            'PesoMaximoAdjuntos',
            [
                'value' => CrudHelper::getEstadosRegistroLabel($model->EstadoRegistro),
                'label'=> 'EstadoRegistro',
            ], 
        ],
    ]) ?>

</div>
