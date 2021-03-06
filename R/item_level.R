#' Perform item level analysis for QMEtest object
#' 
#' Calculates item level analysis for QMEtest objects
#' 
#' @param x a \code{QMEtest} object
#' @return A list with various aspects of the item level analysis

item_level = function(testQME, ...) {
  keyed_test = getKeyedTestNoID(testQME)
  difficulty = colMeans(keyed_test)
  point_bi = point_biserial(keyed_test)
  il = cbind(point_bi, difficulty)
  il = il[ ,c(3,2)]
  return(il)
}
