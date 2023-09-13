-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: Exec12
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table Departamento
--

DROP TABLE IF EXISTS Departamento;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE Departamento (
  nro int NOT NULL,
  nome varchar(50) DEFAULT NULL,
  PRIMARY KEY (nro)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table Departamento
--

LOCK TABLES Departamento WRITE;
/*!40000 ALTER TABLE Departamento DISABLE KEYS */;
INSERT INTO Departamento VALUES (1,'RH'),(2,'COMERCIAL'),(3,'TI'),(4,'OPERACIONAL'),(5,'NEGOCIOS');
/*!40000 ALTER TABLE Departamento ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table Dependente
--

DROP TABLE IF EXISTS Dependente;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE Dependente (
  cod_empregado int NOT NULL,
  nome_dep varchar(50) NOT NULL,
  sexo_dep char(1) DEFAULT NULL,
  data_nascto date DEFAULT NULL,
  parentesco varchar(30) DEFAULT NULL,
  PRIMARY KEY (cod_empregado,nome_dep),
  CONSTRAINT Dependente_ibfk_1 FOREIGN KEY (cod_empregado) REFERENCES Empregado (cod) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table Dependente
--

LOCK TABLES Dependente WRITE;
/*!40000 ALTER TABLE Dependente DISABLE KEYS */;
INSERT INTO Dependente VALUES (3,'Claudia','F',NULL,'Esposa'),(3,'Cornelio','M',NULL,'Pai'),(3,'Joaquim','M',NULL,'Filho'),(3,'Manoel','M',NULL,'Filho'),(3,'Pedro','M',NULL,'Filho');
/*!40000 ALTER TABLE Dependente ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table Empregado
--

DROP TABLE IF EXISTS Empregado;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE Empregado (
  cod int NOT NULL,
  p_nome varchar(50) DEFAULT NULL,
  u_nome varchar(50) DEFAULT NULL,
  data_nasc date DEFAULT NULL,
  end varchar(150) DEFAULT NULL,
  sexo char(1) DEFAULT NULL,
  salario int DEFAULT NULL,
  cod_supervisor int DEFAULT NULL,
  nro_depto int DEFAULT NULL,
  PRIMARY KEY (cod),
  KEY cod_supervisor (cod_supervisor),
  KEY nro_depto (nro_depto),
  CONSTRAINT Empregado_ibfk_1 FOREIGN KEY (cod_supervisor) REFERENCES Empregado (cod) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT Empregado_ibfk_2 FOREIGN KEY (nro_depto) REFERENCES Departamento (nro) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table Empregado
--

LOCK TABLES Empregado WRITE;
/*!40000 ALTER TABLE Empregado DISABLE KEYS */;
INSERT INTO Empregado VALUES (1,'Lucia','Helena',NULL,'Rua X','F',1000,NULL,1),(2,'Marco','Aurelio',NULL,'Rua Y','M',500,1,1),(3,'Jose','Uchoa',NULL,'Rua X','M',1000,NULL,4),(4,'Mario','Jose',NULL,'Rua Y','M',1000,3,4),(5,'Yago','Aranha',NULL,'Rua Y','M',1000,3,4),(6,'Esdras','Uchoa',NULL,'Rua X','M',1000,3,4),(7,'Ana','Carolina',NULL,'Rua Z','F',1000,3,4);
/*!40000 ALTER TABLE Empregado ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table GerenteDeDepartamento
--

DROP TABLE IF EXISTS GerenteDeDepartamento;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE GerenteDeDepartamento (
  nro_depto int NOT NULL,
  cod_gerente int NOT NULL,
  data_inicio date DEFAULT NULL,
  PRIMARY KEY (nro_depto,cod_gerente),
  KEY cod_gerente (cod_gerente),
  CONSTRAINT GerenteDeDepartamento_ibfk_1 FOREIGN KEY (nro_depto) REFERENCES Departamento (nro) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT GerenteDeDepartamento_ibfk_2 FOREIGN KEY (cod_gerente) REFERENCES Empregado (cod) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table GerenteDeDepartamento
--

LOCK TABLES GerenteDeDepartamento WRITE;
/*!40000 ALTER TABLE GerenteDeDepartamento DISABLE KEYS */;
INSERT INTO GerenteDeDepartamento VALUES (1,1,NULL),(4,3,NULL);
/*!40000 ALTER TABLE GerenteDeDepartamento ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table Projeto
--

DROP TABLE IF EXISTS Projeto;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE Projeto (
  nro int NOT NULL,
  nome varchar(50) DEFAULT NULL,
  local varchar(50) DEFAULT NULL,
  nro_depto int DEFAULT NULL,
  PRIMARY KEY (nro),
  KEY nro_depto (nro_depto),
  CONSTRAINT Projeto_ibfk_1 FOREIGN KEY (nro_depto) REFERENCES Departamento (nro) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table Projeto
--

LOCK TABLES Projeto WRITE;
/*!40000 ALTER TABLE Projeto DISABLE KEYS */;
INSERT INTO Projeto VALUES (1,'Rede sem fio','INFES',4),(2,'Rede fibra otica','UFF',4);
/*!40000 ALTER TABLE Projeto ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table TrabalhaPara
--

DROP TABLE IF EXISTS TrabalhaPara;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE TrabalhaPara (
  cod_empregado int NOT NULL,
  nro_projeto int NOT NULL,
  horas int DEFAULT NULL,
  PRIMARY KEY (cod_empregado,nro_projeto),
  KEY nro_projeto (nro_projeto),
  CONSTRAINT TrabalhaPara_ibfk_1 FOREIGN KEY (cod_empregado) REFERENCES Empregado (cod) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT TrabalhaPara_ibfk_2 FOREIGN KEY (nro_projeto) REFERENCES Projeto (nro) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table TrabalhaPara
--

LOCK TABLES TrabalhaPara WRITE;
/*!40000 ALTER TABLE TrabalhaPara DISABLE KEYS */;
INSERT INTO TrabalhaPara VALUES (3,1,100),(4,1,30),(5,1,30),(6,1,30),(7,1,30);
/*!40000 ALTER TABLE TrabalhaPara ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-27 10:26:35
