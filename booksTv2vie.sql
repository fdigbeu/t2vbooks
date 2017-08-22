-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mar. 22 août 2017 à 22:27
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `booksTv2vie`
--

-- --------------------------------------------------------

--
-- Structure de la table `t2v_categorie`
--

CREATE TABLE `t2v_categorie` (
  `id` int(11) NOT NULL,
  `livre_id` int(11) DEFAULT NULL,
  `titre` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `t2v_categorie`
--

INSERT INTO `t2v_categorie` (`id`, `livre_id`, `titre`, `numero`) VALUES
(1, 3, 'INTRODUCTION', NULL),
(2, 3, 'LES TROIS TYPES D\'HOMMES', 'I.'),
(3, 3, 'LA MARCHE', 'II.'),
(4, 3, 'LA VOIE DU PÉCHEUR : LE CHEMIN SPACIEUX', 'III.'),
(5, 3, 'L\'ASSEMBLÉE DES MOQUEURS', 'IV.'),
(6, 3, 'LE CONSEIL DES MÉCHANTS', 'V.'),
(7, 3, 'LA PORTE ETROITE ET LE CHEMIN RESSERÉ', 'VI.'),
(8, 3, 'LE CONSEIL DE DIEU', 'VII.'),
(9, 3, 'CONCLUSION', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `t2v_detail_livre`
--

CREATE TABLE `t2v_detail_livre` (
  `id` int(11) NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `souscategorie_id` int(11) DEFAULT NULL,
  `contenu` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `t2v_detail_livre`
--

INSERT INTO `t2v_detail_livre` (`id`, `categorie_id`, `souscategorie_id`, `contenu`) VALUES
(1, 1, NULL, 'Les Écritures nous présentent plusieurs serviteurs de Dieu remarquables, mais deux d’entre eux se distinguent parmi les autres : Hénoc et Noé.'),
(2, 1, NULL, 'Contrairement à d’illustres héros tels que Moïse, Samson ou encore David, ils ne sont pas connus pour avoir fait de grands miracles ou accompli de grands exploits.'),
(3, 1, NULL, 'Leur point commun ? Ils marchaient avec Dieu.'),
(4, 1, NULL, 'Hénoc était le fils de Jéred, descendant d’Enosch, fils de Seth, troisième fils que Dieu donna à Adam et Eve après la mort d’Abel (Genèse 4 :25 ; Genèse 5 :18-25).'),
(5, 1, NULL, 'La Bible n’est pas très prolixe à son sujet.'),
(6, 1, NULL, 'Tout ce que l’on sait c’est qu’après la naissance de son fils aîné Metuschélah, il marcha avec Dieu pendant trois cents ans puis il fut enlevé.'),
(7, 1, NULL, '« Hénoc marcha avec Dieu ; mais il ne fut plus parce que Dieu le prit » Genèse 5 :24.'),
(8, 1, NULL, 'Il est donc le premier homme a avoir vécu un enlèvement semblable à celui que doit connaître l’Église.'),
(9, 1, NULL, 'Quelques générations après, Noé suivit les traces de son ancêtre.'),
(10, 1, NULL, '« Noé était un homme juste et intègre en son temps ; Noé marchait avait Dieu » Genèse 6 :9.'),
(11, 1, NULL, 'Noé vécut dans un temps où la dépravation des moeurs avait atteint un niveau particulièrement élevé.'),
(12, 1, NULL, 'Toute la Terre était pervertie, à un tel point que des humains s’étaient accouplés avec des fils de Dieu (anges ayant abandonné leur propre demeure selon Jude 1 :6).'),
(13, 1, NULL, 'Cet homme se démarqua du milieu de cette génération perverse et corrompue par son intégrité qui était le résultat de la grâce qu’il avait trouvée auprès du Seigneur.'),
(14, 1, NULL, 'Il reçut pour vision de construire une arche grâce à laquelle lui et sa famille furent préservés des eaux dévastatrices du déluge.'),
(15, 1, NULL, 'Cette arche était une préfiguration de l’enlèvement de l’Église qui doit avoir lieu avant la grande tribulation.'),
(16, 1, NULL, 'Ainsi, pour échapper à la colère à venir, il faut marcher avec Dieu.'),
(17, 1, NULL, 'Mais en quoi consiste exactement cette marche et qu’est-ce qu’elle implique concrètement ? L’étude du Psaume 1 nous aidera à y voir plus clair.'),
(18, 1, NULL, '« Béni est l’homme qui ne marche pas selon le conseil des méchants, et qui ne s’arrête pas sur la voie des pécheurs, qui ne s’assied pas dans l’assemblée des moqueurs, mais qui prend plaisir dans la loi de Yahweh, et qui médite sa loi jour et nuit ! Il est comme un arbre planté près des ruisseaux d’eaux, qui rend son fruit en sa saison, et dont le feuillage ne se flétrit point. Et ainsi tout ce qu’il fera réussira. Il n’en est pas ainsi des méchants : Ils sont comme la balle que le vent chasse au loin. C’est pourquoi les méchants ne résistent pas dans le jugement ni les pécheurs dans l’assemblée des justes. Car Yahweh connaît la voie des justes, mais la voie des méchants périra. »'),
(19, 2, NULL, 'La Parole déclare que l’homme qui ne marche pas selon le conseil des méchants est béni.'),
(20, 2, NULL, 'Or de nos jours, une grande confusion règne dans les esprits quant au sens du mot bénédiction.'),
(21, 2, NULL, 'On s’imagine qu’elle est nécessairement synonyme de richesse matérielle et financière.'),
(22, 2, NULL, 'Pourtant, selon le terme hébreu esher, elle désigne tout d’abord le bonheur qui, de toute évidence, ne peut être acheté.'),
(23, 2, NULL, 'On apprend par la suite que cette bénédiction concerne l’homme qui ne marche pas selon le conseil des méchants, mais selon le conseil de Dieu.'),
(24, 2, NULL, 'De quel homme s’agit-il ici ? Les Écritures nous présentent trois types d’hommes que Paul nous décrit aux chapitres deux et trois de sa première épître aux Corinthiens : l’homme animal, l’homme charnel et l’homme spirituel.'),
(25, 2, NULL, '« Or <b>l’homme animal</b> ne comprend pas les choses de l’Esprit de Dieu, car elles sont une folie pour lui, et il ne peut même pas les entendre, parce que c’est spirituellement qu’on en juge. Mais <b>l’homme spirituel</b> discerne toutes choses et il n’est jugé par personne. Car qui a connu la pensée du Seigneur pour pouvoir l’instruire ? Mais nous, nous avons la pensée de Christ. » 1 Corinthiens 2 :14-16.'),
(26, 2, NULL, '<h1>L’homme animal</h1>'),
(27, 2, NULL, 'Dans le texte grec, le nom « animal », psuchikos, désigne le « principe de la vie animale ; ce que les hommes ont en commun avec les brutes ; la nature sensuelle qui est assujettie aux appétits et aux passions ».'),
(28, 2, NULL, 'L’homme animal vit selon la vanité de ses pensées, car son intelligence est obscurcie par les ténèbres (Éphésiens 4 :17-19).'),
(29, 2, NULL, 'Il est étranger à la vie de Dieu à cause de l’endurcissement de son coeur.'),
(30, 2, NULL, '<h1>L’homme charnel</h1>'),
(31, 2, NULL, '« Et pour moi, mes frères, je n’ai pas pu vous parler comme à des hommes spirituels, mais comme à des <b>hommes charnels</b>, c’est-à-dire comme à <b>des enfants en Christ</b>. Je vous ai donné du lait à boire, et non pas de la viande, parce que vous ne pouviez pas la supporter ; et même maintenant vous ne le pouvez pas encore, parce que vous êtes encore charnels. Car puisqu’il y a parmi vous de la jalousie, des disputes, et des divisions, n’êtes-vous pas charnels, et ne vous conduisez-vous pas à la manière des hommes ? » 1 Corinthiens 3 :1-3.'),
(32, 2, NULL, 'Le mot « charnel » vient du grec sarkikos qui désigne une personne « ayant la nature de la chair, c’est-à-dire qui est sous l’autorité de l’appétit animal ; gouverné par la simple nature humaine et non pas par l’Esprit de Dieu ».'),
(33, 2, NULL, 'L’homme charnel est également appelé « enfant » ; du grec nepios qui veut dire « un enfant », « un petit enfant » ; « un mineur », « enfantin », « ignorant », « non habile ».'),
(34, 2, NULL, 'L’apôtre Paul emploie ce terme également dans Galates 4 :1-3 :'),
(35, 2, NULL, '« Or aussi longtemps que l’héritier est enfant, je dis qu’il ne diffère en rien d’un esclave, quoiqu’il soit le maître de tout. Mais il est sous des tuteurs et des administrateurs jusqu’au temps déterminé par le Père. Nous aussi, lorsque nous étions enfants, nous étions sous l’esclavage des rudiments du monde. »'),
(36, 2, NULL, 'À l’instar des chrétiens de Corinthe, beaucoup de chrétiens sont des enfants.'),
(37, 2, NULL, 'Ils n’ont aucune révélation de Dieu et sont ignorants quant à leur identité en Christ et leur position dans le Royaume de Dieu. Bien qu’ils aient reçu beaucoup de dons, ils ont encore besoin de tuteurs et d’administrateurs.'),
(38, 2, NULL, 'Ils sont la proie des faux prophètes et des pasteurs cupides qui profitent du fait qu’il n’ont aucune relation avec Dieu pour abuser d’eux matériellement, financièrement, émotionnellement et sexuellement…'),
(39, 2, NULL, 'Ils payent les dîmes, portent les bibles de leurs pasteurs, font leur courses et leur ménage, gardent leurs enfants…'),
(40, 2, NULL, 'Au lieu de servir Dieu et son Royaume, ils se rendent esclaves de ces hommes mal intentionnés.'),
(41, 2, NULL, 'Ils sont comme les Hébreux qui travaillaient durement pour construire les magasins des Pharaons en Égypte.'),
(42, 2, NULL, 'Ces chrétiens-là sont dominés par les oeuvres de la chair décrites dans Galates 5 :17-19 et notamment par l’esprit de compétition, la jalousie, la course aux titres…'),
(43, 2, NULL, 'Ils ne marchent pas selon la Parole de Dieu, mais selon les traditions des hommes.'),
(44, 2, NULL, 'Attachés aux choses de la terre et trompés par leur propre convoitise, ils pensent que la bénédiction est liée aux biens matériels.'),
(45, 2, NULL, 'Ils sont semblables à Esaü qui vendit son droit d’aînesse pour un simple potage de lentilles.'),
(46, 2, NULL, '« Car il y en a plusieurs qui marchent d’une telle manière, que je vous en ai souvent parlé, et maintenant je vous en parle encore en pleurant, qu’ils sont ennemis de la croix de Christ. Eux dont la fin est la destruction, qui ont pour dieu leur ventre, et dont la gloire est dans leur confusion, n’ayant d’affection que pour les choses de la terre. » Philippiens 3 :18-19.'),
(47, 2, NULL, '<h1>L’homme spirituel</h1>'),
(48, 2, NULL, '« Mais <b>l’homme spirituel</b> discerne toutes choses et il n’est jugé par personne. Car qui a connu la pensée du Seigneur pour pouvoir l’instruire ? Mais nous, nous avons la pensée de Christ. » 1 Corinthiens 2 :15-16.'),
(49, 2, NULL, 'Le mot « spirituel » vient du grec pneumatikos qui désigne ce qui est « relatif à l’esprit humain ou âme rationnelle » ; « une part de l’homme qui est alliée à Dieu et lui sert d’instrument ou d’organe ».'),
(50, 2, NULL, '« Et ne vous conformez pas à l’âge présent, mais soyez transformés par le renouvellement de votre esprit, afin que vous éprouviez quelle est la volonté de Dieu, ce qui est bon, agréable et parfait. » Romains 12 :2.'),
(51, 2, NULL, 'L’esprit de l’homme spirituel est « renouvelé », du grec anakainosis : « renouveau », « rénovation », « changement complet vers le meilleur ».'),
(52, 2, NULL, 'Comme le dit si bien l’apôtre Paul, ce renouveau n’est pas dû à « des oeuvres de justice que nous aurions faites, mais selon la miséricorde, à travers le bain de la nouvelle naissance et le renouvellement du Saint-Esprit » (Tite 3 :5).'),
(53, 2, NULL, 'L’homme spirituel connaît la pensée de Christ et ne se laisse pas influencer par le système de pensée du monde (philosophie, religion…) ni par sa propre chair.'),
(54, 2, NULL, 'Il est au contraire dirigé par l’Esprit de Dieu qui est le Conducteur par excellence.'),
(55, 2, NULL, '« Mais quand l’Esprit de vérité sera venu, il vous conduira dans toute la vérité, car il ne parlera pas de lui-même, mais il dira tout ce qu’il aura entendu, et il vous annoncera les choses à venir. » Jean 16 :13.'),
(56, 2, NULL, 'L’homme conduit par Dieu marche forcément à contre-courant, à l’opposé du train de ce monde (Ephésiens 4 :17-19).'),
(57, 2, NULL, 'En avance sur son temps, il est souvent seul, car incompris et rejeté. L’homme spirituel marche soigneusement, (Ephésiens 5 :15-16), dans la charité (Ephésiens 5 :1-2), comme un enfant de lumière (Ephésiens 5 :8-14), d’une manière digne de l’appel qu’il a reçu (Ephésiens 4 :1), dans les oeuvres que Dieu a préparées d’avance pour lui :'),
(58, 2, NULL, '«Car nous sommes son ouvrage, ayant été créés en Jésus-Christ pour les bonnes oeuvres que Dieu a préparées d\'avance, afin que nous marchions en elles » (Ephésiens 2 :10).'),
(59, 2, NULL, 'C’est donc de la marche de ce type d’homme qu’il est question dans le Psaume 1.'),
(60, 3, NULL, 'Le verbe « marcher » se dit peripateo en grec ; ce terme signifie « être en chemin », « progresser » ou « faire bon usage des opportunités ».'),
(61, 3, NULL, 'L’hébreu quant à lui emploie plusieurs termes pour parler de la marche :'),
(62, 3, NULL, '- Arach qui signifie « errer », « voyager » (Juges 19 :17 ; 2 Samuel 12 :2 ; Job 34 :8 ; Jérémie 9 :2 ; Jérémie 14 :8). Cela nous rappelle que le marcheur est un voyageur et un étranger sur la terre (1 Pierre 2 :11).'),
(63, 3, NULL, '- Darak qui veut dire « fouler ». Le marcheur est en effet appelé à fouler aux pieds les serpents et les scorpions (Juges 5 :21 ; Luc 10 :19).'),
(64, 3, NULL, '- Halak qui signifie « marcher », « manière de vivre » (Psaumes 1 :1).'),
(65, 3, NULL, 'Comme pour toute marche, la marche chrétienne implique tout d’abord un point de départ et ensuite une destination.'),
(66, 3, NULL, 'Il va de soi qu’une personne qui se met en route sans savoir où elle va, c’est-à-dire sans une vision claire de l’objectif à atteindre, risque de s’égarer.'),
(67, 3, NULL, 'Or l’égarement pour nous chrétiens constitue un danger qui peut s’avérer fatal (2 Thessaloniciens 2 :11-12).'),
(68, 3, NULL, 'Le marcheur chrétien doit donc s’assurer que c’est bien Dieu qui est à la base de sa vision et s’efforcer de le suivre pour être certain d’arriver à destination : la Nouvelle Jérusalem.'),
(69, 3, 1, '« Mais ceux qui s\'attendent à Yahweh renouvellent leur force. Ils s\'élèvent avec des ailes, comme des aigles ; ils courent, et ne se fatiguent point ; ils marchent, et ne se lassent point » Esaïe 40 :31.'),
(70, 3, 1, '<h1>La marche ou le roulage</h1>'),
(71, 3, 1, 'C’est la première étape de la vie du marcheur. Le marcheur vient de se convertir et fait la connaissance d’autres chrétiens avec lesquels il va marcher pendant un certain temps.'),
(72, 3, 1, 'Dans l’aéronautique le roulage, appelé aussi « taxi », est la phase précédant le décollage.'),
(73, 3, 1, '<h1>La course</h1>'),
(74, 3, 1, 'Le marcheur passe de l’étape du roulage à celle de la course.'),
(75, 3, 1, 'Il doit saisir le moment où Dieu veut qu’il entame une véritable course.'),
(76, 3, 1, 'Cette étape correspond à l’entrée sur la piste de décollage.\r\n(Hébreux 12 :1-2 ; 1 Corinthiens 9 :24-27).'),
(77, 3, 1, '<h1>Le vol</h1>'),
(78, 3, 1, 'Dans Esaïe 40 :31 deux mots hébreux sont utilisés pour parler de l’envol.'),
(79, 3, 1, 'Le premier est alah qui signifie « monter », « élever » et « grimper ».'),
(80, 3, 1, 'Le deuxième, eber, désigne l’« aile » d’un aigle ou d’une colombe. L’aigle royal, qui peut atteindre 120 km/h, est un oiseau qui vole seul et non en groupe.'),
(81, 3, 1, 'Il exploite les courants d’air afin de se propulser le plus haut possible.'),
(82, 3, 1, 'Il plane et se laisse guider par le vent. Sa vue est sept fois plus perçante que celle de l’homme (Matthieu 6 :22).'),
(83, 3, 1, 'Cet aigle se marie une seule fois car il est monogame.'),
(84, 3, 1, 'Il reste fidèle à sa femme jusqu’à la mort.'),
(85, 3, 1, 'L’aigle rajeunit sans cesse. Quand il devient vieux, il se retire sur une montagne, se déplume, taille son bec et ne réapparaît que lorsqu’il a renouvelé ses plumes.'),
(86, 3, 1, 'D’ailleurs il habite sur les hauteurs, où il se nourrit de viande fraiche et de sang:'),
(87, 3, 1, '« Est-ce par ton commandement que l\'aigle s\'élève, et qu\'il place son nid sur les hauteurs ? Il habite sur les rochers, et il s\'y tient ; même sur les sommets des rochers et dans des lieux forts. De là, il découvre le gibier, ses yeux voient de loin. Ses petits aussi sucent le sang ; et là où sont des cadavres, il s\'y trouve aussitôt» (Job 39 :30-33. Voir Jean 6 :5-56).'),
(88, 3, 1, 'C’est aussi sur les hauteurs qu’il combat ses ennemis, les serpents.'),
(89, 3, 1, 'Cela signifie que le marcheur est appelé non seulement à marcher et à courir mais aussi à s’élever vers le ciel avec les ailes de l’aigle.'),
(90, 3, 1, 'Il est essentiel pour le marcheur de connaître sa véritable identité qui est céleste.'),
(91, 3, 1, 'Il doit comprendre que Dieu l’appelle à prendre son envol comme un aigle afin qu’il n’ait plus peur de prendre des décisions qui honorent Dieu, même s’il doit être impopulaire.'),
(92, 3, 1, 'Ainsi il ne cherchera pas à plaire aux hommes mais à Dieu (Galates 1 :10) et il refusera de s’associer avec ceux qui ont une vision terrestre.'),
(93, 3, 2, 'Pour les enfants d’Israël, le point de départ fut l’Égypte qui symbolise le monde.'),
(94, 3, 2, 'Après le sacrifice de l’agneau pascal (Exode 12), préfiguration de l’oeuvre rédemptrice accomplie par le Seigneur à la croix (Jean 1 :29 ; 1 Corinthiens 5 :7), les Hébreux connurent une grande délivrance par la main puissante de Yahweh.'),
(95, 3, 2, 'Libérés de l’esclavage et du dur labeur imposés par Pharaon, image de Satan, les voilà en route pour Canaan, la terre promise.'),
(96, 3, 2, 'En traversant la Mer Rouge, les Israélites expérimentèrent symboliquement le baptême en Christ, c’est-à-dire la nouvelle naissance ou la naissance d’en haut (1 Corinthiens 10 :1-2).'),
(97, 3, 2, 'S’en suivit alors une longue marche dans le désert sous la conduite de Yahweh en personne qui dirigeait son peuple au travers d’une colonne de nuée le jour, et d’une colonne de feu la nuit.'),
(98, 3, 2, 'Cette glorieuse manifestation de la présence de Dieu, la schekinah, préfigurait le Saint-Esprit qui a vocation à conduire les chrétiens dans toute la vérité.'),
(99, 3, 2, '« Et ils partirent de Succoth, et campèrent à Etham, qui est à l’extrémité du désert. Et Yahweh allait devant eux, de jour dans une colonne de nuée pour les conduire par le chemin ; et de nuit dans une colonne de feu pour les éclairer, afin qu’ils marchent jour et nuit. Et il ne retira point la colonne de nuée le jour ni la colonne de feu la nuit de devant le peuple. » Exode 13 :20-22.'),
(100, 3, 2, 'Bien entendu, cette marche ne fut pas exempte de difficultés et d’obstacles, thème que nous aborderons un peu plus loin.'),
(101, 3, 3, 'Le tabernacle était constitué de trois parties : le parvis, le lieu saint et le lieu très saint, également appelé Saint des saints.'),
(102, 3, 3, 'Le parvis était une sorte de grande cour dans laquelle se trouvaient l’autel et la cuve d’airain (Exode 27 :9-19).'),
(103, 3, 3, 'On accédait à ce parvis par une seule et unique porte.'),
(104, 3, 3, 'Les Israélites cherchant à expier un péché ou désirant rendre grâces à Dieu devaient nécessairement passer cette porte avec un sacrifice.'),
(105, 3, 3, 'Cette unique porte préfigurait Jésus-Christ qui s’était lui-même présenté comme étant la porte des brebis (Jean 10 :7-9).'),
(106, 3, 3, 'En avançant dans le parvis, le marcheur rencontrait donc en premier <b>l’autel d’airain</b>, matériau qui symbolise le jugement et la condamnation que Christ a supportés à notre place à cause de nos péchés. On ne peut donc pas entamer la marche chrétienne en faisant abstraction du sacrifice qu’elle implique.'),
(107, 3, 3, 'Christ a déjà versé son sang une fois pour toutes, c’est donc à nous de nous charger de nos croix et de le suivre.'),
(108, 3, 3, 'Un peu plus loin dans le parvis, le marcheur se retrouvait face à une grande <b>cuve d’airain</b> fabriquée à partir des miroirs offerts par les femmes juives (Exode 38 :8).'),
(109, 3, 3, 'Ces miroirs représentent la parole de Dieu qui révèle l’état de notre coeur (Jacques 1 :23-24).'),
(110, 3, 3, 'Le marcheur doit connaître avant toutes choses son état spirituel avant de commencer la marche.'),
(111, 3, 3, 'Placée entre l’autel et la tente d’assignation, la cuve d’airain était remplie d’eau ; les prêtres devaient s’y laver les mains et les pieds avant d’offrir un sacrifice ou avant de pénétrer dans la tente d’assignation (Exode 30 :18-21).'),
(112, 3, 3, 'Du temps de la loi, ce rituel n’incombait qu’aux prêtres, car eux seuls pouvaient rentrer dans le lieu saint.'),
(113, 3, 3, 'Sous la grâce, les véritables chrétiens sont devenus des rois et des prêtres qui ont en Jésus-Christ un libre accès au lieu très saint (Apocalypse 1 :6 ; Hébreux 4 :16). Nous sommes donc également invités à nous régénérer par l’eau qui est la Parole de Dieu (Éphésiens 5 :26).'),
(114, 3, 3, 'Cette Parole, qui est vivante et efficace, agit sur ceux qui la mettent en pratique comme une épée tranchante qui sépare les oeuvres de la chair de celles de l’Esprit.'),
(115, 3, 3, '« Car la Parole de Dieu est vivante et efficace, et plus pénétrante qu’aucune épée à deux tranchants, et atteignant jusqu’à la division de l’âme et de l’esprit, et des jointures et des moelles ; et elle juge les pensées et les intentions du coeur. » Hébreux 4 :12.'),
(116, 3, 3, 'En poursuivant la marche, on rentrait dans la tente d’assignation qui abritait le lieu saint et le Saint des saints.'),
(117, 3, 3, 'Dans le lieu saint, le marcheur trouvait sur sa droite <b>une table d’or sur laquelle étaient placés douze pains de proposition</b> faits avec de la fine farine (Exode 25 : 23-30 ; Lévitique 24 :5-9).'),
(118, 3, 3, '<b>Ces pains préfiguraient Christ, le pain de vie</b>, dans toute sa pureté, et invitaient symboliquement à participer au repas du Seigneur (Luc 22 :19). En effet, en consommant le pain de vie, le marcheur y puise la force nécessaire pour aller plus loin.'),
(119, 3, 3, '« Mais Jésus leur dit : En vérité, en vérité, je vous le dis : Moïse ne vous a pas donné le pain du ciel ; mais mon Père vous donne le vrai pain du ciel ; car le pain de Dieu, c’est celui qui est descendu du ciel et qui donne la vie au monde. Ils lui dirent donc : Seigneur, donne-nous toujours ce pain-là. Et Jésus leur dit : JE SUIS le pain de vie. Celui qui vient à moi n’aura jamais faim ; et celui qui croit en moi n’aura jamais soif. » Jean 6 :32-35.'),
(120, 3, 3, 'Toujours dans le lieu saint, sur le côté gauche, en face de la table des pains de proposition, on trouvait aussi <b>le chandelier fabriqué d’or</b> dont les sept lampes alimentées par de l’huile d’olive pure devaient brûler continuellement (Exode 25 :31-39 ; Lévitique 24 :1-4).'),
(121, 3, 3, 'Une fois de plus, nous avons ici une préfiguration de <b>Jésus-Christ, notre lumière</b>.\r\n« Ta parole est une lampe à mes pieds et une lumière sur mon sentier » Psaume 119 :105.'),
(122, 3, 3, '« Et Jésus leur parla encore, en disant : JE SUIS la lumière du monde ; celui qui me suit ne marchera pas dans les ténèbres, mais il aura la lumière de la vie. » Jean 8 :12.'),
(123, 3, 3, 'Tout comme les Hébreux avaient besoin de la colonne de feu pour éclairer leur marche durant la nuit, nous avons besoin de la lumière de Christ pour éviter de nous égarer dans ce monde gouverné par les ténèbres.'),
(124, 3, 3, 'Comme nous l’enseigne la parabole des dix vierges, l’huile, image du Saint-Esprit, est indispensable pour le bon fonctionnement de cette lampe (Matthieu 25 :1-13).'),
(125, 3, 3, 'En effet, sans la direction de l’Esprit, il nous sera impossible de parvenir jusqu’aux noces de l’Agneau.'),
(126, 3, 3, '<b>L’autel des parfums</b> se trouvait quant à lui au fond, devant le voile qui séparait le lieu saint du Saint des saints (Exode 30 :1-10).'),
(127, 3, 3, 'Le marcheur était désormais tout près de son objectif ultime : l’arche, la gloire de Dieu. Avant de franchir le voile, il était donc invité à <b>l’adoration</b>.'),
(128, 3, 3, 'Pour en arriver là, il aura offert bien plus qu’un sacrifice de louange, mais sa propre vie entièrement consacrée à Dieu qu’il aime par-dessus toutes choses.'),
(129, 3, 3, '« Je vous exhorte donc, mes frères, par les compassions de Dieu, à offrir vos corps en sacrifice vivant, saint, agréable à Dieu, ce qui est votre culte raisonnable. » Romains 12 :1.'),
(130, 3, 4, 'La marche chrétienne implique une progression au cours de laquelle on avance de gloire en gloire avec le Seigneur.'),
(131, 3, 4, '« Puis il me ramena vers l’entrée de la maison, et voici, des eaux sortaient sous le seuil de la maison, vers l’orient, car la face de la maison était vers l’orient ; et ces eaux-là descendaient du côté droit de la maison, du côté sud de l’autel. Puis il me fit sortir par le chemin de la porte nord, et me fit faire le tour par dehors, jusqu’à la porte extérieure, du côté de l’orient, et voici, les eaux coulaient du côté droit. Quand cet homme s’avança vers l’orient, il avait dans sa main un cordeau ; et il mesura mille coudées, puis il me fit traverser ces eaux-là, et <b>j’avais de l’eau jusqu’aux chevilles</b>. Puis il mesura mille autres coudées, et me fit traverser les eaux, <b>j’avais de l’eau jusqu’aux genoux</b> ; puis il mesura mille autres coudées, et me fit traverser, et <b>j’avais de l’eau jusqu’aux reins</b>. Il mesura mille autres coudées ; <b>mais ces eaux-là étaient déjà un torrent que je ne pouvais traverser ; car ces eaux-là étaient si profondes qu’il fallait y traverser à la nage, c’était un torrent que l’on ne pouvait traverser.</b> » Ezéchiel 47 :1-6.'),
(132, 3, 4, 'Dans ce passage, Ezéchiel reçoit une vision du sanctuaire céleste duquel sortait un courant d’eau vive. L’apôtre Jean nous en dit davantage à son sujet.'),
(133, 3, 4, '« Celui qui croit en moi, des fleuves d’eau vive couleront de son sein, comme dit l’Écriture. Or il dit cela de l’Esprit que devaient recevoir ceux qui croiraient en lui ; car le Saint-Esprit n’était pas encore donné, parce que Jésus n’était pas encore glorifié. » Jean 7 :38-39.'),
(134, 3, 4, '« Puis il me montra un fleuve d’eau de la vie, transparent comme du cristal, qui sortait du trône de Dieu et de l’Agneau. Et au milieu de la place de la ville, et des deux côtés du fleuve, était l’arbre de vie, portant douze fruits, et rendant son fruit chaque mois et les feuilles de l’arbre servaient à la guérison des nations. » Apocalypse 22 :1-2.'),
(135, 3, 4, 'Ezéchiel a donc eu une vision symbolique du Saint-Esprit sous la forme d’un fleuve qui tire sa source du trône de Dieu.'),
(136, 3, 4, 'Notez que l’arbre de vie est arrosé par ce fleuve ce qui n’est pas sans nous rappeler l’homme du Psaume 1 qui est décrit comme étant un « arbre planté près des ruisseaux d’eaux » (Psaumes 1 :3).'),
(137, 3, 4, 'La progression d’Ezéchiel dans ces eaux se fait en trois étapes. Tout d’abord il a l’eau jusqu’aux chevilles.'),
(138, 3, 4, '<h1>L’eau aux chevilles : le zèle et la détermination</h1>'),
(139, 3, 4, 'Lorsqu’on débute notre marche avec le Seigneur, on commence tout d’abord par se mouiller jusqu’aux chevilles.'),
(140, 3, 4, 'Notons que lors de la première pâque, Yahweh avait donné pour ordre à ses enfants de consommer l’agneau pascal de la manière suivante : « vos reins seront ceints, <b>vous aurez vos souliers à vos pieds</b>, et votre bâton à la main, et vous le mangerez à la hâte » (Exode 12 :11).'),
(141, 3, 4, 'Les pieds devaient donc être chaussés ce qui signifie que les Hébreux devaient être prêts et déterminés à quitter l’Égypte.'),
(142, 3, 4, 'Or beaucoup de chrétiens sont semblables à la femme de Lot, ils commencent à marcher alors que leur coeur est partagé.'),
(143, 3, 4, 'Encore attachés aux choses de ce monde, ils ne sont pas prêts à renoncer à leur vie pour suivre Christ.'),
(144, 3, 4, 'Aussi, parce qu’ils s’arrêtent régulièrement pour regarder en arrière, ils finissent par mourir spirituellement (Genèse 19 :26).'),
(145, 3, 4, '« Hommes et femmes adultères ! Ne savez-vous pas que l’amitié du monde est inimitié contre Dieu ? Celui donc qui veut être ami du monde, se rend ennemi de Dieu. » Jacques 4 :4.'),
(146, 3, 4, 'Si donc nous ne montrons aucun empressement à sortir du monde, cela signifie que nous ne sommes pas prêts à marcher avec le Seigneur.'),
(147, 3, 4, '« Mais Jésus lui répondit : Quiconque met la main à la charrue, et regarde en arrière n’est pas bien disposé pour le royaume de Dieu. » Luc 9 :62.\r\n« Soyez donc fermes, ayant à vos reins la vérité pour ceinture, ayant revêtu la cuirasse de la justice ; et ayant vos pieds chaussés, prêts pour l’évangile de paix » Ephésiens 6 :14-15.'),
(148, 3, 4, '<h1>L’eau jusqu’aux genoux : l’adoration</h1>'),
(149, 3, 4, 'En progressant dans le fleuve, l’eau montait désormais jusqu’aux genoux.'),
(150, 3, 4, 'À chaque fois qu’Ezéchiel avait une vision de la gloire de Dieu, il tombait sur sa face.'),
(151, 3, 4, 'D’autres avant et après lui ont eu la même réaction devant la manifestation de la gloire divine.'),
(152, 3, 4, 'L’adoration fait partie intégrante de l’enfant de Dieu, c’est même la raison principale de son existence.'),
(153, 3, 4, '« Selon qu’il nous a élus en lui avant la fondation du monde, afin que nous soyons saints et irrépréhensibles devant lui dans la charité, <b>nous ayant prédestinés pour nous adopter pour lui par Jésus-Christ, selon le bon plaisir de sa volonté, à la louange de la gloire de sa grâce</b>, par laquelle il nous a rendus agréables en son bien-aimé. » Ephésiens 1 :4-6.'),
(154, 3, 4, 'Dieu désire être adoré en Esprit et en vérité (Jean 4 :24). En Esprit, car c’est le Saint-Esprit qui nous révèle le Seigneur (1 Corinthiens 2 :11-12).'),
(155, 3, 4, 'En vérité, c’est-à-dire avec un coeur sincère, réellement épris de lui.'),
(156, 3, 4, 'Dieu cherche de véritables adorateurs qui ne fléchissent pas les genoux devant Baal, mais qui lui restent fidèles en toutes circonstances.'),
(157, 3, 4, '<h1>L’eau jusqu’aux reins : la transformation du coeur</h1>'),
(158, 3, 4, 'Les Hébreux assimilaient les reins à la puissance de la procréation (Genèse 35 :11 ; Exode 1 :5), au coeur, à l’homme intérieur.'),
(159, 3, 4, '« C’est pourquoi mes reins sont remplis de douleur ; les angoisses me saisissent comme les douleurs de celle qui enfante… » Esaïe 21 :3.'),
(160, 3, 4, '« JE SUIS Yahweh, qui sonde le coeur, et qui éprouve les reins ; même pour rendre à chacun selon sa voie, et selon le fruit de ses actions. » Jérémie 17 :10.'),
(161, 3, 4, 'Les reins du marcheur doivent être continuellement ceints par la ceinture de la vérité (Éphésiens 6 : 14).'),
(162, 3, 4, 'Cette vérité n’est pas un principe philosophico-religieux, mais Jésus-Christ lui-même (Jean 14 :6).'),
(163, 3, 4, '« Mais tu prends plaisir à la vérité au fond du coeur, et tu me fais connaître la sagesse au-dedans de moi ! » Psaumes 51 :8.'),
(164, 3, 4, 'Ainsi, l’eau, qui est aussi l’image de la Parole de Dieu, lorsqu’elle arrive au niveau des reins, cela signifie qu’elle a atteint le coeur et qu’elle l’a transformé en profondeur.'),
(165, 3, 4, 'Une fois de plus, cette transformation est la conséquence de la grâce de Dieu dans nos vies et de l’action directe de son Esprit.'),
(166, 3, 4, 'Ceux qui veulent marcher avec Dieu doivent donc laisser le Seigneur régner totalement dans leurs coeurs.'),
(167, 3, 4, '« Je vous donnerai un nouveau coeur, je mettrai au-dedans de vous un Esprit nouveau ; j’ôterai de votre chair le coeur de pierre, et je vous donnerai un coeur de chair. Je mettrai mon Esprit au dedans de vous, je ferai en sorte que vous suiviez mes ordonnances, et que vous observiez et pratiquiez mes lois. » Ezéchiel 36 :26-28.'),
(168, 3, 4, '<h1>Nager dans les eaux : la conduite par l’Esprit.</h1>'),
(169, 3, 4, 'Plus Ezéchiel avançait dans la profondeur des eaux, plus il était emporté par le courant.'),
(170, 3, 4, 'Ce courant c’est le vent de l’Esprit au sujet duquel Jésus a dit à Nicodème :'),
(171, 3, 4, '« Le vent souffle où il veut, et tu en entends le bruit ; mais tu ne sais pas d’où il vient, ni où il va : Il en est ainsi de tout homme qui est né de l’Esprit. » (Jean 3 :8).'),
(172, 3, 4, 'Ainsi, celui qui veut marcher avec Dieu doit accepter de se laisser emporter là où l’Esprit le désire sans opposer de résistance ni chercher à connaître à l’avance l’itinéraire.'),
(173, 3, 4, 'Le chemin peut sembler périlleux et risqué, mais nous devons l’emprunter par la foi, car toutes choses concourent au bien de ceux qui aiment Dieu (Romains 8 : 28).'),
(174, 3, 4, 'Nul ne peut voir la gloire de Dieu en restant dans sa zone de confort, c’est-à-dire à l’endroit où l’on a pied (formalisme, religiosité, etc.).'),
(175, 3, 4, 'Nous devons renoncer à vouloir garder le contrôle sur nos vies et laisser entièrement les commandes au Seigneur qui nous amènera alors à des niveaux inimaginables avec lui.'),
(176, 3, 4, '« Tous ceux qui sont conduits par l’Esprit de Dieu sont fils de Dieu » nous dit la Parole (Romains 8 :14).'),
(177, 3, 4, 'Ainsi, le véritable chrétien ce n’est pas celui qui se réclame ouvertement de Christ et qui fréquente assidûment une assemblée, mais celui qui marche par l’Esprit (Romains 8 :1).'),
(178, 3, 4, 'Ces chrétiens-là sont réellement libres.'),
(179, 3, 4, 'Ils ne sont plus esclaves ni du péché, ni des démons, ni du monde, ni des traditions ni de la philosophie ni de la religion ni des hommes.'),
(180, 3, 4, 'Maintenant que nous avons vu les dispositions de coeur que doit avoir le marcheur, intéressons-nous au chemin qu’il doit emprunter.'),
(181, 4, NULL, 'La Parole nous apprend que les hommes ont le choix entre deux chemins, deux voies : celle du pécheur qui mène à la perdition et celle de Dieu qui mène à la vie.'),
(182, 4, NULL, '« Béni est l’homme qui ne marche pas selon le conseil des méchants, et <b>qui ne s’arrête pas sur la voie des pécheurs, qui ne s’assied pas dans l’assemblée des moqueurs</b>. » Psaumes 1 :1.'),
(183, 4, NULL, '« Entrez par la porte étroite. <b>Car c’est la porte large et le chemin spacieux qui mènent à la perdition, et il y en a beaucoup qui entrent par là.</b> » Matthieu 7 :13.'),
(184, 4, NULL, 'Le Seigneur nous avertit que la porte qui mène à la perdition est large et que son chemin est spacieux.'),
(185, 4, NULL, 'Et ce qui est particulièrement grave et inquiétant c’est que beaucoup s’engagent dans cette voie.'),
(186, 4, NULL, 'Bien entendu, c’est le chemin qu’empruntent les impies, les adeptes des fausses religions, les adorateurs d’idoles, et plus généralement de tous ceux et celles qui ne croient pas au Dieu de la Bible. Mais pas seulement…'),
(187, 4, NULL, '« Ceux qui me disent : Seigneur ! Seigneur ! n’entreront pas tous dans le Royaume des cieux ; mais celui qui fait la volonté de mon Père qui est dans les cieux. Plusieurs me diront en ce jour-là : Seigneur ! Seigneur ! N’avons-nous pas prophétisé en ton Nom ? N’avons-nous pas chassé les démons en ton Nom ? Et n’avons-nous pas fait beaucoup de miracles en ton Nom ? Alors je leur dirai ouvertement : Je ne vous ai jamais connus, retirez-vous de moi, vous qui commettez l’iniquité. » Matthieu 7 :21-23.'),
(188, 4, NULL, 'Au travers de cet avertissement, le Seigneur nous fait clairement comprendre que nous pouvons nous retrouver sur la voie de la perdition tout en étant chrétiens.'),
(189, 4, NULL, 'En effet, le Maître ne reconnait pour siens que ceux et celles qui font sa volonté.'),
(190, 4, NULL, 'Or la volonté de Dieu c’est que nous gardions ses commandements.'),
(191, 4, NULL, '« Si tu veux entrer dans la vie, garde les commandements. » Matthieu 19 :17.\r\n« Celui qui a mes commandements et qui les garde, c’est celui qui m’aime ; et celui qui m’aime sera aimé de mon Père, je l’aimerai, et je me ferai connaître à lui. » Jean 14 :21.'),
(192, 4, NULL, 'De nos jours il n’est pas rare de trouver des chrétiens qui disent « Seigneur, Seigneur ! » tout en vivant dans le péché.'),
(193, 4, NULL, 'De même, les dénominations chrétiennes pullulent, mais elles ne font pas partie de la véritable Église qui est « la colonne et l’appui de la vérité » (1 Timothée 3 :15).'),
(194, 4, NULL, 'L’heure est grave et le constat est particulièrement alarmant : Non seulement les églises évangéliques ne se sont pas totalement affranchies de l’influence néfaste du catholicisme, mais elles l’ont dépassé dans la paganisation.'),
(195, 4, NULL, 'La Parole de Dieu a été remplacée par des commandements d’hommes et des traditions tout droit sorties de l’enfer.'),
(196, 4, NULL, 'Les chrétiens sont pris en otage d’un système pyramidal à la tête duquel règne un pasteur, assisté de diacres et d’anciens, qui contrôlent le moindre des faits et gestes de leurs ouailles et qui vont jusqu’à leur dicter ce qu’ils doivent penser.'),
(197, 4, NULL, 'Leurs cultes sont des abominations aux yeux du Seigneur, car ils l’outragent au lieu de l’honorer.'),
(198, 4, NULL, '« Je hais et rejette vos fêtes solennelles, et je ne flairerai pas l’odeur de vos parfums dans vos assemblées solennelles. Même si vous m’offrez des holocaustes et des gâteaux, je ne les accepterai pas ; et je ne regarderai pas les bêtes grasses de vos offrandes de paix. Ôtez de devant moi le bruit de vos chansons ; je n’écouterai pas la mélodie de vos luths. Mais que le jugement coule comme de l’eau, et la justice comme un torrent intarissable. Est-ce à moi, maison d’Israël, que vous avez offert des sacrifices et des gâteaux dans le désert pendant quarante ans ? Au contraire, vous avez porté la tente de votre Moloc, et de vos idoles Kijun, l’étoile de votre dieu que vous vous êtes fabriquée. » Amos 5 :21-26.'),
(199, 4, NULL, '« C’est en vain qu’ils m’honorent en enseignant des doctrines qui sont des commandements d’hommes. » Marc 7 :7.'),
(200, 4, NULL, 'C’est triste à dire, mais la plupart des églises actuelles mettent les chrétiens sur la voie de la perdition.'),
(201, 4, NULL, 'Elles ont à leur tête des faux pasteurs qui dirigent leurs ouailles vers la voie de Caïn et les entraînent dans l’égarement de Balaam (Genèse 4 :3-15 ; Nombres 22-24 ; 31 :8 ; Apoclypse 2 :14).'),
(202, 4, NULL, '« Malheur à eux ! Car ils ont suivi la voie de Caïn, ils se sont jetés dans l’égarement de Balaam pour une récompense, ils ont péri par une rébellion semblable à celle de Koré. » Jude 1 :11.'),
(203, 4, 5, 'Caïn est l’emblème de tous les religieux qui pensent pouvoir honorer Dieu en apportant un sacrifice impur et un feu étranger (commandements et traditions d’hommes – Voir Nombres 3 :4).'),
(204, 4, 5, 'C’est d’ailleurs leur totale méconnaissance du Seigneur qui les pousse à poser de tels actes.'),
(205, 4, 5, 'Au lieu de se remettre en question et de se repentir, ils s’endurcissent et s’en prennent aux véritables enfants de Dieu.'),
(206, 4, 5, 'À l’instar des pharisiens qui ont réclamé la mort du Seigneur, ce sont des meurtriers, des serviteurs du diable qui ne supportent pas de voir les disciples exceller (Jean 8 :44 ; 1 Jean 3 :12).'),
(207, 4, 5, 'S’ils ne peuvent pas tuer physiquement, ils tuent avec leur langue en ayant recours aux menaces et aux intimidations.'),
(208, 4, 5, 'Oui, ceux qui veulent marcher avec Dieu doivent s’attendre à être combattus par des chrétiens qui se montreront d’ailleurs bien plus cruels à leur égard que les gens du monde.'),
(209, 4, 5, '« Achab rapporta à Jézabel tout ce qu’Elie avait fait, et comment il avait tué par l’épée tous les prophètes. Et Jézabel envoya un messager vers Elie, pour lui dire : Que les dieux me traitent dans toute leur rigueur, si demain, à cette heure-ci, je ne fais de ta vie ce que tu as fait de la vie de chacun d’eux ! Elie, voyant cela, se leva et s’en alla pour sauver sa vie. Il arriva à Beer-Schéba, qui appartient à Juda ; et il laissa là son serviteur. » 1 Rois 19 :1-3.'),
(210, 4, 5, '« Et ils ont dit : Venez, et faisons des complots contre Jérémie ! Car la loi ne périra pas chez le prêtre, ni le conseil chez le sage, ni la parole chez le prophète. Venez, et tuons-le avec la langue, et ne soyons pas attentifs à ses discours ! » Jérémie 18 :18.'),
(211, 4, 5, 'Balaam représente quant à lui tous ceux qui ont été autrefois en Christ et qui se sont laissés séduire par les richesses et les honneurs que Satan leur a proposés (Matthieu 4 :8-9).'),
(212, 4, 5, 'Seulement voilà, ils n’ont pas l’intention d’aller seuls en enfer, ils veulent que d’autres les suivent dans leur égarement.'),
(213, 4, 5, 'Balaam n’ayant pu maudire les enfants d’Israël sur ordre de Balak parce que Yahweh avait béni son peuple, envoya à leur rencontre des femmes étrangères qui les firent tomber dans la fornication (Nombres 25 :1-2 ; 31 :16).'),
(214, 4, 5, 'Aujourd’hui encore, le péché sexuel pousse malheureusement beaucoup de chrétiens à s’arrêter sur la voie du pécheur et cela pour leur propre malheur.'),
(215, 4, 5, '« Mon fils, observe mes paroles, et garde avec toi mes commandements. Garde mes commandements et tu vivras ; garde mes enseignements comme la prunelle de tes yeux. Lie-les à tes doigts, écris-les sur la table de ton coeur. Dis à la sagesse : Tu es ma soeur ; et appelle l’intelligence, ta parente. Afin qu’elles te préservent de <b>la femme étrangère, de l’étrangère qui emploie des paroles doucereuses</b>. Comme je regardais de la fenêtre de ma maison à travers mon treillis, je vis parmi les stupides, et je remarquai parmi les jeunes gens un jeune homme dépourvu de sens. Il passait dans la rue, près de l’angle où se tenait une de ces femmes, et qui suivait le chemin de sa maison, sur le soir à la fin du jour, lorsque la nuit devenait noire et obscure. <b>Et voici, il fut abordé par une femme, vêtue en tenue de prostituée, et pleine de ruse dans le coeur.</b> Elle était bruyante et débauchée, ses pieds ne restaient pas dans sa maison ; tantôt dehors, tantôt sur les places, elle se tenait aux aguets à chaque coin de rue. Elle le saisit, et l’embrassa ; et avec un visage effronté, lui dit : J’ai chez moi des sacrifices d’offrande de paix ; j’ai aujourd’hui accompli mes voeux. C’est pourquoi je suis sortie au-devant de toi, pour te chercher soigneusement, et je t’ai trouvé. J’ai garni mon lit de couvertures, d’étoffes de fil d’Égypte. Je l’ai parfumé de myrrhe, d’aloès et de cinnamome. Viens, enivrons-nous de plaisir jusqu’au matin, réjouissons-nous en amours. Car mon mari n’est pas à la maison, il est parti pour un voyage lointain. Il a pris avec lui un sac d’argent, il retournera en sa maison au jour assigné. <b>Elle l’a fait détourner par beaucoup de douces paroles, et l’a attiré par la flatterie de ses lèvres.</b> Il s’en alla aussitôt après elle, comme un boeuf qui va à la boucherie, comme le fou qu’on lie pour être châtié ; jusqu’à ce que la flèche lui ait transpercé le foie ; comme l’oiseau qui se hâte vers le filet, sans savoir que c’est au prix de sa vie. Maintenant donc, fils, écoutez-moi et soyez attentifs aux paroles de ma bouche. Que ton coeur ne se détourne pas vers les voies d’une telle femme, ne t’égare pas dans ses sentiers. Car elle a fait tomber plusieurs blessés à mort, et tous ceux qu’elle a tués étaient forts. <b>Sa maison est le chemin du scheol, qui descend vers les demeures de la mort.</b> » Proverbes 7.'),
(216, 4, 5, 'Si l’ennemi voit qu’il ne parvient pas à nous faire tomber dans la débauche sexuelle, il s’efforcera à nous entraîner dans la prostitution spirituelle en envoyant des gens rusés, qui par des paroles flatteuses et séductrices, tenteront de nous pousser au compromis.'),
(217, 4, 5, 'Or le compromis se traduit par l’acceptation des fausses doctrines et des traditions humaines qui sont souvent d’inspiration démoniaque, ou encore par la tolérance vis-à-vis du péché.'),
(218, 4, 5, 'L’ennemi sait que ces choses, même en petite quantité, suffisent à dévier le marcheur du droit chemin, car il suffit d’un peu de levain pour faire lever toute la pâte (Galates 5 :9).'),
(219, 4, 6, 'La voie du pécheur est le lieu de rendez-vous des mauvaises compagnies, de l’ivraie, dont l’unique objectif est de corrompre le véritable enfant de Dieu (1 Corinthiens 15 :33).'),
(220, 4, 6, '« Il leur proposa une autre parabole, et il dit : Le Royaume des cieux est semblable à un homme qui a semé de la bonne semence dans son champ. Mais, pendant que les hommes dormaient, son ennemi vint et sema de l’ivraie parmi le blé, puis s’en alla. Lorsque l’herbe eut poussé et donné du fruit, alors l’ivraie parut aussi. Et les esclaves du maître de la maison vinrent à lui, et lui dirent : Seigneur, n’as-tu pas semé de la bonne semence dans ton champ ? D’où vient donc qu’il y a de l’ivraie ? Mais il leur répondit : C’est un ennemi qui a fait cela. Et les esclaves lui dirent : Veux-tu donc que nous allions l’arracher ? Et il leur dit : Non, de peur qu’en arrachant l’ivraie, vous ne déraciniez le blé en même temps. Laissez-les croître tous deux ensemble jusqu’à la moisson ; et au temps de la moisson, je dirai aux moissonneurs : Arrachez premièrement l’ivraie, et liez-la en gerbes pour la brûler, mais amassez le blé dans mon grenier. » Matthieu 13 :24-30'),
(221, 4, 6, 'L’ivraie est une mauvaise herbe dont certaines variétés sont toxiques et provoquent des effets semblables à l’ébriété ; d’où son nom latin ebrietas qui signifie « ivresse ».'),
(222, 4, 6, 'Son nom grec est zizanion, ce qui a donné en français « zizanie ».'),
(223, 4, 6, 'Une autre de ses particularités c’est qu’elle ressemble à s’y méprendre au blé, et qu’elle pousse en même temps et au même endroit que ce dernier.'),
(224, 4, 6, 'Au travers de cette parabole, le Seigneur nous avertit que Satan place ses enfants y compris dans les endroits où l’on est censé trouver des chrétiens, des personnes qui craignent réellement Dieu.'),
(225, 4, 6, 'Ce sont des personnes dont les fruits sont mauvais et qui n’ont de la piété que l’apparence (2 Timothée 3 :5).'),
(226, 4, 6, 'Le but de l’ivraie est clair : semer la zizanie, créer des scandales, séduire pour pousser le marcheur à s’arrêter sur la voie du pécheur.'),
(227, 4, 6, '« Et la multitude d’étrangers qui se trouvait au milieu d’eux se livra à la convoitise ; et même, les enfants d’Israël se mirent à pleurer disant : Qui nous donnera de la viande à manger ? Nous nous souvenons des poissons que nous mangions en Égypte, et qui ne nous coûtaient rien, des concombres, des melons, des poireaux, des oignons, et de l’ail. Et maintenant nos âmes sont asséchées ; nos yeux ne voient que de la manne. » Nombres 11 :4-6.'),
(228, 4, 6, '« Prenez donc garde à vous-mêmes, et à tout le troupeau sur lequel le Saint-Esprit vous a établis évêques, pour paître l’Eglise de Dieu, qu’il a acquise par son propre sang. Car je sais qu’après mon départ, il s’introduira parmi vous des loups très dangereux, qui n’épargneront pas le troupeau » Actes 20 :28-29.'),
(229, 4, 6, 'L’ivraie envoyée par Satan n’aura de cesse de nous entraîner à désirer et aimer les choses de ce monde.'),
(230, 4, 6, 'Elle nous poussera à regarder derrière nous comme l’a fait la femme de Lot (Genèse 19), elle nous apportera la distraction (Exode 32 :6 ; Galates 3 :1) et les inquiétudes liées au manger, au boire, au mariage, au travail (Nombres 32)…'),
(231, 4, 6, '« Car ces sortes de gens ne servent pas notre Seigneur Jésus-Christ, mais leur propre ventre ; et, par de douces paroles et des flatteries, ils séduisent les coeurs des simples. » Romains 16 :18.'),
(232, 4, 6, 'Pourtant la Parole est claire, même si certains besoins peuvent être légitimes, ils ne doivent pas supplanter la priorité principale qu’est le Royaume de Dieu.'),
(233, 4, 6, 'Le marcheur doit donc poursuivre sa marche en sachant que de toute façon Dieu pourvoira fidèlement à tous ses besoins.'),
(234, 4, 6, '« Ne vous inquiétez donc pas, en disant : Que mangerons-nous ? Ou : Que boirons-nous ? Ou : De quoi serons-nous vêtus ? Vu que les Gentils recherchent toutes ces choses. Car votre Père céleste sait que vous avez besoin de toutes ces choses. Mais cherchez premièrement le Royaume de Dieu et sa justice ; et toutes ces choses vous seront données par-dessus. Ne vous inquiétez donc pas pour le lendemain ; car le lendemain prendra soin de lui-même. A chaque jour suffit sa peine. » Matthieu 6 :31-34.'),
(235, 4, 6, 'Rappelez-vous que l’ivraie se dit ebrietas en latin, ce qui signifie « ivresse ». Sa mission est d’enivrer les marcheurs afin qu’ils n’atteignent pas leur but (Apocalypse 17).'),
(236, 4, 6, '<h1>L’ivraie plantée par Satan représente :</h1>'),
(237, 4, 6, '- <b>Les occultistes</b> : (du mot «occulte»: ce qui est caché), ce sont les sorciers, les magiciens, les prêtres vaudous, les cartomanciens, les astrologues, les voyants... Ces personnes pratiquent des sciences occultes comme la médecine orientale, l’hypnose, le magnétisme, le yoga etc. Or Dieu hait l’occultisme comme le dit la Parole dans Deutéronome 18 :9-12. La Bible nous parle de plusieurs personnes qui étaient au service de Satan : Jannès et Jambrès, magiciens de Pharaon (2 Timothée 3 :8); la cartomancienne de En-Dor (1 Samuel 28 :7-25), Simon le magicien (Actes 8 :5-25), Bar-Jésus ou Elymas (Actes 13 :6-13).'),
(238, 4, 6, '- <b>Les faux serviteurs</b> : les faux pasteurs, prophètes et apôtres qui cachent la vérité comme le dit la Bible dans 2 Corinthiens 11 :13 : « Car de tels hommes sont de faux apôtres, des ouvriers trompeurs qui se déguisent en apôtres de Christ ».'),
(239, 4, 6, '<h1>Il y a deux types d’agents de Satan :</h1>'),
(240, 4, 6, '- <b>Les agents inconscients</b> : Ce sont des personnes inconsciemment utilisées par le diable, qui par leur vie dissolue, servent Satan à leur insu (ceux qui sont de Dieu ne pratiquent pas le péché). C’est le cas des païens ou des personnes incrédules et des chrétiens charnels (1 Jean 3 :9 ; Matthieu 16 :22-23).'),
(241, 4, 6, '- <b>Les agents conscients</b> : Ce sont des personnes qui ont signé consciemment un pacte avec Satan. Voici le témoignage de deux femmes qui étaient consciemment au service de Satan et que le Seigneur a libérées.'),
(242, 4, 5, '<h1>Témoignage de Yolande, 33 ans, délivrée de la sorcellerie</h1>'),
(243, 4, 6, 'En mission au Cameroun du 24 novembre au 4 décembre 2011, alors que je recevais les gens en entretien, j’ai été sollicité par une femme sataniste qui voulait abandonner le satanisme.'),
(244, 4, 6, 'Voici son témoignage :'),
(245, 4, 6, '« Je m’appelle Yolande et suis originaire du Cameroun. A l’âge de 15 ans, ma mère, qui était la chef des sorcières de notre quartier, m’amenait visiter toutes les maisons du quartier où nous habitions. Avec d’autres sorcières, nous préparions de la nourriture que nous distribuions aux gens du quartier (village Banganté). J’ai été initiée par ma mère pour tuer spirituellement et physiquement : je sacrifiais des hommes que je transformais en animaux. Je ne me souciais pas de savoir qui étaient ces personnes ni quel était leur sort car j’étais programmée pour détruire tous ceux que je côtoyais dans mon quartier y compris les chrétiens. Cela m’arrivait de me transformer en serpent. D’ailleurs un jour j’ai avalé un enfant. Plus tard, ma mère organisa mon mariage spirituel avec un esprit qui me dictait ma conduite. J’ai eu deux enfants dans le monde spirituel avec ce démon.\r\nEn 2007, j’ai fait le choix de me tourner vers Dieu. Je continuais cependant à participer encore à des «fêtes» spirituelles desquelles je revenais abattue et découragée par rapport au Seigneur. Un jour, un frère tenta de me venir en aide quant au lien qui me tenait captive mais mon mari spirituel le combattit (combats avec des démons, menaces). Ma propre mère et ce mari de nuit m’attaquaient constamment. Ils me faisaient croire que j’étais un homme afin que je devienne homosexuelle. Je subissais toutes sortes d’oppressions. J’ai donc décidé de confesser la sorcellerie et le Seigneur a commencé à opérer des délivrances. Mes deux enfants spirituels (des démons) me quittèrent puis ce fut au tour du mari (démon) de partir. Un autre démon qui était comme son double s’en alla aussi. Toutefois, comme il restait encore des zones d’ombre, la délivrance n’était pas complète. J’étais encore habitée par trois esprits, un serpent et un hibou au niveau du ventre et un autre serpent au niveau du cou.\r\nFatiguée de faire le mal, j’ai décidé de tout abandonner et de confesser totalement mon péché. J’ai alors été totalement délivrée par le Seigneur.»'),
(246, 4, 6, '<h1>Témoignage d’une jeune femme ex-sataniste</h1>'),
(247, 4, 6, 'Cette jeune femme originaire de la RDC, est actuellement âgée de 27 ans et poursuit des études à l’Université.');
INSERT INTO `t2v_detail_livre` (`id`, `categorie_id`, `souscategorie_id`, `contenu`) VALUES
(248, 4, 6, 'A l’âge de 9 ans, sa grand-mère l’initia à la sorcellerie par la nourriture (la viande). Une nuit, cette dernière vint pendant son sommeil pour réclamer sa viande. La jeune fille lui ayant répondu qu’elle n’avait pas la possibilité de lui rembourser, la vieille sorcière lui proposa donc d’aller voir son maître Satan afin de s’expliquer. Prise de panique, elle finit par accepter et se retrouva hors de son corps en compagnie de sa grand-mère. Elles rejoignirent alors Satan dans le monde astral. Satan lui demanda à son tour de lui rembourser son dû. L’enfant s’excusa en disant qu’elle n’en avait pas les moyens, ce à quoi il lui répondit que dans son monde, le pardon n’existait pas et qu’il lui faudrait tuer mystiquement quelqu’un de sa famille pour s’acquitter de sa dette. De retour chez elle, investie du pouvoir qu’elle venait de recevoir des ténèbres, la jeune fille commença à détruire, envoûter et tuer ses proches. La première personne qu’elle sacrifia fut un membre de sa famille. Son entrée dans le satanisme fut scellée lorsqu’elle but le sang de sa victime en compagnie d’autres satanistes.'),
(249, 4, 6, 'Satan fit d’elle une véritable sirène de l’air et des eaux et une Jézabel. Il lui confia la mission de détruire les hommes et en particulier les chrétiens. Elle se maria dans le deuxième monde où elle sacrifia sa virginité à Satan. Elle devint ainsi la mère de deux enfants démoniaques. Cependant, elle était incapable d’avoir des enfants physiques car elle avait sacrifié sa matrice à Satan.'),
(250, 4, 6, 'Elle intervenait dans tous les domaines de la vie : la famille, la politique, l’entreprise et bien sûr dans les églises... Elle devint ainsi une fidèle de l’une des assemblées de Kinshasa.'),
(251, 4, 6, 'Lorsqu’une personne lui racontait ses projets de vie (mariage, voyage, affaires...), elle s’organisait pour tout faire échouer à l’avance. Elle n’avait ni pitié pour sa famille qu’elle avait ruinée financièrement, notamment en paralysant les affaires de son père, ni pour les jeunes de son entourage dont elle avait bloqué les études.'),
(252, 4, 6, 'Ainsi, quand elle ne voulait pas aller à l’école, elle envoûtait toute sa classe et empêchait ainsi ses camarades de se concentrer. Par pure jalousie, à défaut de pouvoir la tuer, elle frappa de stérilité l’une de ses amies parce qu’elle était plus belle qu’elle.'),
(253, 4, 6, 'Parmi ses oeuvres de destruction, elle a confessé avoir fait échouer trois personnes à la députation. D’ailleurs, avec le groupe de satanistes avec lequel elle travaillait, elle a tenté en vain de provoquer une guerre en RDC au moment des élections qui ont eu lieu en 2011. Elle a provoqué des accidents mortels, fait avorter mystiquement des femmes enceintes, sacrifié mystiquement plus de vingt personnes, initié à la sorcellerie plus de treize enfants dont deux de ses petits cousins. Dix démons l’assistaient dans sa mission de destruction des oeuvres de Dieu. Lorsqu’elle se rendait dans les églises, si le pasteur était juste et craignait Dieu, elle laissait sa sorcellerie dehors. Mais si le pasteur n’était pas intègre, elle le détruisait lui et son assemblée.'),
(254, 4, 6, 'Pendant 14 ans, elle a combattu tous les chrétiens, surtout ceux qui priaient beaucoup. Elle avait intérêt à réussir ses missions sinon elle se faisait rouer de coups par les démons.'),
(255, 4, 6, 'Elle finit cependant par se poser des questions sur Dieu et surtout sur le Nom de Yéhoshua. En effet, elle avait remarqué que dans le monde astral ou démoniaque, tout le monde, y compris Satan, se mettait à genoux, lorsque ce Nom était cité. Cela l’intrigua énormément. Elle se dit que si Satan fléchissait les genoux à chaque fois que le Nom de Yéhoshua était prononcé, alors pourquoi ne pas servir ce Dieu qui semblait plus fort que lui ?'),
(256, 4, 6, 'Le matin, quand elle se réveillait, elle voulait abandonner la sorcellerie, mais elle ne savait pas comment faire. Elle ne trouvait personne à qui confesser ses méfaits. Un jour, elle se rendit chez un pasteur pour lui avouer son péché et son désir de l’abandonner. Mais ce dernier n’eut pas de meilleure idée que de lui proposer une délivrance par le biais d’un rapport sexuel !'),
(257, 4, 6, 'Le 16 février 2012, je me suis rendu à Kinshasa pour une mission de deux semaines. Lors d’une réunion de prière, Dieu me donna une parole de connaissance selon laquelle une personne pratiquant la sorcellerie était dans l’assemblée. J’invitai donc cette personne à venir me voir à la fin de la réunion pour la délivrance. La jeune femme saisit alors l’occasion et confessa son péché. J’ai prié pour elle au Nom de Yéhoshua et Dieu l’a totalement délivrée !'),
(258, 4, 6, '<h1>Quels sont les buts de Satan et de ses démons ?</h1>'),
(259, 4, 6, 'Maintenir les hommes dans l’ignorance et le péché pour les entraîner en enfer en les éloignant du chemin (Osée 4:6), se faire adorer à la place de Dieu (Matthieu 4 :8-10), étouffer la vie spirituelle des chrétiens (Jean 10 :10), posséder les hommes afin de les détruire, pousser les hommes à la pratique de l’occultisme.'),
(260, 4, 6, 'Puisque Satan et ses démons sont des esprits, le combat que doit mener le blé ou le marcheur est nécessairement spirituel (Ephésiens 6 :12).'),
(261, 4, 6, 'Pendant des années j’ai collaboré avec des personnes que je pensais être sincères avec Dieu et que j’ai beaucoup aimées. Le message du retour à la Parole m’a ouvert les yeux à leur sujet. Tout a commencé avec la dénonciation de la pratique de la dîme. À ma grande surprise, cela a provoqué une première vague de départs qui m’a laissé dans une totale incompréhension. Au fil du temps, et à chaque nouvelle illumination que le Seigneur me donnait, d’autres départs survenaient. Bien souvent, ces gens invoquaient des motifs insensés ou m’accusaient faussement de leur avoir causé quelque tort. Choqué et blessé, ces séparations brutales m’ont déstabilisé pendant un temps sans pour autant me faire dévier de la trajectoire que le Seigneur m’a fixée. Il m’a cependant fallu des années pour réaliser que ces personnes n’étaient pas de Dieu. Ces gens ne gravitaient autour de moi que pour satisfaire leurs intérêts personnels, notamment profiter des foules que le message attirait pour se faire de l’argent. Avant de partir, ils s’adonnaient à un véritable travail de sabotage dans les coulisses. Ils avaient recours au mensonge et à la calomnie et prédisaient l’effondrement de l’oeuvre que Dieu m’a confiée pour entraîner dans leur égarement les âmes mal affermies. Or contrairement à leurs présages malveillants, après chaque vague de départs, le Seigneur se glorifiait davantage. C’était donc Dieu lui-même qui faisait un tri pour me séparer des mauvaises compagnies afin que je puisse continuer la marche sans encombre.'),
(262, 4, 6, 'Ne subissez pas l’amitié et la collaboration des gens, mais allez vers Dieu dans la prière pour savoir avec qui marcher, car ceux que nous côtoyons ne sont pas tous des nôtres (Luc 6 :12-16). En effet, l’ivraie est semblable au blé, mais elle est la semence de Satan (Matthieu 13).'),
(263, 4, 6, '« Petits enfants, c’est ici la dernière heure ; et comme vous avez entendu que l’Antichrist viendra, il y a maintenant plusieurs antichrists ; et par là nous connaissons que c’est la dernière heure. Ils sont sortis du milieu de nous, mais ils n’étaient pas des nôtres ; car s’ils avaient été des nôtres, ils seraient demeurés avec nous, mais c’est afin qu’il soit manifeste que tous ne sont point des nôtres. » 1 Jean 2 :18-19.'),
(264, 4, 6, 'Même les apôtres du premier siècle étaient infiltrés par des faux frères.'),
(265, 4, 6, '« Mes bien-aimés, ne croyez pas à tout esprit ; mais éprouvez les esprits pour savoir s’ils sont de Dieu, car plusieurs faux prophètes sont venus dans le monde. » 1 Jean 4 :1.'),
(266, 4, 6, 'Il est vital pour le marcheur de comprendre qu’il doit se séparer de l’ivraie c’est-à-dire des faux frères.'),
(267, 4, 6, '<h1>L’émondage ou la séparation</h1>'),
(268, 4, 6, 'Alors que je me plaignais au sujet de la rébellion de certaines personnes que j’avais formées, le Seigneur me donna ce passage dans une vision.'),
(269, 4, 6, '« Tout sarment qui est en moi et qui ne porte pas de fruit, il le retranche ; <b>et tout sarment qui porte du fruit, il l’émonde, afin qu’il porte encore plus de fruit</b> » Jean 15 :1-2.'),
(270, 4, 6, 'L’émondage est une technique de taille consistant à supprimer les branches mortes, malades, abimées, fragiles ou dangereuses d’un arbre ou d’un arbuste.'),
(271, 4, 6, 'Cette technique favorise la croissance et la beauté de l’arbre ou de l’arbuste ainsi que sa santé puisqu’elle permet d’éviter la propagation des maladies.'),
(272, 4, 6, 'Les branches coupées, quant à elles, sont broyées ou brulées.'),
(273, 4, 6, '« Si quelqu\'un ne demeure pas en moi, il est jeté dehors, comme le sarment, et il se sèche ; puis on l\'amasse, on le met au feu, et il brûle. » Jean 15 :6.'),
(274, 4, 6, 'Ce travail de purification que le Père opère en chacun de ses enfants consiste à séparer le chrétien des faux frères mais aussi de son propre caractère.'),
(275, 4, 6, 'En effet, certaines personnes sont semblables à des branches mortes, pourries et dangereuses. En ralentissant le chrétien dans sa marche, elles constituent pour lui de véritables boulets que le Seigneur doit retirer.'),
(276, 4, 6, 'C’est ainsi que j’ai compris que si le Seigneur opérait toutes ces séparations c’était pour me rendre plus léger afin de me rendre capable de poursuivre ma marche sans encombre.'),
(277, 4, 6, 'Comme Abraham qui a dû se séparer de son neveu Lot (Genèse 13), ne vous découragez pas lorsque vos proches vous quittent. Ayez les yeux fixés sur le Seigneur et restez confiants car Dieu vous émonde.'),
(278, 4, 6, '« Moab était tranquille depuis sa jeunesse, <b>il reposait sur sa lie</b>, il n\'était pas vidé de vase en vase, et il n\'allait pas en captivité. C\'est pourquoi sa saveur lui est restée, et son odeur ne s\'est pas changée. » Jérémie 48 :11.'),
(279, 4, 6, 'Durant l’émondage, Dieu purifie aussi le marcheur en le transvasant d’un caractère à un autre, d’un corps à un autre.'),
(280, 4, 6, 'Le but de ce travail est de le vider de toute sa lie ; la lie étant l’image du péché qui est caché au fond du coeur.'),
(281, 4, 6, 'A travers ce processus, Dieu ôte l’odeur du péché afin que le marcheur puisse répandre l’odeur de Christ. Personne ne peut être rempli de Dieu sans être vidé de soi-même.'),
(282, 4, 6, 'En effet, Dieu ne peut pas remplir un vase qui est déjà rempli. Le mélange n’est pas possible avec le Seigneur.'),
(283, 4, 6, 'Par conséquent, le transvasement est un processus très difficile à vivre, car durant cette purification le marcheur doit perdre tous les acquis et les honneurs que les hommes lui ont accordé.'),
(284, 4, 6, 'Ainsi, durant toute sa marche, le chrétien sera constamment émondé par le Seigneur. Ce travail ne cesse jamais. Le but étant de le faire passer de gloire en gloire.'),
(285, 4, 6, 'A chaque fois que le Seigneur voudra élever un chrétien ou lui confier une nouvelle responsabilité, il l’émondera pour le qualifier.'),
(286, 5, NULL, 'Le mot assemblée fait allusion à une coalition. C’est une réunion temporaire de personnes pour lutter contre un ennemi commun. Une coalition est également une alliance entre plusieurs partis ayant un même but.'),
(287, 5, NULL, '« Pourquoi les rois de la terre se lèvent-ils en personne, et les princes se liguent-ils avec eux contre Yahweh, et contre son Messie» Psaumes 2 :2.'),
(288, 5, NULL, 'Daniel parle des alliances entre les ennemis de Yahweh :'),
(289, 5, NULL, '«Quant à ce que tu as vu, le fer mêlé avec l\'argile de potier, c\'est qu\'ils se mêleront par <b>des alliances humaines ; mais ils ne seront point unis l\'un à l\'autre de même que le fer ne s\'allie point avec l\'argile</b>» (Daniel 2 :43).'),
(290, 5, NULL, 'L’assemblée des moqueurs est une alliance entre des personnes qui ne s’aiment pas mais qui s’assemblent contre un ennemi commun.'),
(291, 5, NULL, '«Et ce même jour, Pilate et Hérode devinrent amis ; car auparavant ils étaient ennemis» Luc 23 :12. C’est l’alliance entre Hérode et Pilate contre Jésus.'),
(292, 5, NULL, 'Jérémie aimait tellement le Seigneur qu\'il refusait de s’assoir dans l\'assemblée des moqueurs.'),
(293, 5, NULL, '« Je ne me suis pas assis dans l\'assemblée des moqueurs, et je ne m\'y suis pas réjoui ; mais je me suis assis solitaire à cause de ta main, car tu me remplissais d\'indignation. » (Jérémie 15 :17).'),
(294, 5, NULL, 'Le mot moqueur se dit luwts en hébreu, ce qui signifie « mépriser », « parler avec arrogance », « se moquer de », « tourner en dérision ». La moquerie est un moyen que l’ennemi emploie pour faire pression et décourager le marcheur. Son objectif c’est de l’intimider et de le blesser par des paroles sous couvert de la plaisanterie.'),
(295, 5, NULL, '« Tel est celui qui fait l’insensé, et qui cependant jette des feux, des flèches et des choses propres à tuer, tel est l’homme qui a trompé son ami, et qui après cela dit : Ne plaisantais-je donc pas ? » Proverbes 26 :18-19.'),
(296, 5, NULL, 'Le marcheur qui se préoccupe du qu’en-dira-t-on et du regard que les hommes portent sur lui ne pourra pas achever la course avec Dieu.'),
(297, 5, NULL, 'Ainsi, le roi Saül, qui avait pourtant commencé avec Dieu, a été disqualifié parce qu’il a cédé à la pression populaire (1 Samuel 15 :24).'),
(298, 5, NULL, 'À l’inverse, l’apôtre Paul ne s’est pas démonté devant la tentative d’intimidation du roi Agrippa, mais il continua à annoncer l’Evangile selon l’ordre que le Seigneur lui a donné (Actes 26 :28-30 ; Actes 9 :15).'),
(299, 5, NULL, '« Car je n’ai pas honte de l’Évangile de Christ, vu qu’il est la puissance de Dieu pour le salut de tous ceux qui croient… » (Romains 1 :16).'),
(300, 5, NULL, 'L’autre objectif de la moquerie c’est d’amener le marcheur à avoir honte du Seigneur. Or Jésus a dit :'),
(301, 5, NULL, '« Car quiconque aura honte de moi et de mes paroles au milieu de cette génération adultère et pécheresse, le Fils de l’homme aura aussi honte de lui, quand il viendra environné de la gloire de son Père avec les saints anges. » (Marc 8 :38).'),
(302, 5, NULL, '« Mais pour les timides, les incrédules, les abominables, les meurtriers, les fornicateurs, les sorciers, les idolâtres et tous les menteurs, leur part sera dans l’étang ardent de feu et de soufre, qui est la seconde mort. » (Apocalypse 21 :8).'),
(303, 5, NULL, 'L’assemblée des moqueurs est la synagogue de Satan décrite dans Apocalypse 3 :7-9.'),
(304, 5, NULL, 'Elle représente la chrétienté actuelle qui s’est totalement paganisée.'),
(305, 5, NULL, 'Elle comprend les églises faisant partie des fédérations d’hommes et qui acceptent les lois inspirées par l’esprit de l’antichrist.'),
(306, 5, NULL, 'La synagogue de Satan c’est aussi Babylone la grande, la prostituée d’Apocalypse 17.'),
(307, 5, NULL, 'Ses serviteurs sont assis autour de la table des démons pour manger les viandes sacrifiées aux idoles et boire la coupe des démons qui contient toutes sortes de fausses doctrines qui empoisonnent les églises.'),
(308, 5, NULL, '« Mais je dis que les choses que les Gentils sacrifient, ils les sacrifient aux démons, et non à Dieu ; or je ne veux pas que vous soyez en communion avec des démons. Vous ne pouvez pas boire la coupe du Seigneur et la coupe des démons ; vous ne pouvez pas participer à la table du Seigneur et à la table des démons. » 1 Corinthiens 10 :20-21.'),
(309, 5, NULL, 'La synagogue de Satan accueille en son sein les associations des faux serviteurs déguisés en serviteurs de Dieu (2 Corinthiens 11 :13).'),
(310, 5, NULL, 'En effet, les faux prophètes se sont toujours ligués contre les vrais qui eux étaient souvent seuls.'),
(311, 5, NULL, 'On peut ainsi citer l’exemple de Michée et des 400 prophètes de Baal (1 Rois 22), d’Elie et des 850 prophètes de Baal et d’Ashera (1 Rois 18 et 19), de Jérémie et des faux prophètes (Jérémie 15 et 20), de Paul et des faux apôtres (2 Corinthiens 11), ou encore de Luther et des prêtres catholiques, de Georges Fox et des religieux de son époque…'),
(312, 5, NULL, 'Certains chefs juifs et même des gens du peuple reconnaissaient la messianité de Jésus, mais refusaient de le déclarer publiquement de peur d’être exclus de leur synagogue (Jean 12 :42 ; Jean 9 :22).'),
(313, 5, NULL, 'D’ailleurs, le Seigneur avait averti ses disciples que c’est ce qui allait leur arriver (Jean 16 :2).'),
(314, 5, NULL, 'En effet, les vrais enfants de Dieu, qui marchent selon l’Esprit, ne cadrent pas avec le message et le mode de fonctionnement de ces assemblées.'),
(315, 5, NULL, 'Aussi, ils ne doivent pas attendre d’être exclus de ces organisations humaines apostâtes, mais ils doivent prendre eux-mêmes l’initiative d’en sortir.'),
(316, 5, NULL, '« Puis j’entendis une autre voix du ciel, qui disait : Sortez de Babylone, mon peuple, afin que vous ne participiez pas à ses péchés, et que vous n’ayez pas de part à ses fléaux. » Apocalypse 18 :4.'),
(317, 5, NULL, 'Le Psaume 1 nous dit que l’homme qui ne s’assied pas dans l’assemblée des moqueurs est béni. Le mot hébreu qui est traduit par le verbe « s’asseoir » signifie aussi « demeurer », « rester », « habiter ».'),
(318, 5, NULL, 'En effet, le marcheur qui est séduit oublie la marche et s’installe confortablement dans l’assemblée des moqueurs.'),
(319, 5, NULL, 'Au lieu de poursuivre l’objectif fixé par Dieu, il se conforme à l’âge présent et finit par adhérer complètement au système impie mis en place par Babylone.'),
(320, 5, NULL, 'Les marcheurs qui s’arrêtent et s’asseyent finissent par perdre la vision du ciel et construisent leurs propres royaumes terrestres (Genèse 11).'),
(321, 5, NULL, 'Souvenons-nous en effet que les Hébreux, qui avaient pourtant expérimenté une si grande délivrance en Égypte, s’étaient assis au pied du mont Sinaï et qu’ils avaient mis en place leur propre religion.'),
(322, 5, NULL, 'Ils s’étaient ainsi fabriqué un veau d’or servant de divinité et l’ont adoré avec de la musique et des danses (Exode 32).'),
(323, 6, NULL, 'Le mot « conseil » dans Psaume 1 signifie aussi « avis », « but ».'),
(324, 6, NULL, 'Dans 1 Rois 13 il nous est raconté l’histoire d’un jeune homme qui avait un grand appel de Dieu sur sa vie, mais qui a fini par mourir parce qu’il a dévié de la vision qu’il avait reçue du Seigneur en écoutant un vieux prophète mal intentionné.'),
(325, 6, NULL, 'Or il ne faut pas se laisser impressionner par les titres et le CV que certains prétendus hommes de Dieu vous présentent pour légitimer leurs conseils.'),
(326, 6, NULL, 'Ce n’est pas parce qu’une personne porte un titre qu’elle est approuvée et envoyée par Dieu pour collaborer avec vous, ou pire encore : dicter votre conduite.'),
(327, 6, NULL, 'L’apôtre Paul est resté fidèle à la vision que le Seigneur lui a donnée sans se préoccuper des faux frères ni même des apôtres qui l’avaient précédé dans la foi et qui avaient côtoyé le Seigneur lorsqu’il était sur terre.'),
(328, 6, NULL, '« Et même on n’obligea pas Tite, qui était avec moi, de se faire circoncire quoiqu’il fût Grec. Et cela à cause des faux frères qui s’étaient furtivement introduits et glissés dans l’église pour épier la liberté que nous avons en Jésus-Christ, afin de nous ramener dans la servitude. Nous ne leur cédâmes pas un instant et nous résistâmes à leurs exigences, afin que la vérité de l’Évangile soit maintenue parmi vous. Et je ne suis différent en rien de ceux qui sont les plus estimés, quels qu’ils aient été autrefois, Dieu n’ayant pas d’égard à l’apparence extérieure de l’homme, car ceux qui sont en estime ne m’ont rien communiqué de plus. » Galates 2 :3-6.'),
(329, 6, NULL, '<h1>Les conseils d’Achitophel (2 Samuel 15 ; 16 et 17)</h1>'),
(330, 6, NULL, 'Achitophel, dont le nom signifie « frère de la folie », était le conseiller principal de David.'),
(331, 6, NULL, 'Ses conseils étaient tellement prisés qu’ils étaient considérés comme ayant la même valeur que la Parole de Dieu :'),
(332, 6, NULL, '« Or les conseils que donnait Achitophel en ce temps-là étaient autant estimés que si un homme avait consulté la Parole de Dieu. C’est ainsi qu’on considérait tous les conseils qu’Achitophel donnait tant à David qu’à Absalom » (2 Samuel 16 :23).'),
(333, 6, NULL, 'Pourquoi les conseils d’un homme dont le nom signifie « frère de la folie » ont été mis sur le même pied d’égalité que la Parole Dieu ? Parce que David s’était compromis en commettant l’adultère avec Bath-Schéba et en faisant tuer Urie, le mari de celle-ci dans le but de cacher son péché.'),
(334, 6, NULL, 'En effet, bien plus qu’un simple conseiller, Achitophel était aussi le grand-père de Bath-Schéba. David l’a-t-il pris comme conseiller dans le but de se faire pardonner ? Visiblement, ce choix s’avéra désastreux.'),
(335, 6, NULL, 'En effet, Achitophel prit part à la révolte d’Absalom.'),
(336, 6, NULL, 'Il connaissait suffisamment bien David, ses faits et gestes ainsi que ses stratégies de combat pour apporter une aide efficace à la rébellion de son fils.'),
(337, 6, NULL, 'C’est ainsi qu’il conseilla à Absalom de coucher avec les concubines de son père (2 Samuel 16 :21) et de livrer une guerre contre lui (2 Samuel 17 :1). Mais lorsqu’Absalom n’écouta pas l’un de ses conseils, il se suicida.'),
(338, 6, NULL, 'L’esprit d’Achitophel opère encore aujourd’hui dans le milieu évangélique. Ces conseillers sont des ennemis et des traitres potentiels que Satan peut utiliser pour vous détruire.'),
(339, 6, NULL, 'C’est une folie de remplacer la Parole de Dieu par les conseils des hommes !'),
(340, 6, NULL, 'Le conseil des méchants c’est donc tout simplement la parole des hommes ou celle de Satan.'),
(341, 6, NULL, 'Il regroupe les doctrines et les raisonnements humains, les traditions, ou encore la philosophie.'),
(342, 6, NULL, '« Prenez garde que personne ne fasse de vous sa proie par la philosophie, et par de vaines tromperies conformes à la tradition des hommes et aux rudiments du monde, et non selon Christ. » Colossiens 2 :8.'),
(343, 6, NULL, 'Le mot « proie » dans ce passage signifie littéralement <b>« conduire hors du chemin et assujettir à sa domination »</b>.'),
(344, 6, NULL, 'Celui qui ne garde pas le conseil de Dieu ou sa Parole, sera donc conduit hors de la vérité et soumis à la domination des loups ravisseurs.'),
(345, 6, NULL, 'Quant au mot « tradition », paradosis en grec, il signifie également « commandement ».'),
(346, 6, NULL, 'De génération en génération, les hommes se transmettent des commandements qui malheureusement remplacent souvent la Parole de Dieu chez de nombreux chrétiens (Marc 7 :1-13).'),
(347, 6, NULL, 'Parmi ces traditions il y a notamment le paiement de la dîme, l’ordination, le fait de considérer le dimanche comme le jour du Seigneur, l’habit pastoral, Noël, la trinité…'),
(348, 6, NULL, '« Alors des scribes et des pharisiens vinrent de Jérusalem auprès de Jésus, et lui dirent : Pourquoi tes disciples transgressent-ils la tradition des anciens ? Car ils ne se lavent pas les mains quand ils prennent leur repas. Il leur répondit : Et vous, pourquoi transgressez-vous le commandement de Dieu par votre tradition ? Car Dieu a dit : Honore ton père et ta mère. Et il a dit aussi : Celui qui maudira son père ou sa mère finira à la mort. Mais vous, vous dites : Celui qui dira à son père ou à sa mère : Tout ce dont j’aurais pu t’assister est une offrande à Dieu, n’est pas coupable, quoiqu’il n’honore pas son père ou sa mère. Vous annulez ainsi le commandement de Dieu par votre tradition. » Matthieu 15 :1-6.'),
(349, 6, NULL, 'Le mot « philosophie » signifie « amour de la sagesse ».'),
(350, 6, NULL, 'Toutes les religions du monde contiennent une forme de sagesse qui séduit beaucoup de personnes et façonne leur manière de raisonner et leur mode de vie.'),
(351, 6, NULL, 'Moïse lui-même, avant d’être touché par Dieu, avait été instruit dans toute la sagesse égyptienne (Actes 7 :22).'),
(352, 6, NULL, 'De nos jours, on peut citer parmi les sagesses mondaines le bouddhisme, l’hindouisme, l’islam, le yoga, la kabbale juive, le christianisme paganisé, la théologie…'),
(353, 6, NULL, 'Or cette sagesse vient du monde, elle est charnelle et diabolique (Jacques 3 :15) et n’a donc rien en commun avec la véritable sagesse qui est Jésus lui-même.'),
(354, 6, NULL, 'En effet, « la sagesse d’en haut est premièrement pure, ensuite pacifique, modérée, conciliante, pleine de miséricorde et de bons fruits, sans partialité et sans hypocrisie. » (Jacques 3 :17).'),
(355, 6, NULL, 'Le Seigneur disait aux apôtres de se garder du levain des Pharisiens, des Sadducéens et de celui d’Hérode, c’est-à-dire de leur doctrine (Matthieu 16 :6-12 ; Marc 8 :14-15).'),
(356, 6, NULL, 'Le levain est aussi l’image de péché, en particulier celui d’orgueil.'),
(357, 6, NULL, '« Un peu de levain fait lever toute la pâte. » Galates 5 :9.'),
(358, 6, NULL, '« Ôtez donc le vieux levain, afin que vous soyez une nouvelle pâte, puisque vous êtes sans levain, car Christ, notre Pâque, a été sacrifié pour nous. » 1 Corinthiens 5 :7.'),
(359, 6, NULL, 'Le chrétien, mais aussi l’homme en général, est comparé à une pâte. Il suffit d’un soupçon de levain pour le corrompre totalement.'),
(360, 6, NULL, '« Mais en marchant dans la chair, nous ne combattons pas selon la chair. Car les armes de notre guerre ne sont pas charnelles, mais elles sont puissantes par la vertu de Dieu, <b>pour la destruction des forteresses ; détruisant les raisonnements et toute hauteur qui s’élève contre la connaissance de Dieu</b>, et amenant toute pensée captive à l’obéissance de Christ. Et étant prêts à tirer vengeance de toute désobéissance, lorsque votre obéissance sera complète. Considérez-vous les choses selon l’apparence ? Si quelqu’un se persuade qu’il est de Christ, qu’il se dise bien en lui-même que, comme il est de Christ, nous aussi nous sommes de Christ. » 2 Corinthiens 10 :3-7.'),
(361, 6, NULL, 'De très nombreux pasteurs sont conduits hors de la vérité, car ils ne sont pas soumis à Dieu, mais aux systèmes religieux des hommes qui leur promettent salaires, richesses et protection. Dieu doit être notre premier et seul Conseiller (Esaïe 9 :5).'),
(362, 6, NULL, 'Bien entendu, on peut écouter les conseils des hommes à condition qu’ils soient conformes à la Parole de Dieu et au but que ce dernier nous a fixé.'),
(363, 6, NULL, 'Mais nous devons rester fermes et nous rappeler que lorsque le Seigneur nous a appelés, nous étions seuls, les conseillers n’étaient pas là et n’ont donc pas entendu ce que Dieu nous a demandé de faire.'),
(364, 6, NULL, 'Plusieurs personnes m’accusent de toutes sortes de choses tout simplement parce que je refuse de suivre leurs conseils.'),
(365, 6, NULL, 'Selon elles, je suis borné et je n’écoute personne. Or lorsque Dieu me donne un ordre, une vision sur ce qu’il attend de moi, je ne peux pas écouter des conseils qui risquent de m’éloigner de l’objectif qui m’a été assigné.'),
(366, 6, NULL, 'Prenez pour modèles Zorobabel, le gouverneur, Josué, le prêtre, et les chefs des enfants d’Israël qui suivirent l’ordre de Dieu plutôt que les conseils des hommes.'),
(367, 6, NULL, 'Les ennemis des Juifs voulaient participer à la reconstruction du temple dans le but de décourager le peuple. Mais Zorobabel, Josué, et les chefs refusèrent de les écouter, car ils avaient reçu l’ordre strict du Seigneur de ne pas s’associer avec les impies (Esdras 4 :1-6).'),
(368, 6, NULL, 'Gardez votre vision, même au prix du rejet et de la solitude. Il vaut mieux marcher seul avec Dieu plutôt que de laisser les mauvaises compagnies vous entraîner loin de ses plans.'),
(369, 6, NULL, 'Travaillez pour le Seigneur, car celui-ci ne soutient que sa propre vision.'),
(370, 7, NULL, '« <b>Entrez par la porte étroite</b>. Car c’est la porte large et le chemin spacieux qui mènent à la perdition, et il y en a beaucoup qui entrent par là. <b>Mais étroite est la porte et resserré le chemin qui mènent à la vie, et il y en a peu qui les trouvent</b>. » Matthieu 7 :13-14.'),
(371, 7, NULL, 'Jésus nous demande de rentrer dans le Roayaume par la porte étroite, mais de quelle porte s’agit-il ou qui est exactement cette porte ?'),
(372, 7, NULL, '« Jésus donc leur dit encore : En vérité, en vérité, je vous le dis : JE SUIS la porte des brebis. Tout ceux qui sont venus avant moi sont des brigands et des voleurs ; mais les brebis ne les ont pas écoutés. JE SUIS la porte. Si quelqu’un entre par moi, il sera sauvé ; il entrera et il sortira, et il trouvera des pâturages. » Jean 10 :7-9. Voir Apocalypse 4 :1.'),
(373, 7, NULL, 'C’est donc Jésus la porte, mais pas n’importe laquelle : celle des brebis.'),
(374, 7, NULL, 'D’un point de vue historique, c’était l’une des portes des murailles de Jérusalem qui avait pour particularité d’être traversée par les brebis destinées au sacrifice, d’où son nom.'),
(375, 7, NULL, 'Ce fut la première porte rebâtie par Néhémie et ses compagnons lors du retour de l’exil (Néhémie 3).'),
(376, 7, NULL, 'En effet, avant de commencer l’oeuvre de Dieu, il faut être prêt à se sacrifier.'),
(377, 7, NULL, 'Selon Matthieu 7 :13, cette porte est étroite, elle n’a donc pas vocation à accueillir les foules mondaines et religieuses qui sont ballotées ici et là à tout vent de doctrines.'),
(378, 7, NULL, 'Le Seigneur déclare que le chemin qu’emprunte celui qui marche avec Dieu est « resserré ».'),
(379, 7, NULL, 'Il est intéressant de noter que le terme grec employé ici est thlibo ; il signifie : « presser comme des grappes », « oppresser », « un chemin rétréci, étroit, contracté », « affliger, troubler, persécuter ».'),
(380, 7, NULL, 'Jésus a averti ses disciples en leur disant qu’ils auraient des tribulations (Jean 16 :33).'),
(381, 7, NULL, 'De son côté, l’apôtre Paul a prévenu que « ceux qui veulent vivre pieusement en Jésus-Christ seront persécutés » (2 Timothée 3 :12).'),
(382, 7, NULL, 'Ainsi, celui qui marche avec Dieu doit s’attendre à beaucoup d’obstacles, d’épreuves et de combats. Les différentes étapes de la marche des Hébreux dans le désert nous montrent les difficultés que rencontrent les marcheurs.'),
(383, 7, NULL, '<h1>Les différentes stations des Hébreux dans le désert</h1>'),
(384, 7, NULL, 'Après leur sortie d’Égypte, les Hébreux ont entamé une longue marche vers Canaan au cours de laquelle ils ont eu quarante-deux stations.'),
(385, 7, NULL, 'À chacune de ces étapes, de précieux enseignements nous sont donnés sur ce qui attend le marcheur qui s’engage sur le chemin étroit.'),
(386, 7, NULL, '<b>Ramsés (Exode 12 :37) </b>: C’est le lieu du départ. Ramsès signifie « enfant de Re » qui était le dieu solaire des Égyptiens. Les Hébreux ont dû affronter cette divinité qui influençait certainement Pharaon (Exode 33 :4).'),
(387, 7, NULL, 'Le marcheur doit comprendre que Satan, qui le tenait autrefois captif, ne restera certainement pas les bras croisés. Il devra lutter contre cet ennemi toute sa vie.'),
(388, 7, NULL, '« Soyez sobres et veillez : Car le diable, votre adversaire, tourne autour de vous comme un lion rugissant, cherchant qui il pourra dévorer. » 1 Pierre 5 :8.'),
(389, 7, NULL, '<b>Succoth (Exode 12 :37)</b> : C’est la première station des Hébreux. Succoth signifie « cabane », « baraque », « hutte ».'),
(390, 7, NULL, 'Yahweh avait institué la fête des Tabernacles en attendant de pouvoir la célébrer au ciel, là où Jésus est allé nous préparer une place (Deutéronome 16 :13-15 ; Jean 14 :2).'),
(391, 7, NULL, 'Le marcheur ne doit pas perdre de vue cet objectif et ne pas se laisser séduire par les maisons terrestres qui n’ont qu’une utilité provisoire.'),
(392, 7, NULL, '« Car nous savons que si notre habitation terrestre, qui n’est qu’une tente, est détruite, nous avons un édifice de Dieu qui n’a pas été fait de main d’homme, à savoir une maison éternelle dans les cieux. Car c’est aussi pour cela que nous gémissons, désirant avec ardeur d’être revêtus de notre domicile céleste » 2 Corinthiens 5 :1-2.'),
(393, 7, NULL, '<b>Etham (Exode 13 :20) </b>: Le nom de cette deuxième station veut dire « avec eux ».'),
(394, 7, NULL, 'Yahweh était effectivement avec les enfants d’Israël dans leur marche en les guidant au travers de la colonne de nuée et de feu.'),
(395, 7, NULL, 'Après l’épisode du veau d’or, Yahweh a voulu arrêter de poursuivre la route avec Israël. Mais Moïse l’avait imploré en disant : « Si ta face ne vient pas avec nous, ne nous fais pas monter d’ici. » (Exode 33 :15).'),
(396, 7, NULL, 'Il avait en effet compris que tout ce que l’on peut entreprendre sans Dieu est voué à l’échec et ne vaut donc pas la peine.'),
(397, 7, NULL, 'Jésus qui est Fidèle et Véritable a dit : « Et voici, JE SUIS avec vous tous les jours jusqu’à l’achèvement de l’âge. » (Matthieu 28 :20).'),
(398, 7, NULL, 'C’est donc au marcheur de veiller à ne pas pécher afin d’être certain que Dieu marche toujours à ses côtés.'),
(399, 7, NULL, '<b>Pi-Hahiroth (Exode 14 :2)</b> veut dire « lieu où pousse le jonc ». Le jonc est une plante qui se laisse plier facilement sans se rompre.'),
(400, 7, NULL, 'C’est l’image de la docilité. Le marcheur doit s’adapter à toutes sortes de situations (1 Corinthiens 9 :20-23).'),
(401, 7, NULL, '« Je sais être abaissé, je sais aussi être dans l’abondance ; partout et en toutes choses j’ai appris à être rassasié et à avoir faim, à être dans l’abondance et à être dans la disette. » Philippiens 4 :12.'),
(402, 7, NULL, '<b>Mara (Exode 15 :23)</b> veut dire « amer », « amertume ». L’amertume est un ressentiment causé par la déception, l’injustice ou la blessure.'),
(403, 7, NULL, 'C’est un mélange de tristesse, de rancoeur et de colère.'),
(404, 7, NULL, 'Le marcheur rencontrera des personnes qui sont susceptibles de le décevoir et de le blesser notamment par le biais de la calomnie.'),
(405, 7, NULL, 'Il doit veiller à ce que son coeur soit toujours plein d’amour et de pardon de peur que l’amertume ne le prive de la grâce de Dieu.'),
(406, 7, NULL, '« Que toute amertume, toute colère, toute irritation, toute clameur, toute médisance, et toute malice soient bannies du milieu de vous. » Ephésiens 4 :31.'),
(407, 7, NULL, '<b>Elim (Exode 15 :27)</b> veut dire « plantes », « palmiers ». C’est le lieu où il y avait 12 sources d’eau et 70 palmiers. Le nombre 12 est celui du fondement et 7 est celui de la perfection.'),
(408, 7, NULL, 'Le palmier est une plante dont les racines peuvent s’enfoncer à 10 mètres de profondeur. Après l’amertume vient la perfection et la profondeur.'),
(409, 7, NULL, 'Le marcheur doit s’enraciner en Christ qui est sa seule source d’eau vive (Apocalypse 21 : 6).'),
(410, 7, NULL, '« A cause de cela, je fléchis mes genoux devant le Père de notre Seigneur Jésus-Christ, de qui toute la famille dans les cieux et sur la terre tire son nom, afin que selon les richesses de sa gloire, il vous donne d’être puissamment fortifiés par son Esprit dans l’homme intérieur, en sorte que Christ habite dans vos coeurs par la foi ; afin qu’étant enracinés et fondés dans la charité, vous puissiez comprendre avec tous les saints quelle est la largeur et la longueur, la profondeur et la hauteur, et connaître la charité de Christ qui surpasse toute connaissance, afin que vous soyez remplis de toute la plénitude de Dieu. » Ephésiens 3 :14-19.'),
(412, 7, NULL, '<b>Mer Rouge ou Mer des Joncs (Exode 15 :22) :</b> Le jonc signifie aussi « roseau ». Cette plante représente la faiblesse de l’homme. Dans Esaïe 42 : 3 et Matthieu 12 :20 il est dit que « <b>Dieu ne brisera pas le roseau cassé</b> ».'),
(413, 7, NULL, 'Le marcheur doit reconnaître sa faiblesse et ne pas compter sur ses propres forces pour continuer la marche, mais sur la grâce de Dieu.'),
(414, 7, NULL, 'En effet, celui qui reconnaît ses faiblesses cherchera de l’aide auprès du Seigneur (2 Corinthiens 12 :10).'),
(415, 7, NULL, '« Veillez et priez, afin que vous ne tombiez pas en tentation, car l’esprit est prompt, mais la chair est faible. » Matthieu 26 :41'),
(416, 7, NULL, '<b>Désert de Sin (Exode 16 :1)</b> : « Sin » veut dire « épine ». Dans la parabole de quatre terrains (Marc 4 et Luc 8) les épines représentent les soucis du monde actuel, notamment la séduction des richesses et la convoitise.'),
(417, 7, NULL, 'Les épines peuvent étouffer le marcheur et l’empêcher d’être productif.'),
(418, 7, NULL, '« Car nous n’avons rien apporté dans le monde, et aussi il est évident que nous n’en pouvons rien emporter. Si nous avons la nourriture et le vêtement, cela nous suffira. Mais ceux qui veulent devenir riches tombent dans la tentation, dans le piège, et dans beaucoup de désirs insensés et pernicieux qui plongent les hommes dans la destruction et la perdition. Car l’amour de l’argent est la racine de tous les maux ; et quelques-uns en étant possédés, se sont détournés de la foi et se sont jetés eux-mêmes dans bien des tourments. » 1 Timothée 6 :7-10.'),
(419, 7, NULL, '<b>Dophka (Nombres 33 :12)</b> signifie « qui frappe ». Dieu est celui qui châtie ses enfants pour leur bien (Hébreux 12 :5-13).'),
(420, 7, NULL, 'Le marcheur est souvent confronté à des situations qui le frappent de plein fouet. Dieu permet ces situations pour façonner ses enfants.'),
(421, 7, NULL, '« Voyez maintenant que moi, JE SUIS, et il n’y a point de dieu avec moi ; je fais mourir et je fais vivre, je blesse et je guéris ; et il n’y a personne qui puisse délivrer de ma main. » Deutéronome 32 :39.'),
(422, 7, NULL, '<b>Alusch (Nombres 33 :13)</b> veut dire « tumultes ou agitation des hommes ». Le marcheur sera souvent l’objet de tumultes ou d’agitations.'),
(423, 7, NULL, 'Plusieurs personnes se ligueront contre lui, des scandales se produiront partout où il passera (Psaumes 2 ; Actes 20 :1-28). Toutes ces choses sont normales, il ne doit pas se laisser déstabiliser.'),
(424, 7, NULL, '« Sur cela les disciples d’approchant, lui dirent : Sais-tu que les pharisiens ont été scandalisés quand ils ont entendu ce discours ? » Matthieu 15 :12.'),
(425, 7, NULL, '<b>Rephidim (Exode 17 :1)</b> veut dire « repos », « séjour », « lieu de repos ».'),
(426, 7, NULL, 'Après chaque temps de tumulte, d’agitations et de troubles, Dieu accorde aussi au marcheur des temps de repos.'),
(427, 7, NULL, 'Or Christ est notre repos c’est-à-dire notre sabbat (Hebreux 4).'),
(428, 7, NULL, '« Venez à moi, vous tous qui êtes fatigués et chargés, et je vous donnerai du repos. » Matthieu 11 :28.'),
(429, 7, NULL, '<b>Désert du Sinaï (Exode 19 :1) :</b> Sinaï veut dire « épineux ».'),
(430, 7, NULL, 'Après le repos, le marcheur devra affronter d’autres problèmes, des situations difficiles, mais indispensables à la réussite de sa marche. En effet, c’est au Sinaï que le peuple a reçu la Thora, la loi de Dieu.'),
(431, 7, NULL, 'De même, à l’instar des apôtres Jean et Paul qui ont reçu de grandes révélations en prison, c’est dans des moments difficiles que le marcheur recevra les plus belles bénédictions.'),
(432, 7, NULL, '« Car tout bien compté, j’estime que les souffrances du temps présent ne sont pas comparables à la gloire à venir qui doit être révélée en nous. » Romains 8 :18.'),
(433, 7, NULL, '<b>Kibroth-Haattava (Nombres 11 :34)</b> veut dire : « tombes de la convoitise ».'),
(434, 7, NULL, 'Durant sa vie terrestre, le marcheur sera souvent tenté par le Diable. La convoitise des choses de ce monde (sexe, argent, matériel, honneur…) éloigne beaucoup de la marche et les entraîne à la tombe. (Nombres 11 :4 ; 2 Samuel 11 :1-27 ; 12 et 13 ; Jacques 1 :14-15).'),
(435, 7, NULL, '« N’aimez point le monde ni les choses qui sont dans le monde. Si quelqu’un aime le monde, l’amour du Père n’est point en lui ; car tout ce qui est dans le monde, c’est-à-dire la convoitise de la chair, et la convoitise des yeux et l’orgueil de la vie, ne vient point du Père, mais vient du monde. » 1 Jean 2 : 15-16.'),
(436, 7, NULL, '<b>Hatséroth (Nombres 11 :35)</b> veut simplement dire : « campement ».'),
(437, 7, NULL, 'C’est une installation provisoire avec des moyens rudimentaires. Le marcheur doit savoir que sa destination finale est le ciel. Tout ce que les hommes peuvent lui proposer est superficiel et passager.'),
(438, 7, NULL, '« Tous ceux-ci sont morts dans la foi, sans avoir reçu les choses dont ils avaient eu les promesses, mais ils les ont vues de loin, crues, et saluées, et ils ont confessé qu’ils étaient étrangers et voyageurs sur la terre. » Hébreux 11 :13.'),
(439, 7, NULL, '<b>Rithma (Nombres 33 :18)</b> signifie : « lande » ou « gênet à balais ».'),
(440, 7, NULL, 'Le genêt à balais est un arbrisseau aux fleurs agréablement parfumées dont les rameaux étaient autrefois utilisés pour fabriquer des balais.'),
(441, 7, NULL, 'C’est l’endroit où Dieu juge les actions mauvaises dans le but d’amener le marcheur à avoir une vie parfumée (1 Rois 14 :10 ; Esaïe 14 :23).'),
(442, 7, NULL, '« Je prendrai plaisir en vous par vos parfums d’une agréable odeur, quand je vous aurai fait sortir du milieu des peuples, et que je vous aurai rassemblés des pays où vous êtes dispersés ; je serai sanctifié par vous, aux yeux des nations. » Ezéchiel 20 :41.'),
(443, 7, NULL, '<b>Rimmon-Pérets (Nombres 33 :19)</b> veut dire : « grenadier de la brèche ».'),
(444, 7, NULL, 'C’est le lieu où le marcheur sera criblé, émondé, séparé des branches mortes afin qu’il puisse porter davantage de fruits de l’Esprit (Jean 15 :1-9).'),
(445, 7, NULL, '« JE SUIS le vrai cep, et mon Père est le vigneron. Il retranche tout sarment qui est en moi et qui ne porte pas de fruit ; et tout sarment qui porte du fruit, il l’émonde, afin qu’il porte encore plus de fruits. » Jean 15 :1-2.'),
(446, 7, NULL, '<b>Libna (Nombres 33 :20)</b> signifie : « blancheur », c’est aussi le nom de la ville des Lévites.'),
(447, 7, NULL, 'Le marcheur subit un lavage avec l’eau de la Parole et le feu des épreuves pour devenir pur (Matthieu 17 :1-2 ; Apocalypse 3 :5).'),
(448, 7, NULL, 'Le vêtement blanc représente la justice du marcheur (Apocalypse 19 :6-8).'),
(449, 7, NULL, '« Que tes vêtements soient blancs en tout temps, et que l’huile ne manque pas sur ta tête. » Ecclésiaste 9 :8.'),
(450, 7, NULL, '<b>Rissa (Nombres 33 :21)</b> veut dire : « ruine ».'),
(451, 7, NULL, 'Proverbes 16 :18 dit que « l’orgueil précède l’écrasement et l’esprit hautain précède la ruine ».'),
(452, 7, NULL, 'C’est l’endroit où la chair du marcheur est mise à rude épreuve (2 Corinthiens 12 :1-10) et où l’orgueil du marcheur est anéanti afin de lui permettre d’aller de l’avant.'),
(453, 7, NULL, '<b>Kehélatha (Nombres 33 :22)</b> veut dire : « assemblée ».'),
(454, 7, NULL, 'Le marcheur expérimente la communion fraternelle avec des vrais frères et soeurs en Christ. C’est là qu’il va puiser une partie de sa force pour poursuivre sa marche (Actes 2 :46 ; 1 Corinthiens 12).'),
(455, 7, NULL, '« Que c’est une chose bonne, et que c’est une chose agréable que des frères demeurent unis ensemble » Psaumes 133 :1.'),
(456, 7, NULL, '<b>Montagne de Schapher (Nombres 33 :23)</b> veut dire : « montagne d’élégance ou de beauté ».'),
(457, 7, NULL, 'Quand le marcheur est transformé par la puissance de Dieu, son visage reflète la beauté intérieure.'),
(458, 7, NULL, '« mais que votre parure consiste dans l’être caché dans le coeur, l’incorruptibilité d’un esprit doux et paisible, qui est d’un grand prix devant Dieu. » 1 Pierre 3 :4.'),
(459, 7, NULL, '<b>Harada (Nombres 33 :24)</b> veut dire : « peur », « crainte ».'),
(460, 7, NULL, 'Le marcheur sera confronté à des personnes méchantes et menaçantes, à des situations tellement difficiles qui le bousculeront fortement au point d’éprouver de la crainte (1 Corinthiens 2 :3).'),
(461, 7, NULL, '« Car, depuis notre arrivée en Macédoine, notre chair n’eut aucun repos, mais nous avons été affligés de toute manière, ayant eu des combats au-dehors et des craintes au-dedans. » 2 Corinthiens 7 :5.'),
(462, 7, NULL, '<b>Makhéloth (Nombres 33 :25)</b> signifie « lieu de l’assemblée ».'),
(463, 7, NULL, 'Le marcheur va de nouveau bénéficier de la communion fraternelle afin d’être fortifié et encouragé après des moments difficiles.'),
(464, 7, NULL, '« Et les frères qui y étaient, ayant appris de nos nouvelles, vinrent à notre rencontre jusqu’au Forum d’Appius et aux Trois-Tavernes ; en les voyant Paul rendit grâces à Dieu et prit courage. » Actes 28 :15.'),
(465, 7, NULL, '<b>Tahath (Nombres 33 :26)</b> veut dire : « position ».'),
(466, 7, NULL, 'Le marcheur prend position pour la vérité. Il est plus que déterminé à aller de l’avant malgré les épreuves.'),
(467, 7, NULL, 'Conscient de sa position dans le royaume de Dieu, il ne cherche pas une place élevée proposée par les hommes.'),
(468, 7, NULL, '« Et que plusieurs de nos frères dans le Seigneur, étant rassurés par mes liens, osent annoncer la parole plus hardiment et sans crainte. » Philippiens 1 :14.'),
(469, 7, NULL, '<b>Tarach (Nombres 33 :27)</b> signifie « retard ».'),
(470, 7, NULL, 'Le marcheur peut prendre du retard à cause de personnes qui l’entourent (famille, amis, collaborateurs).'),
(471, 7, NULL, 'Terach (retard), père d’Abraham, avait reçu l’ordre de Dieu de se rendre en Canaan, mais il n’est pas allé jusqu’au bout de la vision qu’il avait reçue.'),
(472, 7, NULL, 'Après sa mort, Abraham s’est levé pour poursuivre sa route. Le marcheur doit faire attention à ses fréquentations, car certaines personnes peuvent devenir rapidement des freins pour lui.'),
(473, 7, NULL, 'Aussi, à l’instar d’Abraham et Lot (Genèse 13 :1-13) ou encore de Paul et Barnabas (Actes 15 :36-41), le marcheur doit être prêt à se séparer de certaines personnes s’il veut poursuivre sa marche avec Dieu.'),
(474, 7, NULL, '« Or de grandes foules faisaient route avec Jésus. Il se retourna, et leur dit : Si quelqu’un vient à moi, et ne hait pas son père et sa mère, sa femme et ses enfants, ses frères et ses soeurs, et même sa propre vie, il ne peut être mon disciple. Et quiconque ne porte pas sa croix, et ne me suit pas, ne peut être mon disciple. » Luc 14 :25-27.'),
(475, 7, NULL, '<b>Mithka (Nombres 33 :28)</b> signifie « douceur ».'),
(476, 7, NULL, 'Après la dure séparation, le marcheur va expérimenter la douceur de Dieu qui viendra le consoler (1 Rois 19 :11-12).'),
(477, 7, NULL, 'Le figuier est particulièrement apprécié pour la douceur de son fruit et l’ombre rafraîchissante qu’il apportait aux étudiants de la Thora pendant leur méditation (Juges 9 :10-11 ; Jean 1 :47-48).'),
(478, 7, NULL, '« Mais le fruit de l’Esprit c’est la charité, la joie, la paix, la patience, la bonté, la bienveillance, la foi, la douceur, le contrôle de soi. » Galates 5 :22.'),
(479, 7, NULL, '<b>Haschmona (Nombres 33 :29)</b> veut dire : « embonpoint ».'),
(480, 7, NULL, 'Le marcheur dont le coeur est engraissé ne peut pas aller loin (Jérémie 5 :28). Il devra donc être taillé par le Seigneur pour devenir plus léger. Pour atteindre le but fixé, il faudra qu’il s’impose une vie de jeûne et de prière.'),
(481, 7, NULL, '« Mais nous nous rendons recommandables en toutes choses, comme serviteurs de Dieu, par beaucoup de patience, dans les tribulations, dans les nécessités, dans les détresses, sous les coups, dans les prisons, dans les troubles, dans les travaux, dans les veilles, dans les jeûnes… » 2 Corinthiens 6 :3-4.'),
(482, 7, NULL, '<b>Moséroth (Nombres 33 :30)</b> signifie « entrave », « lien ».'),
(483, 7, NULL, 'Une entrave est un lien muni d’une boucle ou d’un anneau servant à limiter les mouvements des membres d’un animal.'),
(484, 7, NULL, 'Cela peut être quelque chose ou quelqu’un qui gêne, embarrasse ou retient le marcheur dans sa marche vers le ciel. C’est un obstacle dont il faut impérativement se débarrasser.'),
(485, 7, NULL, 'Le marcheur va devoir se séparer de certaines personnes qui l’entourent (Jean 15 :1-10) et veiller sur ses sentiments qui peuvent le faire tomber dans la compromission.'),
(486, 7, NULL, '<b>Bené-Jakkan (Nombres 33 :31)</b> signifie « fils de celui qui tord ou qui oppresse ».'),
(487, 7, NULL, 'Sur sa route le marcheur rencontrera les faux frères qui tordent la Parole de Dieu, les religieux, l’ivraie, c’est-à-dire les enfants de Satan (Actes 8 :5-25 ; 13 :6-13) qui l’oppresseront et feront tout pour le pousser à renoncer à la marche (Galates 2 :1-6 ; Apocalypse 17).'),
(488, 7, NULL, 'Comme le dit si bien l’apôtre Paul, il faut se tenir en garde contre eux et continuer la route sans se laisser distraire.'),
(489, 7, NULL, '« Prenez garde aux chiens, prenez garde aux mauvais ouvriers, prenez garde aux faux circoncis. » Philippiens 3 :2.'),
(490, 7, NULL, '<b>Hor-Guidgad (Nombres 33 :32)</b> veut dire : « caverne de Guidgad ».'),
(491, 7, NULL, 'C’est un endroit où le marcheur va se retirer pour se reposer avant de poursuivre sa route (1 Rois 19 :9).'),
(492, 7, NULL, 'C’est le lieu de la retraite, du ressourcement (Hébreux 11 :37-38).'),
(493, 7, NULL, 'Chaque marcheur doit avoir sa grotte ou sa caverne physique et spirituelle (Psaumes 91), en sachant que la meilleure retraite c’est Jésus-Christ (Matthieu 11 :27-29).'),
(494, 7, NULL, '« Celui qui demeure sous la couverture du Très-Haut, repose à l’ombre du Tout-Puissant. Je dis à Yahweh : Tu es ma retraite et ma forteresse, tu es mon Dieu en qui je me confie ! » Psaumes 91 :1-2.'),
(495, 7, NULL, '<b>Jothbatha (Nombres 33 :33)</b> signifie « bonté », « charme », « plaisant ».'),
(496, 7, NULL, 'Le marcheur vient de sortir de son repos et exhale un parfum de bonne odeur. Il est plein de charme spirituel, son coeur est rempli de bonté (Psaumes 45 :1).'),
(497, 7, NULL, '« Car le fruit de l’Esprit consiste en toute bonté, justice, vérité… » Ephésiens 5 :9.'),
(498, 7, NULL, '<b>Abrona (Nombres 33 :34)</b> signifie « passage », « chemin ».'),
(499, 7, NULL, 'Le marcheur reçoit la révélation sur le chemin dans lequel il marche. Il est convaincu d’être sur la bonne route, celle de la vérité, et reste donc inébranlable. Dieu lui ouvre alors une porte que personne ne peut fermer (Apocalypse 3 :8).'),
(500, 7, NULL, '« Jésus lui dit : JE SUIS le chemin, la vérité, et la vie. Personne ne vient au Père que par moi. » Jean 14 :6.'),
(501, 7, NULL, '<b>Etsjon-Guéber (Nombre 33 :35)</b> signifie « épine dorsale d’un homme ».'),
(502, 7, NULL, 'Les navires du roi Josaphat se brisèrent à cet endroit parce qu’il s’était associé à un roi impie (1 Rois 22 :48-49).');
INSERT INTO `t2v_detail_livre` (`id`, `categorie_id`, `souscategorie_id`, `contenu`) VALUES
(503, 7, NULL, 'C’est donc le lieu où Dieu brise les oeuvres faites selon la chair. Le Seigneur n’aime pas le mélange, la compromission ou les associations avec les faux frères.'),
(504, 7, NULL, 'A cause de ces mauvaises associations, le marcheur peut perdre des années, de l’énergie et de l’argent investis dans des projets où Dieu n’était pas.'),
(505, 7, NULL, '<b>Tsin (palmier nain) ou Kadès (Nombres 33 :36)</b> signifie : « consacré », « saint ». Celui qui veut achever la course doit vouer totalement sa vie à Dieu et à son Royaume (Apocalypse 22 :11), sans quoi il ne pourra jamais voir le Seigneur.'),
(506, 7, NULL, '« Recherchez la paix avec tous, et la sanctification, sans laquelle personne ne verra le Seigneur. » (Hébreux 12 :14).'),
(507, 7, NULL, '<b>Montagne de Hor (Nombres 33 :37)</b> signifie simplement « montagne ».'),
(508, 7, NULL, 'C’est à cet endroit que mourut Aaron. C’est le lieu de la douleur, des pleurs et des séparations.'),
(509, 7, NULL, 'Le marcheur peut perdre des personnes proches. Il doit se fortifier dans le Seigneur qui est la résurrection et la vie (1 Thessaloniciens 4 :13-17).'),
(510, 7, NULL, '« Jésus lui dit : JE SUIS la résurrection et la vie. Celui qui croit en moi vivra même s’il meurt. » Jean 11 :25.'),
(511, 7, NULL, '<b>Tsalmona (Nombres 33 :41)</b> signifie « ombragé ».'),
(512, 7, NULL, 'Ce mot fait allusion à l’ombre de la mort. David disait « Même quand je marcherais dans la vallée de l’ombre de la mort, je ne craindrais aucun mal, car tu es avec moi : ton bâton et ta houlette me consolent » (Psaumes 23 :4).'),
(513, 7, NULL, 'Le marcheur est constamment sous la protection du Seigneur malgré les menaces de mort (2 Corinthiens 1 : 8-11).'),
(514, 7, NULL, '<b>Punon (Nombres 33 :42)</b> signifie : « ténèbres », « obscurité ».'),
(515, 7, NULL, 'Le marcheur est menacé par les ténèbres qui essaient de l’aveugler, mais Jésus est sa Lumière (Jean 8 : 12).'),
(516, 7, NULL, 'Il ne doit jamais prendre part aux oeuvres des ténèbres, mais les condamner (2 Corinthiens 4 :2-5 ; Ephésiens 5 :11).'),
(517, 7, NULL, '« … vous êtes tous des enfants de la lumière, et des enfants du jour. Nous ne sommes pas de la nuit et des ténèbres. » 1 Thessaloniciens 5 :2.'),
(518, 7, NULL, '<b>Oboth (Nombres 33 :43)</b> veut dire « des outres », « creux », « esprit ».'),
(519, 7, NULL, 'Le marcheur doit toujours être une outre neuve dans laquelle Dieu pourra déverser le vin nouveau, c’est-à-dire son Esprit (Matthieu 9 :17).'),
(520, 7, NULL, 'Il doit veiller sur sa vie spirituelle afin de ne pas devenir une vieille outre (1 Corinthiens 9 :27).'),
(521, 7, NULL, '« Or dans une grande maison, il n’y a pas seulement des vases d’or et d’argent, mais il y en a aussi de bois et de terre. Les uns sont des vases d’honneur et les autres sont d’un usage vil. Si quelqu’un se purifie de ces choses, il sera un vase d’honneur, sanctifié et utile au Seigneur, et préparé pour toute bonne oeuvre. » 2 Timothée 2 :20-21.'),
(522, 7, NULL, '<b>Lijé-Abarim (Nombres 33 :44)</b> veut dire : « monceaux », « ruines d’Abarim ».'),
(523, 7, NULL, 'Le marcheur ne doit surtout pas se focaliser sur ce monde en ruines à cause du péché et qui est voué à la destruction.'),
(524, 7, NULL, '« Quand ils diront : Nous sommes en paix et en sûreté. Alors une ruine soudaine les surprendra, comme les douleurs de l’enfantement surprennent la femme enceinte, et ils n’échapperont pas. » 1 Thessaloniciens 5 :3.'),
(525, 7, NULL, '<b>Dibon (Nombres 33 :45)</b> signifie « trop-plein », « larmes », « rivière ».'),
(526, 7, NULL, 'Le marcheur a le coeur rempli de douleurs et ses yeux laissent couler cette rivière débordante de larmes (Jérémie 9 :1).'),
(527, 7, NULL, 'Celui qui marche avec Dieu passe son temps à pleurer à cause du péché des hommes.'),
(528, 7, NULL, '« … et s’il a délivré le juste Lot, qui avait eu beaucoup à souffrir de ces abominables par leur infâme conduite ; car cet homme juste, qui habitait au milieu d’eux, affligeait tous les jours son âme juste, à cause de ce qu’il voyait et entendait dire de leurs oeuvres iniques. » 2 Pierre 2 :7-8.'),
(529, 7, NULL, '<b>Almon-Diblathaïm (Nombres 33 :46)</b> veut dire : « dissimulation des deux gâteaux de figues ».'),
(530, 7, NULL, 'Le marcheur rencontrera des personnes hypocrites prétendant être chrétiennes (1 Samuel 2 : 12-17 ; Matthieu 23 ; Romains 2).'),
(531, 7, NULL, 'Le but de ces gens est de détourner les offrandes du Seigneur pour leurs propres projets (Actes 5 : 1-11).'),
(532, 7, NULL, 'Il peut par ailleurs être lui-même tenté par le diable à voler l’argent destiné à l’oeuvre de Dieu. Ainsi, pour poursuivre la marche avec succès, il faut se garder avec soin de la cupidité et de l’avarice.'),
(533, 7, NULL, '« Car l’amour de l’argent est la racine de tous les maux ; et quelques-uns en étant possédés, se sont détournés de la foi et se sont jetés eux-mêmes dans bien des tourments. » 1 Timothée 6 :10.'),
(534, 7, NULL, '<b>Montagne d’Abarim (Nombres 33 :47) :</b> Abarim veut dire « ceux qui sont au-delà ».'),
(535, 7, NULL, 'Le marcheur doit se servir de l’exemple de ceux qui l’ont précédé dans la foi, et qui sont à présent dans la gloire, pour tenir ferme (Hébreux 6 :12 et 13 :7).'),
(536, 7, NULL, '« Mes frères, prenez pour exemple de patience dans les afflictions les prophètes qui ont parlé au Nom du Seigneur. » Jacques 5 :10.'),
(537, 7, NULL, '<b>Les Pleines de Moab (Nombres 35 :1) :</b> Moab veut dire « issu d’un père ».'),
(538, 7, NULL, 'C’est la dernière station avant la traversée du Jourdain et la conquête de Canaan. Le marcheur campe dans les pleines de Moab vis-à-vis de Jéricho (ville des palmiers), près du Jourdain (celui qui descend).'),
(539, 7, NULL, 'La révélation du Père est la dernière étape franchie par le marcheur. Il est comme le fils prodigue qui retourne humblement à la maison de son Père (Luc 15 :11-32).'),
(540, 7, NULL, '« Car vous étiez comme des brebis errantes, mais maintenant vous êtes retournés vers le Pasteur et l’Évêque de vos âmes. » 1 Pierre 2 :25.'),
(541, 7, NULL, 'Il y a quelques années, Dieu m’a donné une vision dans laquelle je me voyais escalader avec beaucoup de difficultés une très grande montagne aux falaises escarpées.'),
(542, 7, NULL, 'J’ai éprouvé une grande joie quand j’ai atteint le sommet où le Seigneur m’attendait. Ayant mesuré le chemin parcouru, je me disais que j’allais enfin pouvoir me reposer.'),
(543, 7, NULL, 'Mais Jésus m’a montré à l’horizon d’autres montagnes et m’a demandé de les escalader également.'),
(544, 7, NULL, 'Fatigué à cause du chemin parcouru jusque là, je lui ai répondu : « Non Seigneur, je veux rester ici ».'),
(545, 7, NULL, 'Le Seigneur m’a alors dit : « Si tu ne viens pas, je continue sans toi ».'),
(546, 7, NULL, 'Le Seigneur m’a fait comprendre que la marche chrétienne est semblable à l’ascension d’une montagne qui se déroule étape par étape, palier par palier.'),
(547, 7, NULL, 'À chaque étape le marcheur est éprouvé par les obstacles et les oppositions qu’il trouvera en chemin. Sa réussite dépend donc de sa résistance et de sa persévérance dans les épreuves.'),
(548, 7, NULL, 'À chaque étape franchie, il sera qualifié puis élevé.'),
(549, 8, 7, 'Paul disait aux anciens d’Éphèse qu’il leur avait « annoncé tout le conseil de Dieu sans en rien cacher » (Actes 20 :27).'),
(550, 8, 7, 'Le mot « conseil » se dit boule en grec, ce qui veut dire « conseil », « but », « dessein », « décision ».'),
(551, 8, 7, 'Dans ce passage, le conseil de Dieu c’est plus particulièrement la Parole de Dieu ou encore sa loi. Le conseil de Dieu c’est aussi sa volonté et ses projets.'),
(552, 8, 7, 'Là encore, c’est la Parole qui nous révèle sa volonté et ses plans pour les hommes. Il est d’ailleurs à noter que dans Actes 2 : 23, 28 il est dit que Jésus fut livré selon le dessein de Dieu arrêté d’avance, ce qui prouve que les hommes ont exécuté le conseil de Dieu à leur insu (Éphésiens 1 :11).'),
(553, 8, 7, 'Tous ceux qui écoutent le conseil des méchants et s’engagent sur le chemin spacieux passent à côté du but que Dieu a fixé pour leurs vies.'),
(554, 8, 7, 'Or c’est précisément le sens premier du mot « péché ». En effet, le terme hébreu chatta’ah veut dire « ce qui manque le but ».'),
(555, 8, 7, 'Le terme grec hamartano qu’on retrouve dans Romains 3 : 23 est encore plus explicite : « Car tous ont péché et n\'atteignent pas la gloire de Dieu ».'),
(556, 8, 7, 'Ce mot signifie « manquer la marque », « errer », « être fautif », « manquer le chemin de la droiture et de l’honneur », « faire le mal », « s’éloigner de la loi de Dieu, violer cette loi », « pécher ».'),
(557, 8, 7, 'Le mot grec traduit par « n’atteignent pas » vient du grec husterio qui veut dire « derrière », « venir en retard ou trop tardivement », « être laissé derrière dans la course, et ainsi ne pas pouvoir atteindre le but, tomber près du but ».'),
(558, 8, 7, 'Ainsi, le marcheur doit retenir l’enseignement de la parabole des vierges énoncée par le Seigneur Jésus dans Matthieu 25 : les cinq vierges folles étaient arrivées en retard aux noces à cause du manque d’huile c’est-à-dire de l’absence de la vie de l’Esprit (Ecclésiaste 9 :8).'),
(559, 8, 7, 'Le marcheur doit donc éviter à tout prix de tomber dans le péché sinon il n’atteindra jamais son objectif.'),
(560, 8, 7, 'La Bible dit que Dieu a créé chaque être humain pour qu’il accomplisse de bonnes oeuvres qu’il a préparées d’avance (Éphésiens 2 :10).'),
(561, 8, 7, 'Malheureusement, en choisissant de marcher selon leur propre conseil ou celui d’autres personnes, la plupart des hommes s’engagent sur le chemin qui mène à la perdition, se rendant ainsi ennemis de Dieu (Colossiens 1 :21).'),
(562, 8, 7, 'Comme nous l’avons vu précédemment, il n’y a pas que les athées ou les adorateurs de fausses divinités qui s’engagent sur le mauvais chemin et qui écoutent les conseils des méchants.'),
(563, 8, 7, 'Il y a aussi une foule de personnes qui font partie de la chrétienté paganisée et qui préfère se conformer aux traditions des hommes, à ce qu’enseignent la philosophie et la religion plutôt que d’écouter ce que Dieu dit.'),
(564, 8, 7, 'Cela peut choquer, mais la Bible dit clairement que ces gens-là sont maudits ; ce qui les attend à l’issue de leur marche c’est la ruine.'),
(565, 8, 7, '« Ainsi parle Yahweh : Maudit soit l’homme qui se confie dans l’homme, et qui fait de la chair sa force, et dont le coeur se retire de Yahweh ! Car il sera comme la bruyère dans le désert, et il ne verra pas venir le bonheur ; mais il habitera dans des lieux brûlés du désert, dans une terre salée et inhabitable. <b>Béni soit l’homme qui se confie en Yahweh, et dont Yahweh est l’espérance ! Car il sera comme un arbre planté près des eaux, et qui étend ses racines le long d’une eau courante ; quand la chaleur viendra, il ne s’en apercevra pas, et sa feuille restera verte ; il ne sera pas en peine dans l’année de la sécheresse, et ne cessera de porter du fruit.</b> » Jérémie 17 :5-8.'),
(566, 8, 7, '« <b>Quiconque donc entend ces paroles que je dis et les met en pratique, je le comparerai à un homme prudent qui a bâti sa maison sur le roc. La pluie est tombée, les torrents sont venus, les vents ont soufflé contre cette maison. Elle n’est pas tombée, parce qu’elle était fondée sur le roc.</b> Mais quiconque entend ces paroles que je dis, et ne les met pas en pratique sera semblable à un homme insensé qui a bâti sa maison sur le sable. La pluie est tombée, les torrents sont venus, et les vents ont soufflé contre cette maison. Elle est tombée, et sa ruine a été grande. » Matthieu 7 :24-27.'),
(567, 8, 7, '« <b>Béni est l’homme</b> qui ne marche pas selon le conseil des méchants, et qui ne s’arrête pas sur la voie des pécheurs, qui ne s’assied pas dans l’assemblée des moqueurs, mais qui prend plaisir dans la loi de Yahweh, et qui médite sa loi jour et nuit ! Il est comme un arbre planté près des ruisseaux d’eaux, <b>qui rend son fruit en sa saison, et dont le feuillage ne se flétrit point. Et ainsi tout ce qu’il fera réussira.</b> » Psaumes 1 :1-4.'),
(568, 8, 7, 'À l’inverse, ceux qui marchent selon le conseil de Dieu, c’est-à-dire qui écoutent et obéissent à la Parole du Seigneur, sont semblables à :'),
(569, 8, 7, '- <b>Des arbres plantés près des courants d’eau</b> : Nous avons vu que symboliquement ce courant d’eau représente le Saint-Esprit (Jean 7 :38 ; Apocalypse 22 :2), mais aussi la Parole de Dieu (Ephésiens 5 :26-27). Celui qui écoute le conseil de Dieu voit ses racines pousser jusqu’à atteindre les sources d’eaux grâce auxquelles il sera de plus en plus purifié et fortifié. Cela aura pour résultat visible toutes sortes de bons fruits et de bonnes oeuvres.'),
(570, 8, 7, '- <b>Des maisons aux solides fondations</b> : Jésus est le roc sur lequel l’Église est bâtie (Matthieu 16 :18), un rocher spirituel qui abreuve son peuple (1 Corinthiens 10 :4), et un solide fondement sur lequel les apôtres et les prophètes ont été édifiés (1 Corinthiens 3 :11 ; Ephésiens 2 :20). Celui qui écoute le conseil de Dieu ne sera pas emporté à tout vent de doctrine et ne s’égarera pas sur le chemin qui mène à la perdition (Ephésiens 4 :14). Il sera au contraire ferme, inébranlable, malgré les tempêtes suscitées par l’ennemi pour le déstabiliser.'),
(571, 8, 7, 'Josué avait compris qu’il devait méditer le livre de la loi de Dieu jour et nuit et agir fidèlement selon ce qui était écrit afin de réussir dans tout ce qu’il entreprendrait (Josué 1 :8). Quant à David, il comparait la Parole à une lampe qui éclairait son chemin.'),
(572, 8, 7, '« Ta Parole est une lampe à mes pieds et une lumière sur mon sentier » Psaumes 119 :105.\r\n« Je serre ta Parole dans mon coeur afin de ne pas pécher contre toi » Psaumes 119 :11.'),
(573, 8, 7, 'Le monde entier est sous la puissance des ténèbres, si le marcheur veut demeurer sur le chemin qui mène à la vie, il devra porter constamment avec lui la lampe qu’est la Parole de Dieu pour éviter de s’égarer (2 Pierre 1 :19).'),
(574, 8, 7, '« Lève-toi, sois illuminée, car ta lumière arrive, et la gloire de Yahweh se lève sur toi. Car voici, les ténèbres couvrent la terre, et l’obscurité couvre les peuples ; mais Yahweh se lève sur toi, et sa gloire apparaît sur toi. Des nations marchent à ta lumière, et des rois à la splendeur qui se lève sur toi. » Esaïe 60 :1-3.'),
(575, 8, 7, 'En plus de cette lampe, il devra apprendre à marcher selon l’Esprit et porter avec lui l’équipement spécial du combattant pour faire face à tous les assauts du diable.'),
(576, 8, 8, '« Je vous dis donc, marchez selon l’Esprit et vous n’accomplirez pas les désirs de la chair » Galates 5 :16.'),
(577, 8, 8, 'Marcher selon l’Esprit nécessite une obéissance totale à Dieu et une bonne sensibilité à la voix de l’Esprit. En effet, celui qui est né de l’Esprit est comparable au vent :'),
(578, 8, 8, '«Le vent souffle où il veut et tu en entends le bruit, mais tu ne sais pas d’où il vient, ni où il va. Il en est ainsi de tout homme qui est né de l’Esprit » (Jean 3 :8).'),
(579, 8, 8, 'Le vent peut changer de direction à tout moment, par conséquent la marche par l’Esprit peut paraître imprévisible et instable aux personnes charnelles. Celui qui marche selon l’Esprit ne peut donc pas être cerné ou compris par les hommes.'),
(580, 8, 8, 'Malgré les prophéties données par les disciples l’avertissant des dangers qui le menaçaient si jamais il se rendait à Jérusalem, Paul est resté à l’écoute de l’Esprit de Dieu.'),
(581, 8, 8, '«Comme nous étions là depuis plusieurs jours, un prophète, nommé Agabus, arriva de Judée et vint nous trouver. Il prit la ceinture de Paul, se lia les mains et les pieds, et il dit : Voici ce que déclare le Saint-Esprit : L\'homme à qui appartient cette ceinture, les Juifs le lieront de la même manière à Jérusalem, et le livreront entre les mains des Gentils. Quand nous entendîmes ces choses, nous et ceux de l\'endroit, nous priâmes Paul de ne pas monter à Jérusalem. Mais Paul répondit : Que faites-vous en pleurant et en affligeant mon coeur ? Je suis prêt, non seulement à être lié, mais aussi à mourir à Jérusalem pour le Nom du Seigneur Jésus. Comme il ne se laissait pas persuader, nous n\'insistâmes pas, et nous dîmes : Que la volonté du Seigneur soit faite ! » Actes 21 :10-14.'),
(582, 8, 8, '<h1>La chair, ennemie du marcheur</h1>'),
(583, 8, 8, 'Les désirs de la chair sont susceptibles d’éloigner le marcheur de son objectif, c’est-à-dire le ciel. Marcher selon l’Esprit implique donc de s’opposer à la chair en portant sa croix au quotidien.'),
(584, 8, 8, '«Et quiconque ne porte pas sa croix, et ne me suit pas, ne peut être mon disciple » Luc 14 :27.'),
(585, 8, 8, '« Ne savez-vous pas que ceux qui courent dans le stade, courent tous, mais qu\'un seul remporte le prix ? Courez de manière à le remporter. Tous ceux qui luttent dans les jeux sportifs vivent entièrement de régime, et ils le font pour obtenir une couronne corruptible ; mais nous, faisons-le pour une couronne incorruptible. Je cours donc, mais non pas sans savoir comment ; je combats, mais non pas comme battant l\'air. Mais je mortifie mon corps et je le tiens assujetti, de peur d\'être moi-même désapprouvé après avoir prêché aux autres » 1 Corinthiens 9 :24-27.'),
(586, 8, 8, 'Les désirs de la chair ou les oeuvres manifestes de la chair ont été énumérés par Paul dans Galates 5 :19-21 :'),
(587, 8, 8, '<b>L’impudicité :</b> les relations sexuelles avant le mariage.'),
(588, 8, 8, '<b>L’impureté :</b> les pensées impures, la masturbation, les rapports intimes avec une femme pendant ses menstrues.'),
(589, 8, 8, '<b>La dissolution :</b> le manque de moralité.'),
(590, 8, 8, '<b>L’idolâtrie :</b> la pratique des fausses religions et de l’occultisme (le Yoga, la méditation transcendantale, l’astrologie, l’invocation des morts... Esaïe 8 :19). Plus largement, l’idolâtrie consiste à ne pas pouvoir se passer de quelque chose ou de quelqu’un. Ainsi une idole est une chose ou une personne dont on est prisonnier.'),
(591, 8, 8, '<b>La magie :</b> ce mot vient du grec «pharmakeia » dont la racine «pharmakeus» se traduit en français par «enchanteurs», «sorciers» ou «magiciens».'),
(592, 8, 8, '«Mais pour les lâches, les incrédules, les abominables, les meurtriers, les impudiques, les enchanteurs, les idolâtres, et tous les menteurs, leur part sera dans l’étang ardent de feu et de soufre, ce qui est la seconde mort» Apocalypse 21 :8.'),
(593, 8, 8, '<b>La sorcellerie :</b> les sortilèges, les enchantements, la magie, la divination.'),
(594, 8, 8, '<b>Les inimitiés :</b> la haine.'),
(595, 8, 8, '<b>Les querelles :</b> la médisance, la colère.'),
(596, 8, 8, '<b>Les jalousies :</b> le fait de vouloir posséder ce qui appartient à autrui ou désirer être à leur place; mais aussi le fait de critiquer les autres à cause de leurs grâces, leurs biens, leurs réussites, etc…'),
(597, 8, 8, '<b>Les animosités :</b> la guerre, les conflits.'),
(598, 8, 8, '<b>Les disputes :</b> le manque de maîtrise de sa langue (Proverbes 21 :23).'),
(599, 8, 8, '<b>Les divisions :</b> l\'esprit de rébellion.'),
(600, 8, 8, '<b>Les sectes :</b> le sectarisme, le racisme, le tribalisme, etc…'),
(601, 8, 8, '<b>L’envie :</b> le fait de vouloir posséder ce qui appartient à autrui (les dons, les ministères, les conjoints…) ou désirer être à leur place. Mais aussi l\'impossibilité de se passer d\'une chose (la cigarette…).'),
(602, 8, 8, '<b>L’ivrognerie :</b> le fait d’être dominé par l’alcool. C’est de la débauche.'),
(603, 8, 8, '<b>Les excès de table :</b> la boulimie. Elle se caractérise par une irrépressible envie de manger sans nécessairement ressentir la sensation de faim. Par exemple : vous jeûnez, mais quand vous voyez de la nourriture, vous le rompez automatiquement.'),
(604, 8, 8, '« Car la chair a des désirs contraires à ceux de l\'Esprit, et l\'Esprit en a des contraires à ceux de la chair ; et ils sont opposés entre eux, afin que vous ne fassiez pas ce que vous voudriez. Or si vous êtes conduits par l\'Esprit, vous n\'êtes pas sous la loi. Car les oeuvres de la chair sont évidentes : Ce sont l\'adultère, la fornication, l\'impureté, l\'impudicité, l\'idolâtrie, la sorcellerie, les inimitiés, les querelles, les jalousies, les animosités, les disputes, les divisions, les sectes, les envies, les meurtres, l\'ivrognerie, les excès de table, et les choses semblables à celles-là, au sujet desquelles je vous prédis, comme je vous l\'ai déjà dit, que ceux qui commettent de telles choses n\'hériteront pas le Royaume de Dieu. » Galates 5 :17-21.'),
(605, 8, 8, 'C’est contre toutes ces oeuvres que le chrétien doit mener une lutte permanente. Le Seigneur veut que les chrétiens marchent par l’Esprit afin de remporter le combat de la « maîtrise de soi ».'),
(606, 8, 8, 'Le manque de maîtrise de soi produit la frustration et le désespoir.'),
(607, 8, 9, '« Au reste, mes frères, fortifiez-vous dans le Seigneur, et dans la puissance de sa force. Revêtez-vous de toutes les armes de Dieu, afin de pouvoir résister aux ruses du diable. Car nous n’avons pas à lutter contre la chair et le sang, mais contre les principautés, contre les puissances, contre les seigneurs du monde des ténèbres de cet âge, contre les méchancetés spirituelles qui sont dans les lieux célestes. C’est pourquoi prenez toutes les armes de Dieu, afin de pouvoir résister dans le mauvais jour, et tenir ferme après avoir tout surmonté. <b>Soyez donc fermes, ayant à vos reins la vérité pour ceinture,</b> ayant revêtu <b>la cuirasse de la justice</b> ; et ayant <b>vos pieds chaussés, prêts pour l’Évangile de paix</b> ; par-dessus tout, prenez <b>le bouclier de la foi, avec lequel vous pourrez éteindre tous les dards enflammés du Mauvais</b> ; prenez aussi <b>le casque du salut, et l’épée de l’Esprit, qui est la parole de Dieu ; Priez en tout temps dans l’Esprit par toutes sortes de prières et de supplications,</b> veillez à cela avec une entière persévérance, et priez pour tous les saints, et pour moi aussi, afin qu’il me soit donné de parler en toute liberté et avec hardiesse, pour faire connaître le mystère de l’Évangile, pour lequel je suis ambassadeur, quoique chargé de chaînes, afin, dis-je, que je parle librement, ainsi qu’il faut que je parle. » Ephésiens 6 :10-20.'),
(608, 8, 9, 'Celui qui veut marcher avec Dieu doit prendre conscience qu’il s’est aussi engagé dans un combat puisque le diable lui a déclaré la guerre (Apocalypse 22 :12).'),
(609, 8, 9, 'Il ne s’agit pas d’un adversaire charnel, mais spirituel ; la guerre n’est donc pas charnelle, mais spirituelle.'),
(610, 8, 9, 'Il faut donc combattre le bon combat avec des armes spirituelles, en évitant les luttes charnelles qui apportent la distraction (Néhémie 4 ; 1 Corinthiens 9 :26).'),
(611, 8, 9, '- <b>La ceinture de la vérité : </b>Le diable est le père du mensonge (Jean 8 : 44), et il est par conséquent celui qui inspire toutes les doctrines mensongères et séductrices qui égarent tant de personnes.'),
(612, 8, 9, 'La ceinture est une bande de cuir ou de tissus dont on s’entoure à la taille pour fixer le vêtement. En mourant à la croix, Christ a remplacé nos vêtements souillés par le péché (Esaïe 64 :5) par un vêtement de justice (1 Corinthiens 6 :11 ; Apocalypse 19 :8).'),
(613, 8, 9, 'Pour que notre nudité (péché) ne paraisse plus, le vêtement de justice doit être maintenu par la ceinture de la vérité.'),
(614, 8, 9, 'Le marcheur doit donc dire la vérité et prendre en tout temps position pour la vérité qui est Jésus lui-même (Jean 14 :6).'),
(615, 8, 9, 'Cette prise de position lui causera certainement des combats supplémentaires, mais c’est la seule façon de demeurer juste devant Dieu.'),
(616, 8, 9, '« Le vainqueur sera revêtu de vêtements blancs, et je n’effacerai pas son nom du Livre de vie, mais je confesserai son nom devant mon Père, et devant ses anges. » Apocalypse 3 :5.'),
(617, 8, 9, '- <b>La cuirasse de la justice :</b> Bien plus qu’un simple vêtement, la cuirasse est une partie de l’armure formée d’une ou plusieurs pièces de métal ou d’autres matériaux rigides, qui protège le corps depuis le cou jusqu’au ventre.'),
(618, 8, 9, 'La cuirasse protège entre autres le coeur, organe vital, qu’il faut préserver par-dessus toute chose, car c’est de lui que procèdent les sources de la vie (Proverbes 4 :23).'),
(619, 8, 9, 'Jésus a dit que plusieurs choses pouvaient souiller le coeur de l’homme et donc le rendre vulnérable aux assauts de l’ennemi :'),
(620, 8, 9, '« Car c’est du coeur que sortent les mauvaises pensées, les meurtres, les adultères, les fornications, les vols, les faux témoignages, les médisances. » (Matthieu 15 :19).'),
(621, 8, 9, 'Aussi, l’apôtre Paul nous invite à ne pas laisser ces choses s’installer dans nos coeurs :'),
(622, 8, 9, '« Que toute amertume, toute colère, toute irritation, toute médisance, et toute malice soient bannies du milieu de vous. » (Éphésiens 4 :31).'),
(623, 8, 9, 'Tous ces mauvais sentiments et mauvaises pensées doivent être rejetés avec fermeté au nom de Jésus-Christ. Le marcheur doit rester maître de ses sentiments et de ses émotions.'),
(624, 8, 9, '- <b>Les pieds chaussés de l’Évangile de paix :</b> Ce qui doit diriger les pas du marcheur c’est l’Évangile, c’est-à-dire la Parole de Dieu, car c’est elle qui éclaire notre chemin vers le Royaume de Dieu.'),
(625, 8, 9, 'Bien que combattu à cause de la vérité, le marcheur qui demeure intègre et fidèle au conseil de Dieu aura une paix qui surpasse toute intelligence (Philippiens 4 :7).'),
(626, 8, 9, 'Sans les chaussures, le marcheur ne pourra jamais atteindre son objectif car il sera constamment mordu par les serpents et les scorpions (Luc 10 :19).'),
(627, 8, 9, '- <b>Le bouclier de la foi :</b> Le bouclier est une arme défensive portée à la main servant à se protéger contre les coups et les traits (du grec belos : « projectile », « dard », « javelot », « flèche », « trait »).'),
(628, 8, 9, 'Or les traits de l’ennemi sont « enflammés », ils ont donc pour vocation à nous percer et à nous brûler, c’est dire la détermination du diable pour nous détruire ! La foi vient donc compléter et renforcer la cuirasse de la justice.'),
(629, 8, 9, '« Ainsi la foi vient de ce qu’on entend, et ce qu’on entend vient de la parole de Christ. » (Romains 10 :17) nous dit l’apôtre Paul.'),
(630, 8, 9, 'La foi se développe lorsque le marcheur recherche dans l’intimité le conseil de Dieu. Après avoir été éclairé, conseillé et orienté par le Seigneur, il pourra poursuivre sa route avec assurance (Hébreux 11 :1).'),
(631, 8, 9, '- <b>Le casque du salut :</b> Le casque est une partie de l’armure qui protège la tête, siège de la réflexion et des raisonnements.'),
(632, 8, 9, 'Comme nous l’avons vu au tout début, l’homme animal n’a pas la pensée de Christ tandis que l’homme charnel, bien que la connaissant, n’en tient pas compte. L’homme spirituel qui marche avec Dieu connait la pensée de Christ et se laisse diriger par elle.'),
(633, 8, 9, '« Car les armes de notre guerre ne sont pas charnelles, mais elles sont puissantes par la vertu de Dieu, pour la destruction des forteresses ; détruisant les raisonnements et toute hauteur qui s’élève contre la connaissance de Dieu, et amenant toute pensée captive à l’obéissance de Christ. » 2 Corinthiens 10 :4-5.'),
(634, 8, 9, 'Les philosophies, les religions et les traditions ont érigé dans l’esprit des hommes de véritables forteresses qui se dressent contre la connaissance de Christ.'),
(635, 8, 9, 'Le casque du salut a pour vocation de préserver le marcheur de leur action néfaste et de garder ses pensées dirigées vers Christ et son Royaume (1 Corinthiens 2 :2 ; Hébreux 11 :13-16 et 12 :1-2).'),
(636, 8, 9, '- <b>L’épée de l’Esprit, la Parole de Dieu :</b> Seule arme offensive, elle est néanmoins d’une efficacité redoutable.'),
(637, 8, 9, '« Car la Parole de Dieu est vivante et efficace, et plus pénétrante qu’aucune épée à deux tranchants, et atteignant jusqu’à la division de l’âme et de l’esprit, et des jointures et des moelles ; et elle juge les pensées et les intentions du coeur. Et il n’y a aucune créature qui soit cachée devant lui, mais toutes choses sont nues et entièrement découvertes aux yeux de celui devant lequel nous avons affaire. » Hébreux 4 :12-13.'),
(638, 8, 9, 'Lorsque le marcheur utilise la Parole en étant éclairé par l’Esprit de Dieu, il est en capacité de discerner les plans de l’ennemi et donc de les déjouer.'),
(639, 8, 9, 'Le diable ne pourra pas tromper quelqu’un qui connait la Parole et qui reste à l’écoute du conseil de Dieu. De même, ses serviteurs, les faux prophètes, ne pourront pas résister en cas de confrontation.'),
(640, 8, 9, '« Car je vous donnerai une bouche et une sagesse à laquelle vos adversaires ne pourront contredire ni résister. » Luc 21 :15.'),
(641, 8, 9, '- <b>La prière faite par l’Esprit :</b> La direction de l’Esprit de Dieu fait toute la différence entre une prière efficace et une prière qui ne le sera pas. En effet, le Saint-Esprit pousse le marcheur à prier selon la volonté de Dieu, c’est-à-dire en accord avec les plans que le Seigneur a faits pour nous (Romains 8 :26-27 ; 1 Jean 5 :14).'),
(642, 8, 9, 'La prière étant un échange, c’est bien entendu dans ce moment privilégié que le marcheur se fortifie dans la présence de Dieu et reçoit des instructions précises pour l’aider à atteindre les objectifs qui lui sont assignés.'),
(643, 8, 9, '« Veillez et priez, afin que vous ne tombiez pas dans la tentation, car l’esprit est prompt, mais la chair est faible » Matthieu 26 :41.'),
(644, 8, 9, 'La prière permet aussi au marcheur d’atteindre l’objectif tout en résistant au péché, aux religieux, et à la chair. Il doit prendre exemple sur Elie et Paul qui ont fait face à leurs combats parce qu’ils étaient des hommes de prière.'),
(645, 8, 9, '«Alors Elie, Thischbite, l\'un des habitants de Galaad, dit à Achab : Yahweh, le Dieu d\'Israël, <b>en la présence duquel je me tiens</b>, est vivant ! Il n\'y aura ces années-ci ni rosée ni pluie, sauf sur la parole de ma bouche ». 1 Rois 17 :1.'),
(646, 8, 9, 'Ainsi Elie a pu affronter Achab parce qu’il se tenait devant Dieu.'),
(647, 8, 9, 'Quant à Paul, sa vie de jeûne et de prière lui a permis de tenir ferme face aux attaques de l’ennemi.'),
(648, 8, 9, '«J\'ai été souvent en voyage, en péril sur les fleuves, en péril de la part des brigands, en péril de la part de ceux de ma race, en péril parmi les Gentils, en péril dans les villes, en péril dans les déserts, en péril sur la mer, en péril parmi les faux frères ; dans les peines et dans le travail, dans de fréquentes veilles, dans la faim, dans la soif, <b>souvent dans les jeûnes</b>, dans le froid et dans la nudité » 2 Corinthiens 11 :26-27.'),
(649, 8, 9, 'Le marcheur doit faire très attention à la distraction en gérant correctement son temps. Car, comme la Parole le dit, les jours sont mauvais (Ephésiens 5 :16).'),
(650, 8, 9, 'Vous l’aurez compris, l’armure du marcheur c’est tout simplement la sanctification sans laquelle il est impossible de voir Dieu (Hébreux 12 :14).'),
(651, 8, 10, 'Prenons l’exemple d’un chauffeur au volant de sa voiture. Si celui-ci regarde constamment dans son rétroviseur, il ne peut voir les obstacles qui se dressent devant lui, sur la route.'),
(652, 8, 10, 'Il devient alors un danger à la fois pour lui-même et pour les autres. Celui qui veut atteindre son objectif ne doit jamais regarder en arrière.'),
(653, 8, 10, '« Mais je fais une chose : Oubliant les choses qui sont en arrière, et me portant vers celles qui sont en avant, je cours vers le but pour remporter le prix de la vocation céleste de Dieu en Jésus-Christ » Philippiens 3 :14.'),
(654, 8, 10, 'Le marcheur ne doit donc pas se focaliser sur les choses suivantes :'),
(655, 8, 10, '<h2>- Les erreurs</h2>'),
(656, 8, 10, 'Les erreurs du passé doivent permettre d’appréhender correctement l’avenir. Il ne faut jamais se morfondre à cause de son passé.'),
(657, 8, 10, '<h2>- Les biens de ce monde</h2>'),
(658, 8, 10, 'La femme de Lot aimait tellement le monde qu’elle s’arrêta dans sa marche pour regarder derrière et elle se transforma en statue de sel (Genèse 19 :26).'),
(659, 8, 10, '<h2>- Les blessures et les déceptions</h2>'),
(660, 8, 10, 'Plusieurs personnes ont du mal à aller de l’avant à cause des blessures et des déceptions. Elles s’enferment dans le mutisme, la dépression, la paranoïa, ou dans le délire. Une personne dont le coeur ou l’âme n’est pas guéri peut faire beaucoup de dégâts.'),
(661, 8, 10, '<h1>Exemples de marcheurs qui ont bien terminé la marche</h1>'),
(662, 8, 10, 'Le marcheur est environné d’un grand nombre de témoins qui ont fini leur course avec succès, il dispose donc de modèles à imiter lui permettant à son tour d’achever sa marche en vainqueur.'),
(663, 8, 10, '«Nous donc aussi, puisque nous sommes environnés d\'une si grande nuée de témoins, rejetons tout fardeau, et le péché qui nous enveloppe si aisément, et poursuivons constamment la course qui nous est proposée » Hébreux 12 :1.'),
(664, 8, 10, '<h2>Hénoch</h2>'),
(665, 8, 10, 'Cet homme n’avait chassé aucun démon ni fait aucun miracle. Mais il avait la foi, fruit de l’Esprit, et il marcha 300 ans avec Dieu et fut enlevé au ciel.'),
(666, 8, 10, '«<b>C’est par la foi</b> qu\'Hénoch fut enlevé pour qu’il ne vît point la mort, et qu’il ne parut plus parce que Dieu l’avait enlevé ; car, avant son enlèvement, il avait reçu <b>le témoignage qu’il était agréable à Dieu</b>» Hébreux 11:5.'),
(667, 8, 10, '<h2>Joseph</h2>'),
(668, 8, 10, 'Cet homme n’avait pas le don de miracles, il ne guérissait pas les malades mais il avait les fruits de l’Esprit. Il devint gouverneur d’Égypte, le numéro deux de ce grand pays.'),
(669, 8, 10, 'Il reçut alors la tunique royale que personne ne pouvait enlever, ni voler. Pour cela, il a dû perdre la tunique reçue de son père naturel pour recevoir au temps convenable la tunique de son Père céleste.'),
(670, 8, 10, 'La sagesse acquise lors de sa formation au désert lui permit de sauver les égyptiens et sa famille de la famine.'),
(671, 8, 10, 'Remarquez aussi qu’il fut finalement capable de pardonner à ses frères le mal qu’ils lui avaient causé car il avait compris que toutes ces choses concourraient à son bien puisqu\'il aimait Dieu (Romains 8:28).'),
(672, 8, 10, '<h2>Daniel</h2>'),
(673, 8, 10, 'Cet homme plein de sagesse et d’intelligence était rempli des fruits de l’Esprit. Daniel n’avait pas reçu le don de puissance pour opérer des miracles, ni celui de parler en langues. Mais il refusa les mets et le vin du roi et servit Dieu jusqu’à la fin de sa vie (Daniel 1).'),
(674, 8, 10, '<h2>Paul</h2>'),
(675, 8, 10, 'Cet homme de Dieu était amoureux du Seigneur Jésus-Christ. Malgré les miracles extraordinaires que Dieu opérait par son biais (Actes 20), il resta simple et fidèle à son Maître.'),
(676, 8, 10, 'Il a bravé toutes sortes de dangers à cause de son amour pour Dieu. Et à la fin de sa vie, il déclara «J’ai combattu le bon combat, j’ai <b>achevé la course</b>, j’ai gardé la foi » 2 Timothée 4 :7.'),
(677, 8, 10, '<h1>Les récompenses promises aux vainqueurs</h1>'),
(678, 8, 10, 'A plusieurs reprises dans les écritures le Seigneur promet de récompenser tous ceux qui finiront leur marche tout en gardant la foi.'),
(679, 8, 10, '«Si l\'oeuvre bâtie par quelqu\'un sur le fondement <b>demeure, il en recevra la récompense.</b> Si l\'oeuvre de quelqu\'un est brûlée, il en subira la perte ; mais pour lui, il sera sauvé, toutefois comme par le feu» (1 Corinthiens 3 :14-15).'),
(680, 8, 10, 'Voici ce que le Seigneur a promis :'),
(681, 8, 10, '<h2>L’arbre de vie, la vie éternelle :</h2>'),
(682, 8, 10, '«Que celui qui a des oreilles entende ce que l\'Esprit dit aux églises ! Au vainqueur, je donnerai à manger de l\'arbre de vie, qui est au milieu du paradis de Dieu» Apocalypse 2 :7.'),
(683, 8, 10, '<h2>Pas de seconde mort :</h2>'),
(684, 8, 10, '«Que celui qui a des oreilles entende ce que l\'Esprit dit aux églises ! Le vainqueur n\'aura pas à souffrir la seconde mort » Apocalypse 2 :11.'),
(685, 8, 10, '<h2>La manne cachée, un caillou blanc et un nom nouveau :</h2>'),
(686, 8, 10, '«Que celui qui a des oreilles entende ce que l\'Esprit dit aux églises ! Au vainqueur, je donnerai à manger de la manne qui est cachée, et je lui donnerai un caillou blanc, et sur ce caillou sera écrit un nouveau nom, que personne ne connaît, sinon celui qui le reçoit » Apocalypse 2 :17.'),
(687, 8, 10, '<h2>L’autorité et la gouvernance sur les nations avec un sceptre de fer, l’étoile du matin (Jésus) :</h2>'),
(688, 8, 10, '«Et au vainqueur, à celui qui gardera mes oeuvres jusqu\'à la fin, je donnerai autorité sur les nations. Et il les gouvernera avec un sceptre de fer, et elles seront brisées comme les vases d\'un potier, ainsi que j\'en ai moi-même reçu le pouvoir de mon Père. Et je lui donnerai l\'étoile du matin » Apocalypse 2 :26-28. Voir Matthieu 25 :14-30.'),
(689, 8, 10, '<h2>Le vainqueur sera revêtu d’un vêtement blanc, son nom ne sera jamais effacé du livre de vie, et il sera confessé devant le Père et ses anges :</h2>'),
(690, 8, 10, '«Le vainqueur sera revêtu de vêtements blancs, et je n\'effacerai pas son nom du Livre de vie, mais je confesserai son nom devant mon Père, et devant ses anges » Apocalypse 3 :5.'),
(691, 8, 10, '<h2>Le vainqueur sera une colonne le temple de Dieu, il aura sur son front le nom de Dieu, de Jésus et de la nouvelle Jérusalem :</h2>'),
(692, 8, 10, '«Le vainqueur, je ferai de lui une colonne dans le temple de mon Dieu, et il n\'en sortira plus ; et j\'écrirai sur lui le Nom de mon Dieu, et le nom de la cité de mon Dieu, qui est la nouvelle Jérusalem qui descend du ciel d\'auprès de mon Dieu, et mon nouveau Nom» Apocalypse 3 : 12'),
(693, 8, 10, '<h2>Le vainqueur sera assis sur le trône du Père :</h2>'),
(694, 8, 10, '« Le vainqueur, je le ferai asseoir avec moi sur mon trône, ainsi que j\'ai vaincu et me suis assis avec mon Père sur son trône » Apocalypse 3 :21.'),
(695, 8, 10, '<h2>Le vainqueur sera couronné, s’il a respecté les règles établies par Dieu :</h2>'),
(696, 8, 10, '« Au reste, la couronne de justice m\'est réservée, et le Seigneur, le juste Juge, me la donnera en ce jour-là, et non seulement à moi, mais aussi à tous ceux qui auront aimé son apparition » 2 Timothée 4 :8.'),
(697, 8, 10, '« De même, l\'athlète qui combat n\'est pas couronné s\'il n\'a pas combattu selon les règles» 2 Timothée 2 :5.'),
(698, 8, 10, '<h2>- La couronne de justice (2 Timothée 4 :8) :</h2>'),
(699, 8, 10, 'Le marcheur doit être juste durant toute sa vie.'),
(700, 8, 10, '<h2>- La couronne de gloire (1 Pierre 5 :1-4) :</h2>'),
(701, 8, 10, 'Le marcheur brisé par les souffrances qu’il a endurées durant toute sa vie sera honoré (2 Corinthiens 4:16-18).'),
(702, 8, 10, '<h2>- La couronne de vie (Jacques 1 :12 et\r\nApocalypse 2 :10) :</h2>'),
(703, 8, 10, 'Le marcheur qui a connu la mort ou les maladies recevra la couronne de vie.'),
(704, 8, 10, 'Toutes ces couronnes sont incorruptibles (1 Corinthiens 9 :25). Les vainqueurs brilleront comme les étoiles du ciel (Daniel 12 :2-3).'),
(705, 8, 10, 'Toutes ces récompenses doivent permettre au marcheur de ne pas se décourager à cause des épreuves (Hébreux 10 :35-39).'),
(706, 9, NULL, '« Ne savez-vous pas que ceux qui courent dans le stade courent tous, mais qu’un seul remporte le prix ? Courez de manière à le remporter. Tous ceux qui luttent dans les jeux sportifs vivent entièrement de régime, et ils le font pour obtenir une couronne corruptible ; mais nous, faisons-le pour une couronne incorruptible. Je cours donc, mais non pas sans savoir comment ; je combats, mais non pas comme battant l’air. Mais je mortifie mon corps et je le tiens assujetti, de peur d’être moi-même désapprouvé après avoir prêché aux autres. » 1 Corinthiens 9 :24-27.'),
(707, 9, NULL, '« Il n’est pas de soldat qui s’embarrasse des affaires de cette vie s’il veut plaire à celui qui l’a enrôlé pour la guerre. De même, l’athlète qui combat n’est pas couronné s’il n’a pas combattu selon les règles. » 2 Timothée 2 :4-5.'),
(708, 9, NULL, 'La marche chrétienne est semblable à une course au bout de laquelle il y a de grandes récompenses pour les vainqueurs.'),
(709, 9, NULL, 'Les athlètes de ce monde courent pour remporter des couronnes corruptibles (argent, honneurs, gloire…).'),
(710, 9, NULL, 'Pour atteindre cet objectif, ils s’imposent nuit et jour une discipline de fer faite de régimes, d’abstinences, d’entrainements quotidiens…'),
(711, 9, NULL, 'Si ces gens s’obligent à des règles de vie tellement drastiques pour obtenir des richesses et une gloire passagère, à combien plus forte raison l’athlète chrétien ne doit-il pas en faire de même ? Or nous ne courrons pas pour des couronnes incorruptibles, mais pour notre vie. C’est notre éternité qui est en jeu.'),
(712, 9, NULL, '« Béni est l’homme qui endure l’épreuve ; car après avoir été éprouvé, il recevra la couronne de vie, que le Seigneur a promise à ceux qui l’aiment. » Jacques 1 :12.'),
(713, 9, NULL, 'Pour remporter la course, l’apôtre Paul mortifiait son corps.'),
(714, 9, NULL, 'Le terme grec traduit par le verbe mortifier dans 1 Corinthiens 9 :27 est hupopiazo ; il signifie « battre “noir et bleu”, frapper comme pour causer des meurtrissures et marques blêmes, comme un boxeur qui entraîne son corps, le traite rudement et le discipline par privation. » Bien évidemment, il n’est pas question de s’infliger des blessures physiques comme le font certains ascètes catholiques, n’oublions pas que le combat est spirituel.'),
(715, 9, NULL, 'Il est question ici d’un renoncement total à soi, au monde et à ses convoitises.'),
(716, 9, NULL, '« Voici en effet, la volonté de Dieu, à savoir votre sanctification, que vous vous absteniez de la fornication, que chacun de vous sache posséder son corps dans la sanctification et dans l’honneur, et sans se laisser aller aux désirs de la convoitise, comme les Gentils qui ne connaissent pas Dieu » 1 Thessaloniciens 4 :3-5.'),
(717, 9, NULL, 'Il s’agit de vivre la sanctification sans demi-mesure ni compromis et d’accepter de suivre Christ sur le chemin qu’il nous montre tout en portant notre croix. Nous ne nous sanctifions pas seulement pour nous-mêmes, mais aussi avec l’espoir de sauver tous ceux qui nous sont chers (Jean 17 :19) : famille, amis, voisins, collègues…'),
(718, 9, NULL, '« Même vu la saison, parce qu’il est déjà l’heure de nous réveiller du sommeil ; car maintenant le salut est plus près de nous que lorsque nous avons cru. La nuit est avancée et le jour approche. Rejetons donc les oeuvres des ténèbres, et soyons revêtus des armes de lumière. Marchons honnêtement, comme en plein jour, loin des orgies et de l’ivrognerie, de la luxure et de la débauche, des querelles et des jalousies. Mais soyez revêtus du Seigneur Jésus-Christ, et n’ayez pas soin de la chair pour accomplir ses convoitises. » Romains 13 :11-14.'),
(719, 9, NULL, '« C’est pourquoi il est dit : Réveille-toi, toi qui dors, et relève-toi d’entre les morts, et Christ t’éclairera. Prenez donc garde de vous conduire soigneusement, non comme des insensés, mais comme des sages, rachetant le temps, car les jours sont mauvais. C’est pourquoi ne soyez pas sans intelligence, mais comprenez bien quelle est la volonté du Seigneur. » Ephésiens 5 :14-17.'),
(720, 9, NULL, 'Aucune course, aucun combat n’ont été remportés sans sacrifice, en vivant dans les excès du manger et du boire, dans la distraction et l’assoupissement.'),
(721, 9, NULL, 'Réveillons-nous du sommeil, car les jours sont très mauvais. Acceptons de payer le prix, combattons le bon combat. Tenons ferme, car le Seigneur marche avec nous et combat pour nous.'),
(722, 9, NULL, 'Encore un peu de temps et nous aurons notre récompense. Les souffrances du temps présent ne sont pas comparables à la gloire qui nous est réservée (Romains 8 :18). Que nos deux pieds restent sur le droit chemin malgré les persécutions (Hébreux 12 :13).'),
(723, 9, NULL, '<b>« Et toi, marche jusqu\'à ta fin; néanmoins tu te reposeras, et tu te tiendras debout pour ton héritage à la fin des jours ». Daniel 12 :13.</b>'),
(724, 9, NULL, '<h3>Shora KUETU</h3>'),
(725, 9, NULL, 'Du même auteur :\r\n\r\nL’appel\r\nL’appel au ministère\r\nÉglise influente ou influencée ?\r\nLe feu étranger dans les églises\r\nPasteur ou chef d’entreprise\r\nLa captivité de l’Évangile\r\nLes fruits de l’Esprit\r\nL’esprit de Jézabel\r\nLe blé et l’ivraie\r\nEntre les mains du Potier\r\nLa prophétie biblique\r\nL’église de Laodicée'),
(726, 9, NULL, 'Sites :\r\n<u>www.bibledejesuschrist.org</u>\r\n<u>www.tv2vie.org</u>');

-- --------------------------------------------------------

--
-- Structure de la table `t2v_livre`
--

CREATE TABLE `t2v_livre` (
  `id` int(11) NOT NULL,
  `titre` varchar(510) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `t2v_livre`
--

INSERT INTO `t2v_livre` (`id`, `titre`) VALUES
(3, 'LA MARCHE AVEC DIEU');

-- --------------------------------------------------------

--
-- Structure de la table `t2v_sous_categorie`
--

CREATE TABLE `t2v_sous_categorie` (
  `id` int(11) NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `titre` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `t2v_sous_categorie`
--

INSERT INTO `t2v_sous_categorie` (`id`, `categorie_id`, `titre`, `numero`) VALUES
(1, 3, 'Les trois étapes de la vie d’un marcheur', '1)'),
(2, 3, 'La marche des Hébreux après leur sortie d’Égypte', '2)'),
(3, 3, 'Le marcheur dans le Tabernacle', '3)'),
(4, 3, 'La marche d’Ezéchiel dans le sanctuaire céleste', '4)'),
(5, 4, 'La voie de Caïn et l’égarement de Balaam', '1)'),
(6, 4, 'L’ivraie : les mauvaises compagnies', '2)'),
(7, 8, 'Mettre la Parole de Dieu en pratique', '1)'),
(8, 8, 'Marcher selon l’Esprit', '2)'),
(9, 8, 'Se revêtir de l’armure du combattant', '3)'),
(10, 8, 'Oublier le passé', '4)');

-- --------------------------------------------------------

--
-- Structure de la table `t2v_user`
--

CREATE TABLE `t2v_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `t2v_user`
--

INSERT INTO `t2v_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'DIGBEU', 'digbeu', 'digbeufreddy@gmail.com', 'digbeufreddy@gmail.com', 1, NULL, '$2y$13$i0XJ1rKyzG93CpF2EN4fB.XijmHhgumlkoP2u8qnaG5UzfpHyLJcO', '2017-08-22 09:13:50', 'b8VSDTre-cPU1iFwQ4SIzNrgqptf20Lps78wMboK_9E', '2017-08-20 19:38:47', 'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t2v_categorie`
--
ALTER TABLE `t2v_categorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CD77FE437D925CB` (`livre_id`);

--
-- Index pour la table `t2v_detail_livre`
--
ALTER TABLE `t2v_detail_livre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_15DCFC93BCF5E72D` (`categorie_id`),
  ADD KEY `IDX_15DCFC93A27126E0` (`souscategorie_id`);

--
-- Index pour la table `t2v_livre`
--
ALTER TABLE `t2v_livre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `t2v_sous_categorie`
--
ALTER TABLE `t2v_sous_categorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9D3C0EADBCF5E72D` (`categorie_id`);

--
-- Index pour la table `t2v_user`
--
ALTER TABLE `t2v_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B92B4BEB92FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_B92B4BEBA0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_B92B4BEBC05FB297` (`confirmation_token`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t2v_categorie`
--
ALTER TABLE `t2v_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `t2v_detail_livre`
--
ALTER TABLE `t2v_detail_livre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=727;
--
-- AUTO_INCREMENT pour la table `t2v_livre`
--
ALTER TABLE `t2v_livre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `t2v_sous_categorie`
--
ALTER TABLE `t2v_sous_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `t2v_user`
--
ALTER TABLE `t2v_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t2v_categorie`
--
ALTER TABLE `t2v_categorie`
  ADD CONSTRAINT `FK_7CD77FE437D925CB` FOREIGN KEY (`livre_id`) REFERENCES `t2v_livre` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `t2v_detail_livre`
--
ALTER TABLE `t2v_detail_livre`
  ADD CONSTRAINT `FK_15DCFC93A27126E0` FOREIGN KEY (`souscategorie_id`) REFERENCES `t2v_sous_categorie` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_15DCFC93BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `t2v_categorie` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `t2v_sous_categorie`
--
ALTER TABLE `t2v_sous_categorie`
  ADD CONSTRAINT `FK_9D3C0EADBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `t2v_categorie` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
