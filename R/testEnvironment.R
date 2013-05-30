#' display all variables
#' @export
showAll <- function(){
  ls(testEnvironment_data)
}

#' display a specific set of variables
#' @export
#' @param which_vars the variable names you want to display as strings
showVar <- function(which_vars){
  invisible(sapply(which_vars, function(x){
    out_var <- get(x, envir=testEnvironment_data)
    print(out_var)
  }))
}

#' assign a variable to the environment
#' @export
#' @param var_name the name to give to the variable as a string
#' @param var_value the value to assign to \code{var_name}
assignVar <- function(var_name, var_value){
  assign(var_name, var_value, envir=testEnvironment_data)
}