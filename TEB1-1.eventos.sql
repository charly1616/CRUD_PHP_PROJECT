-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2025 at 10:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventos`
--

-- --------------------------------------------------------

--
-- Table structure for table `actividades`
--

CREATE TABLE `actividades` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `duracion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `autores`
--

CREATE TABLE `autores` (
  `id` int(11) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(70) NOT NULL,
  `salario` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `autores`
--

INSERT INTO `autores` (`id`, `nombres`, `apellidos`, `direccion`, `telefono`, `correo`, `salario`) VALUES
(1, 'Colby', 'Sargent', 'Ap #839-5815 Nisi Street', '+573682968968', 'enim@hotmail.net', 1615992),
(2, 'Driscoll', 'Ryan', 'Ap #246-4690 Auctor St.', '+573842354776', 'congue.elit.sed@hotmail.co', 1940864),
(3, 'Vielka', 'Bowman', 'Ap #441-2815 Volutpat. Rd.', '+573787756746', 'nunc@outlook.net', 2049357),
(4, 'Penelope', 'Hart', 'Ap #672-5642 Euismod Ave', '+573783354816', 'quis@outlook.co', 4459888),
(5, 'Felix', 'Benson', '645-944 Eu, Ave', '+573766366725', 'non.arcu.vivamus@outlook.net', 7950004),
(6, 'Velma', 'Matthews', '6761 Pellentesque Av.', '+573967244316', 'ac@hotmail.net', 4731908),
(7, 'Brynne', 'Schwartz', 'P.O. Box 765, 1187 Pede. Road', '+573879587984', 'pellentesque.tellus.sem@hotmail.com', 4928839),
(8, 'Abigail', 'Ashley', 'Ap #221-5729 Magna. Rd.', '+573424746555', 'sed.pede.cum@hotmail.net', 6833690),
(9, 'Amir', 'Stout', 'Ap #110-1708 Donec Street', '+573421765562', 'massa.non.ante@outlook.net', 3897157),
(10, 'Joshua', 'Mccarthy', 'Ap #933-2116 Pharetra Street', '+573742637939', 'diam.nunc.ullamcorper@yahoo.com', 6419834),
(11, 'Larissa', 'Bauer', 'P.O. Box 744, 2027 Proin Road', '+573373677317', 'morbi.sit.amet@yahoo.net', 7598348),
(12, 'Zenaida', 'Terrell', 'P.O. Box 403, 799 Sagittis Ave', '+573215823463', 'ligula.eu@google.co', 4001905),
(13, 'Stewart', 'Johnston', 'P.O. Box 977, 7207 Senectus St.', '+573413329535', 'morbi.tristique@outlook.com', 7380906),
(14, 'Sophia', 'Freeman', '458-5295 Ante Rd.', '+573585414126', 'dolor@outlook.net', 1781473),
(15, 'Jared', 'Tyson', '1229 Non, St.', '+573622477843', 'ipsum.sodales@hotmail.net', 2030672),
(16, 'Isabella', 'Ward', 'P.O. Box 249, 7101 Diam St.', '+573951355887', 'integer@google.net', 4643491);

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Congreso'),
(2, 'Deportivo'),
(3, 'Concierto'),
(4, 'Social');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `nombres`, `apellidos`, `direccion`, `telefono`, `correo`) VALUES
(1, 'Brenden', 'Walsh', 'Ap #603-5515 In Rd.', '+573773578834', 'fermentum@hotmail.co'),
(2, 'Elaine', 'Shelton', '558-3685 Ut, Ave', '+573868674726', 'ut.eros@hotmail.net'),
(3, 'India', 'Bond', '342-8623 Eleifend Avenue', '+573667287777', 'adipiscing@hotmail.net'),
(4, 'Erica', 'David', 'Ap #914-7346 Velit. Ave', '+573677996742', 'eros.turpis@google.co'),
(5, 'Callie', 'Ingram', '208-9271 Velit St.', '+573787634756', 'euismod@hotmail.co'),
(6, 'Audrey', 'Bray', 'Ap #305-3832 Nonummy. St.', '+573212339334', 'integer@google.co'),
(7, 'Magee', 'Cooper', 'Ap #939-8048 Curabitur Avenue', '+573377643553', 'eu.ligula.aenean@yahoo.co'),
(8, 'Ramona', 'Deleon', 'P.O. Box 765, 5954 Egestas Av.', '+573985717378', 'aliquet@hotmail.co'),
(9, 'Duncan', 'Reeves', 'Ap #977-5612 Vestibulum Ave', '+573767284898', 'proin.eget@outlook.com'),
(10, 'Dillon', 'Hunt', 'P.O. Box 326, 5995 Ipsum Road', '+573287726165', 'aliquam.ornare.libero@hotmail.com'),
(11, 'Kenyon', 'Snyder', '159-8740 Curabitur Ave', '+573486816547', 'turpis.aliquam@google.com'),
(12, 'Lacota', 'Melendez', 'Ap #715-397 Ornare Ave', '+573348447573', 'ullamcorper@google.co'),
(13, 'Avye', 'Pitts', 'Ap #354-4390 Non St.', '+573249177643', 'viverra@outlook.net'),
(14, 'Stephen', 'Vang', '178-1362 Elementum, St.', '+573247658363', 'imperdiet.non@yahoo.net'),
(15, 'Vanna', 'Fields', 'Ap #590-5335 Est Rd.', '+573482277627', 'a@outlook.net'),
(16, 'Kiara', 'Norris', 'P.O. Box 366, 9938 Donec Ave', '+573275541281', 'et.netus@yahoo.co'),
(17, 'Piper', 'Sanders', 'Ap #756-8673 Lacus Rd.', '+573175245442', 'nunc.ullamcorper@yahoo.co'),
(18, 'Sopoline', 'Leblanc', '198-2244 Libero Ave', '+573822574467', 'ipsum.non@hotmail.net'),
(19, 'Neil', 'Vaughn', 'P.O. Box 976, 1703 Ac, Road', '+573245546476', 'consequat.dolor@google.net'),
(20, 'Phillip', 'Arnold', '225-6468 Faucibus Rd.', '+573738183765', 'tellus.eu.augue@google.co'),
(21, 'Ashely', 'Willis', 'Ap #966-2974 Magna. Street', '+573644355369', 'at.velit.pellentesque@outlook.net'),
(22, 'Neville', 'Wilkinson', '308-6696 Mauris Ave', '+573854815385', 'nullam.vitae@outlook.com'),
(23, 'Bevis', 'Gomez', 'Ap #119-5442 Sagittis. Av.', '+573493617335', 'odio.sagittis.semper@outlook.co'),
(24, 'Ezra', 'Wynn', 'Ap #274-4277 Felis, St.', '+573473547624', 'erat.etiam@hotmail.com'),
(25, 'Orli', 'Guzman', 'Ap #110-6484 Massa. Rd.', '+573872284737', 'fames@google.co'),
(26, 'Roth', 'Kent', 'P.O. Box 994, 2990 Vel, Rd.', '+573828875466', 'sit@yahoo.net'),
(27, 'Bradley', 'Joyce', '2978 Semper, Road', '+573283673866', 'sit.amet.risus@outlook.com'),
(28, 'Colorado', 'Poole', '224-4657 Aliquet Road', '+573867488436', 'tincidunt@google.com'),
(29, 'Emery', 'Pace', '878-4504 Curae St.', '+573562449267', 'mauris@hotmail.com'),
(30, 'Tamara', 'Page', '120-2511 Vivamus Ave', '+573271765777', 'vestibulum.ut.eros@google.net'),
(31, 'Orlando', 'Brewer', 'P.O. Box 322, 946 Amet Rd.', '+573651773633', 'vitae.erat@hotmail.com'),
(32, 'Sacha', 'Bishop', 'Ap #480-4795 Metus. Av.', '+573656487225', 'vel.convallis.in@outlook.net'),
(33, 'Veronica', 'Berry', 'Ap #274-9063 Vestibulum. Street', '+573321357857', 'sed@google.com'),
(34, 'Iola', 'Shields', 'Ap #444-6169 Diam. Rd.', '+573583697675', 'vestibulum.ante.ipsum@google.co'),
(35, 'Todd', 'Sellers', '144-8778 Mollis. Street', '+573267577542', 'nunc.sed@outlook.co'),
(36, 'Teegan', 'Lara', 'Ap #105-4778 Est. St.', '+573382578657', 'at.libero.morbi@outlook.net'),
(37, 'Raja', 'Barron', '9999 Proin Rd.', '+573256286622', 'fusce.diam.nunc@yahoo.co'),
(38, 'Clementine', 'Vinson', 'Ap #863-4168 Non Rd.', '+573471562886', 'consequat@yahoo.co'),
(39, 'Kirestin', 'Finley', 'Ap #106-6566 Inceptos Av.', '+573218839834', 'facilisis.facilisis.magna@outlook.com'),
(40, 'Phyllis', 'Mckinney', '869-5017 Ante. Rd.', '+573162296545', 'amet.faucibus@outlook.co'),
(41, 'Sade', 'Bryan', '791-1283 Hendrerit Av.', '+573947675427', 'penatibus.et.magnis@hotmail.co'),
(42, 'Joelle', 'Walters', '712-2828 A, Av.', '+573656285643', 'orci.ut@google.com'),
(43, 'Slade', 'Craft', '6063 Penatibus Av.', '+573358317669', 'ipsum@outlook.co'),
(44, 'Ivor', 'Harding', '489-5898 Varius St.', '+573279165482', 'enim@outlook.com'),
(45, 'Hu', 'Nieves', '398-2532 Etiam Rd.', '+573619827477', 'lacus.nulla.tincidunt@hotmail.net'),
(46, 'Zane', 'Hess', 'Ap #849-7177 Velit. Av.', '+573753864887', 'neque.pellentesque.massa@hotmail.com'),
(47, 'Tate', 'Meyer', 'Ap #193-514 Magna St.', '+573323697698', 'quisque.nonummy@yahoo.co'),
(48, 'Victor', 'House', 'P.O. Box 741, 4189 Venenatis Street', '+573757191859', 'nascetur@hotmail.co'),
(49, 'Kerry', 'Berry', '938 Dictum St.', '+573338967861', 'interdum.feugiat@yahoo.net'),
(50, 'Trevor', 'Carver', 'Ap #843-6589 Amet, Street', '+573823977523', 'quis.pede.praesent@outlook.net'),
(51, 'Emerson', 'Castaneda', '100-9648 Dis Road', '+573412377734', 'amet.luctus@google.com'),
(52, 'Melissa', 'Casey', 'P.O. Box 261, 2038 Id, St.', '+573344633348', 'netus.et@hotmail.co'),
(53, 'Claudia', 'Mendoza', '689-841 Risus. Ave', '+573394986644', 'lectus.sit@outlook.com'),
(54, 'Lyle', 'Weaver', '371-798 Etiam Rd.', '+573484437458', 'amet.consectetuer@yahoo.co'),
(55, 'Cailin', 'Berry', '1491 Nullam Avenue', '+573855782256', 'erat@yahoo.com'),
(56, 'Roanna', 'Petersen', 'P.O. Box 807, 6749 Purus. Rd.', '+573287473724', 'montes@outlook.com'),
(57, 'Halee', 'Francis', '9725 Aenean Road', '+573739123636', 'dolor.sit@hotmail.co'),
(58, 'Jolie', 'Clemons', '1781 Natoque Rd.', '+573253196326', 'nonummy@yahoo.co'),
(59, 'Felix', 'Sanders', '553-846 Id, Rd.', '+573156672422', 'tellus.phasellus@hotmail.net'),
(60, 'Rae', 'Oliver', 'Ap #802-8832 Nullam Rd.', '+573615642754', 'cubilia@google.co'),
(61, 'Todd', 'Lang', 'Ap #310-8450 Nec, Road', '+573765557875', 'nunc@google.com'),
(62, 'Yoshi', 'Golden', '3699 Felis Rd.', '+573277236837', 'feugiat.lorem@outlook.net'),
(63, 'Stone', 'Anthony', 'Ap #783-3291 Natoque Av.', '+573274217636', 'proin.nisl@outlook.net'),
(64, 'Amir', 'Gould', '6342 Mus. Rd.', '+573648253943', 'eu.tellus@yahoo.co'),
(65, 'Joy', 'James', 'Ap #296-6435 Arcu. Avenue', '+573559476237', 'vel.nisl@outlook.co'),
(66, 'Echo', 'Levy', '8107 At Rd.', '+573872323174', 'quisque.ac@hotmail.com'),
(67, 'Ali', 'Stanton', '724-3922 Porttitor Street', '+573985664557', 'egestas.sed@outlook.net'),
(68, 'Karen', 'Lowery', '415-7090 Ipsum. Rd.', '+573321666382', 'sit.amet@outlook.com'),
(69, 'Danielle', 'Rodriguez', 'P.O. Box 939, 5463 Consequat St.', '+573733773878', 'sed.facilisis@hotmail.co'),
(70, 'Melinda', 'Monroe', '948-596 Mi St.', '+573134286625', 'egestas.rhoncus.proin@yahoo.net'),
(71, 'Ross', 'Harrison', '321-2065 Aliquam Avenue', '+573793592425', 'ipsum.curabitur@outlook.net'),
(72, 'Alexander', 'Martin', 'P.O. Box 643, 6266 Diam Road', '+573298358552', 'pharetra.felis@google.net'),
(73, 'Joseph', 'Duncan', 'P.O. Box 695, 8229 Dolor. Rd.', '+573932654294', 'maecenas@google.net'),
(74, 'Wynne', 'Gross', 'Ap #484-2831 Elit, Rd.', '+573371617616', 'duis@outlook.co'),
(75, 'Mason', 'Hardin', '573-9429 Eu, Rd.', '+573542643535', 'sit.amet.massa@outlook.net'),
(76, 'Amaya', 'Puckett', 'Ap #148-4666 Libero Rd.', '+573334599273', 'sodales@hotmail.co'),
(77, 'Bernard', 'Chen', '918-9021 Gravida Ave', '+573473558192', 'amet@yahoo.co'),
(78, 'Carl', 'Hammond', 'Ap #371-5877 Bibendum St.', '+573897832233', 'eu.odio.tristique@google.com'),
(79, 'Raphael', 'Mejia', 'Ap #154-8918 Cum Ave', '+573737831624', 'cum.sociis.natoque@outlook.net'),
(80, 'Ifeoma', 'Owen', 'P.O. Box 205, 7691 Eu, Road', '+573446513793', 'risus.varius@yahoo.net'),
(81, 'Aurora', 'Cline', 'Ap #272-7884 Ante Rd.', '+573642336264', 'duis.at@yahoo.net'),
(82, 'Adara', 'Love', '6389 Ridiculus Av.', '+573868262849', 'nunc.quisque@yahoo.co'),
(83, 'Garrison', 'Brady', '469-2993 Metus St.', '+573376742664', 'varius.orci@hotmail.com'),
(84, 'Elvis', 'Lara', '507-6410 Aenean Rd.', '+573658328781', 'justo@hotmail.net'),
(85, 'Timon', 'Travis', '364-2851 Eget, Road', '+573834586274', 'morbi.metus@outlook.net'),
(86, 'Keaton', 'Garza', '6216 Sit Rd.', '+573536391856', 'cras@outlook.net'),
(87, 'Mohammad', 'Durham', '836-5618 Netus St.', '+573634294223', 'tincidunt@yahoo.com'),
(88, 'Darryl', 'Chan', 'Ap #444-7991 Donec Road', '+573479297896', 'vel@yahoo.net'),
(89, 'Dane', 'Noel', '256-7823 Phasellus Rd.', '+573533992199', 'fringilla@google.net'),
(90, 'Scarlett', 'Lancaster', '8939 Gravida. Av.', '+573366249898', 'a.neque@yahoo.co'),
(91, 'Leilani', 'Flynn', '595-4416 Donec St.', '+573551785218', 'ipsum.cursus.vestibulum@outlook.net'),
(92, 'Andrew', 'Hess', 'Ap #894-9996 Arcu. Road', '+573242372718', 'phasellus.libero.mauris@outlook.net'),
(93, 'Justin', 'Golden', 'Ap #992-3027 Mus. Road', '+573784526247', 'erat.vel@yahoo.com'),
(94, 'Rana', 'Case', '133-9423 Fermentum Avenue', '+573341537298', 'mauris.blandit.mattis@google.com'),
(95, 'Abbot', 'Bernard', 'P.O. Box 560, 2026 Orci, St.', '+573487291598', 'phasellus.dolor.elit@outlook.co'),
(96, 'Willow', 'Wise', '176-6473 Tempus Road', '+573377323292', 'aliquam.tincidunt@google.net'),
(97, 'Russell', 'Shelton', 'Ap #993-4938 Netus Av.', '+573952257238', 'parturient@outlook.net'),
(98, 'Jaquelyn', 'Baxter', 'Ap #680-6444 Justo. Rd.', '+573497211394', 'ut.nisi.a@hotmail.net'),
(99, 'Sebastian', 'Clarke', 'Ap #171-6578 Eu St.', '+573375735652', 'aliquam.auctor.velit@google.net'),
(100, 'Cora', 'Mason', 'Ap #227-5263 Nec Road', '+573356854797', 'augue.sed.molestie@yahoo.net'),
(101, 'Desirae', 'Wise', '944-5085 Dapibus Road', '+573722344258', 'duis.sit.amet@google.co'),
(102, 'Constance', 'Munoz', '146-8798 Eu Street', '+573214617434', 'tellus@yahoo.co'),
(103, 'Omar', 'Mccray', 'Ap #551-690 Quis, Ave', '+573678214488', 'lectus.cum.sociis@outlook.com'),
(104, 'Tucker', 'O\'connor', '356-3609 Porttitor Avenue', '+573582536418', 'congue.a@hotmail.com'),
(105, 'Colorado', 'Bradford', '2458 Non, Ave', '+573633569837', 'enim.mi@outlook.co'),
(106, 'Maggy', 'Duke', '9636 Iaculis Ave', '+573882665723', 'auctor.quis@outlook.co'),
(107, 'Dieter', 'Mueller', '5925 Morbi St.', '+573253893478', 'a.magna.lorem@outlook.com'),
(108, 'Hedy', 'Frazier', '705-468 Nulla. St.', '+573565778757', 'nunc@hotmail.net'),
(109, 'Anika', 'Hewitt', 'Ap #522-5808 Consectetuer Av.', '+573376553961', 'diam.lorem@yahoo.com'),
(110, 'Gavin', 'Fox', '974-9949 Ipsum Avenue', '+573727218227', 'dui.nec.tempus@google.net'),
(111, 'Fiona', 'Conner', '434-8150 In St.', '+573447827964', 'a.auctor@hotmail.co'),
(112, 'Imogene', 'Carpenter', 'Ap #571-1447 Mollis. Av.', '+573472364534', 'eu@google.net'),
(113, 'Kay', 'Santana', '2132 Sem Rd.', '+573547357433', 'morbi.tristique@hotmail.co'),
(114, 'Nerea', 'Conley', '185-6867 Nunc Av.', '+573352935723', 'amet.ante@yahoo.com'),
(115, 'Gabriel', 'Mcclure', '175-4083 Amet Rd.', '+573534864473', 'volutpat.nulla.dignissim@yahoo.com'),
(116, 'Elliott', 'Mcguire', '248-2576 Proin St.', '+573334253584', 'a.tortor.nunc@outlook.com'),
(117, 'Sebastian', 'Clayton', '730-1458 Suscipit, Ave', '+573471269836', 'ligula@outlook.net'),
(118, 'Ivana', 'Crawford', '417-8906 Risus Rd.', '+573562325966', 'sem.semper@google.com'),
(119, 'Solomon', 'Jenkins', '7463 Non Rd.', '+573489826577', 'dictum.phasellus@yahoo.com'),
(120, 'Emmanuel', 'Russo', 'Ap #608-4044 Amet Rd.', '+573694821831', 'ac.mattis.velit@hotmail.co'),
(121, 'Graiden', 'Allison', '992-2137 Neque. St.', '+573844963771', 'nunc.risus@hotmail.com'),
(122, 'Sade', 'Nash', '8255 Enim. Rd.', '+573585254858', 'id.nunc@google.co'),
(123, 'Thane', 'Clements', 'Ap #937-6354 Cursus. Av.', '+573857872476', 'aenean.massa@yahoo.co'),
(124, 'Belle', 'Butler', '3016 Placerat. Avenue', '+573382315268', 'primis.in@outlook.net'),
(125, 'Kenneth', 'Cox', 'Ap #635-4349 Nisi. St.', '+573388469682', 'vitae.sodales.at@google.co'),
(126, 'Maggy', 'Acosta', 'Ap #721-3733 Amet, Ave', '+573767235268', 'sem.semper@hotmail.co'),
(127, 'Jordan', 'James', 'Ap #275-8252 Cras Rd.', '+573677875974', 'placerat.eget@google.com'),
(128, 'Ali', 'Hill', 'Ap #837-5101 Dictum St.', '+573934897264', 'tellus.id@google.net');

