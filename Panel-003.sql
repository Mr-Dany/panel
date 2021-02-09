--drop database panel
--create database panel
--use panel
create table aplicaciones(
IdAplicaciones int not null primary key,
nombre varchar(50),
logo varchar(50),
color varchar(50),
url varchar(50),
json varchar,
eliminado bit
); 
create table tipo_usuarios(
IdTipoUsuarios int not null primary key,
tipo varchar(50),
eliminado bit
); 
insert into tipo_usuarios values (1,'administrador',1)
insert into tipo_usuarios values (2,'usuario',1)
select *from tipo_usuarios

create table usuarios(
IdUsuarios int not null primary key,
primernombre varchar(50),
segundonombre varchar(50),
primerapellido varchar(50),
segundoapellido varchar(50),
telefono varchar(50),
correo varchar(50),
contraseña varchar(50),
Eliminado bit,
id_Tipo_Usuario int,
foreign key (id_Tipo_Usuario) references tipo_usuarios(IdTipoUsuarios)
); 
insert into usuarios values (1,'fausto','daniel','loor','campues','0996213714','faustoloor@espam.edu.ec','123',1,1)
insert into usuarios values (2,'jorge','roberto','loayza','daniel','0996213714','jorge.loayza@espam.edu.ec','456',0,1)
select *from usuarios



create table aplicacion_usuarios(
idAplicacionUsuarios int not null primary key,
fecha_inicio datetime,
fecha_fin datetime,
descripcion text,
eliminado bit,
id_Aplicacion int,
id_Usuario int
foreign key (id_Aplicacion) references aplicaciones(idAplicaciones),
foreign key (id_Usuario) references usuarios(idUsuarios)
);


create table notificaciones(
idNotificaciones int not null primary key,
nombre varchar(50),
descripcion text,
archivo varchar(50),
url varchar(50),
estado bit,
eliminado bit,
id_Aplicacion int
foreign key (id_Aplicacion) references aplicaciones(idAplicaciones)
); 

create table modulos(
idModulos int not null primary key,
nombre varchar(50),
color varchar (50),
orden varchar (50),
estado bit,
eliminado bit,
id_Aplicacion int
foreign key (id_Aplicacion) references aplicaciones(idAplicaciones)
); 

create table submodulos(
idSubmodulos int not null primary key,
icono varchar (50),
url varchar (50),
color varchar (50),
orden varchar (50),
estado bit,
eliminado bit,
id_Modulo int
foreign key (id_Modulo) references modulos(idModulos)
);

create table sliders(
idSliders int not null primary key,
img varchar(50),
descripcion text,
eliminado bit,
id_Aplicacion int
foreign key (id_Aplicacion) references Aplicaciones(idAplicaciones)
);

create table restauracion_claves(
idRestauracionClaves int not null primary key,
token_email varchar(50),
eliminado bit,
id_Usuario int
foreign key (id_Usuario) references usuarios(idUsuarios)
);

create table metrica_usuarios(
idMetricaUsuarios int not null primary key,
fecha_inicio datetime,
fecha_fin datetime,
login_count varchar,
page_count varchar,
dispositivo varchar,
eliminado bit,
id_Usuario int
foreign key (id_Usuario) references usuarios(idUsuarios)
);

create table contenidos(
idContenidos int not null primary key,
nombre varchar(50),
descripcion text,
eliminado bit,
id_Submodulo int,
foreign key (id_Submodulo) references submodulos(idSubmodulos)
);

create table titulos(
idTitulos int not null primary key,
nombre varchar(50),
descripcion text,
icono varchar (50),
url varchar (50),
eliminado bit,
id_Submodulo int,
foreign key (id_Submodulo) references submodulos(idSubmodulos)
);

create table archivos(
idArchivos int not null primary key,
nombre varchar(50),
descripcion text,
url varchar(50),
eliminado bit,
id_Submodulo int,
foreign key (id_Submodulo) references submodulos(idSubmodulos)
);