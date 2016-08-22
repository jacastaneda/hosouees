-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 21-08-2016 a las 23:31:09
-- Versión del servidor: 5.7.13-0ubuntu0.16.04.2
-- Versión de PHP: 7.0.8-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hosouees`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `IdAsistencia` int(11) NOT NULL,
  `IdProyecto` int(11) NOT NULL,
  `IdPersona` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `HoraEntrada` time NOT NULL,
  `HoraSalida` time NOT NULL,
  `CantidadHoras` float NOT NULL,
  `Comentarios` varchar(250) DEFAULT NULL,
  `IdUsuarioRegistro` int(11) NOT NULL,
  `EstadoRegistro` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`IdAsistencia`, `IdProyecto`, `IdPersona`, `Fecha`, `HoraEntrada`, `HoraSalida`, `CantidadHoras`, `Comentarios`, `IdUsuarioRegistro`, `EstadoRegistro`) VALUES
(1, 15, 2, '2016-08-20', '08:20:00', '12:00:00', 4, 'acasc', 3, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Administrador', '1', 1471397326),
('Estudiante', '2', 1470881064),
('Supervisor', '3', 1471568351);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('AccederGII', 2, 'Permiso para acceder al menu GII', NULL, NULL, 1471811890, 1471811890),
('Administrador', 1, 'Administrador', NULL, NULL, 1470816328, 1471811902),
('Administrador de proyecto', 1, 'Administrador de proyecto en la institucion', NULL, NULL, 1471397869, 1471397869),
('AdministrarCatalogos', 2, 'Permiso para administrar catalogos', NULL, NULL, 1471811663, 1471811663),
('AdministrarRBAC', 2, 'Administración de Roles y permisos', NULL, NULL, 1471811823, 1471811823),
('Coordinador', 1, 'Coordinador de proyectos de horas sociales', NULL, NULL, 1470880648, 1470880855),
('Estudiante', 1, 'Estudiante de la UEES', NULL, NULL, 1470880684, 1470880684),
('MantoAsignaciones', 2, 'Asignacion de permisos', NULL, NULL, 1471410730, 1471410730),
('MantoCarreras', 2, 'Acceso al mantenimiento de carreras', NULL, NULL, 1471477751, 1471477751),
('MantoFacultades', 2, 'Permite acceder al mantenimiento de facultades en el sistema', NULL, NULL, 1470953345, 1471477675),
('MantoInstituciones', 2, 'Acceso al mantenimiento de instituciones', NULL, NULL, 1471477770, 1471477786),
('MantoPermisos', 2, 'Mantenimiento de Permisos', NULL, NULL, 1471410710, 1471410710),
('MantoPersonas', 2, 'Acceso al mantenimiento de personas', NULL, NULL, 1471536227, 1471536227),
('MantoProyectos', 2, 'Registrar proyectos de horas sociales disponibles', NULL, NULL, 1470880828, 1471477692),
('MantoReglas', 2, 'Mantenimiento de Rules RBAC', NULL, NULL, 1471410763, 1471410763),
('MantoRoles', 2, 'Mantenimiento de roles', NULL, NULL, 1471410686, 1471410686),
('MantoUniversidades', 2, 'Registrar universidades', NULL, NULL, 1471477722, 1471477722),
('MantoUsuarios', 2, 'Mantenimiento de Usuarios', NULL, NULL, 1471410651, 1471410651),
('Supervisor', 1, 'Supervisor de proyectos de horas sociales', NULL, NULL, 1470880665, 1470880665),
('VerTodosProyectos', 2, 'Puede dar gestión a todos los proyectos de horas sociales', NULL, NULL, 1471709698, 1471709698);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Administrador', 'AccederGII'),
('Administrador', 'AdministrarCatalogos'),
('Administrador', 'AdministrarRBAC'),
('Administrador', 'MantoAsignaciones'),
('Administrador', 'MantoCarreras'),
('Administrador', 'MantoFacultades'),
('Administrador', 'MantoInstituciones'),
('Administrador', 'MantoPermisos'),
('Administrador', 'MantoPersonas'),
('Administrador', 'MantoProyectos'),
('Coordinador', 'MantoProyectos'),
('Administrador', 'MantoReglas'),
('Administrador', 'MantoRoles'),
('Administrador', 'MantoUniversidades'),
('Administrador', 'MantoUsuarios'),
('Administrador', 'VerTodosProyectos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `IdCarrera` int(11) NOT NULL COMMENT 'Codigo identificador de la carrera',
  `Nombre` varchar(100) NOT NULL COMMENT 'nombre de la carrera',
  `NombreCorto` varchar(100) DEFAULT NULL COMMENT 'nombre corto de la carrera',
  `IdFacultad` int(11) DEFAULT NULL COMMENT 'Codigo identificador de la facultad',
  `EstadoRegistro` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`IdCarrera`, `Nombre`, `NombreCorto`, `IdFacultad`, `EstadoRegistro`) VALUES
(1, 'Medicina General', 'MEDGE', 5, '1'),
(2, 'Ingeniería en Sistemas Informáticos', 'ISI', 4, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunicacion`
--

