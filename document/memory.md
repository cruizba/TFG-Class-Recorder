---
title: Aplicación para grabación y publicación de vídeos docentes
author: Carlos Ruiz Ballesteros
geometry: "left=2.5cm,right=2.5cm,top=3cm,bottom=3cm"
date: 14 de Enero de 2018

---
\pagenumbering{Roman}
\pagebreak
&nbsp;
\newpage

\begin{flushright}
\textit{Dedico este trabajo a mis padres por su apoyo y dedicación,} \\
\textit{a mis tutor de proyecto Micael Gallego,} \\
\textit{y a todas los amigos que sin darme cuenta} \\
\textit{han estado ahí}.
\end{flushright}

\newpage
&nbsp;

\tableofcontents

\pagebreak
&nbsp;
\newpage

\pagebreak
&nbsp;
\newpage

# Resumen {-}

<!-- TODO -->
Aqui ira un resumen (al final)

\pagebreak
&nbsp;
\newpage

\pagenumbering{arabic}   
# Introducción

En la actualidad, muchos profesores universitarios o de otros niveles educativos, graban sus clases para posteriormente dejarlas a disposición de sus alumnos. De esta forma los alumnos pueden ahondar de mejor manera en las partes claves de la asignatura y además, estos pueden ir a su propio ritmo consultando el material en vídeo de las clases. Grabar la pantalla del ordenador en las clases es algo bastante utilizado por los profesores en los últimos años como un medio más de enseñanza. Sin embargo la grabación y posterior edición y publicación de estas clases es bastante tediosa y acarrea un gasto de tiempo innecesario para el profesorado. 

A continuación, en los siguientes apartados de este capítulo, se abordarán los diferentes problemas con los que los docentes se encuentran a la hora de grabar sus clases, estudiaremos como mejorar las partes que mayor esfuerzo conllevan y a que usuarios esta enfocada y se explicará a grandes rasgos el software presentado para resolver este problema.

## Contexto y estudio del problema

Uno de los primeros percanzes en los que se encuentran los profesores a la hora de realizar una clase, es gestionar las pausas durante la grabación. En una clase, normalmente suele haber interrupciones, descansos, etc., lo cual implica que la persona que imparte la clase debe tomar en cuenta estos cortes para la edición del video. A la hora de editarlo, los profesores tienen que utilizar algún software, además de tener que aprender a utilizar la interfaz de usuario de este para manipular el video y renderizarlo. Otro contratiempo podría ser la subida del video a alguna plataforma para dejarlo a disposición del alumnado. Todas estas fases retrasan y distraen la labor principal del docente, que es enseñar, por lo que los profesores tendrían menos tiempo para dedicar a las clases y prepararlas, pudiendo así deteriorar la calidad de la asignatura.

Una forma de abordar este problema es optimizar las partes más laboriosas dentro de este proceso automatizándolo en la medida de lo posible. Para identificar que partes se pueden automatizar de este proceso, primero identificaremos las tareas en las que se ve envuelto un docente a la hora de realizar las clases y grabarlas. [^1]

- Poner a grabar un software de grabación de escritorio.
- Pausar o parar grabación.
- Editar video:
    - Identificar zonas en las que realizar cortes en el video o juntar vídeos.
    - Manipular video
    - Renderizar.
- Publicar video en una plataforma.
    - Registrarse o identificarse.
    - Subir video.

De todas estas tareas, se puede ver que la que más tiempo consume de todas es editar el vídeo. Supongamos por ejemplo, que el profesor o la profesora grabó una clase con muchas interrupciones, y los edita al mes siguiente. Lo más probable en esta situación es que esta persona ya no recuerde en que momentos hubo pausas en las clases que grabó, y es probable que tenga que visualizar la mayor parte del video para posteriormente realizar los cortes. Por otro lado gestionar los vídeos y subirlos, es otra tarea que requiere un esfuerzo adicional.

Pero no solo el tiempo es un problema, ¿que hay del audio grabado para las clases?. La mayoría de los profesores al presentar, se levantan y explican, por lo que el micrófono del ordenador queda bastante alejado de la fuente de voz, empeorando la calidad de las clases grabadas. Una posible solución a esto, sería grabar el sonido de las clases con el móvil, pero esto implica que el profesor también tendría que juntar el audio de dicho teléfono con el video grabado, por lo que empeoraría aun más la situación en lo que a edición de video se refiere.

A todo esto hay también que añadir que durante todo este proceso de grabación, edición y publicación se está utilizando para cada tarea un software diferente, por lo que el docente debe saber manejarse correctamente en todos ellos. Un usuario de Windows, por ejemplo, tendría que instalar un capturador de vídeo y audio, un editor de video y posteriormente quizás utilizará una aplicación o plataforma web para compartirlo con sus alumnos.  Incluso muchos de estos programas no son triviales de utilizar y muchos de ellos son propietarios y de pago, dificultando aún más dicha tarea.

[^1]: Hay que tener en cuenta que solo trataremos de automatizar clases en las que se graba el contenido de la pantalla de un ordenador, junto con la voz, y no se tiene en cuenta una grabación externa a este.

## Motivación y solución propuesta

Una de las motivaciones de este proyecto, es unificar todo este proceso en un sólo software capaz de realizar todas las tareas antes mencionadas, combinado con una interfaz de usuario minimalista, y fácil de usar que permita a los profesores utilizarlo sin necesidad de tener que experimentar con cientos de miles de opciones diferentes y ofrecer una única herramienta. Que los profesores tengan un software enfocado solo a la grabación de las clases que les facilite las tareas antes mencionadas de mayor esfuerzo es lo que trataremos de resolver con el software presentado. Minimizar en todo lo posible el tiempo dedicado a la grabación y despreocupar al docente de la tarea de grabar su clases.

Para resolver en cuestión de tiempo este problema, debemos responder a las siguientes preguntas:

- ¿Cómo podemos automatizar la edición?
- ¿Como podemos grabar el audio de las clases con calidad?



\pagebreak
&nbsp;
\newpage

# Objetivos

**1 página**


\pagebreak
&nbsp;
\newpage

# Tecnologías herramientas y metodologías

**10 a 15 páginas**

\pagebreak
&nbsp;
\newpage

# Descripción informática
**25 a 35 páginas**

\pagebreak
&nbsp;
\newpage

## Requisitos

### Requisitos funcionales

Los requisitos funcionales consisten en una serie de comportamientos o módulos que deben ser integrados en el sistema de simulación y son los siguientes:

**Requisito funcional 1**

**Requisito funcional 2**

**Requisito funcional 3**

**Requisito funcional 4**

**Requisito funcional 5**

**Requisito funcional 6**

**Requisito funcional 7**

**Requisito funcional 8**

### Requisitos no funcionales

**Requisito no funcional 1**

**Requisito no funcional 2**

**Requisito no funcional 3**

**Requisito no funcional 4**

\pagebreak
&nbsp;
\newpage

## Arquitectura y análisis

\pagebreak
&nbsp;
\newpage

## Diseño e implementación

\pagebreak
&nbsp;
\newpage

## Pruebas

\pagebreak
&nbsp;
\newpage

# Conclusiones y trabajos futuros
**2 a 4 páginas**

\pagebreak
&nbsp;
\newpage

# Referencias

<div id="refs"></div>

\thispagestyle{plain}

\pagebreak
&nbsp;
\newpage

# Anexos
## Anexo 1


\pagebreak
&nbsp;
\newpage

## Anexo 2

\pagebreak
&nbsp;
\newpage

## Anexo 3

\pagebreak
&nbsp;
\newpage

## Anexo 4

\pagebreak
&nbsp;
\newpage