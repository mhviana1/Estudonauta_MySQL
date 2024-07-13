use cadastro;
create table pessoas (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
)default charset = utf8;
describe pessoas;
alter table pessoas
add column profissao varchar(10);
desc pessoas;

ALTER TABLE pessoas DROP COLUMN profissao;
desc pessoas;
INSERT INTO pessoas (nome, nascimento, sexo, peso, altura, nacionalidade) VALUES
('Ana Maria', '1990-05-23', 'F', 68.50, 1.65, 'Brasil'),
('Carlos Eduardo', '1985-08-17', 'M', 82.10, 1.75, 'Portugal'),
('Fernanda Souza', '1992-11-10', 'F', 55.20, 1.68, 'Angola'),
('José Silva', '1988-02-14', 'M', 75.00, 1.78, 'Brasil'),
('Mariana Oliveira', '1995-07-30', 'F', 60.00, 1.70, 'Portugal'),
('Pedro Henrique', '1983-01-25', 'M', 90.75, 1.82, 'Angola'),
('Beatriz Santos', '1991-03-18', 'F', 50.50, 1.60, 'Brasil'),
('Rafael Almeida', '1987-09-22', 'M', 85.30, 1.80, 'Portugal'),
('Juliana Pereira', '1994-06-15', 'F', 62.00, 1.66, 'Angola'),
('Gustavo Lima', '1990-12-05', 'M', 78.45, 1.74, 'Brasil');
select * from pessoas;
alter table pessoas
add column profissao varchar(10);
desc pessoas;
select * from pessoas;

alter table pessoas
drop column profissao;
desc pessoas;
alter table pessoas
add column profissao varchar(10) after nome;
desc pessoas;

alter table pessoas
modify column profissao varchar(30);

alter table pessoas
rename to garfanhotos;
desc garfanhotos;
select * from garfanhotos;
select * from cursos;
desc cursos;

insert into cursos values
('1', 'Matemática Financeira', 'Curso Inicial de Matemática', '40', '15', '2024');
select * from cursos;
INSERT INTO cursos (nome, descricao, carga, totaulas, ano) VALUES
('Matemática Básica', 'Curso de introdução à matemática básica.', 40, 20, 2016),
('História do Brasil', 'Estudo dos principais eventos históricos do Brasil.', 60, 30, 2017),
('Programação em Python', 'Curso completo de programação em Python.', 80, 40, 2018),
('Inglês para Iniciantes', 'Curso básico de inglês.', 50, 25, 2016),
('Física Fundamental', 'Curso introdutório de física.', 70, 35, 2019),
('Química Orgânica', 'Estudo da química dos compostos de carbono.', 90, 45, 2020),
('Biologia Celular', 'Curso sobre a estrutura e função das células.', 60, 30, 2016),
('Geografia Geral', 'Estudo dos principais aspectos geográficos do mundo.', 55, 27, 2021),
('Literatura Brasileira', 'Análise das principais obras da literatura brasileira.', 45, 22, 2016),
('Introdução à Filosofia', 'Curso introdutório aos principais conceitos filosóficos.', 65, 32, 2016);

INSERT INTO cursos (idcurso, nome, descricao, carga, totaulas, ano) VALUES
(2, 'História do Brasil', 'Estudo dos principais eventos históricos do Brasil.', 60, 30, 2017),
(3, 'Programação em Python', 'Curso completo de programação em Python.', 80, 40, 2018),
(4, 'Inglês para Iniciantes', 'Curso básico de inglês.', 50, 25, 2016),
(5, 'Física Fundamental', 'Curso introdutório de física.', 70, 35, 2019),
(6, 'Química Orgânica', 'Estudo da química dos compostos de carbono.', 90, 45, 2020),
(7, 'Biologia Celular', 'Curso sobre a estrutura e função das células.', 60, 30, 2016),
(8, 'Geografia Geral', 'Estudo dos principais aspectos geográficos do mundo.', 55, 27, 2021),
(9, 'Literatura Brasileira', 'Análise das principais obras da literatura brasileira.', 45, 22, 2016),
(10, 'Introdução à Filosofia', 'Curso introdutório aos principais conceitos filosóficos.', 65, 32, 2016);
select * from cursos;

update cursos
set nome = 'HTML5'
where idcurso = '1';

select * from cursos;

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

update cursos
set nome = 'Java', carga = '10', ano = '2010'
where idcurso = '5'
limit 1;

update cursos
set ano = '2099'
where ano = '2016';

select * from cursos;

delete from cursos
where idcurso = '8';

select * from cursos;
