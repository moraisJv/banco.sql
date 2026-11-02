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
