# Scripts (jugabilidad)

La función de estos scripts es mejorar la experiencia del usuario mediante pequeños cambios que hacen que la experiencia pueda ser mas realista o mas confortable para el usuario.

## Script Correr (Tecla Shift)

Como tal toda experiencia de roblox no esta configurado para que al presionar cierta tecla tu personaje corra, esta es una caracteristica que los creador de los juegos deben agregar.

Para ello lo primero que debemos hacer es crear un evento en la seccion de ReplicatedStorage

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/7033b7da-f1f0-40cd-b4d6-414b0271b08f)

Posterior a eso creamos el Script Run, dentro del cual simplemente definimos el cambio en la velocidad del personaje cuando el usuario presiona la tecla shift, por defecto roblox maneja la velocidad en 16, y al presionar shift pasara a 50, este efecto solo pasara mientras la teclas este siendo presionada.

Por ultimo creamos el localscrpit llamda shift, en el usando el modulo GetService lo vamos a comprobar es si el usuario esta presionando la tecla shift, y de igual forma vamos a verificar cuando el usuario deje de presionarla.


