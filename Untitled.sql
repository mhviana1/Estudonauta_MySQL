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








