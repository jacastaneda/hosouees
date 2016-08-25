<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Configuracion */
?>
<div class="configuracion-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'IdConfiguracion',
            'CantidadHorasSociales',
            'PesoMaximoAdjuntos',
            'EstadoRegistro',
        ],
    ]) ?>

</div>
