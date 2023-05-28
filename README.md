# Proyecto_Roblox

Implementación de scripts en lenguaje Lua con el entorno de desarrollo de Roblox Studio.

## Objetivo

Realizar un pequeño minijuego (completo) dentro del juego Roblox, con el fin de lograr comprender el funcionamiento del lenguaje Lua dentro de Roblox Studio.

### Desarrollo

### Emblemas

Los emblemas son insignias que los usuarios pueden obtener y coleccionar, son programas para que el usuario las obtenga al cumplir con ciertos requisitos.
Para esta ocasion he programada 2 emblemas obtenidos de fomra gratuita, ya que de igual forma se pueden programar para que sea obtenible al comprar alguna cosa de paga.

Los scrips relacionados con los emblemas deberan ser colocados en el apartado ServerScriptService, para que estos se ejecuten de manera paralera a cuando el usuario accede el juego.

![Emblemas](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/17e4f99b-a186-47ff-9d52-f5ecb9d33ff4)

Como primer paso, lo que hacemos es crear ambos emblemas como articulos asociados a nuestro juego

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/7446fe2f-4e2e-4f89-bfca-d349a2beb507)

#### 1er Emblema Thanks for playing

Para poder obtener este emblema el usuario debera ingresar al juego y despues de 10 segundos dentro del juego, le aparecera que ha obtenido el emblema Thanks for playing.

El emblema funciona mediante una comparación del modulo BagdeService en la cual se compara los emblemas que posee el usuario, esto mediante el id del usuario que de igual es extraido, con el id del emblema de Thanks for playing (2146353671), si no lo tiene entonces se le agregara al usuario en su lista de coleccionables, pero en caso de que el usuario ya lo tenga, no sucede nada.

#### 2do Emblema Met the CREATOR

Para este otro caso, de igual forma se usa el modulo BagdeService, aunque sera necesario crear una tabla con el nombre o nombres de los creadores del juego, en este caso mi nametag "Gonza_Moo", como primer paso, verificamos que el creador este dentro del juego y dentro de nuestro servidor, porsterior a eso, extraemos una parte del humanoid, forma en la que roblos se refiere al personje de los jugadores, lo conectamos con la funcion de "Touched" para que el usuario deba de dar tocar al persona del creador para que de esta forma pueda obteneer el emblema, al igual que el ejemplo anterior esto es solo es obtenible una vez.

En caso de que el usuario se llegue a encontrar nuevamente con el creador y toque el persona del mismo, el emblema no podra ser entregado por segunda ocasion esto debido a la igualacion del id del jugador con el id del emblema (2146354120).
