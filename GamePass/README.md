# GamePass

Los GamePass son articulos que usualemte son de paga, al momento de comprar algún Game Pass, tu personake recibirá algún beneficio especial, ya sea objeto, accesorio, habilidad dentro del juego. Los objetos o recompensas por comprar un pase, estan regulados bajo la politica de economia y seguridad de Roblox Studio.

## Implementación

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


