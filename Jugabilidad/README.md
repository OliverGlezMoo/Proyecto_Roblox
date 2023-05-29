# Scripts (jugabilidad)

La función de estos scripts es mejorar la experiencia del usuario mediante pequeños cambios que hacen que la experiencia pueda ser mas realista o mas confortable para el usuario.

## Script Correr (Tecla Shift)

Como tal toda experiencia de roblox no esta configurado para que al presionar cierta tecla tu personaje corra, esta es una caracteristica que los creador de los juegos deben agregar.

Para ello lo primero que debemos hacer es crear un evento en la seccion de ReplicatedStorage

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/7033b7da-f1f0-40cd-b4d6-414b0271b08f)

Posterior a eso creamos el Script Run, dentro del cual simplemente definimos el cambio en la velocidad del personaje cuando el usuario presiona la tecla shift, por defecto roblox maneja la velocidad en 16, y al presionar shift pasara a 50, este efecto solo pasara mientras la teclas este siendo presionada.

Por ultimo creamos el localscrpit llamda shift, en el usando el modulo GetService lo vamos a comprobar es si el usuario esta presionando la tecla shift, y de igual forma vamos a verificar cuando el usuario deje de presionarla.

## Ciclo del día

Este script es simplemente para generar la niche en nuestro juego, para ello definimos el tiempo que queremos que dure nuestro día en minutos, posterior a ello, usamos una funcion en repetir para hacer que sl ciclo sea de manera indefninada, dividimos el dia entre dos, para definir el dia y la noche

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/c1d26aef-7ae0-45e9-954d-68c41cea1d3c)
![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/c67b3e38-4235-40a0-8558-97388338ca8e)

## Cambiar arma con la tecla Q

Para este codigo lo primero es agarrar un arma y colocarla dentro de la seccion de StarterPack

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/b69bf0db-b82b-47b6-90ec-1cbde56dcc68)

Despues creamos el script del tipo local, dentro de el declararemos una funcion en la cual primero verificaremos si el usuario no tiene abierto el chat, de ser asi la funcion no aplica, si no, y el usuario presiona la tecla Q, primero se debera verificar que el usuario poseea el arma, si la tiene y lo presiona su hotbar pasara a la posición 1, si no tiene el arma, no sucede nada.
