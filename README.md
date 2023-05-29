# Proyecto_Roblox

Implementación de scripts en lenguaje Lua con el entorno de desarrollo de Roblox Studio.

## Objetivo

Realizar un pequeño minijuego (completo) dentro del juego Roblox, con el fin de lograr comprender el funcionamiento del lenguaje Lua dentro de Roblox Studio.

## Desarrollo

## Emblemas

Los emblemas son insignias que los usuarios pueden obtener y coleccionar, son programas para que el usuario las obtenga al cumplir con ciertos requisitos.
Para esta ocasion he programada 2 emblemas obtenidos de fomra gratuita, ya que de igual forma se pueden programar para que sea obtenible al comprar alguna cosa de paga.

Los scrips relacionados con los emblemas deberan ser colocados en el apartado ServerScriptService, para que estos se ejecuten de manera paralera a cuando el usuario accede el juego.

![Emblemas](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/17e4f99b-a186-47ff-9d52-f5ecb9d33ff4)

Como primer paso, lo que hacemos es crear ambos emblemas como articulos asociados a nuestro juego

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/7446fe2f-4e2e-4f89-bfca-d349a2beb507)

### 1er Emblema Thanks for playing

Para poder obtener este emblema el usuario debera ingresar al juego y despues de 10 segundos dentro del juego, le aparecera que ha obtenido el emblema Thanks for playing.

El emblema funciona mediante una comparación del modulo BagdeService en la cual se compara los emblemas que posee el usuario, esto mediante el id del usuario que de igual es extraido, con el id del emblema de Thanks for playing (2146353671), si no lo tiene entonces se le agregara al usuario en su lista de coleccionables, pero en caso de que el usuario ya lo tenga, no sucede nada.

### 2do Emblema Met the CREATOR

Para este otro caso, de igual forma se usa el modulo BagdeService, aunque sera necesario crear una tabla con el nombre o nombres de los creadores del juego, en este caso mi nametag "Gonza_Moo", como primer paso, verificamos que el creador este dentro del juego y dentro de nuestro servidor, porsterior a eso, extraemos una parte del humanoid, forma en la que roblos se refiere al personje de los jugadores, lo conectamos con la funcion de "Touched" para que el usuario deba de dar tocar al persona del creador para que de esta forma pueda obteneer el emblema, al igual que el ejemplo anterior esto es solo es obtenible una vez.

En caso de que el usuario se llegue a encontrar nuevamente con el creador y toque el persona del mismo, el emblema no podra ser entregado por segunda ocasion esto debido a la igualacion del id del jugador con el id del emblema (2146354120).

## GamePass

Los GamePass son articulos que usualemte son de paga, al momento de comprar algún Game Pass, tu personake recibirá algún beneficio especial, ya sea objeto, accesorio, habilidad dentro del juego. Los objetos o recompensas por comprar un pase, estan regulados bajo la politica de economia y seguridad de Roblox Studio.

### Implementación

Para los GamePass es necesario crear una screen, a la cual le vamos a crear un button y posterior un localscript, esto para que el pase sea visible en la pantalla de los jugadores.

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/f65f8d73-3290-42e2-a083-743ae8885007)

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/84a65e80-3dce-451c-bcd2-6aaaec781a1c)

### LocalScript VIPamePass

Dentro del localscript lo que implementamos en la accion del boton, para ello lo que hacemos es usar la función MouseButton1Click para comprobar si el usuario a presionada el boton, en caso de hacerlo hacemos una comparacion del id del gamepass con el id del usuario para verificar si el usuario ya posee o no el gamepass, en caso de que no lo tenga se desplegara el mensaje de compra

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/0d30d66a-72e6-46b2-b1eb-3cdfb176ae8e)

En caso que el usuario ya lo tenga no se desplegara ningun mensaje

### Script VIP (ServerScriptService)

Dentro de este archivo es donde vamos a desarrollar la recompensae que el jugador obtendra dentro del juego, en este caso solo sera un Name Tag VIP, Para ello lo primero es usar el modulo del Players, y comparar que el usuario ya poseea el id del gamepass.

Lo que hace el GamePass es proporcionar al usuario un name tag al lado de su nombre, para ello se usa el modulo del CharServiceRunner, realizamos una comparación para verificar si el usuario es el creador del juego, ya que se diseñaron 3 name tag, Admin, VIP y FAN, el Admin solo lo tienen las cuentas contenidas en la tablaCreador, los VIP, solo aquellos usuarios que hayan decidido comprar el GamePass y el FAN es para todos los demás usuarios.

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/cc09d54b-3b58-4807-b627-6339c0fd58cc)

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/1b346bd2-3d0f-422d-b8ce-d3afa269d5c6)

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/6c60ccc2-87e9-4c85-b82b-044643a06b80)
