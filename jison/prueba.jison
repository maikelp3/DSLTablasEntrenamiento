
%token TDIA TEJERCICIO THORA TTIEMPO TVALOREJERCICIO TVALORHORA TVALORTIEMPO TVALORENTRENAMIENTO TVALORFIN

%lex
%%
\s+ 	{/*Eliminar espacios en blanco*/}

Entrenamiento 	{ return 'TVALORENTRENAMIENTO'; }	/*"Entrenamiento"*/
Fin				{ return 'TVALORFIN'; }	/*"Fin"*/
(Lunes|Martes|Miercoles|Jueves|Viernes|Sabado|Domingo) 	{ return 'TDIA'; }
Ejercicio	{ return 'TEJERCICIO'; }
Hora	{ return 'THORA'; }
Tiempo	{ return 'TTIEMPO'; }
[0-9]?[0-9][:][0-9][0-9] { return 'TVALORHORA'; }
\d+[m|M] { return 'TVALORTIEMPO'; }
[a-zA-Z0-9_]\w* { return 'TVALOREJERCICIO'; }


'[' { return '['; }
']' { return ']'; }
'+' { return 'PLUS'; }
'-' { return '-'; }
'=' { return '='; }
':' { return ':'; }
',' { return ','; }
';' { return ';'; }
'.' { return '.'; }

. { return 'TERROR'; }

/lex
%%

ENTRENAMIENTO: 'TVALORENTRENAMIENTO' CUERPO_ENTRENAMIENTO 'TVALORFIN' '.';

CUERPO_ENTRENAMIENTO: '[' LISTA_DIAS ']' ;

LISTA_DIAS: DIA 
	| DIA LISTA_DIAS;

DIA: 'PLUS' 'TDIA' ':' LISTA_DESCRIPCION_EJERCICIO ;

LISTA_DESCRIPCION_EJERCICIO: DESCRIPCION_EJERCICIO 
	| DESCRIPCION_EJERCICIO LISTA_DESCRIPCION_EJERCICIO ;

DESCRIPCION_EJERCICIO: NOMBRE ',' HORA ',' TIEMPO ';' ;

NOMBRE: '-' NEJERCICIO '=' ID_NOMBRE ;
		
NEJERCICIO: 'TEJERCICIO' ;
		
ID_NOMBRE: 'TVALOREJERCICIO' ;
		
HORA: NHORA '=' ID_HORA ;

NHORA: 'THORA' ;

ID_HORA: 'TVALORHORA';

TIEMPO: NTIEMPO '=' ID_TIEMPO;
		
NTIEMPO: 'TTIEMPO';
		
ID_TIEMPO: 'TVALORTIEMPO';

%%

