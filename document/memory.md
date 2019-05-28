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

Una de las ventajas que presenta realizar las presentaciones y las clases con un ordenador, es poder grabar dichas clases y después dejarlas a disposición de los alumnos, para que cada uno pueda volver a ver las clases a su ritmo, pudiendo revisar todo el contenido de las mismas. Además, grabar las diapositivas y el contenido realizado en el ordenador, es muy útil para la creación de cursos online, permitiendo incluso la ausencia presencial de los alumnos, pudiendo llevar el conocimiento mucho más allá del lugar en el que se imparte.

Sin embargo, grabar las clases, editarlas y ponerlas a disposición de los alumnos no es una tarea trivial. Requiere un tiempo que los profesores no pueden utilizar para la preparación del contenido de sus clases, pudiendo incluso influenciar en la calidad de las mismas. Para solventar este tiempo dedicado a la grabación, edición y publicación de las clases surge *Class Recorder*.

A continuación, en los siguientes apartados de este capítulo, se abordarán los diferentes problemas con los que los docentes y profesores se encuentran a la hora de grabar sus clases, estudiaremos como mejorar las partes que mayor esfuerzo conllevan, a que usuarios esta enfocada está aplicación y se explicará a grandes rasgos el software presentado.

## Contexto y estudio del problema

Para entrar un poco en el contexto y la problemática a la hora de grabar las clases con un ordenador, se va a exponer a continuación los problemas más comunes.

Lo más importante al principio es preparar el contenido del curso o de la asignatura, como diapositivas, ejemplos, proyectos, etc. Esto supone un tiempo y esfuerzo necesario para que las clases tengan cierta calidad. El tiempo que dedique un profesor a la preparación del contenido de sus clases es directamente proporcional a la calidad de las mismas. Complementar entonces este esfuerzo grabando cada una de las sesiones impartidas, le otorga al curso más flexibilidad y le da la posibilidad a todo el alumnado de ir a su propio ritmo.

El problema que surge a la hora de grabarlas, son en su mayor parte, debido a la multitud de herramientas de las que se disponen para grabar el contenido, y la distracción que provoca en el profesor el utilizarlas, reduciendo el tiempo dedicado a la enseñanza y la calidad de la lección. A esto hay que añadir el aprendizaje de dichas herramientas, las cuales suelen ser bastante complejas por lo general, con información excesiva acerca de los formatos de los vídeos, configuraciones de vídeo y audio, etc.

Otro aspecto que puede ser problemático, es la grabación del audio de las clases. En su mayor parte, las clases se imparten de pie, leyendo y explicando diapositivas, por lo que en algunas ocasiones el micrófono del ordenador se encuentra lejos de la fuente de voz, por lo que la calidad del audio tiende a empeorar a medida que nos alejamos de este. Esto se suele solventar grabando el audio con un dispositivo móvil y después uniendo vídeo y audio, pero esto solo añadiría aún más carga de trabajo para producir el vídeo final.

A esto hay que sumarle la edición de vídeo, desechar de este las partes irrelevantes, los descansos o interrupciones, etc. El profesor debe entonces aprender y elegir probablemente otra herramienta con la que editar dicho vídeo, contando con multitud de software (en muchas ocasiones de pago), que se utilizan de forma diferente, desviando el tema principal, que es enseñar. Además los vídeos tras editarlos, hay que renderizarlos y subirlos.

Al final nos encontramos con un proceso bastante tedioso, que lleva un aprendizaje detrás para el profesor bastante costoso, que le separa de su objetivo final. En la Figura \ref{proc_comun} se puede observar el proceso común y las opciones que tiene un profesor para grabar sus clases.

>>

