Start -> Main
Main -> Block_Type Block_Func  Rule_list
	|ε
Block_Type -> Type_list
Type_list -> Type1
Type1 -> perem Tire Type
        |Type_mas
Type_mas -> perem  Tire Type [ int ]
Tire -> ‘-’
	|’type’
Perem -> id	
        |'(' id ')'
Type -> Type_number
	|Type_symbol
	|Type_boolean
Type_number -> int
	|float
	|double
	|longint
Type_symbol -> char
	|string
Type_boolean -> Bool
Bool -> true
	|false
Block_Func -> Block_type  Rule_list
	|ε 
Rule_list -> Rule Rule_list 
	| ε
Rule -> Expr
	|Cond
	|Loop
Expr -> Expr1 Expr
	| ε
Expr1 ->  ‘+’  Value Expr1
	| ‘-‘  Value  Expr1
	| ’*’  Value Expr1
	| ’/’  Value Expr1
Value -> Value1 Value
Value1-> id 
	|num  
	|ε	
Cond -> ‘Верно’ BExpr ‘Делай’ Rule_list
	|’В другом случае’  ‘Делай’ Rule_list
Loop -> 'Делай’ ‘от' num 'до' num Rule_list
	|'Пока' BExpr  Rule_list
	|'Метка' Rule_list Cond
	| 'Метка' Rule_list Cond 'Метка'
Prisv -> id ‘=’ Expr
	|BExpr
BExpr -> BOp BExpr BExpr1
	| ε
BOp ->  AND
	|OR
	|NOT
BExpr1 -> BArg1 BExpr1
	| ε
BArg1 -> Bool
	| ε
