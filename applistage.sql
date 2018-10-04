-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.19 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour applistage
CREATE DATABASE IF NOT EXISTS `applistage` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `applistage`;

-- Export de la structure de la table applistage. applistage
CREATE TABLE IF NOT EXISTS `applistage` (
  `id` int(11) NOT NULL,
  `nom` tinytext NOT NULL,
  `ville` tinytext NOT NULL,
  `cp` int(11) NOT NULL,
  `adresse` tinytext NOT NULL,
  `mail` tinytext,
  `tel` text,
  `activite` tinytext,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table applistage.applistage : ~115 rows (environ)
/*!40000 ALTER TABLE `applistage` DISABLE KEYS */;
REPLACE INTO `applistage` (`id`, `nom`, `ville`, `cp`, `adresse`, `mail`, `tel`, `activite`, `active`) VALUES
	(1, 'Ecole Maternelle FranÃ§oise Dolto', 'Melun', 77000, '30 avenue Georges Pompidou', '', '01 64 64 04 20', 'Enseignement', 1),
	(2, 'Groupe AdÃ©quat', 'Vert-Saint-Denis', 77240, '390 avenue Anna Lindh', 'agence.vsd@groupeadequat.fr', '06 46 64 27 82', 'Autre', 1),
	(3, 'Le Pain Gourmand', 'Melun', 77000, '47 avenue Georges Pompidou', '', '07 50 60 12 06', 'commerce/Distribution', 1),
	(4, 'Franco Pizz', 'Melun', 77000, '14 route de Montereau', '', '01 64 37 55 07', 'Commerce/Distribution', 1),
	(5, 'Papa Grill', 'Melun', 77000, '26 Boulevard Gambetta', '', '01 60 68 27 01', 'HÃ´tellerie/Restauration', 1),
	(6, 'Ecole Primaire Jules Ferry', 'Melun', 77000, 'Rue Jules Ferry ', '', '01 64 38 99 78 ', 'Enseignement', 1),
	(7, 'Tribunal de Grande Instance', 'Melun', 77010, '2 avenue du GÃ©nÃ©ral Leclerc', '', '01 64 79 81 64', 'Droit/Justice', 1),
	(8, 'Baildy Group', 'Melun', 77000, '1 place LoÃ¯c Baron', '', '01 60 66 88 50', 'Multimedia/Audiovisuel/Informatique ', 1),
	(9, 'Relay Gare', 'Melun', 77000, 'Place Callieni', '', '01 64 39 33 21', 'Commerce/Distribution', 1),
	(10, 'Micro CrÃ¨che Les Pâ€™tis Petons', 'St-Germain-Laxis', 77950, '3 bis rue de lâ€™Ã©glise', '', '09 82 42 27 12', 'Sciences humaines ', 1),
	(11, 'Diarra Institut', 'Melun', 77000, 'Mail Gaillardon', '', '01 64 09 81 17', 'Commerce/Distribution ', 1),
	(12, 'Menuiserie', 'Corbeil Essonnes', 91100, '21 rue du Champ dâ€™Epreuves', '', '01 60 88 25 59', 'Industrie', 1),
	(13, 'Sodiaal International', 'Paris Cedex 14', 75680, '170 bis Boulevard du Montparnasse', '', '01 44 10 90 10', 'Industrie', 1),
	(14, 'IntermarchÃ©', 'Melun', 77000, '36 avenue du GÃ©nÃ©ral Patton', '', '01 60 56 00 90', 'Commerce/Distribution', 1),
	(15, 'Orange', 'Paris Cedex 14', 75012, '187 avenue Daumesnil', '', '07 87 16 06 59', 'Multimedia/Audiovisuel/Informatique ', 1),
	(16, 'TMC tÃ©lÃ©commandes mÃ©caniques par cÃ¢ble', 'Le MÃ©e-Sur-Seine', 77350, 'Rue Jean-Baptiste Colbert', '', '01 60 56 56 56', 'Transports/Automobile ', 1),
	(17, 'Sobeca', 'Vert-Saint-Denis', 77240, '581 avenue de lâ€™Europe', '', '01 64 52 04 30', 'BÃ¢timent/Construction ', 1),
	(18, 'Carrefour ', 'Evry', 91006, '9 avenue du Lac Bois Briard Mermoz 6 Bat. K1', '', '01 69 64 64 00 ', 'Commerce/Distribution', 1),
	(19, 'Banque de France ', 'Paris ', 75001, '31 rue Croix des Petits Champs', '', '01 64 87 67 03', 'Banque/Assurance ', 1),
	(20, 'Les Plaisirs Parisiens', 'Melun', 77000, '40 Boulevard de lâ€™Almont', '', '01 64 87 67 03', 'Commerce/Distribution', 1),
	(21, 'ND Logistics', 'Le Coudray-Montceaux', 91830, '9-11 rue des Haies Blanches', '', '01 69 90 70 26', 'Logistique ', 1),
	(22, 'Banque de France ', 'Melun', 77000, '24 rue St Ambroise', '', '01 64 87 67 00 ', 'Banque/Assurance ', 1),
	(23, 'Mairie de Melun', 'Melun', 77000, '210 rue Paul Doumer', '', '01 64 52 33 03 ', 'Fonction publique ', 1),
	(24, 'CAMVS', 'Dammarie-les-Lys', 77190, '297 rue Rousseau Vaudran', '', 'Â 01 64 79 25 25 ', 'Fonction publique ', 1),
	(25, 'La Banque Postale', 'Melun', 77000, '210 avenue Georges ClÃ©menceau', '', '01 64 71 37 00 ', 'Banque/Assurance ', 1),
	(26, 'SMR France', 'Dammarie-les-Lys', 77190, '154 avenue du Lys', '', '01 64 79 22 00 ', 'Transports/Automobile ', 1),
	(27, 'PMS Photomike Studio', 'Rubelles', 77950, 'Centre Commercial Carrefour Market', '', 'Â 01 64 64 04 23 ', 'Multimedia/Audiovisuel/Informatique ', 1),
	(28, 'Planet Pizza', 'Melun', 77000, '80 bis rue du GÃ©nÃ©ral de Gaulle', '', '01 60 68 11 11 ', 'Commerce/Distribution', 1),
	(29, 'Ibis Styles Rubelles', 'Rubelles', 77950, '6 rue du PerrÃ©', '', '01 64 52 41 41 ', 'HÃ´tellerie/Restauration', 1),
	(30, 'XPO SUPPLY CHAIN France', 'Bretigny-sur-Orge', 91220, 'Rue de Bourgogne â€“ ZI de la Moinerie', '', '01 48 16 38 00 ', 'Transports/Automobile ', 1),
	(31, 'Garage Jean Redele', 'Brie-Comte-Robert', 77170, '17 rue du GÃ©nÃ©ral Leclerc', '', '01 64 39 95 77 ', 'Transports/Automobile ', 1),
	(32, 'Institut Cameane', 'Paris ', 75002, '23 rue des Jeuneurs', '', '01 40 13 07 14 ', 'Commerce/Distribution', 1),
	(33, 'GÃ©nÃ©ral dâ€™Optique', 'Cesson', 77240, 'Centre Commercial BoissÃ©nart', '', '01 60 63 01 23 ', 'Commerce/Distribution', 1),
	(34, 'Euro Disney Associes ', 'Chessy', 77700, '1 rue de la Galmy', '', '', 'Art/Spectacle ', 1),
	(35, 'Elres', 'Combs-la-Ville', 77380, '2 allÃ©e RenÃ© Lalique', '', '', 'Commerce/Distribution', 1),
	(36, 'Burton Of London', 'Melun', 77000, '20 rue St Aspais', '', '01 64 09 24 82 ', 'Commerce/Distribution', 1),
	(37, 'Boulangerie Assia', 'Melun', 77000, '12 rue Colonel Picot', '', '09 54 77 04 08 ', 'Commerce/Distribution', 1),
	(38, 'GEMO', 'Melun', 77000, 'ZAC du Champs de Foire', '', 'Â 01 64 71 90 95 ', 'Commerce/Distribution', 1),
	(39, 'Association Lys ODE77', 'Dammarie-les-Lys', 77190, '7 rue Marc Jacquet', '', '01 64 39 97 93 ', 'Sciences humaines ', 1),
	(40, 'Le Petrin de lâ€™Abbaye', 'Dammarie-les-Lys', 77190, 'Centre Commercial de lâ€™Abbaye', '', '', 'Commerce/Distribution', 1),
	(41, 'Pharmacie Jaoui', 'Melun', 77000, '65 avenue du GÃ©nÃ©ral Patton', '', '01 60 68 71 00 ', 'SantÃ© ', 1),
	(42, 'Boulangerie lâ€™Aures', 'Melun', 77000, '5-7 Square Blaise Pascal', '', '', 'Commerce/Distribution', 1),
	(43, 'Centre DCNS de Nantes ', 'La Montagne', 44620, 'Indret', '', '02 40 84 89 49 ', 'BÃ¢timent/Construction ', 1),
	(44, 'La Maison de Toutou', 'Vaux-le-Penil', 77000, '25 route de Montereau', '', 'Â 01 64 37 15 61 ', 'SantÃ© ', 1),
	(45, 'Direction des Affaires Sportives', 'Melun', 77000, '4 rue de la Fontaine Saint Liesne', '', '01 60 56 06 20 ', 'Fonction publique ', 1),
	(46, 'SARL VHS', 'Le MÃ©e-Sur-Seine', 77350, 'Centre Commercial Plein-Ciel', '', '', 'Commerce/Distribution', 1),
	(47, 'Centre HÃ´spitalier de Melun', 'Melun', 77000, '2 rue FrÃ©teau de Peny', '', '01 64 71 60 00', 'SantÃ© ', 1),
	(48, 'Hyper U', 'Brie-Comte-Robert', 77170, 'Rue Gustave Eiffel', '', '01 64 05 23 01', 'Commerce/Distribution', 1),
	(49, 'MusÃ©e de la Gendarmerie', 'Melun', 77000, 'Avenue du 13eme Dragon', '', '01 64 14 54 64', 'Fonction publique ', 1),
	(50, 'Boulangerie PÃ¢tisserie Artisanale BAH', 'Le MÃ©e-Sur-Seine', 77350, 'Avenue Maurice Dauvergne', '', '', 'Commerce/Distribution', 1),
	(51, 'PAK Auto', 'Vaux-le-Penil', 77000, '112 route de Nangis', '', '06 64 86 07 07 ', 'Transports/Automobile ', 1),
	(52, 'Boulanger', 'Cesson', 77240, 'Rue du Bois des Saint-PÃ¨res', '', '0 825 85 08 50 ', 'Commerce/Distribution', 1),
	(53, 'Geolia', 'Champlan', 91160, '3 rue des Clotais', '', '09 72 13 20 41', 'Logistique ', 1),
	(54, 'Cabinet de KinÃ©sithÃ©rapie', 'Melun', 77000, '17 Boulevard FranÃ§ois RenÃ© de ChÃ¢teaubriand', '', '01 64 09 06 96', 'SantÃ© ', 1),
	(55, 'Optiko', 'Melun', 77000, '21 Boulevard de lâ€™Almont', '', '01 60 66 01 80 ', 'Commerce/Distribution', 1),
	(56, 'A la CrÃªperie de lâ€™Avenue', 'Melun', 77000, '18 avenue du GÃ©nÃ©ral Patton', '', '01 64 52 59 25 ', 'HÃ´tellerie/Restauration', 1),
	(57, 'Avancial', 'Paris ', 75012, '40 avenue des Terroirs de France', '', '01 44 74 95 77 ', 'Transports/Automobile ', 1),
	(58, 'Rigolo comme la Vie', 'Cesson', 77240, '5 rue AimÃ© CÃ©saire', '', '01 64 37 61 94 ', 'Sciences humaines ', 1),
	(59, 'Mairie de Villeneuve-Saint-Georges', 'Villeneuve-Saint-Georges', 94190, 'Place Pierre Semard', '', '01 43 86 38 00 ', 'Fonction publique ', 1),
	(60, 'D.Lys Burger', 'Dammarie-les-Lys', 77190, '824 avenue du Lys', '', '09 83 48 64 88 ', 'HÃ´tellerie/Restauration', 1),
	(61, 'Leroy Merlin', 'Massy', 91300, '2 rue Aulnay Dracourt', '', '01 69 53 59 59 ', 'Commerce/Distribution', 1),
	(62, 'OkaÃ¯di', 'Melun', 77000, '28 rue Saint Aspais', '', '01 64 14 92 89 ', 'Commerce/Distribution', 1),
	(63, 'Auchan', 'Cesson', 77240, 'Centre Commercial BoissÃ©nart', '', '01 64 10 16 16 ', 'Commerce/Distribution', 1),
	(64, 'Oâ€™Dwich', 'Melun', 77000, '1 avenue du GÃ©nÃ©ral Patton', '', '01 75 18 29 02 ', 'HÃ´tellerie/Restauration', 1),
	(65, 'Kam Fret Services', 'Le MÃ©e-Sur-Seine', 77350, '261 rue de Chanteloup', '', '', 'Transports/Automobile ', 1),
	(66, 'Le Moulin Ã  Sakina', 'Melun', 77000, '1 Avenue Patton', '', '', 'Commerce/Distribution', 1),
	(67, 'PlanÃ¨te SantÃ© Pharmacie', 'Melun', 77000, '1 Square Blaise Pascal', '', '01 60 56 54 44 ', 'SantÃ© ', 1),
	(68, 'Mairie de St-Germain-Laxis', 'St-Germain-Laxis', 77950, 'Place Emile Piot', '', '01 64 52 27 12 ', 'Fonction publique ', 1),
	(69, 'Sun Paradise', 'Melun', 77000, '13 rue de lâ€™Abreuvoir', '', '01 64 09 97 62 ', 'Commerce/Distribution ', 1),
	(70, 'Optique Plein Ciel', 'Le MÃ©e-Sur-Seine', 77350, 'Centre Commercial Plein-Ciel', '', '01 64 52 29 36 ', 'Commerce/Distribution', 1),
	(71, 'ID Logistics France', 'Vert-Saint-Denis', 77240, '10 Rue Paul-Henri Spaak', '', '', 'Logistique ', 1),
	(72, 'Mohammad Emran', 'Le MÃ©e-Sur-Seine', 77350, '49 rue de Bouville', '', '09 50 14 91 13', 'Commerce/Distribution', 1),
	(73, 'Mairie de Savigny-le-Temple', 'Savigny-le-Temple', 77176, '1 Place FranÃ§ois Mitterrand', '', '01 64 10 18 00 ', 'Fonction publique ', 1),
	(74, 'Tati', 'Melun', 77000, 'ZAC du Champs de Foire', '', '01 60 66 83 83 ', 'Commerce/Distribution', 1),
	(75, 'Matrechka', 'Melun', 77000, '18 rue Saint BarthÃ©lÃ©my', '', '06 89 34 08 78 ', 'Commerce/Distribution', 1),
	(76, 'Multi Accueil AFC Les Petits Bergers', 'Melun', 77000, 'Place de la Motte aux Cailles', '', '01 64 39 91 61 ', 'Sciences humaines ', 1),
	(77, 'VÃ©ronic Coiffure', 'Vaux-le-Penil', 77000, '25 route de Montereau', '', '01 64 10 96 71 ', 'Commerce/Distribution', 1),
	(78, 'BNP Paribas', 'Melun', 77000, '1 rue St Etienne', '', '0 820 82 00 01 ', 'Banque/Assurance ', 1),
	(79, 'PrÃ©fecture de Seine-et-Marne', 'Melun', 77000, 'Rue des Saints-PÃ¨res', '', '01 64 71 77 77 ', 'Fonction publique ', 1),
	(80, 'Paulstra', 'Lisses', 91090, '24 rue de lâ€™Eglantier', '', 'Â 01 69 91 50 00 ', 'Sport', 1),
	(81, 'VÃªt Affaires', 'Savigny-le-Temple', 77176, '137 rue de lâ€™Industrie', '', '01 75 79 12 67 ', 'Commerce/Distribution', 1),
	(82, 'ConfÃ©dÃ©ration Syndicale des Familles ', 'Melun', 77000, '11 Avenue de Saint Exupery', '', '01 64 38 51 63 ', 'Sciences humaines ', 1),
	(83, 'Cornet Franck', 'Broyes', 51120, '23 rue Georges Sand', '', '', 'BÃ¢timent/Construction ', 1),
	(84, 'MÃ©diathÃ¨que', 'Melun', 77000, '25 rue du ChÃ¢teau', '', '01 60 56 04 70 ', 'Fonction publique ', 1),
	(85, 'EZO', 'Dammarie-les-Lys', 77190, 'Place Paul Gauguin', '', '', 'Industrie', 1),
	(86, 'Mayeur Garage AD', 'Moissy-Cramayel', 77550, '24 avenue Jean JaurÃ¨s', '', 'Â 01 60 60 63 26 ', 'Transports/Automobile ', 1),
	(87, 'Catchoupiote', 'Melun', 77000, '11 rue du PresbytÃ¨re ', '', '01 64 09 48 82 ', 'Commerce/Distribution', 1),
	(88, 'Bertin & Bertin Avocats AssociÃ©s', 'Avon', 77210, '2 rue Gambetta', '', '01 60 96 89 61', 'Droit/Justice', 1),
	(89, 'Boucherie de lâ€™Almont', 'Melun', 77000, '30 Boulevard de lâ€™Almont', '', '01 64 09 20 08 ', 'Commerce/Distribution', 1),
	(90, 'Ecole Maternelle Montaigu', 'Melun', 77000, '30 avenue Georges Pompidou', '', '01 64 52 33 03', 'Enseignement', 1),
	(91, 'Espace 3000 Vesoul', 'Vesoul', 70000, 'Rue Victor Dolle', '', '03 84 97 10 10', 'Transports/Automobile ', 1),
	(92, 'Pierre et BeautÃ©', 'Melun', 77000, '21 rue de St Liesne', '', '09 53 70 44 42', 'Commerce/Distribution', 1),
	(93, 'RapidFlore', 'Melun', 77000, '2 avenue du GÃ©nÃ©ral Patton', '', '01 60 66 47 01', 'Commerce/Distribution', 1),
	(94, 'Lidl', 'Dammarie-les-Lys', 77191, '536 rue des FrÃ¨res Thibault', '', '01 60 56 00 90', 'Commerce/Distribution', 1),
	(95, 'Librairie Jacques Amyot', 'Melun', 77000, '22 rue Paul Doumer', '', '01 64 14 44 24', 'Commerce/Distribution', 1),
	(96, 'O.N. BTP', 'Melun', 77000, '26 rue de la Fontaine', '', '06 61 07 95 24', 'BÃ¢timent/Construction ', 1),
	(97, 'LycÃ©e LÃ©onard de Vinci', 'Melun', 77011, '2 bis rue Edouard Branly', '', '01 60 56 60 60 ', 'Enseignement', 1),
	(98, 'Picard SurgelÃ©s', 'Savigny-le-Temple', 77176, '8 rue de lâ€™OrÃ©e du Bois', '', '01 60 63 14 14', 'Commerce/Distribution', 1),
	(99, 'Centre Commercial', 'Pantin', 93500, '9 rue du PrÃ© St Gervais', '', '01 48 40 17 90', 'Commerce/Distribution', 1),
	(100, '3H Food', 'Melun', 77000, 'Place des 3 Horloges', '', '09 81 47 52 37', 'HÃ´tellerie/Restauration', 1),
	(101, 'Pompes FunÃ¨bres Roc-Eclerc', 'Dammarie-les-Lys', 77190, '603 avenue AndrÃ© AmpÃ¨re', '', '01 64 37 21 89', 'Commerce/Distribution', 1),
	(102, 'PublicitÃ© Benoist', 'Vaux-le-Penil', 77300, '880 rue du MarÃ©chal Juin', '', '01 64 37 15 75', 'Multimedia/Audiovisuel/Informatique ', 1),
	(103, 'MaternitÃ©', 'Melun', 77011, '2 rue de FrÃ©teau de Peny', '', '01 64 71 65 35', 'SantÃ© ', 1),
	(104, 'Clinique des Fontaines', 'Melun', 77000, '54 Boulevard Aristide Briand', '', '01 60 56 40 00 ', 'SantÃ© ', 1),
	(105, 'Maison MÃ©dicale Saint Nicolas', 'Rubelles', 77950, 'Rue St Nicolas', '', '01 60 66 84 45', 'SantÃ© ', 1),
	(106, 'Pharmacie', 'Dammarie-les-Lys', 77190, 'Centre Commercial Villaubois', '', '01 64 37 36 07', 'SantÃ© ', 1),
	(107, 'Auto Ecole', 'Melun', 77000, '16 rue du Colonel Picot', '', '09 83 34 06 77', 'Transports/Automobile ', 1),
	(108, 'HÃ´tel Montaigne', 'Paris ', 75008, '6 avenue Montaigne', '', '01 80 97 40 00', 'HÃ´tellerie/Restauration', 1),
	(109, 'Salon Fat Beauty', 'Melun', 77000, '12 bis rue St Liesne', '', '06 12 78 01 25', 'Commerce/Distribution', 1),
	(110, 'Tonton Grill', 'Melun', 77000, '49 rue St BarthÃ©lÃ©my', '', '09 83 39 65 39', 'HÃ´tellerie/Restauration', 1),
	(111, 'Eva & Flo Couture', 'Melun', 77000, '19 rue St Ambroise', '', '01 64 39 50 56', 'Commerce/Distribution', 1),
	(112, 'Clinique St Jean', 'Melun', 77000, '41 avenue de Corbeil', '', '01 64 14 30 27', 'SantÃ© ', 1),
	(113, 'Zadis Electrique', 'Dammarie-les-Lys', 77190, '37 rue Marc Lanvin', '', '01 60 65 19 53', 'BÃ¢timent/Construction ', 1),
	(114, 'Centre de loisirs Bois du Lys', 'Dammarie-les-Lys', 77190, '380 chemin du Clocher', '', '01 64 37 15 27', 'Sport', 1),
	(115, 'Chantemur', 'Melun', 77000, 'ZAC du Champs de Foire', '', '01 60 68 25 00', 'Commerce/Distribution', 1);
/*!40000 ALTER TABLE `applistage` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
