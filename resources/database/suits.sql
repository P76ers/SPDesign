-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Mai 2024 um 11:43
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `suits`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `artikel`
--

CREATE TABLE `artikel` (
  `ArtikeliD` int(11) NOT NULL,
  `Artikelname` varchar(40) DEFAULT NULL,
  `Artikelbeschreibung` longtext DEFAULT NULL,
  `Einzelpreis` decimal(19,2) DEFAULT NULL,
  `Image` varchar(40) DEFAULT NULL,
  `Auslaufartikel` tinyint(1) DEFAULT NULL,
  `KategorieNr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `artikel`
--

INSERT INTO `artikel` (`ArtikeliD`, `Artikelname`, `Artikelbeschreibung`, `Einzelpreis`, `Image`, `Auslaufartikel`, `KategorieNr`) VALUES
(2, 'Roma Anzug sand', 'Pure S110er Schurwolle von Vitale Barberis Canonico, Italien', 498.00, '1.png', 0, 1),
(3, 'Havana Perennial Anzug taupe Fischgrätmu', 'Schurwolle Seide von Rogna, Italien', 379.00, '2.png', 0, 1),
(4, 'Havana Anzug Dreiteiler navy Hahnentritt', 'Wolle Kaschmir von E.Thomas, Italien', 719.00, '3.png', 0, 1),
(5, 'Penny Loafer dunkelbraun', 'Italienisches Kalbvelours', 279.00, '4.png', 0, 2),
(6, 'Double Monk Schuhe schwarz', 'Italienisches Kalbsleder', 279.00, '5.png', 0, 2),
(7, 'Sneaker grau monochrom\r\n', 'Italienisches Kalbvelours', 169.00, '6.png', 0, 2),
(8, 'Mantel grün', 'Pure Schurwolle', 379.00, '7.png', 0, 3),
(9, 'Mantel dunkelgrau Gürtel', 'Lamawolle Schurwolle von Piacenza, Italien', 699.00, '8.png', 0, 3),
(10, 'Mantel mittelbraun', 'Reines Kamelhaar von Corrado, Italien', 699.00, '9.png', 0, 3),
(11, 'Firenze Hose off-white', 'Reine Baumwolle von Di Sondrio, Italien', 149.00, '10.png', 0, 4),
(12, 'Vigo Hose sand Bundfalte', 'Pure 4fach Traveller Schurwolle von Rogna, Italien', 179.00, '11.png', 0, 4),
(13, 'Milano Hose taupe', 'Circular Schurwolle-Flanell von Vitale Barberis Canonico, Italien', 169.00, '12.png', 0, 4),
(14, 'Hemd weiß Doppelmanschette Slim', 'Ägyptische Baumwolle von Albini, Italien', 99.00, '13.png', 0, 5),
(15, 'Westernhemd off-white', 'Moleskin aus ägyptischer Baumwolle von Pontoglio, Italien', 149.00, '14.png', 0, 5),
(16, 'Oxford Hemd hellblau gestreift Extra Sli', 'Traveller aus ägyptischer Baumwolle von Weba, Schweiz', 99.00, '15.png', 0, 5),
(17, 'Krawatte hellbraun', 'Reine Seide', 49.00, '16.png', 0, 6),
(18, 'Einstecktuch weiß', 'Reine Seide', 29.00, '17.png', 0, 6),
(19, 'Gürtel schwarz', 'Italienisches Rindsleder', 59.00, '18.png', 0, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `artikelkategorien`
--

CREATE TABLE `artikelkategorien` (
  `KategorieID` int(11) NOT NULL,
  `Kategoriename` varchar(20) DEFAULT NULL,
  `Image` varchar(40) DEFAULT NULL,
  `Kategoriebeschreibung` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `artikelkategorien`
--

INSERT INTO `artikelkategorien` (`KategorieID`, `Kategoriename`, `Image`, `Kategoriebeschreibung`) VALUES
(1, 'Anzüge', 'anzug.png', 'Nicht von der Stange!'),
(2, 'Schuhe', 'schuhe.png', 'Schuhwerk'),
(3, 'Mäntel', 'mantel.png', 'Zieh Dich warm an!'),
(4, 'Hosen', 'hose.png', 'Mit uns geht nichts in die Hose!'),
(5, 'Hemden', 'hemd.png', 'Sei kein Hemd!'),
(6, 'Accessoires', 'access.png', 'Stilvollle Accessoires!');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellungdetails`
--

CREATE TABLE `bestellungdetails` (
  `ArtikelNr` int(11) NOT NULL,
  `BestellNr` int(11) NOT NULL,
  `Anzahl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `bestellungdetails`
--

INSERT INTO `bestellungdetails` (`ArtikelNr`, `BestellNr`, `Anzahl`) VALUES
(2, 1, 1),
(2, 3, 1),
(5, 1, 1),
(6, 3, 1),
(10, 2, 1),
(11, 2, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellungen`
--

CREATE TABLE `bestellungen` (
  `Bestellid` int(11) NOT NULL,
  `Bestelldatum` varchar(20) DEFAULT NULL,
  `KundenNr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `bestellungen`
--

INSERT INTO `bestellungen` (`Bestellid`, `Bestelldatum`, `KundenNr`) VALUES
(1, '17.01.2024', 1),
(2, '18.01.2024', 1),
(3, '19.01.2024', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunden`
--

CREATE TABLE `kunden` (
  `KundenID` int(11) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Privilegien` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `kunden`
--

INSERT INTO `kunden` (`KundenID`, `Email`, `Password`, `Privilegien`) VALUES
(1, 'susan@gmail.com', 'pw1', 'admin'),
(2, 'sadaf@gmail.com', 'pw2', 'admin'),
(3, 'p@gmail.com', 'pw3', 'admin'),
(9, 'p76@gmail.com', 'pw1', 'none');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `termine`
--

CREATE TABLE `termine` (
  `TerminID` int(11) NOT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `Datum` varchar(10) DEFAULT NULL,
  `Uhrzeit` varchar(10) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `KundenNr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `termine`
--

INSERT INTO `termine` (`TerminID`, `Status`, `Datum`, `Uhrzeit`, `Message`, `KundenNr`) VALUES
(72, 'Anfrage', '26.01.2024', '10:00', 'Vorbereitung Projektvorstellung', 1),
(77, 'Anfrage', '25.01.2024', '14:00', 'Ich benötige einen Termin bitte', 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`ArtikeliD`),
  ADD KEY `fkArtikelkategorien` (`KategorieNr`);

--
-- Indizes für die Tabelle `artikelkategorien`
--
ALTER TABLE `artikelkategorien`
  ADD PRIMARY KEY (`KategorieID`);

--
-- Indizes für die Tabelle `bestellungdetails`
--
ALTER TABLE `bestellungdetails`
  ADD PRIMARY KEY (`ArtikelNr`,`BestellNr`),
  ADD KEY `fkBestellungdetails` (`BestellNr`);

--
-- Indizes für die Tabelle `bestellungen`
--
ALTER TABLE `bestellungen`
  ADD PRIMARY KEY (`Bestellid`),
  ADD KEY `fkBestellungen` (`KundenNr`);

--
-- Indizes für die Tabelle `kunden`
--
ALTER TABLE `kunden`
  ADD PRIMARY KEY (`KundenID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indizes für die Tabelle `termine`
--
ALTER TABLE `termine`
  ADD PRIMARY KEY (`TerminID`),
  ADD KEY `fkKunden` (`KundenNr`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `artikel`
--
ALTER TABLE `artikel`
  MODIFY `ArtikeliD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT für Tabelle `artikelkategorien`
--
ALTER TABLE `artikelkategorien`
  MODIFY `KategorieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `bestellungen`
--
ALTER TABLE `bestellungen`
  MODIFY `Bestellid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `kunden`
--
ALTER TABLE `kunden`
  MODIFY `KundenID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `termine`
--
ALTER TABLE `termine`
  MODIFY `TerminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fkArtikelkategorien` FOREIGN KEY (`KategorieNr`) REFERENCES `artikelkategorien` (`KategorieID`);

--
-- Constraints der Tabelle `bestellungdetails`
--
ALTER TABLE `bestellungdetails`
  ADD CONSTRAINT `fkArtikel` FOREIGN KEY (`ArtikelNr`) REFERENCES `artikel` (`ArtikeliD`),
  ADD CONSTRAINT `fkBestellungdetails` FOREIGN KEY (`BestellNr`) REFERENCES `bestellungen` (`Bestellid`);

--
-- Constraints der Tabelle `bestellungen`
--
ALTER TABLE `bestellungen`
  ADD CONSTRAINT `fkBestellungen` FOREIGN KEY (`KundenNr`) REFERENCES `kunden` (`KundenID`);

--
-- Constraints der Tabelle `termine`
--
ALTER TABLE `termine`
  ADD CONSTRAINT `fkKunden` FOREIGN KEY (`KundenNr`) REFERENCES `kunden` (`KundenID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
