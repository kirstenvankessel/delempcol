#' Delete Empty Columns from a Dataset
#'
#'With the delempcol package, you can delete all columns that exist only of
#'missing values from the dataset at once.
#'
#' @param data A dataframe you want to delete all the empty columns from.
#' @returns A dataframe without empty columns.
#' @author Kirsten van Kessel \email{k.d.vankessel@students.uu.nl}
#' @export
#' @examples
#' library(dplyr)
#' data.frame(full_column = c(1,2,3,4,5), empty_column = c(NA, NA, NA, NA, NA)) %>% delempcol
#'
#'
delempcol <- function(data){
  delete <- c()
  for(i in 1:ncol(data)){
    if(sum(is.na(data[,i])) == nrow(data)){
      delete <- append(delete, i)
    }
  }
  data <- data %>% select(-delete)
  return(data)
}
