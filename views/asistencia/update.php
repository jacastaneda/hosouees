<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Asistencia */
?>
<div class="asistencia-update">

    <?= $this->render('_form', [
        'model' => $model,
        'idProyecto' => $idProyecto,
    ]) ?>

</div>
