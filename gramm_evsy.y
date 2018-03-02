Start : Main
Main : Block_Type Block_Func Rule_list
			| ;
Block_Type : Type_list
Type_list : Type1
Type1 : perem Tire Type
			|Type_mas
Type_mas : perem Tire Type [Int]
Tire : '--'
	|'type'
Perem : id	
        |'(' id ')'
Type : Type_number
		|Type_symbol
  		|Type_boolean
Type_number : Int
			|Float
			|Double
			|Longint
Type_symbol : Char
      		|String
Type_boolean : Bool
Bool : true
	 |false
Block_Func : Block_type  Rule_list
        | ; 
Rule_list : Rule Rule_list 
		| ;
Rule : Expr
		|Cond
		|Loop
Expr : Expr1 Expr
	| ;
Expr1 : '+' Value Expr1
	| '-'  Value  Expr1
	| '*'  Value Expr1
	| '/'  Value Expr1
	| ;
Value : Value1 Value
Value1: id 
 		|Type_number
		|Type_symbol  
		| ;	
Cond : 'Верно' BExpr 'Делай' Rule_list
		|'иначе' 'Делай' Rule_list

Loop : 'Делай' 'от' Int 'до' Int Rule_list
		|'Пока' BExpr  Rule_list
		|'Метка' Rule_list Cond
		|'Метка' Rule_list Cond 'Метка'

Prisv : Perem '=' Expr
		|Perem '=' BExpr
BExpr : BOp BExpr BExpr1
		| ;
BOp :  logic_and
		|logic_or
		|logic_not
BExpr1 : BArg1 BExpr1
		| ;
BArg1 : Bool
		| ;