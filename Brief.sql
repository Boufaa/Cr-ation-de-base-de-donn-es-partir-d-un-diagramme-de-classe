create database Brief_Gestion_Pharmacie
use Brief_Gestion_Pharmacie

/*==============================================================*/
/* Table : Client                                               */
/*==============================================================*/
create table Client (
   IdClient             int                  not null,
   NomClient            varchar(10)          null,
   AdresseClient        varchar(50)          null,
   TeleClient           int                  null,
   constraint PK_CLIENT primary key nonclustered (IdClient)
)
go
/*affichage table*/
select * from Client
/*insert*/
insert into client values(1,'ayoube','251 rue hfn',0654218549)
insert into client values(2,'hassan','251 rue makdessi',0611818983)
insert into client values(3,'mehdi','251 rue najah',0684215578)
insert into client values(4,'fatima','251 rue el amir',0650895524)
/*update*/
update Client set NomClient='boufaa'
where AdresseClient='251 rue makdessi';
/*delete*/
delete from Client
where NomClient='hassan';

/*==============================================================*/
/* Table : Commande                                             */
/*==============================================================*/
create table Commande (
   IdCommande           int                  not null,
   NomCommande          varchar(20)          null,
   DateCommande         datetime             null,
   NomPharmacie         varchar(20)          null,
   NomClient            varchar(20)          null,
   NomProduit           varchar(50)          null,
   PrixProduit          float                null,
   AdresseClient        varchar(50)          null,
   TeleClient           int                  null,
   constraint PK_COMMANDE primary key nonclustered (IdCommande)
)
go
/*affichage table*/
select * from Commande
/*insert*/
insert into Commande values(1,'commande1','2017/03/09','pharmacie1','client1','produit1',100,'251 rue hfn',0654218549)
insert into Commande values(2,'commande2','2018/03/09','pharmacie2','client2','produit2',200,'1 rue makdessi',0611818983)
insert into Commande values(3,'commande3','2019/03/09','pharmacie3','client3','produit3',300,'51 rue najah',0684215578)
insert into Commande values(4,'commande4','2020/03/09','pharmacie4','client4','produit4',400,'21 rue el amir',0650895524)
/*update*/
update Commande set NomProduit='produit5'
where NomClient='client2';
/*delete*/
delete from Commande
where NomClient='client2';

/*==============================================================*/
/* Table : Fourniseur                                           */
/*==============================================================*/
create table Fourniseur (
   IdFourniseur         int                  not null,
   NomFourniseur        varchar(20)          null,
   AdresseFourniseur    varchar(50)          null,
   TeleFourniseur       int                  null,
   constraint PK_FOURNISEUR primary key nonclustered (IdFourniseur)
)
go

/*affichage table*/
select * from Fourniseur
/*insert*/
insert into Fourniseur values(1,'ayoube','251 rue hfn',0654218549)
insert into Fourniseur values(2,'hassan','251 rue makdessi',0611818983)
insert into Fourniseur values(3,'mehdi','251 rue najah',0684215578)
insert into Fourniseur values(4,'fatima','251 rue el amir',0650895524)
/*update*/
update Fourniseur set NomFourniseur='boufaa'
where AdresseFourniseur='251 rue makdessi';
/*delete*/
delete from Fourniseur

/*==============================================================*/
/* Table : Pharmacie                                            */
/*==============================================================*/
create table Pharmacie (
   IdPharmacie          int                  not null,
   NomPharmacie         varchar(50)          null,
   AdressePharmacie     varchar(50)          null,
   TelePharmacie        int                  null,
   constraint PK_PHARMACIE primary key nonclustered (IdPharmacie)
)
go

/*affichage table*/
select * from Pharmacie
/*insert*/
insert into Pharmacie values(1,'Pharmacie1','51 rue hfn',0654218549)
insert into Pharmacie values(2,'Pharmacie2','25 rue makdessi',0611818983)
insert into Pharmacie values(3,'Pharmacie3','251 rue najah',0684215578)
insert into Pharmacie values(4,'Pharmacie4','21 rue el amir',0650895524)
/*update*/
update Pharmacie set NomPharmacie='boufaa'
where AdressePharmacie='251 rue najah';
/*delete*/
delete from Pharmacie
where NomPharmacie='Pharmacie2';

/*==============================================================*/
/* Table : Produit                                              */
/*==============================================================*/
create table Produit (
   IdProduit            int                  not null,
   NomProduit           varchar(50)          null,
   PrixProduit          float                null,
   constraint PK_PRODUIT primary key nonclustered (IdProduit)
)
go

/*affichage table*/
select * from Produit
/*insert*/
insert into Produit values(1,'Produit1',549)
insert into Produit values(2,'Produit2',983)
insert into Produit values(3,'Produit3',478)
insert into Produit values(4,'Produit4',224)
/*update*/
update Produit set PrixProduit=100
where NomProduit='Produit4';
/*delete*/
delete from Produit
where NomProduit='Produit2';



/*==============================================================*/
/* Login and PassWord                                             */
/*==============================================================*/

/*logim Admin with password*/
create login Admin1
with PassWord='Admin123';
go
/*user*/
create user Admin1 for login Admin1;
go

grant all to Admin1;
go

/*logim utilisateur with password*/
create login utilisateur
with PassWord='utilisateur123';
go
/*user*/
create user utilisateur for login utilisateur;
go

grant select,insert,delete to utilisateur;
go