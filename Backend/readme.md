# Proyecto_AventurasJack


[![Banner-de-Twitch-Nubes-Gamer-Chica-Morado.png](https://i.postimg.cc/15q3LFXF/Banner-de-Twitch-Nubes-Gamer-Chica-Morado.png)](https://postimg.cc/MvzwBvyZ)

# Universidad Tecnológica de Xicotepec de Juárez

## Ingeniería en Desarrollo y Gestión de Software
## Josseline Alvarado Vargas
## Lesly Yareth Hernandez Bonilla
## Jose Luis Galindo Picaso
## 10A
### Desarrollo Móvil Integral

## Descripcion

Esta aplicación de videojuego llamada Api Rest es un CRUD que se conectará a la aplicación integrada, pero ¿qué es CRUD? CRUD es la abreviatura de "Crear, Leer, Actualizar y Eliminar", que se utiliza para referirse a las funciones básicas en la base de datos o la capa de persistencia en el software, en pocas palabras, es la abreviatura de la forma de operar el almacenamiento. Información, el objetivo es poder mostrar el progreso o evolución de CRUD, cuya finalidad es poder conectarse a la API de TecnoGames Team. En este nuevo desarrollo se ha implementado una implementación de búsqueda en nuestro CRUD para poder buscar jugadores insertados en la base de datos, y también se ha incorporado la posibilidad de insertar datos de jugadores.
Modelo reverso de la base de datos

## Captura De las Rutas
![image](https://github.com/JossAlvarado/DMI_INTEGRADORA_AVENTURASDEJACK/assets/84793967/ee72c205-530f-4444-a659-03d623bca5f9)

La implementación de rutas para realizar operaciones CRUD (Crear, Leer, Actualizar y Eliminar) en una aplicación es una parte esencial de muchos sistemas informáticos, especialmente en entornos weB. En esta captura se muestra las rutas creadas, las cuales Define rutas específicas para cada operación CRUD. Esta se asocia a cada operación CRUD con un método HTTP específico:
 * POST para la creación.
 * GET para la lectura.
 * PUT o PATCH para la actualización.
 * DELETE para la eliminación.
Estas rutas implementan middleware para validar y procesar datos antes de llegar a las funciones de controlador.

## Captura Creacion de un nuevo usuario. 
![image](https://github.com/JossAlvarado/DMI_INTEGRADORA_AVENTURASDEJACK/assets/84793967/9d5f4f1a-b070-4e2e-abe7-414dfc7bd4ab)
Esta ruta permite la creación de un nuevo usuario en el sistema. Al realizar una solicitud POST a esta ruta con los datos del usuario, el servidor procesará la información y creará un nuevo registro de usuario en la base de datos.
Parámetros del Cuerpo de la Solicitud (Formato JSON):
* nombre (cadena) - El nombre completo del usuario.
* correo (cadena) - La dirección de correo electrónico del usuario.
* contraseña (cadena) - La contraseña del usuario (se recomienda el uso de métodos seguros para el almacenamiento de contraseñas, como el hash).

## Captura Solicitar la Busqueda de un Jugador con ID
![image](https://github.com/JossAlvarado/DMI_INTEGRADORA_AVENTURASDEJACK/assets/84793967/2e8db758-aee0-4d88-ad46-17ee3e0a08f9)

Esta ruta permite la búsqueda de un usuario específico mediante su identificador único (ID). Al realizar una solicitud GET a esta ruta, se espera que el servidor responda proporcionando los detalles del usuario correspondiente al ID proporcionado.
Parámetros de Ruta:
* ID:El identificador único del usuario que se desea buscar.

## Captura Solicitar la Busqueda de un Jugador con EMAIL

![image](https://github.com/JossAlvarado/DMI_INTEGRADORA_AVENTURASDEJACK/assets/84793967/c2aa5f40-bfcc-4956-9685-05421984ca3d)
Esta ruta permite la búsqueda de un usuario específico mediante su dirección de correo electrónico. Al realizar una solicitud GET a esta ruta con el correo electrónico como parámetro, el servidor buscará y responderá con los detalles del usuario correspondiente al correo proporcionado.
Parámetros de la Solicitud (en la URL):
* correo (cadena) - La dirección de correo electrónico del usuario que se desea buscar.

## Captura Solicitar actualizacion de un JUGADOR. 
![image](https://github.com/JossAlvarado/DMI_INTEGRADORA_AVENTURASDEJACK/assets/84793967/6e9b4604-e470-4824-b229-6c8da421832c)
Esta ruta permite la actualización de los datos de un jugador existente en el sistema. Al realizar una solicitud PUT a esta ruta con el identificador único del jugador (ID) y los datos actualizados, el servidor procesará la información y actualizará los detalles del jugador en la base de datos.

## Captura Solicitar Eliminacion de un JUGADOR
![image](https://github.com/JossAlvarado/DMI_INTEGRADORA_AVENTURASDEJACK/assets/84793967/9d6f9c6c-3de6-4996-b85d-238273048ff8)
Esta ruta permite la eliminación de los datos de un jugador existente en el sistema. Al realizar una solicitud DELETE a esta ruta con el identificador único del jugador (ID), el servidor procesará la información y eliminará el registro del jugador de la base de datos.

Parámetros de la Solicitud (en la URL):
* id (entero) - El identificador único del jugador que se desea eliminar.

## Captura Base de Datos
![image](https://github.com/JossAlvarado/DMI_INTEGRADORA_AVENTURASDEJACK/assets/84793967/bcde31a6-4ca5-42dd-a830-b83322ed2335)
En la siguiente captura se muestra que la conexion con la base de datos ha sido exitosa, se muestra que se imprimen mensajes en la consola, es decir que esta funcionando y los datos se estan registrando dentro de la misma.

 ## Captura Creacion de la Tabla Player 
 ![image](https://github.com/JossAlvarado/DMI_INTEGRADORA_AVENTURASDEJACK/assets/84793967/396965cb-ac37-4957-8673-85738cba603b)
En la siguiente captura se muestra la creacion de la tabla player. 

 ## Captura de la inserccion de Datos
 ![image](https://github.com/JossAlvarado/DMI_INTEGRADORA_AVENTURASDEJACK/assets/84793967/00a9fcc0-cf82-4cf9-bb02-fd7794592624)

 La imagen muestra la insercion de datos en la base de datos. 
 
 ## Captura de la Tabla Games 
 ![image](https://github.com/JossAlvarado/DMI_INTEGRADORA_AVENTURASDEJACK/assets/84793967/e3c0d368-554d-4db7-a0d4-874f12aa2a3e)
 En la captura se muestra que los datos insertados han sido exitosos, pues se muestran en la tabla correspondiente. 


