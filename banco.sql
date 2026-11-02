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
