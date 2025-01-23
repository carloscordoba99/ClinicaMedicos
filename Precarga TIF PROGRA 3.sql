Use BDClinicaGrupo19
Go

Insert into Nacionalidades (IdNacionalidad, Descripcion_Nacionalidad)
Select 1, 'Argentina' UNION
Select 2, 'Brasil' UNION
Select 3, 'Uruguay' UNION
Select 4, 'Paraguay' UNION
Select 5, 'Chile' UNION
Select 6, 'Ecuador' UNION
Select 7, 'Bolivia' UNION
Select 8, 'Perú' UNION
Select 9, 'Colombia' UNION
Select 10, 'Venezuela' UNION
Select 11, 'Guyana' UNION
Select 12, 'Surinam' UNION
Select 13, 'Trinidad y Tobago'
Go

Insert into Provincias (IdProvincia_Provincia, Descripcion_Provincia, IdNacionalidad_P)
Select 1, 'Buenos Aires', 1 UNION
Select 2, 'Córdoba', 1 UNION
Select 3, 'Santa Fe', 1 UNION
Select 4, 'Pernanmbuco', 2 UNION
Select 5, 'Río de Janeiro', 2 UNION
Select 6, 'Minas Gerais', 2 UNION
Select 7, 'Canelones', 3 UNION
Select 8, 'Montevideo', 3 UNION
Select 9, 'Salto', 3 UNION
Select 10, 'Alto Paraná', 4 UNION
Select 11, 'Caaguazú', 4 UNION
Select 12, 'Central', 4 UNION
Select 13, 'Antofagasta', 5 UNION
Select 14, 'Coquimbo', 5 UNION
Select 15, 'Metropolitana de Santiago', 5 UNION
Select 16, 'Guayas', 6 UNION
Select 17, 'Manabí', 6 UNION
Select 18, 'Pichincha', 6 UNION
Select 19, 'Cochabamba', 7 UNION
Select 20, 'La Paz', 7 UNION
Select 21, 'Santa Cruz', 7 UNION
Select 22, 'Arequipa', 8 UNION
Select 23, 'Junín', 8 UNION
Select 24, 'Lima Metropolitana', 8 UNION
Select 25, 'Antioquia', 9 UNION
Select 26, 'Bolívar', 9 UNION
Select 27, 'Santander', 9 UNION
Select 28, 'Anzoátegui', 10 UNION
Select 29, 'Carabobo', 10 UNION
Select 30, 'Capital', 10 UNION
Select 31, 'Barima-Guainí', 11 UNION
Select 32, 'Demerara-Mahaica', 11 UNION
Select 33, 'Cuyuní-Mazaruní', 11 UNION
Select 34, 'Brokopondo', 12 UNION
Select 35, 'Sipaliwini', 12 UNION
Select 36, 'Marowijne', 12 UNION
Select 37, 'San Juan-Laventille', 13 UNION
Select 38, 'Sangre Grande', 13 UNION
Select 39, 'Siparia', 13
Go

Insert into Especialidades(Descripcion_E)
Select 'Cardiología' UNION
Select 'Gastroenterología' UNION
Select 'Hepatología' UNION
Select 'Infectología' UNION
Select 'Neumología' UNION
Select 'Neurología' UNION
Select 'Nutriología' UNION
Select 'Oncología médica' UNION
Select 'Pediatría' UNION
Select 'Psiquiatría' UNION
Select 'Reumatología' UNION
Select 'Toxicología'
Go

Insert into Administradores(NombreUsuario_A, PassUsuario_A, EsAdministrador_A, Estado_A)
Select 'admin1', 'admin1', 1, 1 UNION
Select 'admin2', 'admin2', 1, 1 UNION
Select 'medico1', 'medico1', 0, 1 UNION
Select 'medico2', 'medico2', 0, 1 UNION
Select 'medico3', 'medico3', 0, 1 UNION
Select 'medico4', 'medico4', 0, 1 UNION
Select 'medico5', 'medico5', 0, 1 UNION
Select 'medico6', 'medico6', 0, 1 UNION
Select 'medico7', 'medico7', 0, 1 UNION
Select 'medico8', 'medico8', 0, 1 UNION
Select 'medico9', 'medico9', 0, 1 UNION
Select 'medico10', 'medico10', 0, 1 UNION
Select 'medico11', 'medico11', 0, 1 UNION
Select 'medico12', 'medico12', 0, 1 UNION
Select 'medico13', 'medico13', 0, 1 UNION
Select 'medico14', 'medico14', 0, 1 UNION
Select 'medico15', 'medico15', 0, 1 UNION
Select 'medico16', 'medico16', 0, 1 
Go