-- --------------------------------------------------------

--
-- Table structure for table `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fechainicio` date NOT NULL,
  `fechafin` date NOT NULL,
  `lugar` varchar(50) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `valor` double NOT NULL,
  `categorias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `metodospagos`
--

CREATE TABLE `metodospagos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `metodospagos`
--

INSERT INTO `metodospagos` (`id`, `nombre`) VALUES
(1, 'Efectivo'),
(2, 'Tarjeta Debito'),
(3, 'Tarjeta credito'),
(4, 'Transferencia');

-- --------------------------------------------------------

--
-- Table structure for table `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `valor` double NOT NULL,
  `observacion` varchar(100) NOT NULL,
  `pagoscol` varchar(45) NOT NULL,
  `clientes_id` int(11) NOT NULL,
  `metodosPagos_id` int(11) NOT NULL,
  `eventos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programaciones`
--

CREATE TABLE `programaciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `duracion` int(11) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `valor` double NOT NULL,
  `autores_id` int(11) NOT NULL,
  `eventos_id` int(11) NOT NULL,
  `actividades_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_eventos_categorias1_idx` (`categorias_id`);

--
-- Indexes for table `metodospagos`
--
ALTER TABLE `metodospagos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pagos_clientes_idx` (`clientes_id`),
  ADD KEY `fk_pagos_metodosPagos1_idx` (`metodosPagos_id`),
  ADD KEY `fk_pagos_eventos1_idx` (`eventos_id`);

--
-- Indexes for table `programaciones`
--
ALTER TABLE `programaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_programaciones_autores1_idx` (`autores_id`),
  ADD KEY `fk_programaciones_eventos1_idx` (`eventos_id`),
  ADD KEY `fk_programaciones_actividades1_idx` (`actividades_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autores`
--
ALTER TABLE `autores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metodospagos`
--
ALTER TABLE `metodospagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programaciones`
--
ALTER TABLE `programaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `fk_eventos_categorias1` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `fk_pagos_clientes` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pagos_eventos1` FOREIGN KEY (`eventos_id`) REFERENCES `eventos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pagos_metodosPagos1` FOREIGN KEY (`metodosPagos_id`) REFERENCES `metodospagos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `programaciones`
--
ALTER TABLE `programaciones`
  ADD CONSTRAINT `fk_programaciones_actividades1` FOREIGN KEY (`actividades_id`) REFERENCES `actividades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_programaciones_autores1` FOREIGN KEY (`autores_id`) REFERENCES `autores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_programaciones_eventos1` FOREIGN KEY (`eventos_id`) REFERENCES `eventos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
