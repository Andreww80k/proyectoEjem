create database veterinaria;
use veterinaria;
create table veterinario
(
id_v int not null auto_increment,
nombre_vet varchar(30),
telefono varchar(30),
primary key(id_v)
);
insert into veterinario(nombre_vet,telefono) values("Yulissa Pérez",'9995678909');
insert into veterinario(nombre_vet,telefono) values("Wiliam López",'9933456790');
insert into veterinario(nombre_vet,telefono) values("Jorge López",'9993454790');
insert into veterinario(nombre_vet,telefono) values("Rousaura Tamara",'9994456790');
insert into veterinario(nombre_vet,telefono) values("Carolina Briceño",'9995456790');
insert into veterinario(nombre_vet,telefono) values("Carlos Palomo",'9992456790');
insert into veterinario(nombre_vet,telefono) values("Pablo Eúan",'9990456790');
insert into veterinario(nombre_vet,telefono) values("Alondra Martínez",'9992456790');
insert into veterinario(nombre_vet,telefono) values("Laura Alvarez",'9993456790');

create table tipo
(
id_tipo int not null auto_increment,
nombre_tipo varchar(30),
precio double,
primary key(id_tipo)
);
insert into tipo(nombre_tipo,precio) values("Antiparasitarios","120");
insert into tipo(nombre_tipo,precio) values("Inyectables","500");
insert into tipo(nombre_tipo,precio) values("Orales","300");
insert into tipo(nombre_tipo,precio) values("Tópicos intraoculares","100");
insert into tipo(nombre_tipo,precio) values("Antibióticos","900");

create table medicinas
(
id_medicina int not null auto_increment,
nombre_medicina varchar(30),
fk_tipo int not null,
primary key(id_medicina),
constraint foreign key(fk_tipo) references tipo(id_tipo)
);
insert into medicinas (nombre_medicina,fk_tipo) values("Isoflurano 200g",1);
insert into medicinas (nombre_medicina,fk_tipo) values("Desecante Gel 10g",2);
insert into medicinas (nombre_medicina,fk_tipo) values("Adarfac 50g",3);
insert into medicinas (nombre_medicina,fk_tipo) values("Ruinald Omega 60g",4);
insert into medicinas (nombre_medicina,fk_tipo) values("Gotas 150g",5);

create table mascotas(
id int not null auto_increment,
nombre varchar(30),
fk_medicina int not null,
fk_veterinario int not null,
primary key(id),
constraint foreign key(fk_medicina) references medicinas(id_medicina),
constraint foreign key(fk_veterinario) references veterinario(id_v)
);
insert into mascotas(nombre,fk_medicina,fk_veterinario)values('Pupi',2,1);
insert into mascotas(nombre,fk_medicina,fk_veterinario)values('Perla',1,4);
insert into mascotas(nombre,fk_medicina,fk_veterinario)values('Baxter',3,5);
insert into mascotas(nombre,fk_medicina,fk_veterinario)values('Garfield',5,3);
insert into mascotas(nombre,fk_medicina,fk_veterinario)values('Pelos',4,2);
insert into mascotas(nombre,fk_medicina,fk_veterinario)values('Conchito',1,6);
create table dueño
(
id_dueño int not null auto_increment,
nombre_dueño varchar(30),
telefono varchar(10),
direccion varchar(50),
fk_mascota int not null,
primary key(id_dueño),
constraint foreign key(fk_mascota) references mascotas(id)
);
insert into dueño(nombre_dueño,telefono,direccion,fk_mascota)values('María','0991238976','Calle 23 x 45 s/n',1);
insert into dueño(nombre_dueño,telefono,direccion,fk_mascota)values('Laura','9491238976','colonia padre 34 c',2);
insert into dueño(nombre_dueño,telefono,direccion,fk_mascota)values('Maribel','1991238976','calle 34 x 45',3);
insert into dueño(nombre_dueño,telefono,direccion,fk_mascota)values('Rubí','9911238976','34 x 5 ni 1',4);
insert into dueño(nombre_dueño,telefono,direccion,fk_mascota)values('Daniela','9391238976','Calle 34 x 56 colonia',5);
insert into dueño(nombre_dueño,telefono,direccion,fk_mascota)values('Mario','9992238976','Calle 11 x 18 s/n',6);