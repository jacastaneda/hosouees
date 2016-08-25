<?php
use \yii\helpers\Html;
use \yii\bootstrap\Button;
use \app\helpers\PersonaHelper;
/* @var $this yii\web\View */
$this->title = 'Bienvenido al Sistema de gestión de Horas Sociales de la UEES';
$persona = PersonaHelper::getPersona();
echo $persona->getCantidadHorasSociales();
?>
<div class="site-index">

<!--    <div class="jumbotron">
        <?php //echo Html::img('@web/img/logo.png', ['width'=>'500px', 'height' =>'500px', 'align'=>'center']);?> 
    </div>-->

<div class="well text text-info">
                        <h2>SERVICIO SOCIAL ESTUDIANTIL </h2>
                        <span>
                        <div align="justify">
                          <p> 1-¿QUÉ ES EL SERVICIO SOCIAL? <br>
2-OBJETIVOS <br>
3-VALORES UNIVERSITARIOS <br>
4-REALIZACIÓN DEL SERVICIO SOCIAL <br>
<br>
<strong> 1-¿QUÉ ES EL SERVICIO SOCIAL? </strong><br>
“Se entiende por servicio social universitario, la realización obligatoria de actividades temporales que ejecuten los estudiantes de carreras técnicas y profesionales, tendientes a la aplicación de los conocimientos que hayan obtenido y que impliquen el ejercicio de la práctica profesional en beneficio o interés de la sociedad” <br>
<br>
<strong>2-OBJETIVOS </strong></p>
                          <ul>
                            <li>Desarrollar en el prestador una conciencia de solidaridad y compromiso con la sociedad a la que pertenece. </li>
                            <li>Convertir la prestación en un acto de reciprocidad con la sociedad. </li>
                            <li>Contribuir con la formación académica y capacitación profesional del prestador de Servicio Social. <br>
                            </li>
                          </ul>
                          <p align="justify"><strong>3-VALORES UNIVERSITARIOS </strong></p>
                          <p align="justify">Honestidad, solidaridad, puntualidad, voluntad, humildad, disponibilidad, cooperación, sensibilidad, responsabilidad y compromiso social <br>
                              <br>
                              <strong>4-REALIZACIÓN DEL SERVICIO SOCIAL </strong></p>
                          <p>El estudiante podrá optar entre las siguientes alternativas: </p>
                          <p>Internamente: en programas o proyectos de desarrollo, investigación, docencia, unidades de producción o apoyo administrativo. </p>
                          <p>Externamente: en dependencias federales, estatales o municipales; uniones de producción; así como aquellas instituciones donde se cumpla con los principios que definen el Servicio Social. <br>
                            <br>
                          </p>
                        </div>
                      </span></div>  
</div>
<script>
//    alert('hosouees');
</script>


