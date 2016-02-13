for (i in 1:9) {
  mypath <- file.path("C:/Users/Hiroshi Ikeda/Desktop/Coursera/R Programming/specdata", paste("00", i, ".csv", sep = "")) 
  assign(paste("data", i, sep = ""), read.csv(mypath, header = T))
}
for (i in 10:99) {
  mypath <- file.path("C:/Users/Hiroshi Ikeda/Desktop/Coursera/R Programming/specdata", paste("0", i, ".csv", sep = "")) 
  assign(paste("data", i, sep = ""), read.csv(mypath, header = T))
}
for (i in 100:332) {
  mypath <- file.path("C:/Users/Hiroshi Ikeda/Desktop/Coursera/R Programming/specdata", paste(i, ".csv", sep = "")) 
  assign(paste("data", i, sep = ""), read.csv(mypath, header = T))
}