INSERT INTO Dias(IdDia_D, Descripcion_D)
Select 1,'Lunes-Martes-Miercoles' UNION
Select 2, 'Jueves-Viernes-Sabados'
Go

INSERT INTO Horarios(IdHorario_H,Descripcion_H)
Select 1, '08:00hs' UNION
Select 2, '09:00hs' UNION
Select 3, '10:00hs' UNION
Select 4, '11:00hs' UNION
Select 5, '12:00hs' UNION
Select 6, '13:00hs' UNION
Select 7, '14:00hs' UNION
Select 8, '15:00hs' UNION
Select 9, '16:00hs' UNION
Select 10, '17:00hs' UNION
Select 11, '18:00hs' UNION
Select 12, '19:00hs' UNION
Select 13, '20:00hs'
Go

Insert into Localidades(IdLocalidad_L, Descripcion_L, IdProvincia_L)
Select 1, 'Tigre', '1' UNION
Select 2, 'Mataderos', '1' UNION
Select 3, 'Montoro', '2' UNION
Select 4, 'Villa del río', '2' UNION
Select 5, 'Santa Fe', '3' UNION
Select 6, 'Sauce Viejo', '3' UNION
Select 7, 'Recife', '4' UNION
Select 8, 'Peixoto', '5' UNION
Select 9, 'Comari', '5' UNION
Select 10, 'Belo Horizonte', '6' UNION
Select 11, 'Varginha', '6' UNION
Select 12, '18 de Mayo', '7' UNION
Select 13, 'Aguas Corrientes', '7' UNION
Select 14, 'Municipio C', '8' UNION
Select 15, 'Municipio CH', '8' UNION
Select 16, 'San Antonio', '9' UNION
Select 17, 'Rincón de Valentín', '9' UNION
Select 18, 'Ciudad del Este', '10' UNION
Select 19, 'Hernandarias', '10' UNION
Select 20, 'Coronel Oviedo', '11' UNION
Select 21, 'Doctor Juan Manuel Frutos', '11' UNION
Select 22, 'Villeta', '12' UNION
Select 23, 'Capiatá', '12' UNION
Select 24, 'El Loa', '13' UNION
Select 25, 'Tocopilla', '13' UNION
Select 26, 'Elqui', '14' UNION
Select 27, 'Limarí', '14' UNION
Select 28, 'Chacabuco', '15' UNION
Select 29, 'Talagante', '15' UNION
Select 30, 'El Triunfo', '16' UNION
Select 31, 'Milagro', '16' UNION
Select 32, 'El Carmen', '17' UNION
Select 33, 'Jama', '17' UNION
Select 34, 'Mejía', '18' UNION
Select 35, 'Puerto Quito', '18' UNION
Select 36, 'Colcapirhua', '19' UNION
Select 37, 'Quillacollo', '19' UNION
Select 38, 'Jerusalén', '20' UNION
Select 39, 'Olocuilta', '20' UNION
Select 40, 'Ichilo', '21' UNION
Select 41, 'Chiquitos', '21' UNION
Select 42, 'Caravelí', '22' UNION
Select 43, 'Caylloma', '22' UNION
Select 44, 'Huancayo', '23' UNION
Select 45, 'Satipo', '23' UNION
Select 46, 'Barranco', '24' UNION
Select 47, 'Surco', '24' UNION
Select 48, 'Ituango', '25' UNION
Select 49, 'San José de la Montaña', '25' UNION
Select 50, 'Cartagena', '26' UNION
Select 51, 'Magangué', '26' UNION
Select 52, 'Chipatá', '27' UNION
Select 53, 'Capitanejo', '27' UNION
Select 54, 'McGregor', '28' UNION
Select 55, 'Miranda', '28' UNION
Select 56, 'Libertador', '29' UNION
Select 57, 'Montalbán', '29' UNION
Select 58, 'Usme', '30' UNION
Select 59, 'Bosa', '30' UNION
Select 60, 'Colina Kwamtta', '31' UNION
Select 61, 'Asakata', '31' UNION
Select 62, 'Adventure', '32' UNION
Select 63, 'Annai', '32' UNION
Select 64, 'Peters Mine', '33' UNION
Select 65, 'Kamikusa', '33' UNION
Select 66, 'Sarakreek', '34' UNION
Select 67, 'Klaaskreek', '34' UNION
Select 68, 'Djumu', '35' UNION
Select 69, 'Pokigron', '35' UNION
Select 70, 'Patamacca', '36' UNION
Select 71, 'Galibi', '36' UNION
Select 72, 'Aranguez', '37' UNION
Select 73, 'Malick', '37' UNION
Select 74, 'Cumuto', '38' UNION
Select 75, 'Matelot', '38' UNION
Select 76, 'Apex Oil Field', '39' UNION
Select 77, 'Bonasse Village', '39'
Go

insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
                     Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					 values (1,1,1,1,'medico1','medico1','25808919','Juan','Perez','M',1,'1979/12/6','Luis Resio 10','Juan@gmail.com','11808969',1,814,1)
insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
                     Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					 values (2,1,1,2,'medico2','medico2','35808919','Luciano','Robles','M',1,'1990/11/6','Storni 1900','Luciano@gmail.com','11808985',2,814,1)
insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
                     Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					 values (3,1,1,3,'medico3','medico3','40808919','Tomas','Rodriguez','M',1,'1991/12/25','Las heras 100','Tomas@gmail.com','11808914',1,814,1)
insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
					Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					values (4,1,1,4,'medico4','medico4','26808919','Roman','Riquelme','M',1,'1989/12/27','Brasil 300','Riquelme@gmail.com','11808913',2,1420,1)
insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
                     Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					 values (5,1,1,5,'medico5','medico5','15808919','Delfina','Giles','F',1,'1999/12/15','Cabot 1200','Giles@gmail.com','11808912',1,814,1)
insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
                     Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					 values (6,1,1,6,'medico6','medico6','25878919','Trinidad','Dalmon','F',1,'1995/7/25','Andres 100','Dalmon@gmail.com','11808911',2,1420,1)
insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
                     Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					 values (7,1,1,7,'medico7','medico7','40191919','Sasha','Murua','F',1,'1978/4/1','Siempre viva 100','Murua@gmail.com','11808910',2,814,1)
insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
					Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					values (8,1,1,8,'medico8','medico8','25808100','Patricia','Bullrich','F',1,'1968/2/15','Pringles 1950','Bullrich@gmail.com','11808909',1,814,1)
					insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
                     Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					 values (9,1,1,9,'medico9','medico9','13808919','Braian','Arias','M',1,'1978/2/3','Formosa 1290','Arias@gmail.com','11808908',2,814,1)
insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
                     Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					 values (10,1,1,10,'medico10','medico10','38408919','Guada','Garay','F',1,'1979/3/4','Sarmiento 12','Garay@gmail.com','11808907',2,814,1)
insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
                     Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					 values (11,1,1,11,'medico11','medico11','41808919','Rodrigo','Berdejo','M',1,'1980/4/5','Cabral 505','Berdejo@gmail.com','11808906',1,1420,1)
insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
					Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					values (12,1,1,12,'medico12','medico12','22808919','Rocio','Peralta','F',1,'1998/8/10','Angostura 10','Peralta@gmail.com','11808905',1,1420,1)
insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
                     Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					 values (13,1,1,1,'medico13','medico13','11808919','Agustin','Tejera','M',1,'1996/10/18','Catamarca 30','Tejera@gmail.com','11808904',1,1420,1)
insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
                     Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					 values (14,1,1,2,'medico14','medico14','14808919','Sol','Bernard','F',1,'1999/10/18','Chubut 150','Bernard@gmail.com','11808903',2,1420,1)
insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
                     Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					 values (15,1,1,3,'medico15','medico15','39508919','Luciano','Scarfo','M',1,'1996/11/19','Bariloche 300','Scarfo@gmail.com','11808902',1,1420,1)
insert into Medicos (Legajo_M,IdProvincia_M,IdLocalidad_M,IdEspecialidad_M,NombreUsuario_M,PassUsuario_M,Dni_M,Nombre_M,Apellido_M,
					Sexo_M,Nacionalidad_M,FechaNacimiento_M,Direccion_M, Email_M,Telefono_M,IdDia_M,IdHorario_M,Estado_M) 
					values (16,1,1,4,'medico16','medico16','26919808','Isabel','Rodriguez','F',1,'1990/1/1','Belgrano','Rodriguez@gmail.com','11808901',2,1420,1)

      
