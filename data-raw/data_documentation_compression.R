
############################################################################
# The.RData files have both data and descriptions in one file. :(          # 
# When loaded, they default to names "data" and "desc", which is confusng. #
# We must decompose and resave them as .RData and .Rd documentation files. #
############################################################################

# Define data folder, which we will use throughout this script.
data_folder <-  "R data sets for 5e"

# Create character vector of base names of .RData files.
RData_names <- gsub(".RData", "", list.files(data_folder, pattern = ".RData$"))

# If necessary, clear R directory and create new one
unlink("R", recursive = TRUE)
dir.create("R")

  #############################################################################
 # Loop over .RData files in data_folder folder, importing all and labeling. #
# In addition, transform descriptions in Roxygen2 .R files.                 #
############################################################################

for(i in RData_names) {
  # Define Location of dataset, save base name.
  file_location <- paste0(getwd(), "/", data_folder, "/", i, ".RData")
  file_name <- i
  # Load dataset
  load(file_location)
  # rewrite to
  assign(i, data)
  
  # Start documentation. Use contents of 'desc' metadata to construct
  # documentation using roxygen2 style syntax, written into .R files.
  # This automagically creates documentation for all data sets.
  title <- paste0("#' ", as.character(i))
  intro <- paste0("#' ", "Data loads lazily. Type data(",as.character(i), ") into the console.")
  type  <- paste0("#' @docType data")
  usage <- paste0("#' @usage data(", as.character(i),")")
  example <- paste0("#' @examples "," str(",as.character(i),")")
  message <- paste("#'", "@format", "A", class(data), "with", NROW(data), "rows and", NCOL(data), "variables:", sep = " ")
  
  start <- paste0("#' ","\\itemize{")
  describe <- matrix(data = NA, nrow=nrow(desc), ncol = 1)
  
  # nested loop over desc files to transform variables and descriptions into roxygen2 ready format.  
  # Use gsub to change "%" character to "percent" for variable description, or roxygenize will fail.           
  for(i in desc) {
    describe[i] <- paste0("#'  \\item"," ",as.character(desc[i,1]),". ",gsub("%","percent", as.character(desc[i,2])))
  }
  end <- "#' }"
  source <- "#' @source \\url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}"
  data_label <- paste0("\"", file_name,"\"")
  space <- "#'"
  blank <- " "
  
  # Paste all strings together to prepare for file for line by line write.
  documentation <- c(title, space, intro, space, type, space, usage, space, message, start, describe, end, source, example, data_label, blank, blank)
  
  # Write out 1 string per line, into a .R file labeled to match each dataset
  # in the roxygen2 documentation format.
  write(documentation, paste(paste(getwd(),"R", file_name, sep = "/"),"R", sep ="."), append = TRUE)

}


###################################################################
# Write all data sets to high compression xz level 9 .Rdata files #
###################################################################

dir.create("data")

dataset_list <- c(RData_names)

for (i in dataset_list) {
  
  save(list = i, file = paste0("data/", i, ".RData"), compress = "xz", compression_level = 9)
  
}

# Next, clear .env and import the new .RData files to check.
new_data_list <- list.files("data")
for (i in new_data_list) {
  path <- paste0("data/",i)
  load(path)
}

######################################
## Compute efficiency of compression #
######################################

data_folder <-  "R data sets for 5e"

# Lets find out how big the original datasets are
original_size <- sum(file.info(paste(data_folder, list.files(data_folder), sep = "//"))$size)
original_size # 3,336,438

# Explore size, and order by size.
file_info <- file.info(paste(data_folder, list.files(data_folder), sep = "//"))
file_info[order(file_info$size, decreasing = TRUE),]

# Lets find out how big the compressed datasets are.
new_size <- sum(file.info(paste("data", list.files("data"), sep = "//"))$size)
new_size # 2,092,800

# compare with original size, calculate percentage change...whoa 38% less!
original_size <- sum(file.info(paste(data_folder, list.files(data_folder), sep = "//"))$size)
compression_efficiency <- new_size/original_size * 100 
compression_efficiency
