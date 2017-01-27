SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `bendomin_paluch7` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `bendomin_paluch7` ;

-- -----------------------------------------------------
-- Table `bendomin_paluch7`.`zespol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bendomin_paluch7`.`zespol` ;

CREATE  TABLE IF NOT EXISTS `bendomin_paluch7`.`zespol` (
  `idzespol` INT NOT NULL AUTO_INCREMENT ,
  `nazwa` VARCHAR(45) NOT NULL ,
  `data_zalozenia` DATETIME NOT NULL ,
  `strona_internetowa` VARCHAR(100) NOT NULL ,
  `pochodzenie` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idzespol`) ,
  UNIQUE INDEX `nazwa_UNIQUE` (`nazwa` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bendomin_paluch7`.`wytwornia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bendomin_paluch7`.`wytwornia` ;

CREATE  TABLE IF NOT EXISTS `bendomin_paluch7`.`wytwornia` (
  `idwytwornia` INT NOT NULL AUTO_INCREMENT ,
  `nazwa` VARCHAR(60) NOT NULL ,
  `budzet` VARCHAR(10) NULL ,
  `siedziba` VARCHAR(45) NULL ,
  `pochodzenie` VARCHAR(3) NOT NULL ,
  PRIMARY KEY (`idwytwornia`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bendomin_paluch7`.`plyta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bendomin_paluch7`.`plyta` ;

CREATE  TABLE IF NOT EXISTS `bendomin_paluch7`.`plyta` (
  `idplyta` INT NOT NULL AUTO_INCREMENT ,
  `nazwa` VARCHAR(60) NOT NULL ,
  `data_wydania` DATETIME NOT NULL ,
  `plyta_wytwornia_FK` INT NOT NULL ,
  `zespol_idzespol` INT NOT NULL ,
  PRIMARY KEY (`idplyta`) ,
  INDEX `plyta_wytwornia_FK` (`plyta_wytwornia_FK` ASC) ,
  INDEX `fk_plyta_zespol1_idx` (`zespol_idzespol` ASC) ,
  CONSTRAINT `plyta_wytwornia_FK`
    FOREIGN KEY (`plyta_wytwornia_FK` )
    REFERENCES `bendomin_paluch7`.`wytwornia` (`idwytwornia` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_plyta_zespol1`
    FOREIGN KEY (`zespol_idzespol` )
    REFERENCES `bendomin_paluch7`.`zespol` (`idzespol` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bendomin_paluch7`.`kolaboracja`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bendomin_paluch7`.`kolaboracja` ;

CREATE  TABLE IF NOT EXISTS `bendomin_paluch7`.`kolaboracja` (
  `idkolaboracja` INT NOT NULL AUTO_INCREMENT ,
  `nazwa` VARCHAR(45) NOT NULL ,
  `data_zalozenia` VARCHAR(45) NOT NULL ,
  `kolaboracja_plyta_FK` INT NULL ,
  PRIMARY KEY (`idkolaboracja`) ,
  INDEX `kolaboracja_plyta_FK` (`kolaboracja_plyta_FK` ASC) ,
  CONSTRAINT `kolaboracja_plyta_FK`
    FOREIGN KEY (`kolaboracja_plyta_FK` )
    REFERENCES `bendomin_paluch7`.`plyta` (`idplyta` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bendomin_paluch7`.`artysta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bendomin_paluch7`.`artysta` ;

CREATE  TABLE IF NOT EXISTS `bendomin_paluch7`.`artysta` (
  `idartysta` INT NOT NULL AUTO_INCREMENT ,
  `imie` VARCHAR(45) NOT NULL ,
  `nazwisko` VARCHAR(45) NOT NULL ,
  `pochodzenie` VARCHAR(45) NOT NULL ,
  `wiek` INT NOT NULL ,
  `plec` BIT NOT NULL ,
  `opis` LONGTEXT NULL ,
  `artysta_zespol_FK` INT NOT NULL ,
  `artysta_kolaboracja_FK` INT NULL ,
  PRIMARY KEY (`idartysta`) ,
  INDEX `artysta_zespol_FK` (`artysta_zespol_FK` ASC) ,
  INDEX `artysta_kolaboracja_FK` (`artysta_kolaboracja_FK` ASC) ,
  CONSTRAINT `artysta_zespol_FK`
    FOREIGN KEY (`artysta_zespol_FK` )
    REFERENCES `bendomin_paluch7`.`zespol` (`idzespol` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `artysta_kolaboracja_FK`
    FOREIGN KEY (`artysta_kolaboracja_FK` )
    REFERENCES `bendomin_paluch7`.`kolaboracja` (`idkolaboracja` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bendomin_paluch7`.`gatuneki_enum`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bendomin_paluch7`.`gatuneki_enum` ;

CREATE  TABLE IF NOT EXISTS `bendomin_paluch7`.`gatuneki_enum` (
  `idgatunek` INT NOT NULL AUTO_INCREMENT ,
  `nazwa` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idgatunek`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bendomin_paluch7`.`plyta_has_gatuneki_enum`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bendomin_paluch7`.`plyta_has_gatuneki_enum` ;

CREATE  TABLE IF NOT EXISTS `bendomin_paluch7`.`plyta_has_gatuneki_enum` (
  `idplyta` INT NOT NULL ,
  `idgatuenk` INT NOT NULL ,
  PRIMARY KEY (`idplyta`, `idgatuenk`) ,
  INDEX `fk_płyta_has_gatuneki_enum_gatuneki_enum1_idx` (`idgatuenk` ASC) ,
  INDEX `fk_płyta_has_gatuneki_enum_płyta1_idx` (`idplyta` ASC) ,
  CONSTRAINT `fk_płyta_has_gatuneki_enum_płyta1`
    FOREIGN KEY (`idplyta` )
    REFERENCES `bendomin_paluch7`.`plyta` (`idplyta` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_płyta_has_gatuneki_enum_gatuneki_enum1`
    FOREIGN KEY (`idgatuenk` )
    REFERENCES `bendomin_paluch7`.`gatuneki_enum` (`idgatunek` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bendomin_paluch7`.`zespol_has_gatuneki_enum`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bendomin_paluch7`.`zespol_has_gatuneki_enum` ;

CREATE  TABLE IF NOT EXISTS `bendomin_paluch7`.`zespol_has_gatuneki_enum` (
  `idzespol` INT NOT NULL ,
  `idgatunek` INT NOT NULL ,
  PRIMARY KEY (`idzespol`, `idgatunek`) ,
  INDEX `fk_zespol_has_gatuneki_enum_gatuneki_enum1_idx` (`idgatunek` ASC) ,
  INDEX `fk_zespol_has_gatuneki_enum_zespol1_idx` (`idzespol` ASC) ,
  CONSTRAINT `fk_zespol_has_gatuneki_enum_zespol1`
    FOREIGN KEY (`idzespol` )
    REFERENCES `bendomin_paluch7`.`zespol` (`idzespol` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_zespol_has_gatuneki_enum_gatuneki_enum1`
    FOREIGN KEY (`idgatunek` )
    REFERENCES `bendomin_paluch7`.`gatuneki_enum` (`idgatunek` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bendomin_paluch7`.`artysta_has_plyta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bendomin_paluch7`.`artysta_has_plyta` ;

CREATE  TABLE IF NOT EXISTS `bendomin_paluch7`.`artysta_has_plyta` (
  `artysta_idartysta` INT NOT NULL ,
  `plyta_idplyta` INT NULL ,
  PRIMARY KEY (`artysta_idartysta`, `plyta_idplyta`) ,
  INDEX `fk_artysta_has_plyta_plyta1_idx` (`plyta_idplyta` ASC) ,
  INDEX `fk_artysta_has_plyta_artysta1_idx` (`artysta_idartysta` ASC) ,
  CONSTRAINT `fk_artysta_has_plyta_artysta1`
    FOREIGN KEY (`artysta_idartysta` )
    REFERENCES `bendomin_paluch7`.`artysta` (`idartysta` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_artysta_has_plyta_plyta1`
    FOREIGN KEY (`plyta_idplyta` )
    REFERENCES `bendomin_paluch7`.`plyta` (`idplyta` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `bendomin_paluch7` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
