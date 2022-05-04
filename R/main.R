#' in_and_out 
#' @export
main <- function(expression_data, sample_annotation, up_genes, down_genes) {
  se0 <- SummarizedExperiment(assays=SimpleList(counts=expression_data),
                              colData=sample_annotation)
  
  rankData <- rankGenes(se0)
  
  scoredf <- simpleScore(rankData, upSet = up_genes, 
                         downSet = down_genes)
}