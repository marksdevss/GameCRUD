create database gamezone;
use  gamezone;

create table jogo(
id_jogo int(100) primary key auto_increment not null,
nome varchar(55) not null,
genero varchar(55) not null,
descricao varchar(100) not null,
data_compra date not null,
desenvolvedora varchar(100) not null,
plataformas varchar(255) not null,
avaliacao varchar(255) not null,
preco double not null,
estoque int(11) not null
);

create table funcionario(
id_usuario int(55) primary key auto_increment not null,
usuario varchar(55) not null,
senha varchar(55) not null
);

insert into funcionario(usuario, senha) values('msilva', 'm1234');

INSERT INTO jogo(nome, genero, descricao, data_compra, desenvolvedora, plataformas, avaliacao, preco, estoque)
VALUES 
('Jogo A', 'Ação', 'Um jogo de ação emocionante', '2023-10-12', 'Desenvolvedora X', 'PC, Xbox', '4.5/5', 49.99, 100),
('Jogo B', 'Aventura', 'Uma grande aventura pelo mundo', '2023-10-11', 'Desenvolvedora Y', 'PS5', '4.8/5', 59.99, 50),
('Jogo C', 'Estratégia', 'Um jogo de estratégia desafiador', '2023-10-10', 'Desenvolvedora Z', 'PC', '4.2/5', 39.99, 75);

INSERT INTO jogo(nome, genero, descricao, data_compra, desenvolvedora, plataformas, avaliacao, preco, estoque)
VALUES 
('Jogo D', 'RPG', 'Uma jornada épica em um mundo de fantasia', '2023-10-09', 'Desenvolvedora W', 'PS4, Switch', '4.6/5', 69.99, 80),
('Jogo E', 'Esporte', 'Um simulador esportivo realista', '2023-10-08', 'Desenvolvedora V', 'Xbox, PC', '4.4/5', 49.99, 60),
('Jogo F', 'Puzzle', 'Desafie sua mente com quebra-cabeças intrigantes', '2023-10-07', 'Desenvolvedora U', 'Switch', '4.7/5', 34.99, 90);



select * from   jogo;