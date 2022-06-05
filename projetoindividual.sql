create database Imusica;
use Imusica;
create table Usuario(
idUsuario int primary key,
Nome varchar(45),
email varchar(45),
senha char(6)
);

create table Musica(
idMusica int primary key,
nomeMusica varchar(45),
artista varchar(45),
discografia char(10),
genero varchar(45),
fkUsuario int,
foreign key(fkUsuario)references Usuario(idUsuario)
);

create table Popularidade(
idPop int primary key,
maxmusPop varchar(45),
minmusPop varchar(45),
tempBillbsem char(4),
datLancamento date
);

create table MusicaPop (
fkMusica int,
foreign key(fkMusica) references Musica(idMusica),
fkPop int,
foreign key(fkPop) references Popularidade(idPop),
mediaBillb int,
primary key (fkMusica,fkPop,mediaBillb),
ouvintes char (4),
qtdShows char(4)
);

