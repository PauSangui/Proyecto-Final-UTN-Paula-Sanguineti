-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-06-2022 a las 02:00:16
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cuerpo-a-tierra`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` varchar(250) DEFAULT NULL,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `img_id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(2, 'fd21yje4fwgvbeafppnl', 'NUEVA FORMULA PARA EL SHAMPOO SOLIDO?! Clickea aca que te contamos todo!!', 'Los legisladores Ricardo López Murphy y Gerardo Milman realizaron una presentación en la Justicia contra los dos funcionarios del Gobierno por sus dichos con respecto a la aeronave con tripulantes iraníes y venezolanos', 'Los diputados de Juntos por el Cambio Ricardo López Murphy y Gerardo Milman denunciaron al ministro de Seguridad, Aníbal Fernández, y al interventor de la Agencia Federal de Inteligencia (AFI), Agustín Rossi, por encubrimiento del caso del avión venezolano que se encuentra varado en el Aeropuerto de Ezeiza.\r\n\r\nAmbos legisladores consideraron que “ante estos sucesos de extrema gravedad que ponen en jaque la paz y la seguridad de la región y de nuestro país”, los dos funcionarios nacionales “han intentado desde un primer momento no sólo ocultar las verdadera dimensión de esta misión en nuestro país, sino que han ensayado excusas con relación a la tripulación del avión con clara intención de encubrir este desembarco”.\r\n\r\n\r\nAmbos consideraron que se trata de “un avión al servicio de organizaciones terroristas y la identidad de un miembro vinculado directamente con las Fuerzas Quds”, en referencia al piloto del avión, Gholamreza Ghasemi, que, según informe del FBI, pertenece a la Guardia Revolucionaria Islámica de Irán.'),
(3, NULL, 'Aca te contamos todo sobre los distintos usos del ACEITE DE JOJOBA. Lo amamos!', 'Se trata de la dueña de la aeronave de origen iraní varada en Ezeiza, que no reclamó hasta ahora por la tripulación retenida. No tiene teléfono en Internet, página web, ni cuenta en redes sociales', 'El Boeing 747 de la Empresa de Transporte de Aerocargo del Sur (Emtrasur) atraviesa océanos y continentes como si fuera un fantasma. Esta aerolínea fue creada por Nicolás Maduro el 19 noviembre de 2020, en plena pandemia, como una filial de carga de la aerolínea oficial Consorcio Venezolano de Industrias Aeronáuticas y Servicios Aéreos (Conviasa), a la sombra de su alianza con Irán.\r\n\r\nSu hasta ahora única aeronave, el Boeing 747-300 matrícula YV353 que está varado en Buenos Aires investigado por la Justicia argentina, fue comprado en febrero pasado a la iraní Mahan Air. Se trata de una compañía sancionada por Estados Unidos por sus servicios prestados a agrupaciones consideradas terroristas por las autoridades norteamericanas. Esa sanción alcanzó a todas sus aeronaves, incluido al Boeing retenido que la empresa persa había operado desde 2007. Pese a ese traspaso de manos, la aeronave siguió volado con tripulación persa, además de venezolana. Es por eso que una de las hipótesis es que EMTRASUR funcionaría como una pantalla chavista para que el gobierno iraní eluda las sanciones de la Oficina del Tesoro de los Estados Unidos para el Control de los Activos Extranjeros (OFAC, por sus siglas en inglés).'),
(8, 'p2hlsecsfmenpync5ixz', 'CUERPO A TIERRA1', 'SUBTITULO', 'CUERPO1'),
(13, 'dqnyqfr9zt3iknzxdmtr', 'titulo', 'jksfnjdvnsdv', 'skdjfkdjfslkjf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Paula', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Joaquin', '674f3c2c1a8a6f90461e8a66fb5550ba'),
(5, 'Maria', '4509ca848686cbe2fe2e4e111dbb02ff');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
