use "syntax.sml";

fun   isEqualType NoType x = true
    | isEqualType x NoType = true
    | isEqualType x y = false

and   typeCheckTerm (Let (vartype, var, term1, term2)) = NoType 
    | typeCheckTerm n = NoType

and typeCheckTypeTerm ((_, term) : TypedTerm) : TypedTerm = (typeCheckTerm term, term)
