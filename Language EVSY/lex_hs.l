letter   [a-z]
letter1 [A-Z]
num      [0-9]
num1     [1-9]
keyword  (where|if|then|else|let|in|instance|class|data|type)
bool     (True|False)

ID {letter}({letter}|{letter1}|{num})*
NUM {num1}({num})*
DECNUM ({num})*\.({num})*
BIGWORD {letter1}({letter}|{letter1})*
KEY {keyword}
BOOLEAN   {bool}

%%
{BOOLEAN}  {printf("bool");}
{KEY}     {printf("keyword");}
{BIGWORD} {printf("idbigword");}
{NUM} {printf("numkey");}
{ID}            {printf("idkey"); }
{DECNUM}  {printf("decnumkey");}

"->"             {printf("part1func");}
"=>"             {printf("part2func");}
"::"              {printf("part3func");}
"<-"             {printf("part4func");}
\(               {printf("left_r_scobka");}
\)               {printf("right_r_scobka");}
\[               {printf("left_s_scobka");}
\]               {printf("right_s_scobka");}
\{               {printf("left_f_scobka");}
\}               {printf("right_f_scobka");}
"&&"           {printf("logic_and");}
"||"            {printf("logic_or");}
"|"              {printf("or");}
"="		 {printf("equal");}
"+"		 {printf("plus");}
"-"		 {printf("minus");}
"*"		 {printf("multiply");}
"/"		 {printf("divition");}
" "              {printf(" ");}
.                {printf("error");}
