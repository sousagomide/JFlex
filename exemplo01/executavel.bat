if exist "Yylex.java" (
    del Yylex.java
)
if exist "Yylex.class" (
    del Yylex.class
)
if exist "saida.txt" (
    del saida.txt
)

if not defined JFLEX_HOME set JFLEX_HOME=C:\Desenvolvimento\jflex-1.9.1
if not defined JFLEX_VERSION set JFLEX_VERSION=1.9.1

cls

java -Xmx128m -jar "%JFLEX_HOME%\lib\jflex-full-%JFLEX_VERSION%.jar" exemplo1.flex
javac Yylex.java
java Yylex texto.txt > saida.txt