![Proceso común de grabación de clases por ordenador](images/test.png){#proc_comun}

\pagebreak

## Motivaciones.

La principal motivación es reducir toda esa carga de trabajo adicional, y optimizar al máximo el tiempo necesario para grabar las clases, mejorando además los problemas mencionados en el apartado anterior.

Al final nos encontramos con que tenemos que reducir el consumo de tiempo y mejorar las siguientes tareas:

- Aprendizaje de herramientas para grabación.
- Grabación de audio por separado
- Identificar zonas en las que realizar cortes en el vídeo o juntar vídeos.
- Renderización y subida a una plataforma.


Hay que tener en cuenta que muchas de las herramientas que se utilizan comúnmente para la edición de vídeos y grabación de escritorio, son herramientas que abarcan muchos casos de uso, y que tienen funcionalidad extra, que el profesor no necesita conocer, y que pueden confundir a la hora de realizar los vídeos.

Una posible solución es la unificación del flujo de trabajo, utilizando un software unicamente para la realización de las grabaciones y simplificando la edición y grabación de vídeo únicamente a lo necesario por un profesor para grabar sus clases. Si observamos detenidamente la Figura \ref{proc_comun}, el proceso de grabación no consiste en la realización de un conjunto de pasos definidos ya que se debe elegir el software que quiere utilizar, aprenderlo, pero no hay un camino claro para alcanzar el objetivo concreto.

La motivación principal de *Class Recorder* es acabar con esta fragmentación y unificar todo el proceso en uno solo, para facilitar todo el trabajo y crear una sola plataforma con la que poder grabar, editar y subir vídeos, restando el tiempo innecesario de edición y grabación proporcionando herramientas fáciles de usar y enfocadas a la tarea en cuestión. Son muchas opciones, para llegar al mismo objetivo, que es grabar nuestras clases de la forma más cómoda posible al mismo tiempo que maximizamos el tiempo dedicado a las clases.

Queremos que el usuario pase de usar múltiples aplicaciones y herramientas, a que solo utilice una que esté enfocada exclusivamente en el objetivo principal del profesor y así poder distribuir sus clases de forma rápida y eficaz.

En la Figura \ref{proc_crecorder} podemos ver como se simplifica el proceso, utilizando unicamente *Class Recorder* en comparación con el visto en la Figura \ref{proc_comun}. En las siguiente sección se explicará la aplicación final a la que se quiere llegar y el flujo de trabajo objetivo para optimizar este proceso.


![Proceso con Class Recorder](images/test.png){#proc_crecorder}

# Objetivos y solución propuesta

En este proyecto proponemos una unica solución para la realización de todo este proceso de grabación y distribución de clases. Es importante recalcar que nuestro objetivo principal y el propuesto con este proyecto es crear un único flujo de trabajo, mediante las siguientes herramientas software que hemos creado:

- Aplicación de escritorio, con el que controlar (grabar, pausar), gestionar, cortar y subir los videos realizados.
- Aplicación móvil sincronizada con la aplicación de escritorio con la que controlar las grabaciones, grabar el audio y poder controlar las diapositivas.


El usuario ya no tiene que elegir entre decenas de herramientas software incompatibles muchas veces incompatibles entre sistemas operativos. En este proyecto ofrecemos una aplicación compatible, tanto en Windows como en GNU/Linux, y esta preparada para en un futuro tener soporte para Mac OS como podremos ver en el apartado \ref{dis_e_imp} de diseño e implementación.

El usuario podrá elegir entre:

1. Realizar una sesión desde el propio ordenador y grabar unicamente la pantalla y la voz desde el micrófono del mismo.
2. Realizar una sesión controlada desde el móvil y grabar el contenido de la pantalla del ordenador y grabar el audio desde el movil.

El primer caso es ideal para clases en las que el profesor está solo enfrente del ordenador grabándose a si mismo realizando una tarea o impartiendo una lección. El segundo es ideal para impartir clases con diapositivas ya que permite al profesor levantarse, hacer algunas indicaciones y seguir grabando con el móvil su voz.

Además tanto en el ordenador como en el móvil se puede pausar y continuar la grabación, que más tarde puede ser editada o subida directamente a Youtube de forma privada.

**Flujo de trabajo con ordenador**:

Si el profesor decide impartir la clase unicamente con el ordenador, unicamente deberá hacer lo siguiente.

1. Abrir *Class Recorder* en Windows/Linux.
2. Crear un curso (elegirlo si ya esta creado).
3. Iniciar grabación, unicamente poniendo un nombre para el video, un framerate y un formato de contenedor (mkv, mp4).

No es necesario configurar nada, en Windows y Ubuntu se detecta la pantalla principal y el micrófono por defecto. El profesor entonces podrá comenzar su charla o clase y podrá pausar el video en los momentos que quiera. En la figura \ref{flujo_trabajo_1} se puede ver el flujo de trabajo más claramente.

![Flujo de trabajo con Class Recorder](images/test.png){#flujo_trabajo_1}

**Flujo de trabajo con ordenador y móvil**:

En muchas ocasiones la clase no se puede impartir sentado, es por eso que *Class Recorder* ofrece la posibilidad de controlar la grabación de la pantalla de nuestro ordenador, grabar el audio desde el móvil y además poder controlar las diapositivas desde el. El flujo de trabajo sería el siguiente:

1. Abrir *Class Recorder* en Windows/Linux.
2. Consultar desde la aplicación nuestra IP local.
3. Iniciar la App de *Class Recorder* y introducir nuestra IP local.
4. Comenzar a grabar.

Así de sencillo, y la app disponde de los mismos controles que la aplicación de escritorio. En la siguiente Figura \ref{flujo_trabajo_2} se puede ver más en detalle.

![Flujo de trabajo con Class Recorder](images/test.png){#flujo_trabajo_2}

# Tecnologías, herramientas y metodologías

<!-- TODO -->
Breve introducción a la sección.

## Metodología de desarrollo

El proyecto ha sido desarrollado por mi, unido a la continua retroalimentación de mi tutor. Se podría considerar que se ha utilizado la metodología de Scrum[@bib1], pero para los más puristas en cuanto a metodologías software no sería considerado como tal, ya que no se ha contado con el numero de personas suficientes para poder aplicar Scrum de la manera más eficiente posible, teniendo como Product Owner a mi tutor y yo mismo como Scrum Master y equipo de desarrollo. La propia guía de Scrum especifica que hay 3 roles diferentes: Product Owner, Equipo de desarrollo, y un Scrum Master. Además se dicta que el mínimo de personas necesarias para aplicar Scrum de la manera más eficaz es de 3 personas. Equipos de menos de 3 personas reduce la interacción y resulta en ganancias de productividad pequeñas. Sin embargo, sí que se han tenido reuniones pasadas ciertas semanas en el equipo para ver cómo ha ido avanzando el proyecto, retrospectivas, prototipos, integración, pruebas, etc. No obstante, como no aplicamos todas las reglas de Scrum, consideraremos que el desarrollo se está realizando con una metodología iterativa e incremental ágil tal y como se muestra en la Figura \ref{fig:incremental}.

>>

![Ciclo iterativo e incremental](images/incremental_and_iterative.jpg){#fig:incremental .class width=10cm}

En este modelo, primero se realiza un análisis de los requisitos que se van a necesitar para cada iteración. Después del desarrollo de estos, se hacen pruebas y para finalizar se integra con el resto del sistema.

Cada 2 semanas se ha realizado una iteración donde se realizaron todos los pasos comentados anteriormente, donde todo se decidió qué historias de usuario eran más críticos e importantes y los bugs que se detectaron para resolverlos. En base a estas decisiones y utilizando herramientas online como Trello[^3], se gestionó que tareas debían realizarse en cada iteración.

[^3]: Es un tablero online donde se pueden crear, asignar y clasificar tareas, de tal modo que todo el equipo tiene una visión global del estado actual de desarrollo que se está creando.

Un desarrollo iterativo e incremental ofrece varias ventajas con respecto a otras metodologías como puede ser el desarrollo en cascada. Una de las ventajas que ofrece es la entrega de software que se puede usar a mitad de desarrollo, mientras que en el modelo en cascada cada fase del proceso debe ser finalizada (firmada) para pasar a la siguiente fase. El desarrollo de software no es lineal y esto crea dificultades si se utiliza una metodología en cascada[@bib2].

Cada cierto tiempo se han realizo releases. Utilizamos un formato de versiones semántico[@bib3] del tipo X.Y.Z donde, X, Y y Z son números enteros mayores que 0.

X se corresponde a la versión mayor (cambios grandes que modifican parte o gran parte de la funcionalidad). Y se corresponde a la versión menor(pequeños cambios, corrección de bugs) y Z, que son micro versiones (parches, pequeños bugs críticos...). Se han incorporado además de las prácticas ágiles más comunes un sistema de integración y despliegue continuo.

## Tecnologías y lenguajes

<!-- TODO -->
blabla

## Organización de Repositorio y Task Managing

Este proyecto cuenta con un proyecto backend y dos proyectos frontend, de los cuales uno es el frontend de pc y el otro es una aplicación móvil de Ionic. Para organizar nuestro proyecto he utilizado Git como control de versiones y GitHub como repositorio remoto. Se decidió organizar toda la parte principal del proyecto en un solo repositorio.

Para gestionar las builds y los scripts de test, hemos utilizado gulp, una librería de NodeJS que nos permite automatizar tareas repetitivas tales como copiar ficheros al hacer builds, compilar en diferentes entornos, minificación de código, logs, etc. Gulp nos permite crear dichas tareas repetitivas de forma atómica, de tal modo que podemos encadenar tareas, esperar a otras de una forma bastante sencilla y cómoda. En el Anexo 1 se puede ver además de una guía de configuración para el entorno de desarrollo, una lista con los scripts para compilar y ejecutar el proyecto.

En la raíz del repositorio se encuentran los scripts más generales para compilar toda la arquitectura, mientras que el resto de carpetas son los diferentes módulos (backend, frontend de pc y frontend móvil) de nuestro proyecto.

En la siguiente imagen se puede ver la estructura de nuestro proyecto, junto con las diferentes tecnologías que se han utilizado. Cada una de las carpetas de este proyecto se corresponden con cada una de las partes de la arquitectura definidos en el apartado \ref{archictecture} donde definimos los task para hacer las builds y los test en más profundidad.

![Ciclo iterativo e incremental](images/test.png){#fig:tree_src}


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

## Arquitectura y análisis {#archictecture}

\pagebreak
&nbsp;
\newpage

## Diseño e implementación {#dis_e_imp}

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