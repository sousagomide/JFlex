/* Área de importação de bibliotecas. */

%%

/* Área de definição de: macros; configs; classes; ...  */

%standalone
/* Foram definidas 4 macros: Letra; Digito; Palavra e Numero. */
/* Expressão regular que define uma letra. */
letra = [a-zA-Z]
/* Expressão regular que define um dígito. */
digito = [0-9]
/* Uma palavra pode ser composta por 0 a N letras. */
palavra = {letra}*
/* Um numero pode ser composto por 1 a N digitos. */
numero = {digito}+

%%

/* Definição da gramática e do conjunto de regras. Toda regra deve ter um bloco de código envolvido. */

{numero} {System.out.print("Encontrei um {numero}");}
{palavra} {System.out.print("Encontrei uma {palavra}");}