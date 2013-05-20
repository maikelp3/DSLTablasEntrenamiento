===**********************************************************************************************************====
PL-DSL-ProyectoFinal
===**********************************************************************************************************====


==================================================================================================================

· Autores:
   - Miguel Pérez Bello.
   - Tinguaro Cubas Saiz.
   - Guillermo Rodríguez Pardo.

==================================================================================================================

Proyecto Final: Creación de un DSL.
Asignatura: Procesadores de Lenguajes.
Curso: 3º Grado en Ingeniería Informática. (Itinerario: computación).

==================================================================================================================

· Descripción:

   El DSL (Lenguaje de Dominio Específico ó Domain Specific Language) diseñado permite la fácil creación de
 una tabla de ejercicios semanales; tabla que puede emplearse tanto para coordinar el ejercicio semanal de una 
 persona deportista, como para organizar el estudio de un examen, etc ...

==================================================================================================================

· Directorios:

 + estilo-CSS/: engloba las hojas de estilo para el formato de las páginas web (.html) empleados
              para alojar el contenido del proyecto (GUI del proyecto).
 
 + js/: contiene los ficheros en JavaScript utilizados en la aplicación.
      - js/prueba.js: contiene el parser generado por jison y el uso del mismo e
                      el parseo de las sentencias del DSL introducidas por el usuario.
                 
 + jison/: contiene la definición de la gramática "G", que genera el lenguaje "L(G)" asociado con 
           nuestro DSL.
      - jison/prueba.jison: contiene la definición de la gramática --> HECHA EN JISON!!!
   
 
 + index.html y result.html (conten/result.html): contienen la definición de las dos páginas web que alojan el 
         contenido del proyecto, actuando como interfaz de usuario.

 + content/: aloja el fichero con la página web secundaria en la que se muestran las tablas finales.
	+ content/result.html: aloja la web secundaria.
         
         
==================================================================================================================

· USO: (ayuda ante el desconocimiento del uso del proyecto).
  
   1º Leerse la documentación para aprender la sintáxis simple del DSL realizado.
   2º Abrir el archivo index.html en un navegador.
   3º Describir una tabla de entrenamiento (de acuerdo a la sintáxis del lenguaje).
   4º Pulsar en el botón "Crear Entrenamiento" para ver el resultado de la interpretación de nuestra entrada.

==================================================================================================================

Consideraciones:

   1ª- Cada vez que recargamos la página (index.html) nos aparece en el área de texto una plantilla de ejemplo
   para facilitar al usuario el aprenderse la sintáxis del lenguaje.
   
   2ª- Cuando presionamos el botón "Escribir Plantilla", se borrarán del área de texto los cambios realizados y se 
   re-escribirá la plantilla base (se hará un reset).
   
==================================================================================================================