///turno manana
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (1,1)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (1,2)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (1,3)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (1,4)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (1,5)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (1,6)

insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (2,1)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (2,2)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (2,3)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (2,4)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (2,5)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (2,6)

insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (3,1)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (3,2)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (3,3)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (3,4)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (3,5)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (3,6)

insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (5,1)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (5,2)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (5,3)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (5,4)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (5,5)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (5,6)

insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (7,1)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (7,2)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (7,3)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (7,4)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (7,5)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (7,6)

insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (8,1)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (8,2)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (8,3)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (8,4)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (8,5)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (8,6)

insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (9,1)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (9,2)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (9,3)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (9,4)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (9,5)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (9,6)

insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (10,1)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (10,2)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (10,3)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (10,4)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (10,5)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (10,6)
 
///turno tarde
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (4,7)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (4,8)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (4,9)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (4,10)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (4,11)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (4,12)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (4,13)


insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (6,7)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (6,8)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (6,9)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (6,10)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (6,11)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (6,12)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (6,13)

insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (11,7)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (11,8)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (11,9)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (11,10)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (11,11)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (11,12)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (11,13)



insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (12,7)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (12,8)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (12,9)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (12,10)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (12,11)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (12,12)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (12,13)


insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (13,7)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (13,8)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (13,9)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (13,10)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (13,11)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (13,12)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (13,13)


insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (14,7)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (14,8)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (14,9)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (14,10)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (14,11)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (14,12)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (14,13)


insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (15,7)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (15,8)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (15,9)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (15,10)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (15,11)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (15,12)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (15,13)


insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (16,7)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (16,8)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (16,9)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (16,10)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (16,11)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (16,12)
insert into HorariosXMedicos (Legajo_HXM,IdHorario_HXM) values (16,13)

Insert into DiasXMedicos(Legajo_DXM, IdDia_DXM)
Select 1, 1 UNION
Select 2, 2 UNION
Select 3, 1 UNION
Select 4, 2 UNION
Select 5, 1 UNION
Select 6, 2 UNION
Select 7, 2 UNION
Select 8, 1 UNION
Select 9, 2 UNION
Select 10, 2 UNION
Select 11, 1 UNION
Select 12, 1 UNION
Select 13, 1 UNION
Select 14, 2 UNION
Select 15, 1 UNION
Select 16, 2

CREATE PROCEDURE [dbo].[spAgregarUsuario]
(
    @NombreUsuario_A VARCHAR(30),
    @PassUsuario_A VARCHAR(30),
    @EsAdministrador_A bit,
    @Estado_A bit
    )
AS
INSERT INTO Administradores(
    
	NombreUsuario_A,
    PassUsuario_A,
    EsAdministrador_A,
    Estado_A)
	
	Values(
	@NombreUsuario_A,
    @PassUsuario_A,
    @EsAdministrador_A,
    @Estado_A)
	RETURN
	GO

CREATE PROCEDURE [dbo].[spBajaUsuario]
(
	@NOMBREUSUARIO_A VARCHAR(30)
	)
AS
UPDATE Administradores 
SET Estado_A = 0
WHERE NombreUsuario_A = @NOMBREUSUARIO_A;
RETURN
GO

