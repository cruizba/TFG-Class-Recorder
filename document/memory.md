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

En la actualidad en muchos centros educativos, universidades y escuelas, los profesores utilizan ordenadores para hacer sus presentaciones en clase, incluso centrándose unicamente en el contenido que aparece por la pantalla o el proyector como es el caso de los profesores dentro del área de la informática.

Una de las ventajas que presenta realizar las presentaciones y las clases con un ordenador, es poder grabar dichas clases y después dejarlas a disposición de los alumnos, para que cada uno pueda volver a ver las clases a su ritmo, pudiendo revisar todo el contenido de la misma. Además, grabar las diapositivas y el contenido realizado en el ordenador, es muy útil para la realización de cursos online, permitiendo incluso la ausencia presencial de los alumnos, pudiendo llevar el conocimiento mucho más allá del lugar en el que se imparte.

Sin embargo, grabar las clases, editarlas y ponerlas a disposición de los alumnos no es una tarea trivial. Requiere un tiempo que los profesores no pueden utilizar para la preparación del contenido de sus clases, pudiendo incluso influenciar en la calidad de las mismas. Para solventar este tiempo dedicado a la grabación, edición y publicación de las clases surge *Class Recorder*. 

A continuación, en los siguientes apartados de este capítulo, se abordarán los diferentes problemas con los que los docentes y profesores se encuentran a la hora de grabar sus clases, estudiaremos como mejorar las partes que mayor esfuerzo conllevan, a que usuarios esta enfocada está aplicación y se explicará a grandes rasgos el software presentado.

## Contexto y estudio del problema

Para entrar un poco en el contexto de grabar las clases con un ordenador, se va a exponer a continuación los problemas más comunes. 

Lo más importante al principio es realizar las diapositivas (o en caso de clases de programación, desarrollo e informática en general, preparar además los ejemplos). Esto supone un tiempo y esfuerzo necesario para la calidad de las clases. Cuánto más tiempo disponga el profesor para preparar sus clases, es probable que sean de mejor calidad. 

El problema que surge a la hora de grabarlas, son en su mayor parte, debido a la multitud de herramientas de las que se disponen para grabar el contenido, y la distracción que provoca en el profesor al utilizarlas, reduciendo el tiempo y la calidad de la lección. A esto hay que añadir el aprendizaje de dichas herramientas, las cuales suelen ser bastante complejas por lo general, con información excesiva acerca de los formatos de los videos, configuraciones de video y audio, etc.

Otro aspecto que puede ser problemático, es la grabación del audio de las clases. En su mayor parte, las clases se imparten de pie, leyendo y explicando diapositivas, por lo que en algunas ocasiones el micrófono del ordenador se encuentra lejos de la fuente de voz, por lo que la calidad del audio puede empeorar. Esto se suele solventar grabando el audio con un dispositivo móvil y después uniendo video y audio, pero esto solo añadiría aún más carga de trabajo para producir el video final.

A esto hay que sumarle la edición de video, desechar del video grabado las partes irrelevantes, los descansos o interrupciones, etc. El profesor debe entonces aprender y elegir probablemente otra herramienta con la que editar dicho video, contando con multitud de software (en muchas ocasiones de pago), que se utilizan de forma diferente, desviando el tema principal, que es enseñar. Además los videos tras editarlos, hay que renderizarlos y subirlos.

Al final nos encontramos con un proceso bastante tedioso, que lleva un aprendizaje detrás para el profesor bastante costoso, que le separa de su objetivo final. En la Figura \ref{proc_comun} se puede observar el proceso común y las opciones que tiene un profesor para grabar sus clases.

![Proceso común de grabación de clases por ordenador](images/test.png){#proc_comun}

## Motivaciones.

La principal motivación es reducir toda esa carga de trabajo adicional, y optimizar al máximo el tiempo necesario para grabar las clases, mejorando además los problemas mencionados en el apartado anterior. 

Al final nos encontramos con que tenemos que reducir el consumo de tiempo y mejorar las siguientes tareas:

\pagebreak

- Aprendizaje de herramientas para grabación.
- Grabación de audio por separado
- Identificar zonas en las que realizar cortes en el video o juntar vídeos.
- Renderización y subida a una plataforma.


Hay que tener en cuenta que muchas de las herramientas que se utilizan comúnmente para la edición de videos y grabación de escritorio, son herramientas que abarcan muchos casos de uso, y que tienen funcionalidad extra, que el profesor no necesita conocer, y que pueden confundirle a la hora de realizar sus videos.

Una posible solución es la unificación del flujo de trabajo, utilizando un software unicamente para la realización de las grabaciones y simplificando la edición y grabación de video únicamente a lo necesario por un profesor para grabar sus clases. Si observamos detenidamente la Figura \ref{proc_comun}, el proceso de grabación no consiste en la realización de un conjunto de pasos definidos. El profesor debe elegir el software que quiere utilizar, aprenderlo, pero no hay un camino claro para alcanzar el objetivo concreto. La motivación principal de *Class Recorder* es acabar con esta fragmentación y unificar todo el proceso en uno solo, para facilitar todo el trabajo y crear una sola plataforma con la que poder grabar, editar y subir videos, restando el tiempo innecesario de edición y grabación proporcionando herramientas fáciles de usar y enfocadas a la tarea en cuestión.

## Solución propuesta

![Flujo de trabajo con Class Recorder](images/test.png){#proc_crecorder}
<!-- 
Una de las motivaciones de este proyecto, es unificar todo este proceso en un sólo software capaz de realizar todas las tareas antes mencionadas, combinado con una interfaz de usuario minimalista, y fácil de usar que permita a los profesores utilizarlo sin necesidad de tener que experimentar con cientos de miles de opciones diferentes y ofrecer una única herramienta. Que los profesores tengan un software enfocado solo a la grabación de las clases que les facilite las tareas antes mencionadas de mayor esfuerzo es lo que trataremos de resolver con el software presentado. Minimizar en todo lo posible el tiempo dedicado a la grabación y despreocupar al docente de la tarea de grabar su clases.

Para resolver en cuestión de tiempo este problema, debemos responder a las siguientes preguntas:

- ¿Cómo podemos automatizar la edición?
- ¿Como podemos grabar el audio de las clases con calidad?
- ¿Podemos juntar todo en una sola herramienta?

-->

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

Las historias de usuarios que consisten en una serie de comportamientos o módulos que deben ser integrados en el sistema de simulación y son los siguientes:

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