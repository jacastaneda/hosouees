<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "configuracion".
 *
 * @property integer $IdConfiguracion
 * @property integer $CantidadHorasSociales
 * @property string $PesoMaximoAdjuntos
 * @property string $EstadoRegistro
 */
class Configuracion extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'configuracion';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['CantidadHorasSociales', 'PesoMaximoAdjuntos'], 'required'],
            [['CantidadHorasSociales'], 'integer'],
            [['PesoMaximoAdjuntos'], 'string', 'max' => 15],
            [['EstadoRegistro'], 'string', 'max' => 1],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'IdConfiguracion' => Yii::t('app', 'Id Configuracion'),
            'CantidadHorasSociales' => Yii::t('app', 'Cantidad de horas sociales requeridas por cada alumno'),
            'PesoMaximoAdjuntos' => Yii::t('app', 'Peso maximo de los archivos a cargar'),
            'EstadoRegistro' => Yii::t('app', 'Estado Registro'),
        ];
    }

    /**
     * @inheritdoc
     * @return ConfiguracionQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ConfiguracionQuery(get_called_class());
    }
}
