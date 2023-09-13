DROP TABLE IF EXISTS Departamento;
CREATE TABLE Departamento (
  nro int NOT NULL,
  nome varchar(50) DEFAULT NULL,
  PRIMARY KEY (nro)
);

INSERT INTO Departamento VALUES (1,'RH'),(2,'COMERCIAL'),(3,'TI'),(4,'OPERACIONAL'),(5,'NEGOCIOS');


DROP TABLE IF EXISTS Dependente;
CREATE TABLE Dependente (
  cod_empregado int NOT NULL,
  nome_dep varchar(50) NOT NULL,
  sexo_dep char(1) DEFAULT NULL,
  data_nascto date DEFAULT NULL,
  parentesco varchar(30) DEFAULT NULL,
  PRIMARY KEY (cod_empregado,nome_dep),
  CONSTRAINT Dependente_ibfk_1 FOREIGN KEY (cod_empregado) REFERENCES Empregado (cod) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Dependente VALUES (3,'Claudia','F',NULL,'Esposa'),(3,'Cornelio','M',NULL,'Pai'),(3,'Joaquim','M',NULL,'Filho'),(3,'Manoel','M',NULL,'Filho'),(3,'Pedro','M',NULL,'Filho');


DROP TABLE IF EXISTS Empregado;

CREATE TABLE Empregado (
  cod int NOT NULL,
  p_nome varchar(50) DEFAULT NULL,
  u_nome varchar(50) DEFAULT NULL,
  data_nasc date DEFAULT NULL,
  enderco varchar(150) DEFAULT NULL,
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

INSERT INTO Empregado VALUES (1,'Lucia','Helena',NULL,'Rua X','F',1000,NULL,1),(2,'Marco','Aurelio',NULL,'Rua Y','M',500,1,1),(3,'Jose','Uchoa',NULL,'Rua X','M',1000,NULL,4),(4,'Mario','Jose',NULL,'Rua Y','M',1000,3,4),(5,'Yago','Aranha',NULL,'Rua Y','M',1000,3,4),(6,'Esdras','Uchoa',NULL,'Rua X','M',1000,3,4),(7,'Ana','Carolina',NULL,'Rua Z','F',1000,3,4);


DROP TABLE IF EXISTS GerenteDeDepartamento;
CREATE TABLE GerenteDeDepartamento (
  nro_depto int NOT NULL,
  cod_gerente int NOT NULL,
  data_inicio date DEFAULT NULL,
  PRIMARY KEY (nro_depto,cod_gerente),
  KEY cod_gerente (cod_gerente),
  CONSTRAINT GerenteDeDepartamento_ibfk_1 FOREIGN KEY (nro_depto) REFERENCES Departamento (nro) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT GerenteDeDepartamento_ibfk_2 FOREIGN KEY (cod_gerente) REFERENCES Empregado (cod) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO GerenteDeDepartamento VALUES (1,1,NULL),(4,3,NULL);


DROP TABLE IF EXISTS Projeto;
CREATE TABLE Projeto (
  nro int NOT NULL,
  nome varchar(50) DEFAULT NULL,
  local varchar(50) DEFAULT NULL,
  nro_depto int DEFAULT NULL,
  PRIMARY KEY (nro),
  KEY nro_depto (nro_depto),
  CONSTRAINT Projeto_ibfk_1 FOREIGN KEY (nro_depto) REFERENCES Departamento (nro) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Projeto VALUES (1,'Rede sem fio','INFES',4),(2,'Rede fibra otica','UFF',4);


DROP TABLE IF EXISTS TrabalhaPara;
CREATE TABLE TrabalhaPara (
  cod_empregado int NOT NULL,
  nro_projeto int NOT NULL,
  horas int DEFAULT NULL,
  PRIMARY KEY (cod_empregado,nro_projeto),
  KEY nro_projeto (nro_projeto),
  CONSTRAINT TrabalhaPara_ibfk_1 FOREIGN KEY (cod_empregado) REFERENCES Empregado (cod) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT TrabalhaPara_ibfk_2 FOREIGN KEY (nro_projeto) REFERENCES Projeto (nro) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO TrabalhaPara VALUES (3,1,100),(4,1,30),(5,1,30),(6,1,30),(7,1,30);
