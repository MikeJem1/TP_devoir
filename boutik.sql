CREATE DATABASE Boutik;
use Boutik;
create table pwodwi(
non_pwodwi VARCHAR(20) NOT NULL,
dat_li_Fet date null,
dat_ekspirasyon date null
);
create table kategori(
non_kategori varchar(30) not null,
pozisyon char(1) not null default "p"
);

create table kliyan(
non varchar(20) not null,
siyati varchar(20) not null,
email varchar (100) not null,
nimewo int 
);