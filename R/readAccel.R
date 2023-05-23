#' Read in accelerometer file
#'
#' This function reads in an accelerometer file created by Oregon Research Electronics AL100 or A101 Acceleration Loggers. 
#' Returns a dataframe with 7 columns: sample number, 3 acceleration axes (x/y/z), temp, seconds, and battery voltage
#' @param x Location of accelerometer csv file 
#' @keywords 
#' @export
#' @examples
#' readAccel()


readAccel <- function(x){
  df <- read.table(x, skip=10, sep=",", fill=TRUE, row.names=NULL)
  #df <- na.omit(df)
  colnames(df) <- c("sample","x","y","z","temp","sec","Vbatt")
  return(df)
}
