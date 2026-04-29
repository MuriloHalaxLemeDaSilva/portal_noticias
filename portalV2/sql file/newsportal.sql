-- phpMyAdmin SQL Dump
-- versão 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/04/2026 às 20:42
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

CREATE DATABASE IF NOT EXISTS newsportal;
USE newsportal;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Estrutura para tabela `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Inserindo dados na tabela `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'teste@gmail.com', 1, '2024-01-09 18:30:00', '2026-04-13 18:37:09'),
(3, 'subadmin', 'f925916e2754e5e03f75dd58a5733251', 'sudamin@gmail.in', 0, '2024-01-09 18:30:00', '2024-01-31 05:43:01'),
(4, 'suadmin2', 'f925916e2754e5e03f75dd58a5733251', 'sbadmin@test.com', 0, '2024-01-09 18:30:00', '2024-01-31 05:43:01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Inserindo dados na tabela `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Esportes', 'Relacionado a notícias esportivas', '2024-01-11 18:30:00', '2024-01-31 05:43:16', 1),
(5, 'Entretenimento', 'Notícias relacionadas a entretenimento', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(6, 'Política', 'Política', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(7, 'Negócios', 'Negócios', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(8, 'COVID-19', 'COVID-19', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Inserindo dados na tabela `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, 12, 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2024-01-17 18:30:00', 1),
(2, 12, 'Usuário Teste', 'test@gmail.com', 'Este é um texto de exemplo para teste.', '2024-01-18 18:30:00', 1),
(3, 7, 'ABC', 'abc@test.com', 'Este é um texto de exemplo para teste.', '2024-01-22 18:30:00', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Inserindo dados na tabela `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'sobre', 'Sobre o Portal de Notícias', 
'<p><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif\"><span style=\"font-size: 26px;\">Bem-vindo ao Portal de Notícias, seu destino único para ficar informado e atualizado com as últimas notícias e acontecimentos do mundo.<br></span></font><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif\"><span style=\"font-size: 26px;\">No&nbsp;</span></font><span style=\"color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; font-size: 26px;\">Portal de Notícias</span><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif\"><span style=\"font-size: 26px;\">, entendemos a importância de informações confiáveis e atualizadas no mundo acelerado de hoje. Nossa equipe de jornalistas e editores se dedica para trazer até você as matérias mais relevantes e envolventes de diversas fontes, garantindo que você sempre esteja bem informado sobre os temas que mais importam para você.<br></span></font><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif\"><span style=\"font-size: 26px;\">Esteja você interessado em política, esportes, entretenimento, tecnologia ou negócios, tudo estará aqui no&nbsp;</span></font><span style=\"color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; font-size: 26px;\">Portal de Notícias</span><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif\"><span style=\"font-size: 26px;\">. Nossa interface amigável facilita a navegação pelas últimas manchetes, exploração de artigos aprofundados e descoberta de novas perspectivas sobre os acontecimentos que estão moldando nosso mundo.<br></span></font><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif\"><span style=\"font-size: 26px;\">Mas o&nbsp;</span></font><span style=\"color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; font-size: 26px;\">Portal de Notícias</span><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif\"><span style=\"font-size: 26px;\">&nbsp;é mais do que um site de notícias – é uma comunidade de mentes curiosas e cidadãos engajados que se unem para discutir, debater e compartilhar ideias. Acreditamos no poder do jornalismo para inspirar mudanças e promover entendimento, e estamos comprometidos em oferecer uma plataforma onde vozes de todas as origens possam ser ouvidas.<br></span></font><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif\"><span style=\"font-size: 26px;\">Junte-se a nós nessa missão de informar, inspirar e empoderar. Juntos, podemos fazer a diferença.</span></font></p>', 
'2024-01-14 18:30:00', '2026-04-13 18:09:03'),
(2, 'contato', 'Detalhes de Contato', '<p><br></p><p><b>Endereço: </b>Nova Délhi, Índia</p><p><b>Telefone: </b>+91 -01234567890</p><p>Email: teste@gmail.com<b></b></p>', '2024-01-15 18:30:00', '2026-04-13 18:10:41');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Inserindo dados na tabela `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(7, 'Jasprit Bumrah está fora da série T20I contra a Inglaterra devido a lesão', 3, 4, '<p style="margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;"><span style="margin: 0px; padding: 0px; font-weight: 700;">A seleção de críquete da Índia sofreu um grande golpe pouco antes do início da aguardada série contra a Inglaterra. O astro Jasprit Bumrah está fora da série de T20I de três jogos após uma lesão no polegar esquerdo.</span></p><p style="margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;">O jogador de 24 anos se lesionou durante o primeiro T20I da Índia contra a Irlanda. Segundo relatos, ele deve estar disponível para a série ODI contra a Inglaterra, que começa em 12 de julho.</p><p style="margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;">Na primeira partida, Bumrah teve desempenho fenomenal com a bola: 19 corridas e 2 wickets em 4 overs, economia de 4.75.</p><p style="margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;">Após a lesão, ele participou do treino opcional mas não treinou. Depois, foi poupado junto de MS Dhoni, Shikhar Dhawan e Bhuvneshwar Kumar.</p><p style="margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;">Nenhum substituto foi anunciado; porém, Umesh Yadav pode ganhar chance com a ausência de Bumrah.</p><p style="padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;">O primeiro T20I entre Índia e Inglaterra será em Old Trafford, Manchester, em 3 de julho.</p>', '2024-01-15 18:30:00', '2024-01-31 05:47:37', 1, 'Jasprit-Bumrah-esta-fora-da-serie-T20I-contra-a-Inglaterra-devido-a-lesao', '6d08a26c92cf30db69197a1fb7230626.jpg', 24, 'admin', NULL),
(10, 'Tata Steel e Thyssenkrupp finalizam acordo histórico de aço', 7, 9, '<h1 style="box-sizing: inherit; margin-top: 0px; padding: 0px; font-family: Roboto, sans-serif; font-size: 38px; line-height: normal; letter-spacing: -0.5px; color: rgb(51, 51, 51);"><span itemprop="headline" style="box-sizing: inherit;">Tata Steel e Thyssenkrupp finalizam acordo histórico de aço</span></h1>', '2024-01-16 18:30:00', '2024-01-31 05:47:46', 1, 'Tata-Steel-e-Thyssenkrupp-finalizam-acordo-historico-de-aco', '505e59c459d38ce4e740e3c9f5c6caf7.jpg', 1, 'admin', NULL),
(11, 'Jean-Pierre Lacroix da ONU agradece à Índia por contribuição à paz', 6, 8, '<p>Jean-Pierre Lacroix da ONU agradece à Índia repetidamente por sua contribuição para as missões de paz da ONU.<br></p>', '2024-01-16 18:30:00', '2024-01-31 05:48:06', 1, 'Jean-Pierre-Lacroix-ONU-agradece-India-missoes-paz', '27095ab35ac9b89abb8f32ad3adef56a.jpg', 34, 'admin', NULL),
(12, 'Shah realiza reunião com líderes dos estados do NE na Manipur', 6, 7, '<p><span style="color: rgb(25, 25, 25); font-family: "Noto Serif"; font-size: 16px;">Nova Délhi: O presidente do BJP, Amit Shah, realizou hoje reuniões com líderes de seu partido responsáveis por 11 cadeiras de Lok Sabha distribuídas pelos sete estados do nordeste como parte de um esforço para garantir o máximo de votos nas próximas eleições gerais.</span><br style="box-sizing: inherit; color: rgb(25, 25, 25); font-family: "Noto Serif"; font-size: 16px;"><br><webviewcontentdata style="box-sizing: inherit; color: rgb(25, 25, 25); font-family: "Noto Serif"; font-size: 16px;">Shah fez reuniões separadas com representantes de Arunachal Pradesh, Tripura, Meghalaya, Mizoram, Nagaland, Sikkim e Manipur em Manipur, segundo o chefe de mídia do partido, Anil Baluni.<br><br>Baluni disse que Shah esteve em Bengala Ocidental por dois dias antes de chegar a Manipur. O presidente do BJP vai a Odisha amanhã.</webviewcontentdata><br></p>', '2024-01-17 18:30:00', '2026-04-13 18:23:57', 1, 'Shah-reuniao-manipur-lideres-NE', '7fdc1a630c238af0815181f9faa190f5.jpg', 24, 'admin', NULL),
(13, 'Copa do Mundo T20 2021: Semi-final 1, Inglaterra x Nova Zelândia — Quem disse o quê', 3, 4, '<p style="margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: "Proxima Nova";">A Nova Zelândia segurou os nervos e garantiu uma sequência de finais de eventos da ICC, superando a <a href="https://www.crictracker.com/cricket-teams/england/" target="_blank" rel="noopener" style="color: rgb(4, 93, 233);"><strong>Inglaterra</strong></a> em uma semifinal emocionante em Abu Dhabi. Você pode pensar que eles são gente boa demais para pensar em vingança, mas agora estão quites. E, ao fazer isso, a Nova Zelândia chegou à final de um torneio em que ninguém a colocava como favorita.&nbsp;</p><p style="margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: "Proxima Nova";">Depois de começar no ataque, uma Inglaterra sem Jason Roy marcou 166/4, principalmente graças a Dawid Malan (41 de 30), que voltou ao bom desempenho na hora certa, e Moeen Ali (51 de 37), mostrando mais uma vez seu valor no formato curto.</p>', '2024-01-18 18:30:00', '2026-04-13 18:11:37', 1, 'Copa-do-Mundo-T20-2021-Semifinal-Inglaterra-Nova-Zelandia-Quem-disse-o-que', '8bc5c30be91dca9d07c1db858c60e39f.jpg', 8, 'admin', 'subadmin');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Inserindo dados na tabela `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Bollywood', 'Notícias do cinema indiano', '2024-01-14 18:30:00', '2024-01-31 05:48:30', 1),
(4, 3, 'Críquete', 'Críquete', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(5, 3, 'Futebol', 'Futebol', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(6, 5, 'Televisão', 'Televisão', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(7, 6, 'Nacional', 'Notícias nacionais', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(8, 6, 'Internacional', 'Notícias internacionais', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(9, 7, 'Índia', 'Notícias da Índia', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(10, 8, 'Vacinação', 'Vacinação', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1);

-- --------------------------------------------------------

-- Índices e constraints (mantidos do original)
-- Índices de tabela `tbladmin`
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

-- Índices de tabela `tblcategory`
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

-- Índices de tabela `tblcomments`
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

-- Índices de tabela `tblpages`
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

-- Índices de tabela `tblposts`
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

-- Índices de tabela `tblsubcategory`
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

-- AUTO_INCREMENT para tabelas
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

-- Restrições para tabelas
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

UPDATE tbladmin SET AdminPassword = md5('123456') WHERE AdminUserName = 'admin';