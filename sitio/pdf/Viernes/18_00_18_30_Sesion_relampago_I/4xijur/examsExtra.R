hotSpot <- function( img, dat, nOptions = 5, nTrue = 3, 
                     outImage = "image.png", wrong = NULL ){
  exams::include_supplement( img, recursive = TRUE )
  exams::include_supplement( dat, recursive = TRUE )
  
  img <- load.image( img )
  dat <- read.table( dat )
  
  nFalse  <- nOptions - nTrue
  corrects <-   1:nTrue
  noCorrects <- ( nTrue + 1 ):nOptions
  
  datC <- dat[ sample( 1:nrow( dat ),  nOptions ), ]
  datC$solutions <- c( rep( TRUE, nTrue ),
                       rep( FALSE, nFalse ) )
  rownames( datC )[ noCorrects ] <- sample( rownames( datC )[ noCorrects ], 
                                            nFalse ) 
  datC <- datC[ sample( nOptions ), ]
  
  ## questions/answer
  questions <- character( nOptions )
  questions <- c( paste( 1:nOptions,   ": ", 
                         rownames( datC ), sep = "" ) )
  
  solutions <- logical( nOptions )
  solutions <- datC$solutions
  
  par( mar= c( 0, 0, 0, 0 ) )
  png( outImage, width = 1500, height = 1500 )
  # Question image
  plot( img, axes = FALSE )
  arrows( datC$labx, datC$laby, datC$finix, datC$finiy, 
          length = 0.25, angle = 15, col = "white", lwd = 10 )
  points( datC$labx, datC$laby, pch = 20, col= "white", 
          cex = 16 )
  text( datC$labx, datC$laby, 1:nrow( datC ), pch = 20, 
        col= 1, cex = 4 )
  dev.off()
  
  randomSort <- order( questions )
  return( data.frame( questions[ randomSort ], solutions[ randomSort ] ) )
}
