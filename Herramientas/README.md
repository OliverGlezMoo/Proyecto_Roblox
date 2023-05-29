# Herramientas

Las herramientas son las armar y equipo que el usuario podra usar dentro del juego.

## Generador (Script)

Dentro de este archivo se implementara el bloque en el cual se posaras las herramientas y armas para que estas se generen cada cierto tiempo de manera infinita siempre y cuando el usuaurio tome de el la herramienta o arma colocada.

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/92d033fd-34ce-4218-8aa4-8d6fd7670ff2)

Para ello lo primero que debemos hacer es comprobar que la herramienta este ubicada en el area correspondiente a la superficie del bloque, para ellos se usan los vectores de la cuadricula del Studio.

Posterior a ello el bloque obtendra las caracterisitcas de poder generar una herramientas (Usamos una funcion establecida)

Creamos un contador regresivo el cual sera el tiempo que debera pasar entre que la herramientas es recogida para que se genere una nueva.

Por ultimo realizamos la funcion siemrpre y cuando la herramienta este ubicada correctamente, la funcion consiste en usarl el modulo ServerStorage, clonamos la herramienta con sus propiedades para volverla a generar, Esperamos a que el usuario tome el arma, y por ultimo esperamos a que el contador termine para generar la herramienta.

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/377197fa-7fc1-4c46-a095-bcf5916fba12)

## MedKit

Para este elemento usaremos dos scripts, el primero es del tipo ModuleScript, para este caso tomaremos uno previamente definido, dentro del cual lo unico que se hace es definir al Humanoid como el persona del usuario al cual el MedKit podra afectar.

Para el scrip del medkit lo primero es comprobar si el usuario esta usando el medkit para ello el usuario debio de darle click, si, si se esta usando lo siguiente es seguir el cooldown el cual define el tiempo que el medkit estara en uso dando el efecto de curación al jugador.

Despues se usa la funcion de RootPart para obtener una part del usuario para que el efecto sea aplicable a el Humanoid, como ultima parte meramente visual generamos un humo de tono rojizo para indicar el rango dentro del cual el usuario podra ver curado.

![image](https://github.com/OliverGlezMoo/Proyecto_Roblox/assets/123349304/7886f07a-4fd2-4554-a62e-777e5c3acedd)

