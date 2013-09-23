datatype Type = Integer
	      | Real
	      | List of Type
	      | Ref of Type
	      | UniRef of Type
	      | Arrow of Type * Type

and Op = Add 
       | Mul 
       | Div 
       | Sub

and Parameters = EmptyParameters
    	       | Parameter of string * Type * Parameters

and ListTerm = Nil
    	     | ListElem of Term * ListTerm
	     | ListAssign of Term * Term * ListTerm

and RefTerm = RefInitValue of Term
    	    | RefInitType of Type

and Term = Let of string * Term * Term
    	 | If of Term * Term * Term
	 | Exp of Op * Term * Term
	 | Assign of string * Term
	 | ListRefAssign of string * Term
	 | ListReplace of Term * Term
	 | Func of Type * Parameters * Term
	 | CFunc of Type * Parameters * string
	 | IntegerValue of int
	 | RealValue of real
	 | ListValue of ListTerm
	 | RefValue of RefTerm
	 | URefValue of RefTerm
	 | Var of string
	 | EmptyTerm
