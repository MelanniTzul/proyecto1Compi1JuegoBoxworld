/*PRIMERA SECCION: CODIGO DE USUARIO*/
%%

/*SEGUNDA SECCION: CONFIGURACION*/
%class Borrador
%unicode //TIPOS DE CARACTERES A UTILIZAR
%line
%column
%int
%public
%type Token

%{
    private Token token(TypeToken nuevoType )
    {
        return new Token(nuevoType,yyline,yycolumn);
    } 
%}
%eofval{
    return token(TypeToken.EOF);
%eofval}
%eofclose
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
ENTERO=[0-9]+     
DECIMAL=[0-9]+[.][0-9]+
HEXADECIMAL=[#][a-fA-F0-9]+
ID=[[A-Z]|[a-z]|[_]]+[[A-Z]|[a-z]]+[[A-Z]|[a-z]|[0-9]]*
MULTIPLICACION=[*] 
DIVISION=[/] 
SUMA=[+] 
RESTA=[-] 
LLAVE_ABIERTA=\{ 
LLAVE_CERRADA=\}
COMA=[,] 
DOS_PUNTOS=[:] 
PARENTESIS_ABIERTO=\(
PARENTESIS_CERRADO=\) 
CORCHETE_ABIERTO=\[ 
CORCHETE_CERRADO=\]
COMILLA=\"

%init{
  yyline =1;
  yycolumn =1;
%init}

%{  
%}
%%
{NAME} {return new Token(TypeToken.NAME,yyline, yycolumn,yytext());}
{ROWS} {return new Token(TypeToken.ROWS,yyline, yycolumn,yytext());}
{COLS} {return new Token(TypeToken.COLS,yyline, yycolumn,yytext());}
{CONFIG} {return new Token(TypeToken.CONFIG,yyline, yycolumn,yytext());}
{BOX_COLOR} {return new Token(TypeToken.BOX_COLOR,yyline, yycolumn,yytext());}
{BOX_ON_TARGET_COLOR} {return new Token(TypeToken.BOX_ON_TARGET_COLOR,yyline, yycolumn,yytext());}
{TARGET_COLOR} {return new Token(TypeToken.TARGET_COLOR,yyline, yycolumn,yytext());}
{BRICK_COLOR} {return new Token(TypeToken.BRICK_COLOR,yyline, yycolumn,yytext());}
{HALL_COLOR} {return new Token(TypeToken.HALL_COLOR,yyline, yycolumn,yytext());}
{UNDEFINED_COLOR} {return new Token(TypeToken.UNDEFINED_COLOR,yyline, yycolumn,yytext());}
{PLAYER_COLOR} {return new Token(TypeToken.PLAYER_COLOR,yyline, yycolumn,yytext());}
{BOARD} {return new Token(TypeToken.BOARD,yyline, yycolumn,yytext());}
{POSX} {return new Token(TypeToken.POSX,yyline, yycolumn,yytext());}
{POSY} {return new Token(TypeToken.POSY,yyline, yycolumn,yytext());}
{TYPE} {return new Token(TypeToken.TYPE,yyline, yycolumn,yytext());}
{BOXES} {return new Token(TypeToken.BOXES,yyline, yycolumn,yytext());}
{TARGETS} {return new Token(TypeToken.TARGETS,yyline, yycolumn,yytext());}
{PLAYES} {return new Token(TypeToken.PLAYES,yyline, yycolumn,yytext());}
{FLOOR} {return new Token(TypeToken.FLOOR,yyline, yycolumn,yytext());}
{CEIL} {return new Token(TypeToken.CEIL,yyline, yycolumn,yytext());}
{ENTERO} {return new Token(TypeToken.ENTERO,yyline, yycolumn,yytext());} //Expresion regular de numeros enteros    
{DECIMAL} {return new Token(TypeToken.DECIMAL,yyline, yycolumn,yytext());}//Expresion regular de numeros decimales
{HEXADECIMAL} {return new Token(TypeToken.COLOR,yyline, yycolumn,yytext());}
{ID} {return new Token(TypeToken.TABLERO,yyline, yycolumn,yytext());}
{MULTIPLICACION} {return new Token(TypeToken.MULTIPLICACION,yyline, yycolumn,yytext());}
{DIVISION} {return new Token(TypeToken.DIVISION,yyline, yycolumn,yytext());}
{SUMA} {return new Token(TypeToken.SUMA,yyline, yycolumn,yytext());} //Expresion regular de operaciones
{RESTA} {return new Token(TypeToken.RESTA,yyline, yycolumn,yytext());}
{LLAVE_ABIERTA} {return new Token(TypeToken.LLAVE_ABIERTA,yyline, yycolumn,yytext());}
{LLAVE_CERRADA} {return new Token(TypeToken.LLAVE_CERRADA,yyline, yycolumn,yytext());}
{COMA} {return new Token(TypeToken.COMA,yyline, yycolumn,yytext());}
{DOS_PUNTOS} {return new Token(TypeToken.DOS_PUNTOS,yyline, yycolumn,yytext());}
{PARENTESIS_ABIERTO} {return new Token(TypeToken.PARENTESIS_ABIERTO,yyline, yycolumn,yytext());}
{PARENTESIS_CERRADO} {return new Token(TypeToken.PARENTESIS_CERRADO,yyline, yycolumn,yytext());}
{CORCHETE_ABIERTO} {return new Token(TypeToken.CORCHETE_ABIERTO,yyline, yycolumn,yytext());}
{CORCHETE_CERRADO} {return new Token(TypeToken.CORCHETE_CERRADO,yyline, yycolumn,yytext());}
{COMILLA} {return new Token(TypeToken.COMILLA,yyline, yycolumn,yytext());}
[\t] {} //Tabulador
[\r] {} 
[\n] {} //Salto de linea 
[" "] {} //Espacio en blanco
[^] {return new Token(TypeToken.ERROR,yyline, yycolumn,yytext());}//Expresion regular de error
