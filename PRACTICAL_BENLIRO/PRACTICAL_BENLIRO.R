#A. A. Load the built-in warpbreaks.

warpbreaks

#1. Find out, in a single command, which columns of warpbreaks are either numeric or integer.
warpbreaks_cols <- sapply(warpbreaks, function(x) is.numeric(x) || is.integer(x))
warpbreaks_cols


#2. Is numeric a natural data type for the columns which are stored as such? Convert to integer when necessary.
convert <- warpbreaks[, warpbreaks_cols | warpbreaks_cols]
convert

#3. Error messages in R sometimes report the underlying type of an object rather than the user-level class. Derive from the following code and error message what the underlying type.

warpbreaks_cols <- sapply(warpbreaks, is.numeric)
warpbreaks_cols <- sapply(warpbreaks, is.integer)
convert <- warpbreaks[, warpbreaks_cols | warpbreaks_cols]

for (i in 1:ncol(convert)) {
 if (!is.integer(convert[, i])) {
    convert[, i] <- as.integer(convert[, i])
  }
}

#3 error message
#Error in 1:ncol(convert) : argument of length 0


#__________________________________________________________________________________________________________________

#B

#1. Read the complete file using readLines.

example <- readLines("exampleFile.txt")
example

#2. Separate the vector of lines into a vector containing comments and a vector containing the data. Hint: use grepl.

comments <- example[grepl("^//", example)]
comments

data <- example[!grepl("^//", example)]
data

#3. Extract the date from the first comment line.
date <- gsub("^// Survey data. Created : ", "", comments[1])
date

#4. Read the data into a matrix as follows.

#a. Split the character vectors in the vector containing data lines by semicolon (;) using strsplit.
split <- strsplit(data, ";")
split

#b b. Find the maximum number of fields retrieved by split. Append rows that are shorter with NA's.

max <- max(sapply(split, length))
max

split <- lapply(split, function(x) c(x, rep(NA, max - length(x))))
split

#c. Use unlist and matrix to transform the data to row-column format.
dataMatrix <- matrix(unlist(split), ncol = max, byrow = TRUE)
dataMatrix

#d. From comment lines 2-4, extract the names of the fields. Set these as colnames for the matrix you just created.
fields <- gsub("^// Field [0-9]+: ", "", comments[2:4])
fields

colnames(dataMatrix) <- fields
colnames

print(dataMatrix)

