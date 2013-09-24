datatype Type = Integer
	      | Real
	      | List of Type
	      | Ref of Type
	      | UniRef of Type
	      | Arrow of Type * Type
	      | Closure of Type * Type
	      | UniClosure of Type * Type
	      | NoType

and Op = Add 
       | Mul 
       | Div 
       | Sub

and Parameters = EmptyParameters
    	       | Parameter of string * Type * Parameters

and ListTerm = Nil
    	     | ListElem of TypedTerm * ListTerm
	     | ListAssign of TypedTerm * TypedTerm * ListTerm

and RefTerm = RefInitValue of TypedTerm
    	    | RefInitType of Type

and Term = Let of Type * string * TypedTerm * TypedTerm
    	 | If of TypedTerm * TypedTerm * TypedTerm
	 | Exp of Op * TypedTerm * TypedTerm
	 | Assign of string * TypedTerm
	 | ListRefAssign of string * TypedTerm
	 | ListReplace of TypedTerm * TypedTerm
	 | Func of Type * Parameters * TypedTerm
	 | CFunc of Type * Parameters * string
	 | IntegerValue of int
	 | RealValue of real
	 | ListValue of ListTerm
	 | RefValue of RefTerm
	 | URefValue of RefTerm
	 | Var of string
	 | EmptyTerm

withtype TypedTerm = Type * Term
