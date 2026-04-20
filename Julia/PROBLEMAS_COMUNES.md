# Problemas comunes

Este documento fue creado para ayudar a solucionar algunos problemas frecuentes al tratar de utilizar tanto Julia como sus notebooks en Pluto. Si estaba tratando de utilizar Julia, ejecutar un Notebook en Pluto o correr una simulación y no ha funcionado, aquí trataremos de ayudarle.

## No recuerdo cómo abrir un notebook en Pluto

Abrir un notebook de Julia en Pluto es sencillo. Aunque es algo que puede olvidarse con facilidad. Primero que nada, asegúrese que tiene instalado Julia:

```shell
julia --version
```

Si obtiene un error, descargue Julia desde [página oficial](https://julialang.org/downloads/). Haga lo mismo para Pluto luego, siguiendo la [guía oficial](https://plutojl.org/#install).

Si ya tiene instalado Julia, ejecute Julia desde la terminal:

```shell
julia
```

Luego ejecute Pluto:

```julia
import Pluto; Pluto.run()
```

Si obtiene un error, entonces no tiene instalado Pluto. En ese caso, siga la [guía oficial](https://plutojl.org/#install) para instalar Pluto.

Si todo sale bien, esto debería abrirle una pestaña del navegador en el que se esté ejecutando el servidor local de Pluto. Si es así, `~ have fun!`.

## El notebook no se ejecuta

En ocasiones puede ocurrir que el notebook no está tratando de ejecutar no se ejecute. Esto suele ocurrir cuando es un notebook muy grande o con muchas importaciones. En estos casos Pluto tratará de ejecutarlo, pero nunca terminará de importar. Puede notar esto cuando ya han pasado varios minutos y el `Status` no termina las importaciones (ni tampoco parece avanzarlas).

En tales casos lo recomendable es reiniciar Pluto con `Ctrl + Z` (pues `Ctrl + C` no funcionará para tratar de cerrarlo) desde la consola.

Vuelva a iniciar Pluto y abra de nuevo el notebook. Ahora, agregue un `#` al inicio de las líneas donde se hacen las importaciones de los paquetes (aquellas que inician con un `import` o `using`). Esto hará que dichas importaciones se comenten y no se ejecuten. Ejecute el notebook y descomente una por una las importaciones mientras lo ejecuta. Así, las importaciones se harán de una en una.

Si no encuentra las líneas de importaciones, trate de encontrarlas al inicio. En ocasiones están ocultas al inicio.
