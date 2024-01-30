#Day 2 - R training. 

# Create a vector. 
apple_colors <- c('green','green','yellow','red','red','red','green') 

# Create a factor object. 
factor_apple <- factor(apple_colors) 

# Print the factor. 
print(factor_apple) 
x <- nlevels(factor_apple)
x

summary(factor_apple)


# Create the data frame. 
BMI <- data.frame( 
  gender = c("Male", "Male","Female"), 
  height = c(152, 171.5, 165), 
  weight = c(81,93, 78), 
  Age = c(42,38,26) ) 
print(BMI)

#built in data set- mtcars
#Further details of the mtcars data set is available in the R documentation.

help("mtcars") 
mtcars

head(mtcars) #top 6 rows of the dataframe 
tail(mtcars) #bottom 6 rows 

#Here is the cell value from the first row, second column of mtcars.
mtcars[1,2]

#Moreover, we can use the row and column names instead of the numeric coordinates.
mtcars["Mazda RX4","cyl"]

#the number of data rows in the data frame is given by the nrow function.
nrow(mtcars)       #number of data rows

#And the number of columns of a data frame is given by the ncol function.
ncol(mtcars)   #number of column


#For example, to retrieve the ninth column vector of the built-in data set mtcars, 
mtcars[[9]]

#We can retrieve the same column vector by its name
mtcars[["am"]]

#We can also retrieve with the "$" operator in lieu of the double square bracket operator.
mtcars$am

#Yet another way to retrieve the same column vector is to use the single 
mtcars[,"am"]

#retrieve the first coloumn of the dataframe
mtcars[1]

#retrieve the column by its name indexing
mtcars[c("mpg","hp")]

#We retrieve rows from a data frame 
#this will get row number 24 and all columns. 
mtcars[24,]

mtcars[24,1]
mtcars[24,1:4]

#We can retrieve a row by its name.
mtcars["Camaro Z28",]

#we can pack the row names in an index vector in order to retrieve multiple rows.
mtcars[c("Datsun 710","Camaro Z28"),]

#Logical Indexing - automatic transmission -> 0 - NO, 1 - Yes
L = mtcars$am == 1
L

#Here is the list of vehicles with automatic transmission.
mtcars[L,]

#And here is the gas mileage data for automatic transmission.
mtcars[L,]$mpg


#Read the csv file into R session
#C:\Users\rshivsha\Documents\ofsaa\training\AL RAJHI\
data <- read.csv("C:/Users/rshivsha/Documents/ofsaa/training/AL RAJHI/FACT_NET_LOSS_RATE.csv")

#OR

data <- read.csv("C:\\Users\\rshivsha\\Documents\\ofsaa\\training\\AL RAJHI\\FACT_NET_LOSS_RATE.csv")
str(data)

#Read the csv file into R session
library(xlsx)
read.xlsx("myfile.xlsx", sheetName = "Sheet1")

#get current working directory
getwd()

#set working directory
setwd("<new path>") 

#different ways for variable assignment. 
# Assignment using equal operator. 
var.1 = c(0,1,2,3) 

# Assignment using leftward operator. 
var.2 <- c("learn","R") 

# Assignment using rightward operator. 
c(TRUE,1) -> var.3 


print(var.1) 
cat ("var.1 is ", var.1 ,"\n") 
cat ("var.2 is ", var.2 ,"\n") 
cat ("var.3 is ", var.3 ,"\n")	
#The cat() function combines multiple items into a continuous print output.

#Data type of a variable
var_x <- "Hello" 
cat("The class of var_x is ",class(var_x),"\n") 

var_x <- 34.5 
cat(" Now the class of var_x is ",class(var_x),"\n") 

var_x <- 27L 
cat(" Next the class of var_x becomes ",class(var_x),"\n")

#ls() function to know all the variables currently available in the workspace.
print(ls())

#The variables starting with dot(.) are hidden, 
#they can be listed using "all.names = TRUE" argument to ls() function.
print(ls(all.name = TRUE))

#Deleting Variables
rm(var.3) 
print(var.3)


#DECISION MAKING IN R. 
#If Statement

x <- 5
if (x > 0)
print("positive number")


#IF ELSE STATEMENT: 
x <- -5 
if(x > 0){
  print("Non-negative number") 
} else { 
  print("Negative number") 
}

#nested if...else
x <- 0 
if (x < 0) { 
  print("Negative number") 
} else if (x > 0) { 
  print("Positive number") 
} else 
  print("Zero")

#Switch Statement
x <- switch(2, "first", "second", "third", "fourth") 
print(x)

x <- switch(4, "first", "second", "third", "fourth") 
print(x)

#Loops
#repeat loop
#Executes a sequence of statements multiple times and abbreviates the code 
#that manages the loop variable.

#EXAMPLE 1 
v <- c("Hello","loop") 
cnt <- 2 
repeat { 
  print(v) 
  cnt <- cnt+1 
  if(cnt > 5) { 
    break 
  }
}


#EXAMPLE 2 
x <- 1 
repeat { 
  print(x) 
  x = x+1 
  if (x == 6){ 
    break 
  }
}


