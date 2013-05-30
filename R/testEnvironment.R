#' display all variables
#' @export
showAll <- function(){
  ls(testEnvironment_data)
}

#' display a specific set of variables
#' @export
showVar <- function(which_vars){
  invisible(sapply(which_vars, function(x){
    out_var <- get(x, envir=testEnvironment_data)
    print(out_var)
  }))
}

#' assign a variable to the environment
#' @export
assignVar <- function(var_name, var_value){
  assign(var_name, var_value, envir=testEnvironment_data)
}