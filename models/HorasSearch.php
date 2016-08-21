<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Horas;

/**
 * HorasSearch represents the model behind the search form about `app\models\Horas`.
 */
class HorasSearch extends Horas
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['IdPersona', 'IdProyecto', 'HorasRealizadas', 'HorasRestantes', 'IdUsuarioRegistro'], 'integer'],
            [['ProyectoCompleto', 'ProyectosRealizados', 'PersonaActiva', 'EstadoRegistro'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params, $where = FALSE)
    {
        $query = Horas::find();
        
        if($where !== FALSE)
        {
            $query->where($where);
        }
        
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'IdPersona' => $this->IdPersona,
            'IdProyecto' => $this->IdProyecto,
            'HorasRealizadas' => $this->HorasRealizadas,
            'HorasRestantes' => $this->HorasRestantes,
            'IdUsuarioRegistro' => $this->IdUsuarioRegistro,
        ]);

        $query->andFilterWhere(['like', 'ProyectoCompleto', $this->ProyectoCompleto])
            ->andFilterWhere(['like', 'ProyectosRealizados', $this->ProyectosRealizados])
            ->andFilterWhere(['like', 'PersonaActiva', $this->PersonaActiva])
            ->andFilterWhere(['like', 'EstadoRegistro', $this->EstadoRegistro]);

        return $dataProvider;
    }
}
