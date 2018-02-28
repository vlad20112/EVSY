%{
%}
  #include <type.h>
 
 #define numkey 411;
 #define idkey = 412;  #define decnumkey = 413;#define error = 421;
 #define left_r_scobka = 422; #define right_r_scobka = 423; #define left_s_scobka = 424;
 #define right_s_scobka = 425; #define left_f_scobka = 426; #define right_f_scobka = 427;
 #define logic_and = 428; #define logic_or = 429; #define keyword = 430; #define bool = 431;
 Token vedro;

letter   [a-z]
letter1 [A-Z]
num      [0-9]
num1     [1-9]
keyword  ("программа"|"делай"|"верно"|"в_другом_cлучае"|"конец"|)
bool     (True|False)

ID {letter}({letter}|{letter1}|{num})*
NUM {num1}+({num})*
DECNUM ({num})+\.({num})*
KEY {keyword}
BOOLEAN   {bool}

%%

{BOOLEAN}       {printf("bool");}
{KEY}           {printf("keyword");}
{NUM}           {printf("numkey");}
{ID}            {printf("idkey"); }
{DECNUM}        {printf("decnumkey");}
{\"(letter|letter1|num)*\"}     {printf("string");}

\(              { printf("left_r_scobka");}
\)              {printf("right_r_scobka");}
\[              {printf("left_s_scobka");}
\]              {printf("right_s_scobka");}
\{              {printf("left_f_scobka");}
\}              {printf("right_f_scobka");}
("И"|&&)            {printf("logic_and");}
("ИЛИ"|"||")            {printf("logic_or");}
("НЕ"|"not")             {printf("not");}

"="		        {printf("equal");}
"+"	            {printf("plus");}
"-"		        {printf("minus");}
"*"		        {printf("multiply");}
"/"		        {printf("divition");}
" "             {printf(" ");}
.               {printf("error");}
%%
