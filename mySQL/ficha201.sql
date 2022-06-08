/* NOME:  */
--Falta o script de ligação à base de dados--
SHOW DATABASES;
/* ------Criar db----------- */
CREATE DATABASE ficha201;
USE ficha201;
/* ----------------- */
SHOW TABLES;
/* --------Criar Tabela 1--------- */
CREATE TABLE AlunosA (
    CodAluno NUMERIC,
    NomeAluno VARCHAR(40),
    DataNascimento DATE,
    Telefone CHAR(9),
    HoraEntrada TIMESTAMP
);
/* ----------------- */
SHOW TABLES;
DESCRIBE AlunosA;
/* --------Criar Tabela 2--------- */
CREATE TABLE AlunosB (
    CodAluno INT NOT NULL,
    NomeAluno VARCHAR(30) DEFAULT NULL,
    BI INTEGER UNIQUE,
    Morada VARCHAR(30) DEFAULT NULL,
    DataNascimento DATE,
    DataMatricula DATE,
    CodPostal CHAR(4) DEFAULT '0000',
    Telefone CHAR(9) NULL
);
/* ----------------- */
SHOW TABLES;
DESCRIBE AlunosB;
/* ----------------- */
/* --------Criar Tabela 3--------- */
CREATE TABLE AlunosC (
    CodAluno NUMERIC NOT NULL,
    BI INTEGER UNIQUE,
    NomeAluno VARCHAR(40) NOT NULL,
    Morada VARCHAR(30) DEFAULT NULL,
    Genero CHAR NOT NULL CHECK (Genero IN ('M', 'F')),
    DataNascimento DATETIME CHECK (YEAR(DataNascimento) > 1970),
    DataMatricula DATETIME,
    CodPostal CHAR(8) CHECK (LENGTH(CodPostal) > 4),
    Telefone CHAR(9) NULL,
    CHECK (DataMatricula>DataNascimento)
 );
 /* ----------------- */
 CREATE TABLE AlunosD (
    CodAluno NUMERIC PRIMARY KEY,
    BI INTEGER UNIQUE,
    NomeAluno VARCHAR(40) NOT NULL,
    Morada VARCHAR(30) DEFAULT NULL,
    DataNascimento DATE NOT NULL,
    CodPostal CHAR(8) CHECK (LENGTH(CodPostal) >= 4),
    Telefone CHAR(9) NULL
 );
  /* ----------------- */
  DESCRIBE AlunosD;
 /* --------Criar Tabela 5--------- */
 CREATE TABLE AlunosD2 (
     CodAluno NUMERIC,
     NomeAluno VARCHAR(40) NOT NULL,
     Morada VARCHAR(30) DEFAULT NULL,
     DataNascimento DATE NOT NULL,
     CodPostal CHAR(8) CHECK(LENGTH(CodPostal)>=4),
     Telefone CHAR(9) NULL,
     PRIMARY KEY (CodAluno)
 );
  /* ----------------- */
DESCRIBE AlunosD2;
/* --------Criar Tabela 6--------- */
 CREATE TABLE AlunosDisciplinasA (
     CodAluno NUMERIC,
     CodDisciplina NUMERIC,
     Nota NUMERIC(3,1),
     PRIMARY KEY (CodAluno, CodDisciplina)
 );
/* ----------------- */
DESCRIBE AlunosDisciplinasA;
/* --------Criar Tabela 6--------- ALUNOS D3*/ 
CREATE TABLE AlunosD3 (
    CodAluno INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NomeAluno VARCHAR(40) NOT NULL,
    DataNascimento DATE,
    DataMatricula DATE,
    CodPostal CHAR(4) DEFAULT '0000',
    Telefone CHAR(9) NULL
);
/* --------Criar Tabela 7--------- */
CREATE TABLE CursosE (
    CodCurso NUMERIC(2) PRIMARY KEY,
    NomeCurso CHAR(40),
    CargaHoraria NUMERIC(2)
);
 /* --------Criar Tabela 8--------- */
CREATE TABLE AlunosE (
    CodAluno NUMERIC PRIMARY KEY,
    NomeAluno VARCHAR(40) NOT NULL,
    Morada VARCHAR(30) DEFAULT NULL,
    DataNascimento DATE NOT NULL,
    CodPostal CHAR(9) CHECK(LENGTH(CodPostal)>=4),
    Telefone CHAR(9) NULL,
    CodCurso NUMERIC(2) REFERENCES CursosE(CodCurso)
);
/* ----------------- */
DESCRIBE AlunosE;

/*-----------------------------------------*/
-- ********EXERCICIO E2*******
CREATE TABLE ClientesF (
    CodCliente INT PRIMARY KEY,
    NomeCliente VARCHAR(40) NOT NULL,
    MoradaCliente VARCHAR(30) DEFAULT NULL,
    CodPostal CHAR(8) CHECK (LENGTH(CodPostal) >=4 ),
    Telefone CHAR(9) NULL
);
/* ----------------- */
CREATE TABLE EncomendasF (
    NumEncomenda INT NOT NULL,
    DataEncomenda DATE NOT NULL,
    CodProduto INT NOT NULL,
    NumUnidades INT NOT NULL,
    NumCliente INT,
    PRIMARY KEY (NumEncomenda),
    FOREIGN KEY (NumCliente) REFERENCES ClientesF (CodCliente)
);
/*-----------------------------------------*/
-- ********EXERCICIO E3*******
-- ***********ERRO**************************
CREATE TABLE NotasG (
    CodDisciplina NUMERIC PRIMARY KEY,
    NumeroAluno NUMERIC(2),
    Turma VARCHAR(6),
    FOREIGN KEY (NumeroAluno, Turma) REFERENCES AlunosG(NumeroAluno, Turma)
);
/* ----------------- */
CREATE TABLE AlunosG (
    NumAluno NUMERIC(2),
    primeiroNome VARCHAR(30) NOT NULL,
    Apelido VARCHAR(30) NOT NULL,
    RuaAv VARCHAR(30) DEFAULT NULL,
    numLote VARCHAR(10) DEFAULT NULL,
    Andar VARCHAR(10) DEFAULT NULL,
    Localidade VARCHAR(20) DEFAULT NULL,
    DataNascimento DATE NOT NULL,
    CustoMatricula NUMERIC(5,2)
    PRIMARY KEY (NumeroAluno, Turma)
);
