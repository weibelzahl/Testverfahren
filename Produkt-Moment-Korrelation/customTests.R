# AUTO_DETECT_NEWVAR <- FALSE

# Put custom tests in this file.
# Returns TRUE if e$val is identical to the value that would
# have been created by the correct expression.

var_assigns_to <- function(varName){
  e <- get("e", parent.frame())
  expr <- as.character(e$expr)
  result <- (length(expr == 3)) &&
    ((expr[1] == "<-")||(expr[1]) == "=") &&
    (expr[2] == varName)
  return(result)
}

var_has_val <- function(var, correctExpr){
  e <- get("e", parent.frame())
  eSnap <- cleanEnv(e$snapshot)
  correctVal <- eval(parse(text=correctExpr), eSnap)
#  print(paste(var))
  if(!is.null(var)){
    return(isTRUE(all.equal(var, correctVal)))
  }
  return(FALSE)
}

# useful for checking assignments, e.g., creating new variable in data-frame
# values are not NULL and equal
val_are_equal <- function(val1, val2){
  result <- !is.null(val1) &&
    !is.null(val2) &&
    val1 == val2
  return(result)
}
