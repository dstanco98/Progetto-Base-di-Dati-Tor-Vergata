drop database BlogFoto;

create database BlogFoto;

use BlogFoto;

/* -Creazione Tabelle- */

create table PROVINCIA(
	ID int not null AUTO_INCREMENT,
	Nome varchar(50) not null,
	Sigla varchar(2) not null,
	primary key (ID)
) engine=INNODB;

create table CITTA(
	ID int not null AUTO_INCREMENT,
	Nome varchar(50) not null,
	ID_Provincia int not null,
	primary key (ID),
	foreign key (ID_Provincia) references PROVINCIA (ID)
) engine=INNODB;

create table LUOGO(
	ID int not null AUTO_INCREMENT,
	Via varchar(50) not null,
	ID_Citta int not null,
	primary key (ID),
	foreign key (ID_Citta) references CITTA (ID)
) engine=INNODB;

create table STUDIO(
	ID int not null AUTO_INCREMENT,
	Nome varchar(50) not null,
	primary key (ID)
) engine=INNODB;

create table RISIEDE(
	ID_Studio int not null,
	ID_Luogo int not null,
	NumeroCivico int not null,
	primary key (ID_Studio, ID_Luogo),
	foreign key (ID_Studio) references STUDIO (ID),
	foreign key (ID_Luogo) references LUOGO (ID)
) engine=INNODB;

create table UTENTE(
	ID int not null AUTO_INCREMENT,
	Nome varchar(50) not null,
	Cognome varchar(50) not null,
	Data date,
	Email varchar(50) not null,
	Cellulare varchar(50) not null,
	ID_Studio int not null,
	primary key (ID),
	foreign key (ID_Studio) references STUDIO (ID)
) engine=INNODB;

create table ALBUM(
	ID int not null AUTO_INCREMENT,
	NomeAlbum varchar(50) not null,
	Data date,
	ID_Utente int not null,
	primary key (ID),
	foreign key (ID_Utente) references UTENTE (ID)
) engine=INNODB;

create table CATEGORIA(
	ID int not null AUTO_INCREMENT,
	Nome varchar(50) not null,
	Descrizione varchar(50) not null,
	primary key (ID)
) engine=INNODB;

create table MARCA(
	ID int not null AUTO_INCREMENT,
	Nome varchar(50) not null,
	Stato varchar(50) not null,
	primary key (ID)
) engine=INNODB;

create table MACCHINA(
	ID int not null AUTO_INCREMENT,
	Modello varchar(50) not null,
	Sensore int not null,
	Peso int not null,
	MaxISO int not null,
	ID_Marca int not null,
	primary key (ID),
	foreign key (ID_Marca) references MARCA (ID)
) engine=INNODB;

create table OBIETTIVO(
	ID int not null AUTO_INCREMENT,
	Modello varchar(50) not null,
	OIS bit not null,
	AF bit not null,
	Zoom int not null,
	ID_Marca int not null,
	primary key (ID),
	foreign key (ID_Marca) references MARCA (ID)
) engine=INNODB;

create table COMPATTA(
	ID_Macchina int not null,
	ID_Obiettivo int not null,
	ZoomDigitale int not null,
	StabilizzazioneDigitale bit not null,
	primary key (ID_Macchina, ID_Obiettivo),
	foreign key (ID_Macchina) references MACCHINA (ID),
	foreign key (ID_Obiettivo) references OBIETTIVO (ID)
) engine=INNODB;

create table REFLEX(
	ID_Macchina int not null,
	MotoreAF bit not null,
	primary key (ID_Macchina),
	foreign key (ID_Macchina) references MACCHINA (ID)
) engine=INNODB;

create table MONTA(
	ID_Macchina int not null,
	ID_Obiettivo int not null,
	Attacco varchar(10) not null,
	primary key (ID_Macchina, ID_Obiettivo),
	foreign key (ID_Macchina) references MACCHINA (ID),
	foreign key (ID_Obiettivo) references OBIETTIVO (ID)
) engine=INNODB;

create table FOTOGRAFIA(
	ID int not null AUTO_INCREMENT,
	Descrizione varchar(140) not null,
	Data date,
	ID_Album int not null,
	ID_Categoria int not null,
	ID_Luogo int not null,
	ID_Macchina int not null,
	ID_Obiettivo int not null,
	LunghezzaFocale float not null,
	Angolo int not null,
	Diaframma float not null,
	Esposizione float not null,
	ISO int not null,
	Risoluzione int not null,
	primary key (ID),
	foreign key (ID_Album) references ALBUM (ID),
	foreign key (ID_Categoria) references CATEGORIA (ID),
	foreign key (ID_Luogo) references LUOGO (ID),
	foreign key (ID_Macchina) references MACCHINA (ID),
	foreign key (ID_Obiettivo) references OBIETTIVO (ID)
) engine=INNODB;

create table VOTO(
	ID int not null AUTO_INCREMENT,
	ID_Utente int not null,
	ID_Foto int not null,
	Voto int not null,
	Descrizione varchar(140) not null,
	primary key (ID),
	foreign key (ID_Utente) references UTENTE (ID),
	foreign key (ID_Foto) references FOTOGRAFIA (ID)
) engine=INNODB;