# WHILE LOOP
i <- 1 
while (i < 6) { 
  print(i)
  i = i+1 
}

#for loop
x <- c(2,5,3,9,8,11,6) 
count <- 0 
for (val in x) { 
  if(val %% 2 == 0) count = count+1 
} 
print(count)


#break statement
x <- 1:5 
for (val in x) 
{ if (val == 3){
  break 
}
  print(val) 
}



# Create a sequence of numbers from 32 to 44. 
print(seq(32,44)) 

# Find mean of numbers from 25 to 82. 
print(mean(25:82))

# Find sum of numbers frm 41 to 68. 
print(sum(41:68))

# Create a function to print squares of numbers in sequence. 
new.function <- function(a) { 
for(i in 1:a) { 
  b <- i^2 
  print(b) 
} 
}

# Call the function new.function supplying 6 as an argument.
new.function(6)


# Create a function without an argument. 
new.function <- function() { 
  for(i in 1:5) { 
    print(i^2) 
  } 
} 

# Call the function without supplying an argument. 
new.function()

#Calling a Function with Argument Values (by position and by name)
# Create a function with arguments. 
new.function <- function(a,b,c) { 
  result <- a * b + c 
  print(result) 
} 
# Call the function by position of arguments. 
new.function(5,3,11) 
# Call the function by names of the arguments. 
new.function(a = 11, b = 5, c = 3)

#Calling a Function with Default Argument
# Create a function with arguments. 
new.function <- function(a = 3, b = 6) { 
  result <- a * b 
  print(result) 
}
# Call the function without giving any argument. 
new.function() 
# Call the function with giving new values of the argument. 
new.function(9,5)


#strings:
a <- 'Start and end with single quote' 
print(a) 
b <- "Start and end with double quotes" 
print(b) 
c <- "single quote ' in between double quotes" 
print(c) 
d <- 'Double quotes " in between single quote' 
print(d)


#Concatenating Strings - paste() function
a <- "Hello" 
b <- 'How' 
c <- "are you? " 
print(paste(a,b,c)) 
print(paste(a,b,c, sep = "-")) 
print(paste(a,b,c, sep = "", collapse = ""))


#Formatting numbers & strings - format() function
# Total number of digits displayed. Last digit rounded off. 
result <- format(23.123456789, digits = 9) 
print(result) 

# Display numbers in scientific notation. 
result <- format(c(6, 13.14521), scientific = TRUE) 
print(result) 

# The minimum number of digits to the right of the decimal point. 
result <- format(23.47, nsmall = 5) 
print(result)



# Format treats everything as a string. 
result <- format(6) 
print(result) 

# Numbers are padded with blank in the beginning for width. 
result <- format(13.7, width = 6) 
print(result) 

# Left justify strings. 
result <- format("Hello", width = 8, justify = "l") 
print(result) 

# Justify string with center. 
result <- format("Hello", width = 8, justify = "c") 
print(result)

#Counting number of characters in a string - nchar() function 
result <- nchar("Count the number of characters") 
print(result)

#Counting the case - toupper() and tolower() function 
# Changing to Upper case. 
result <- toupper("Changing To Upper") 
print(result) 

# Changing to lower case. 
result <- tolower("Changing To Lower") 
print(result)


#Extracting parts of a string - substring() function 
# Extract characters from 5th to 7th position. 
result <- substring("Extract", 5, 7) 
print(result)



#Create a matrix taking a vector of numbers as input
# Elements are arranged sequentially by row. 
M <- matrix(c(3:14), nrow = 4, byrow = TRUE) 
print(M) 			
# Elements are arranged sequentially by column. 
N <- matrix(c(3:14), nrow = 4, byrow = FALSE) 
print(N) 

# Define the column and row names. 
rownames = c("row1", "row2", "row3", "row4") 
colnames = c("col1", "col2", "col3") 

P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames)) 
print(P)

#Accessing Elements of a Matrix
#Elements of a matrix can be accessed by using the column and row index of the element.

# Access the element at 1st row and 3rd column. 
print(P[1,3])

# Access the element at 4th row and 2nd column. print(P[4,2]) 

# Access only the 2nd row. 
print(P[2,]) 

# Access only the 3rd column. 
print(P[,3])



#Matrix Addition & Subtraction
#Create two 2x3 matrices. 
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2) 
print(matrix1) 

matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2) 
print(matrix2)

# Add the matrices. 
result <- matrix1 + matrix2 
cat("Result of addition","\n") 
print(result) 


# Subtract the matrices. 
result <- matrix1 - matrix2 
cat("Result of subtraction","\n") 
print(result)


#Matrix Multiplication & Division

# Create two 2x3 matrices. 
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2) 
print(matrix1) 
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2) 
print(matrix2)

# Multiply the matrices. 
result <- matrix1 * matrix2 
cat("Result of multiplication","\n") 
print(result) 

# Divide the matrices. 
result <- matrix1 / matrix2 
cat("Result of division","\n") 
print(result)

#Get library locations containing R packages
.libPaths()

#dpylr package for data manipulations. 
library(dplyr)


#Install a New Package
#install.packages("Package Name") 
install.packages("dplyr") 