CREATE PROCEDURE [dbo].[spAgregarMedico]
(
	@Legajo_M int,
	@ID_PROVINCIA_M varchar(30),
	@ID_LOCALIDAD_M varchar(30),
	@ID_ESPECIALIDAD_M int,
	@ID_HORARIO_M int,
	@ID_DIA_M char,
	@USUARIO_M varchar(30),
	@PASS_M varchar(30),
	@DNI_M varchar(30),
	@NOMBRE_M varchar(30),
	@APELLIDO_M varchar(30),
	@SEXO_M char,
	@NACIONALIDAD_M varchar(40),
	@DIRECCION_M varchar(40),
	@EMAIL_M varchar(40),
	@TELEFONO_M varchar(30),
	@FECHA_NACIMIENTO_M datetime,
	@ESTADO_M bit
)
AS
INSERT INTO Medicos(
	Legajo_M,
	IdProvincia_M,
	IdLocalidad_M,
	IdEspecialidad_M,
	IdHorario_M,
	IdDia_M,
	NombreUsuario_M,
	PassUsuario_M,
	Dni_M,
	Nombre_M,
	Apellido_M,
	Sexo_M,
	Nacionalidad_M,
	Direccion_M,
	Email_M,
	Telefono_M,
	FechaNacimiento_M,
	Estado_M)
	VALUES
	(@Legajo_M,
	@ID_PROVINCIA_M,
	@ID_LOCALIDAD_M,
	@ID_ESPECIALIDAD_M,
	@ID_HORARIO_M,
	@ID_DIA_M,
	@USUARIO_M,
	@PASS_M,
	@DNI_M,
	@NOMBRE_M,
	@APELLIDO_M,
	@SEXO_M,
	@NACIONALIDAD_M,
	@DIRECCION_M,
	@EMAIL_M,
	@TELEFONO_M,
	@FECHA_NACIMIENTO_M,
	@ESTADO_M)
	RETURN
	GO

CREATE PROCEDURE [dbo].[spBajaMedico]
(
	@LEGAJO_M int
	)
AS
UPDATE Medicos
SET Estado_M = 0
WHERE Legajo_M = @LEGAJO_M;
RETURN
GO


	CREATE PROCEDURE [dbo].[spAgregarPaciente]
(
    @DNI_P INT,
    @NOMBRE_P VARCHAR(30),
    @APELLIDO_P VARCHAR(30),
    @SEXO_P CHAR(1),
    @NACIONALIDAD_P VARCHAR(40),
    @FECHANAC_P DATE,
    @DIRECCION_P VARCHAR(40),
    @LOCALIDAD_P VARCHAR(30),
    @PROVINCIA_P VARCHAR(30),
    @EMAIL_P VARCHAR(30),
    @TELEFONO_P VARCHAR(30),
    @ESTADO_P BIT
)
AS
INSERT INTO Pacientes(
        DniPaciente_P, 
        Nombre_P, 
        Apellido_P, 
        Sexo_P, 
        Nacionalidad_P, 
        FechaNacimiento_P, 
        Direccion_P, 
        IdLocalidad_Paciente, 
        IdProvincia_Paciente, 
        Email_P, 
        Telefono_P, 
        Estado_P)
		Values(@DNI_P, 
        @NOMBRE_P, 
        @APELLIDO_P, 
        @SEXO_P, 
        @NACIONALIDAD_P, 
        @FECHANAC_P, 
        @DIRECCION_P, 
        @LOCALIDAD_P, 
        @PROVINCIA_P, 
        @EMAIL_P, 
        @TELEFONO_P, 
        @ESTADO_P)
RETURN
GO

CREATE PROCEDURE [dbo].[spBajaPaciente]
(
	@DNIPACIENTE_P int
	)
AS
UPDATE Pacientes
SET Estado_P = 0
WHERE DniPaciente_P = @DNIPACIENTE_P;
RETURN
GO

CREATE PROCEDURE [dbo].[spAgregarTurno]
	(
		@IDTURNO_T INT,
		@LEGAJO_T INT,
		@DNIPACIENTE_T INT,
		@IDESPECIALIDAD_T INT,
		@IDDIA_T INT,
		@IDHORARIO_T INT,
		@PRESENTE_T BIT,
		@OBSERVACION_T VARCHAR(150),
		@FECHA_T DATE
	)
	AS
	INSERT INTO turnos(
			IdTurno_T,
			Legajo_T,
			DniPaciente_T,
			IdEspecialidad_T,
			IdDia_T,
			IdHorario_T,
			Presente_T,
			Observacion_T,
			Fecha_T
			)
			Values(
			@IDTURNO_T,
			@LEGAJO_T,
			@DNIPACIENTE_T,
			@IDESPECIALIDAD_T,
			@IDDIA_T,
			@IDHORARIO_T,
			@PRESENTE_T,
			@OBSERVACION_T,
			@FECHA_T
	)
RETURN
GO

ALTER TABLE Turnos
ADD Fecha_T DATE NOT NULL

CREATE PROCEDURE spModificarTurno
@IdTurno_T INT,
@Observacion_T VARCHAR(150)
AS
UPDATE turnos SET Observacion_T = @Observacion_T, Presente_T = 1 WHERE IdTurno_T = @IdTurno_T
Go
