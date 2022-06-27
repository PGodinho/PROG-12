/* Paulo Godinho */
SHOW DATABASES;
CREATE DATABASE db_ficha_203;
USE db_ficha_203;
SELECT DATABASE();
SHOW TABLES;
CREATE TABLE tb_AlunosA3(
    CodAluno NUMERIC,
    NomeAluno CHAR(40),
    Morada CHAR(40),
    Telefone CHAR(9),
    DataNascimento DATE
);
DESCRIBE tb_AlunosA3;

SELECT * FROM tb_alunosa3;
# 3 - INSERT INTO
INSERT INTO tb_alunosa3(
    CodAluno, NomeAluno, Morada, DataNascimento, Telefone
) 
VALUES (
    4, 'Adélia Almirante', 'Rua da Alegria n.º5', '1989/04/15', NULL
);

INSERT INTO tb_alunosa3 
VALUES (
    1, 'Afonso Sampaio', 'Rua da Almeida n.º4', '219234132', '1988/12/10'
);

SELECT * FROM tb_alunosa3;

INSERT INTO tb_alunosa3 
(
    CodAluno, NomeAluno, Morada, Telefone, DataNascimento
) 
VALUES 
    (2, 'Mario Sancho', 'Rua Triste n.º56', '964537822', '1989/11/15'),
    (6, 'Vitorino Forte', 'Rua Verde n.º222', '932654843', '1988/08/05'),
    (8, 'Diogo Mota', 'Rua Silva n.º89', '225845218', '1985/09/04'),
    (13, 'António Pereira', 'Rua Baixa n.º12', '216789903', '1987/02/28')
    (15, 'José Aguiar', 'Rua ALto Mar n.º23', NULL, '1983/02/17'),
    (16, 'Anabela Pires', 'Rua Vilares n.º2', NULL, '1986/01/14'),
    (23, 'Adreia Santos', 'Rua Milhares n.º239', NULL, '1986/07/24'),
    (27, 'Avenida D. Afonso III, n.º12', '967345628', '1982/05/19');

# 4 - UPDATE SET
CREATE TABLE ProdutosV (
    CodProduto NUMERIC,
    NomeProduto CHAR(40),
    DataValidate DATE,
    CustoUnitario NUMERIC(4,2)
);

INSERT INTO ProdutosV 
VALUES
(1, 'Iogurte', '2011/07/10', 0.60),
(2, 'Agua', '2011/07/10', 0.77),
(3, 'Bolachas', '2011/07/10', 1.20),
(4, 'Cereais', '2011/07/10', 2.30),
(5, 'Leite', '2011/07/10', 0.90);

SELECT * FROM ProdutosV;

UPDATE ProdutosV
SET ProdutosV.CustoUnitario = ProdutosV.CustoUnitario *0.8
WHERE ProdutosV.CustoUnitario >1;

SELECT * FROM ProdutosV;

# 4 - DELETE FROM ...WHERE
SELECT * FROM tb_alunosA3;

DELETE FROM tb_alunosa3 WHERE CodAluno=8;

SELECT * FROM tb_alunosA3;
