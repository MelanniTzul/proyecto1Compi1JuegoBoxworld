/*PRIMERA SECCION: CODIGO DE USUARIO*/
%%

/*SEGUNDA SECCION: CONFIGURACION*/
%class Lexer
%unicode //TIPOS DE CARACTERES A UTILIZAR
%line
%column
%int
%public
%cup

NAME=[n][a][m][e]
ROWS=[r][o][w][s]
COLS=[c][o][l][s]
CONFIG=[c][o][n][f][i][g]
BOX_COLOR=[b][o][x][_][c][o][l][o][r]
BOX_ON_TARGET_COLOR=[b][o][x][_][o][n][_][t][a][r][g][e][t][_][c][o][l][o][r]
TARGET_COLOR=[t][a][r][g][e][t][_][c][o][l][o][r]
BRICK_COLOR=[b][r][i][c][k][_][c][o][l][o][r]
HALL_COLOR=[h][a][l][l][_][c][o][l][o][r]
UNDEFINED_COLOR=[u][n][d][e][f][i][n][e][d][_][c][o][l][o][r]
PLAYER_COLOR=[p][l][a][y][e][r][_][c][o][l][o][r]
BOARD=[b][o][a][r][d]
POSX=[p][o][s][X]
POSY=[p][o][s][Y]
TYPE=[t][y][p][e]
BOXES=[b][o][x][e][s]
TARGETS=[t][a][r][g][e][t][s]
PLAYES=[p][l][a][y][e][r]
FLOOR=[F][L][O][O][R]
CEIL=[C][E][I][L]
BRICK=[B][R][I][C][K]
HALL= [H][A][L][L]
ENTERO=[0-9]+   
DECIMAL=[0-9]+[.][0-9]+ 
HEXADECIMAL=[#][a-fA-F0-9]+
ID=[[A-Z]|[a-z]|[_]]+[[A-Z]|[a-z]]+[[A-Z]|[a-z]|[0-9]]* //Nombre del nivel, tablero o mundo
MULTIPLICACION=[*] 
DIVISION=[/] 
SUMA=[+] 
RESTA=[-] 
LLAVE_ABIERTA=\{
LLAVE_CERRADA=\}
COMA=[\,] 
DOS_PUNTOS=[\:] 
PARENTESIS_ABIERTO=\(
PARENTESIS_CERRADO=\)
CORCHETE_ABIERTO=\[
CORCHETE_CERRADO=\]
COMILLA=\"

//PARA INICIALIZAR VARIABLES 
%init{
  yyline =1;
  yycolumn =1;
%init}
%%
/*TERCERA SECCION: REGLAS LEXICAS*/
{NAME} {return new SYMBOL(sym.NAME,yyline,yycolumn,yytext());}
{ROWS} {return new SYMBOL(sym.ROWS,yyline,yycolumn,yytext());}
{COLS} {return new SYMBOL(sym.COLS,yyline,yycolumn,yytext());}
{CONFIG} {return new SYMBOL(sym.CONFIG,yyline,yycolumn,yytext());}
{BOX_COLOR} {return new SYMBOL(sym.BOX_COLOR,yyline,yycolumn,yytext());}
{BOX_ON_TARGET_COLOR} {return new SYMBOL(sym.BOX_ON_TARGET_COLOR,yyline,yycolumn,yytext());}
{TARGET_COLOR} {return new SYMBOL(sym.TARGET_COLOR,yyline,yycolumn,yytext());} 
{BRICK_COLOR} {return new SYMBOL(sym.BRICK_COLOR,yyline,yycolumn,yytext());}
{HALL_COLOR} {return new SYMBOL(sym.HALL_COLOR,yyline,yycolumn,yytext());}
{UNDEFINED_COLOR} {return new SYMBOL(sym.UNDEFINED_COLOR,yyline,yycolumn,yytext());} 
{PLAYER_COLOR} {return new SYMBOL(sym.PLAYER_COLOR,yyline,yycolumn,yytext());}  
{BOARD} {return new SYMBOL(sym.BOARD,yyline,yycolumn,yytext());}
{POSX} {return new SYMBOL(sym.POSX,yyline,yycolumn,yytext());}
{POSY} {return new SYMBOL(sym.POSY,yyline,yycolumn,yytext());} 
{TYPE} {return new SYMBOL(sym.TYPE,yyline,yycolumn,yytext());}
{BOXES} {return new SYMBOL(sym.BOXES,yyline,yycolumn,yytext());} 
{TARGETS} {return new SYMBOL(sym.TARGETS,yyline,yycolumn,yytext());}
{PLAYES} {return new SYMBOL(sym.PLAYES,yyline,yycolumn,yytext());}
{FLOOR} {return new SYMBOL(sym.FLOOR,yyline,yycolumn,yytext());}
{CEIL} {return new SYMBOL(sym.CEIL,yyline,yycolumn,yytext());}
{BRICK} {return new SYMBOL(sym.BRICK,yyline,yycolumn,yytext());}
{HALL} {return new SYMBOL(sym.HALL,yyline,yycolumn,yytext());}
{ENTERO} {return new SYMBOL(sym.ENTERO,yyline,yycolumn,new INTEGER(yytext()));}   
{DECIMAL} {return new SYMBOL(sym.DECIMAL,yyline,yycolumn,new DOUBLE(yytext()));}
{HEXADECIMAL} {return new SYMBOL(sym.COLOR,yyline,yycolumn,yytext());}
{ID} {return new SYMBOL(sym.TABLERO,yyline,yycolumn,yytext());}
{MULTIPLICACION} {return new SYMBOL(sym.MULTIPLICACION,yyline,yycolumn,yytext());}
{DIVISION} {return new SYMBOL(sym.DIVISION,yyline,yycolumn,yytext());}
{SUMA} {return new SYMBOL(sym.SUMA,yyline,yycolumn,yytext());}
{RESTA} {return new SYMBOL(sym.RESTA,yyline,yycolumn,yytext());}
{LLAVE_ABIERTA} {return new SYMBOL(sym.LLAVE_ABIERTA,yyline,yycolumn,yytext());}
{LLAVE_CERRADA} {return new SYMBOL(sym.LLAVE_CERRADA,yyline,yycolumn,yytext());}
{COMA} {return new SYMBOL(sym.COMA,yyline,yycolumn,yytext());}
{DOS_PUNTOS} {return new SYMBOL(sym.DOS_PUNTOS,yyline,yycolumn,yytext());}
{PARENTESIS_ABIERTO} {return new SYMBOL(sym.PARENTESIS_ABIERTO,yyline,yycolumn,yytext());}
{PARENTESIS_CERRADO} {return new SYMBOL(sym.PARENTESIS_CERRADO,yyline,yycolumn,yytext());}
{CORCHETE_ABIERTO} {return new SYMBOL(sym.CORCHETE_ABIERTO,yyline,yycolumn,yytext());}
{CORCHETE_CERRADO} {return new SYMBOL(sym.CORCHETE_CERRADO,yyline,yycolumn,yytext());}
{COMILLA} {return new SYMBOL(sym.COMILLA,yyline,yycolumn,yytext());}
[\t] {} //Tabulador
[\r] {} 
[\n] {} //Salto de linea 
[" "] {} //Espacio en blanco
[^] {return new SYMBOL(sym.ERROR,yyline,yycolumn,yytext());}//Expresion regular de error
