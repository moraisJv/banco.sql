-- 1. Criação do Banco de Dados (Schema)
CREATE SCHEMA IF NOT EXISTS `conta_banco` DEFAULT CHARACTER SET utf8 ;
USE `conta_banco` ;

-- 2. Criação da Tabela 'usuario'
CREATE TABLE IF NOT EXISTS `conta_banco`.`usuario` (
  `CPF_cliente` INT NOT NULL,
  `Nome_usuario` VARCHAR(45) NULL,
  `Numero_usuario` INT NULL,
  `id_conta_usuario` INT NULL,
  `score_usuario` VARCHAR(45) NULL,
  `banco_banco_CNPJ` INT NOT NULL,
  PRIMARY KEY (`CPF_cliente`)
) ENGINE = InnoDB;

-- 3. Criação da Tabela 'banco'
CREATE TABLE IF NOT EXISTS `conta_banco`.`banco` (
  `idbanco` INT NOT NULL,
  `banco_CNPJ` INT NOT NULL,
  `banco_nome` VARCHAR(45) NULL,
  `usuario_CPF_cliente` INT NOT NULL,
  `conta_banco_idconta_banco` INT NOT NULL,
  PRIMARY KEY (`idbanco`),
  INDEX `fk_banco_usuario_idx` (`usuario_CPF_cliente` ASC),
  CONSTRAINT `fk_banco_usuario`
    FOREIGN KEY (`usuario_CPF_cliente`)
    REFERENCES `conta_banco`.`usuario` (`CPF_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- 4. Criação da Tabela 'conta_banco'
CREATE TABLE IF NOT EXISTS `conta_banco`.`conta_banco` (
  `idconta_banco` INT NOT NULL,
  `conta_nome` VARCHAR(45) NULL,
  `nome_banco` VARCHAR(45) NULL,
  `score` VARCHAR(45) NULL,
  `conta_bancocol` VARCHAR(45) NULL,
  PRIMARY KEY (`idconta_banco`)
) ENGINE = InnoDB;

-- 4. Criação da Tabela 'conta_banco'
CREATE TABLE IF NOT EXISTS `conta_banco`.`conta_banco` (
  `idconta_banco` INT NOT NULL,
  `conta_nome` VARCHAR(45) NULL,
  `nome_banco` VARCHAR(45) NULL,
  `score` VARCHAR(45) NULL,
  `conta_bancocol` VARCHAR(45) NULL,
  PRIMARY KEY (`idconta_banco`)
) ENGINE = InnoDB;

-- 5. Criação da Tabela 'trasicao' (Transação)
CREATE TABLE IF NOT EXISTS `conta_banco`.`trasicao` (
  `id_trasicao` INT NOT NULL,
  `nome_usuario` VARCHAR(45) NULL,
  `id_usuario` INT NULL,
  `CPF_usuario` INT NULL,
  `trasicao_score` VARCHAR(45) NULL,
  `usuario_CPF_cliente` INT NOT NULL,
  `conta_banco_idconta_banco` INT NOT NULL,
  `CNPJ_banco` INT NULL,
  PRIMARY KEY (`id_trasicao`),
  INDEX `fk_trasicao_usuario1_idx` (`usuario_CPF_cliente` ASC),
  INDEX `fk_trasicao_conta_banco1_idx` (`conta_banco_idconta_banco` ASC),
  CONSTRAINT `fk_trasicao_usuario1`
    FOREIGN KEY (`usuario_CPF_cliente`)
    REFERENCES `conta_banco`.`usuario` (`CPF_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_trasicao_conta_banco1`
    FOREIGN KEY (`conta_banco_idconta_banco`)
    REFERENCES `conta_banco`.`conta_banco` (`idconta_banco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;
ALTER TABLE `conta_banco`.`banco` 
ADD INDEX `fk_banco_conta_banco1_idx` (`conta_banco_idconta_banco` ASC);

ALTER TABLE `conta_banco`.`banco` 
ADD CONSTRAINT `fk_banco_conta_banco1`
  FOREIGN KEY (`conta_banco_idconta_banco`)
  REFERENCES `conta_banco`.`conta_banco` (`idconta_banco`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
