# Herramientas

Las herramientas son las armar y equipo que el usuario podra usar dentro del juego.

## Generador (Script)

Dentro de este archivo se implementara el bloque en el cual se posaras las herramientas y armas para que estas se generen cada cierto tiempo de manera infinita siempre y cuando el usuaurio tome de el la herramienta o arma colocada.

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/92d033fd-34ce-4218-8aa4-8d6fd7670ff2)

Para ello lo primero que debemos hacer es comprobar que la herramienta este ubicada en el area correspondiente a la superficie del bloque, para ellos se usan los vectores de la cuadricula del Studio.

Posterior a ello el bloque obtendra las caracterisitcas de poder generar una herramientas (Usamos una funcion establecida)

Creamos un contador regresivo el cual sera el tiempo que debera pasar entre que la herramientas es recogida para que se genere una nueva .
