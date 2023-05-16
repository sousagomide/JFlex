
%%

%standalone

digito = [0-9]
letra = [a-zA-Z]
/* Expressão regular para definir um identificador. Ele deve ser composto por uma {letra} e um conjunto de 0 a N {letras} ou {digito} */
identificador = {letra}({letra}|{digito})*

%%

{digito} {System.out.print("<digito>");}
{letra} {System.out.print("<letra>");}
{identificador} {System.out.print("<identificador>");}