CREATE TABLE `comunicacion` (
  `IdComunicacion` int(11) NOT NULL,
  `IdPersonaRemitente` int(11) NOT NULL COMMENT 'ID de la taba de personas, del emisor del mensaje',
  `IdPersonaReceptor` int(11) DEFAULT NULL,
  `Sujeto` varchar(150) NOT NULL COMMENT 'Sujeto del mensaje',
  `Comentarios` varchar(500) NOT NULL COMMENT 'Cuerpo del mensaje',
  `FechaHora` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'FEcha y hora del registro en la BD',
  `NombreAdjunto1` varchar(150) DEFAULT NULL,
  `RutaAdjunto1` varchar(150) DEFAULT NULL COMMENT 'Ruta en el sistema de archivos del archivo adjunto 1',
  `NombreAdjunto2` varchar(150) DEFAULT NULL,
  `RutaAdjunto2` varchar(150) DEFAULT NULL,
  `IdProyecto` int(11) NOT NULL,
  `IdUsuarioRegistro` int(11) NOT NULL,
  `EstadoRegistro` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Para establecer los datos de comunicacion entre los asesores y participantes de los proyectos';

--
-- Volcado de datos para la tabla `comunicacion`
--

INSERT INTO `comunicacion` (`IdComunicacion`, `IdPersonaRemitente`, `IdPersonaReceptor`, `Sujeto`, `Comentarios`, `FechaHora`, `NombreAdjunto1`, `RutaAdjunto1`, `NombreAdjunto2`, `RutaAdjunto2`, `IdProyecto`, `IdUsuarioRegistro`, `EstadoRegistro`) VALUES
(10, 4, NULL, 'asda', 'sdadsadasdsadasd', '2016-08-22 01:54:59', 'logo.png', 's175H9KWgdHf_3HCZDXz4ZnFrpICc552.png', NULL, NULL, 15, 3, '1'),
(11, 4, NULL, 'Sujeto', 'COmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOmentarios comeCOme', '2016-08-22 02:27:06', 'manual de imagen corporativa.pdf', 'si039sORrz6D-G5npUynZYwLdxN3YjVh.pdf', 'minerva-logo-vector2.png', 'JxcuKR4X06gFtZ-RCRYPc0iovcShKbGr.png', 15, 3, '1'),
(12, 4, NULL, 'erte', 'retrertrt', '2016-08-22 04:04:19', 'direccion kenny.txt', '9RWsi0TF0ywYruWFCBh4VApyU9RdB7nB.txt', NULL, NULL, 15, 3, '1'),
(13, 4, NULL, 'dfsdfsdfsdfsdf', 'sdfsdfsdfs', '2016-08-22 04:19:59', 'Sin título 1.pdf', '34s7YGcmy5leeQfNSLcRwaLb4Ka0gyIb.pdf', 'logo-no-text.png', 'yvm7LTo6iRlH3KyibTEQe9Z80ElI_s0M.png', 15, 3, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadosProyecto`
--

CREATE TABLE `estadosProyecto` (
  `IdEstadoProyecto` int(11) NOT NULL,
  `EstadoProyecto` varchar(45) DEFAULT NULL,
  `EstadoRegistro` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalogo de estados de los proyectos';

--
-- Volcado de datos para la tabla `estadosProyecto`
--

INSERT INTO `estadosProyecto` (`IdEstadoProyecto`, `EstadoProyecto`, `EstadoRegistro`) VALUES
(1, 'Abierto', '1'),
(2, 'En proceso', '1'),
(3, 'Suspendido', '1'),
(4, 'Cancelado', '1'),
(5, 'Finalizado', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `IdFacultad` int(11) NOT NULL COMMENT 'Codigo identificador de la facultad',
  `Nombre` varchar(100) NOT NULL COMMENT 'Nombre de la facultad',
  `Descripcion` varchar(100) DEFAULT NULL COMMENT 'Descripcion de la facultad',
  `NombreCorto` varchar(10) NOT NULL COMMENT 'Nombre corto o acronimo de la facultad',
  `IdUniversidad` int(11) DEFAULT NULL COMMENT 'Codigo identificador de la institucion',
  `EstadoRegistro` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`IdFacultad`, `Nombre`, `Descripcion`, `NombreCorto`, `IdUniversidad`, `EstadoRegistro`) VALUES
(4, 'Facultad de Ingeniería y Arquitectura', '', 'FIYA', 1, '1'),
(5, 'Medicina', 'Facuktad de medicina', 'FACMED', 1, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horas`
--

CREATE TABLE `horas` (
  `IdPersona` int(11) NOT NULL COMMENT 'Codigo Identificador de la persona o estudiante',
  `IdProyecto` int(11) NOT NULL COMMENT 'Codigo de identificacion del proyecto',
  `HorasRealizadas` int(11) NOT NULL DEFAULT '0' COMMENT 'Detalle de horas realizadas',
  `HorasRestantes` int(11) NOT NULL DEFAULT '0' COMMENT 'Detalle de horas faltantes',
  `ProyectoCompleto` char(1) DEFAULT '0' COMMENT '1-> Indica que el estudiante realizao too el proyecto, por lo tabnto obtiene todas las horas que este otorga',
  `ProyectosRealizados` varchar(150) DEFAULT NULL COMMENT 'Nombre de los proyectos realizados',
  `PersonaActiva` char(1) NOT NULL DEFAULT '0' COMMENT '1-> Indica que la asignacion de la paersona al grupo de trabajo es activo (utiliza un cupo), 0-> Inactiva',
  `IdUsuarioRegistro` int(11) DEFAULT NULL,
  `EstadoRegistro` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `horas`
--

INSERT INTO `horas` (`IdPersona`, `IdProyecto`, `HorasRealizadas`, `HorasRestantes`, `ProyectoCompleto`, `ProyectosRealizados`, `PersonaActiva`, `IdUsuarioRegistro`, `EstadoRegistro`) VALUES
(1, 15, 300, 200, '0', NULL, '1', 3, '0'),
(2, 15, 250, 250, '0', NULL, '1', 3, '1'),
(2, 16, 0, 0, '0', NULL, '1', NULL, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `IdInstitucion` int(11) NOT NULL COMMENT 'Codigo identificador de la institucion',
  `Nombre` varchar(50) NOT NULL COMMENT 'Nombre institucion',
  `Siglas` varchar(15) DEFAULT NULL COMMENT 'Siglas de la institucion',
  `SitioWeb` varchar(45) DEFAULT NULL COMMENT 'Sitio web de la institucion',
  `EstadoRegistro` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`IdInstitucion`, `Nombre`, `Siglas`, `SitioWeb`, `EstadoRegistro`) VALUES
(1, 'Ministerio de Educacion', 'MINED', 'mined.com', '1'),
(2, 'Ministerio de Salud', 'MINSAL', 'minsal.gob.sv', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `IdMenu` int(11) NOT NULL COMMENT 'Codigo de identificacion del menu',
  `Titulo` varchar(50) NOT NULL COMMENT 'Titulo del menu',
  `Descripcion` varchar(100) DEFAULT NULL COMMENT 'Descripcion del menu',
  `IdPadre` varchar(11) NOT NULL COMMENT 'Codigo identificador del padre',
  `Url` varchar(250) NOT NULL COMMENT 'Url del menu',
  `EstadoRegistro` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1470595889),
('m140506_102106_rbac_init', 1470814793),
('m140608_173539_create_user_table', 1470595909),
('m140611_133903_init_rbac', 1470595911),
('m140808_073114_create_auth_item_group_table', 1470595913),
('m140809_072112_insert_superadmin_to_user', 1470595914),
('m140809_073114_insert_common_permisison_to_auth_item', 1470595914),
('m141023_141535_create_user_visit_log', 1470595915),
('m141116_115804_add_bind_to_ip_and_registration_ip_to_user', 1470595916),
('m141121_194858_split_browser_and_os_column', 1470595917),
('m141201_220516_add_email_and_email_confirmed_to_user', 1470595919),
('m141207_001649_create_basic_user_permissions', 1470595920),
('m150703_191015_init', 1470815060);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametro`
--

CREATE TABLE `parametro` (
  `IdParametro` int(11) NOT NULL COMMENT 'Codigo identificador del parametro',
  `Valor` varchar(1000) DEFAULT NULL COMMENT 'Valor del parametro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `IdPerfil` int(11) NOT NULL COMMENT 'Codigo de identificacion del perfil',
  `Descripcion` varchar(45) DEFAULT NULL COMMENT 'Descripcion del perfil',
  `EstadoRegistro` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfildetalle`
--

CREATE TABLE `perfildetalle` (
  `IdPerfil` int(11) NOT NULL COMMENT 'Codigo de identificacion del perfil',
  `IdMenu` int(11) NOT NULL COMMENT 'Codigo identificador del menu',
  `Seleccionar` bit(1) DEFAULT NULL COMMENT 'Seleccion del perfil',
  `Insertar` bit(1) DEFAULT NULL COMMENT 'Opcion del perfil insertar',
  `Actualizar` bit(1) DEFAULT NULL COMMENT 'Opcion del perfil actualizar',
  `Eliminar` bit(1) DEFAULT NULL COMMENT 'Opcion del perfil eliminar',
  `Imprimir` bit(1) DEFAULT NULL COMMENT 'Opcion del perfil imprimir',
  `Activo` bit(1) DEFAULT NULL COMMENT 'Estado del perfil',
  `EstadoRegistro` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `IdPersona` int(11) NOT NULL COMMENT 'Codigo de identificacion de la persona o estudiante',
  `Nombres` varchar(100) NOT NULL COMMENT 'Nombre de la persona o estudiante',
  `Apellidos` varchar(100) NOT NULL COMMENT 'apellidos de la persona o estudiante',
  `CarnetEstudiante` varchar(100) DEFAULT NULL COMMENT 'Carnet del estudiante',
  `CarnetEmpleado` varchar(100) DEFAULT NULL COMMENT 'Carnet del empleado',
  `Email` varchar(50) DEFAULT NULL,
  `DUI` varchar(10) DEFAULT NULL COMMENT 'DUI de la persona o estudiante',
  `NIT` varchar(17) DEFAULT NULL COMMENT 'NIT de la persona o estudiante',
  `Direccion` varchar(10) DEFAULT NULL COMMENT 'Direccion de la persona u estudiante',
  `Telefono` varchar(8) DEFAULT NULL COMMENT 'Telefono de la persona u estudiante',
  `Sexo` char(1) NOT NULL COMMENT 'Sexo de la persona o estudiante',
  `Cargo` varchar(25) DEFAULT NULL COMMENT 'Codigo identificador del cargo',
  `UserId` int(11) DEFAULT NULL,
  `TipoPersona` char(2) DEFAULT NULL COMMENT 'ES-> Estudiante, EM->Empleado, Ex->Externo',
  `IdCarrera` int(11) DEFAULT NULL,
  `Elegible` char(1) NOT NULL DEFAULT '1' COMMENT '1->Indica que el estudiante es elegible para realizar horas sociales',
  `ArchivoAdjunto` varchar(150) DEFAULT NULL,
  `NombreAdjunto` varchar(150) DEFAULT NULL,
  `EstadoRegistro` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`IdPersona`, `Nombres`, `Apellidos`, `CarnetEstudiante`, `CarnetEmpleado`, `Email`, `DUI`, `NIT`, `Direccion`, `Telefono`, `Sexo`, `Cargo`, `UserId`, `TipoPersona`, `IdCarrera`, `Elegible`, `ArchivoAdjunto`, `NombreAdjunto`, `EstadoRegistro`) VALUES
(1, 'Juana', 'Lopez', 'LP201005', '', NULL, '09888888', '123123123', 'Mejicanos', '22766666', 'F', '', NULL, 'ES', 1, '1', 'Tf8-EoznKqFiYqMq-AfzFkM-0IcW4F8z.png', 'avatar2.png', '1'),
(2, 'Jose Alberto', 'Castaneda Alarcon', 'CA201010', '', NULL, '03743217-3', '', '', '', 'M', '', 2, 'ES', 1, '1', '8ig5uv53on-b1W1DXHhmkoeDCKXcLEPz.png', 'avatar04.png', '1'),
(3, 'ADmin', 'Admin', NULL, 'AS1010', NULL, NULL, NULL, NULL, NULL, 'M', NULL, 1, 'EM', NULL, '0', NULL, NULL, '1'),
(4, 'Julio Alberto', 'Flores Ayala', NULL, 'FA230000', NULL, '89789789', '98789789', 'direccion', '77889922', 'M', 'Asesor de proyectos ', 3, 'EM', NULL, '0', 'XWtxI26xEk9CJPRDJ1l-A-Yg8IvgHkfL.jpg', 'Cover-30-Cosas-que-toda-persona-con-deficit-de-atencion-520x272.jpg', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `IdProyecto` int(11) NOT NULL COMMENT 'Codigo de identificacion del proyecto',
  `NombreProyecto` varchar(150) NOT NULL COMMENT 'Nombre del Proyecto',
  `HorasSolicitadas` int(11) DEFAULT NULL COMMENT 'Horas a realizar',
  `HorasSocialesXhora` float DEFAULT NULL COMMENT 'Cantidad de horas que le suma al estudiante por cada hora que asistio al servicio social',
  `Ubicacion` varchar(150) NOT NULL COMMENT 'Ubicacion del proyecto',
  `FechaIni` date DEFAULT NULL COMMENT 'Fecha de inicio del proyecto',
  `FechaFin` date DEFAULT NULL COMMENT 'Fecha de finalizacion del proyecto',
  `IdInstitucion` int(11) NOT NULL,
  `IdEstadoProyecto` int(11) NOT NULL,
  `IdPersonaAsesor` int(11) DEFAULT NULL COMMENT 'ID de la tabla personas, del asesor del proyecto',
  `NumeroPersonas` int(11) DEFAULT NULL COMMENT 'Numero de personas requeridas simultaneamente para realizar el proyecto',
  `ArchivoAdjunto` varchar(150) DEFAULT NULL,
  `NombreAdjunto` varchar(150) DEFAULT NULL,
  `EstadoRegistro` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`IdProyecto`, `NombreProyecto`, `HorasSolicitadas`, `HorasSocialesXhora`, `Ubicacion`, `FechaIni`, `FechaFin`, `IdInstitucion`, `IdEstadoProyecto`, `IdPersonaAsesor`, `NumeroPersonas`, `ArchivoAdjunto`, `NombreAdjunto`, `EstadoRegistro`) VALUES
(15, 'proy1', 500, 3, 'ubi1', '2016-08-01', '2016-08-31', 1, 1, 4, 4, '4UCsFiNIvEdrNO9HVewdy4FIpVPqQYaV.jpg', 'descarga.jpg', '1'),
(16, 'Mantenimiento preventivo de Desktops', 500, 2, 'Centro de gobierno', '2016-08-19', '2016-10-27', 2, 1, 4, 10, '87jXQwAg3ZWqWORkz05Wq3ZgfIfsPs9y.jpg', 'descarga (1).jpg', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universidad`
--

CREATE TABLE `universidad` (
  `IdUniversidad` int(11) NOT NULL COMMENT 'Codigo Identificador de la universidad',
  `Nombre` varchar(100) NOT NULL COMMENT 'Nombre de la universidad',
  `NombreCorto` varchar(10) NOT NULL COMMENT 'Nombre corto de la universidad',
  `Mision` varchar(1000) DEFAULT NULL COMMENT 'Mision de la universidad',
  `Vision` varchar(1000) DEFAULT NULL COMMENT 'Vision de la universidad',
  `CorreoElectronico` varchar(45) DEFAULT NULL COMMENT 'Correo electronico de la universidad',
  `Telefono` varchar(10) DEFAULT NULL COMMENT 'Telefono de la universidad',
  `Direccion` varchar(500) DEFAULT NULL COMMENT 'Direccion de la universidad',
  `Url` varchar(250) DEFAULT NULL COMMENT 'URL de la universidad',
  `Logo` varchar(250) DEFAULT NULL COMMENT 'Logo de la universidad',
  `EstadoRegistro` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `universidad`
--

INSERT INTO `universidad` (`IdUniversidad`, `Nombre`, `NombreCorto`, `Mision`, `Vision`, `CorreoElectronico`, `Telefono`, `Direccion`, `Url`, `Logo`, `EstadoRegistro`) VALUES
(1, 'Universidad Evangelica de El Salvador', 'UEES', 'mision', 'vision', 'uees@uees.com', '22009988', 'direccion', 'uees.com', 'logo', '1'),
(2, 'uiy', 'ui', 'iuy', 'iuy', 'iuy', 'iuy', 'iuy', 'iuy', NULL, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `auth_key` varchar(255) NOT NULL DEFAULT '123123',
  `administrator` int(11) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `creator_ip` varchar(40) DEFAULT NULL,
  `confirm_token` varchar(255) DEFAULT NULL,
  `recovery_token` varchar(255) DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `login`, `username`, `password_hash`, `auth_key`, `administrator`, `creator`, `creator_ip`, `confirm_token`, `recovery_token`, `blocked_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES
(1, 'jcastanedaalarcon@gmail.com', 'jcastaneda', '$2y$13$cyTaKC4kw99trKRHt1/JoegESCLcCLY1Uwlya5q0VLSQhKM4YST2W', '123123', 1, -2, 'Local', NULL, NULL, NULL, 1470815537, 1470815537, 1470816036),
(2, 'mail@mail.com', 'CA201010', '$2y$13$V8EvMsI/OUrPVRMSitK6Du9Yu4HCDqH14nLmrbVeY979VL0/jl3z.', '123123', 0, 1, '127.0.0.1', NULL, NULL, NULL, 1470881021, 1470881021, -1),
(3, 'jose_canibal@hotmail.com', 'jflores', '$2y$13$Bg97l7hOGoz2/3ueQrtJJOpsh1umUQqZIvgg5LQa8Q0GWtbQ2UsQC', '123123', 0, 1, '127.0.0.1', NULL, NULL, NULL, 1471568308, 1471568308, 1471642727);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IdUsuario` int(11) NOT NULL COMMENT 'Codigo de identificacion del usuario',
  `InicioSesion` varchar(50) NOT NULL COMMENT 'Inicio de sesion a la aplicacion',
  `Nombres` varchar(100) DEFAULT NULL COMMENT 'Nombre del usuario',
  `Apellidos` varchar(100) DEFAULT NULL COMMENT 'Apellidos del usuario',
  `Activos` char(1) DEFAULT '1' COMMENT 'Identificador del estado activo',
  `Clave` varchar(100) NOT NULL COMMENT 'clave o password de ingreso',
  `IdPerfil` int(11) NOT NULL,
  `EstadoRegistro` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`IdAsistencia`),
  ADD KEY `fk_asistencia_proyecto` (`IdProyecto`),
  ADD KEY `fk_asistencia_persona_estudiante` (`IdPersona`),
  ADD KEY `fk_asistencia_usuario_registro` (`IdUsuarioRegistro`);

--
-- Indices de la tabla `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indices de la tabla `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indices de la tabla `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indices de la tabla `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`IdCarrera`),
  ADD KEY `IdFacultad_idx` (`IdFacultad`);

--
-- Indices de la tabla `comunicacion`
--
ALTER TABLE `comunicacion`
  ADD PRIMARY KEY (`IdComunicacion`),
  ADD KEY `fk_comunicacion_proyecto1_idx` (`IdProyecto`),
  ADD KEY `fk_comunicacion_usuario` (`IdUsuarioRegistro`),
  ADD KEY `fk_comunicacion_idpersonaremitente` (`IdPersonaRemitente`),
  ADD KEY `fk_comunicacion_idpersonareceptor` (`IdPersonaReceptor`);

--
-- Indices de la tabla `estadosProyecto`
--
ALTER TABLE `estadosProyecto`
  ADD PRIMARY KEY (`IdEstadoProyecto`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`IdFacultad`),
  ADD KEY `IdInstitucion_idx` (`IdUniversidad`);

--
-- Indices de la tabla `horas`
--
ALTER TABLE `horas`
  ADD PRIMARY KEY (`IdPersona`,`IdProyecto`),
  ADD KEY `fk_horas_proyecto1_idx` (`IdProyecto`),
  ADD KEY `fk_horas_usuario_registro` (`IdUsuarioRegistro`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`IdInstitucion`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`IdMenu`,`IdPadre`);

--
-- Indices de la tabla `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `parametro`
--
ALTER TABLE `parametro`
  ADD PRIMARY KEY (`IdParametro`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`IdPerfil`);

--
-- Indices de la tabla `perfildetalle`
--
ALTER TABLE `perfildetalle`
  ADD PRIMARY KEY (`IdPerfil`,`IdMenu`),
  ADD KEY `IdMenu_idx` (`IdMenu`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`IdPersona`),
  ADD KEY `fk_persona_usuario` (`UserId`),
  ADD KEY `fk_persona_carrera` (`IdCarrera`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`IdProyecto`),
  ADD KEY `fk_proyecto_institucion1_idx` (`IdInstitucion`),
  ADD KEY `fk_proyecto_estadosProyecto1_idx` (`IdEstadoProyecto`),
  ADD KEY `fk_proyecto_personaasesor` (`IdPersonaAsesor`);

--
-- Indices de la tabla `universidad`
--
ALTER TABLE `universidad`
  ADD PRIMARY KEY (`IdUniversidad`);

--
-- Indices de la tabla `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_login` (`login`),
  ADD UNIQUE KEY `user_unique_username` (`username`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdUsuario`),
  ADD KEY `fk_usuario_perfil1_idx` (`IdPerfil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `IdAsistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `IdCarrera` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo identificador de la carrera', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `comunicacion`
--
ALTER TABLE `comunicacion`
  MODIFY `IdComunicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `estadosProyecto`
--
ALTER TABLE `estadosProyecto`
  MODIFY `IdEstadoProyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `IdFacultad` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo identificador de la facultad', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `IdInstitucion` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo identificador de la institucion', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `IdMenu` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo de identificacion del menu';
--
-- AUTO_INCREMENT de la tabla `parametro`
--
ALTER TABLE `parametro`
  MODIFY `IdParametro` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo identificador del parametro';
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `IdPerfil` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo de identificacion del perfil';
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `IdPersona` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo de identificacion de la persona o estudiante', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `IdProyecto` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo de identificacion del proyecto', AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `universidad`
--
ALTER TABLE `universidad`
  MODIFY `IdUniversidad` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo Identificador de la universidad', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo de identificacion del usuario';
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`IdProyecto`) REFERENCES `proyecto` (`IdProyecto`),
  ADD CONSTRAINT `asistencia_ibfk_2` FOREIGN KEY (`IdPersona`) REFERENCES `persona` (`IdPersona`),
  ADD CONSTRAINT `asistencia_ibfk_3` FOREIGN KEY (`IdUsuarioRegistro`) REFERENCES `user_accounts` (`id`);

--
-- Filtros para la tabla `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD CONSTRAINT `IdFacultad` FOREIGN KEY (`IdFacultad`) REFERENCES `facultad` (`IdFacultad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `comunicacion`
--
ALTER TABLE `comunicacion`
  ADD CONSTRAINT `comunicacion_ibfk_1` FOREIGN KEY (`IdUsuarioRegistro`) REFERENCES `user_accounts` (`id`),
  ADD CONSTRAINT `comunicacion_ibfk_2` FOREIGN KEY (`IdPersonaRemitente`) REFERENCES `persona` (`IdPersona`),
  ADD CONSTRAINT `comunicacion_ibfk_3` FOREIGN KEY (`IdPersonaReceptor`) REFERENCES `persona` (`IdPersona`),
  ADD CONSTRAINT `fk_comunicacion_proyecto1` FOREIGN KEY (`IdProyecto`) REFERENCES `proyecto` (`IdProyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD CONSTRAINT `IdInstitucion` FOREIGN KEY (`IdUniversidad`) REFERENCES `universidad` (`IdUniversidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `horas`
--
ALTER TABLE `horas`
  ADD CONSTRAINT `IdPersona` FOREIGN KEY (`IdPersona`) REFERENCES `persona` (`IdPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_horas_proyecto1` FOREIGN KEY (`IdProyecto`) REFERENCES `proyecto` (`IdProyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `horas_ibfk_1` FOREIGN KEY (`IdUsuarioRegistro`) REFERENCES `user_accounts` (`id`);

--
-- Filtros para la tabla `perfildetalle`
--
ALTER TABLE `perfildetalle`
  ADD CONSTRAINT `IdMenu` FOREIGN KEY (`IdMenu`) REFERENCES `menu` (`IdMenu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perfildetalle_perfil1` FOREIGN KEY (`IdPerfil`) REFERENCES `perfil` (`IdPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `user_accounts` (`id`),
  ADD CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`IdCarrera`) REFERENCES `carrera` (`IdCarrera`);

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `fk_proyecto_estadosProyecto1` FOREIGN KEY (`IdEstadoProyecto`) REFERENCES `estadosProyecto` (`IdEstadoProyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyecto_institucion1` FOREIGN KEY (`IdInstitucion`) REFERENCES `institucion` (`IdInstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`IdPersonaAsesor`) REFERENCES `persona` (`IdPersona`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_perfil1` FOREIGN KEY (`IdPerfil`) REFERENCES `perfil` (`IdPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
