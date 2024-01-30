# R programming. 
# DAY 1 - TRAINING

#basic hello world
myString <- "Hello, World!" 
print (myString)

myString

#this the comment in R with #. 

# Create a vector. 
# C - functionThis is a generic function which combines its arguments.
vector <- c("Ball","bat","man")
print(vector) 

# Get the class of the vector - type of the vector. 
print(class(vector))

#Example 1 - Creating a vector using : operator
range <- 1:5
range

range_1 <- 2:-2
range_1

#Example 2: Creating a vector using seq() function
# specify step size 
seq(1, 5, by=0.5) #increment by (default = 1) 

seq(1, 5, length.out=4) 	# specify length of the sequence 

#Using integer vector as index
a <- c(1,5,2,3,6) 
a

# access 4th element 
a[4] 

# access 3rd and 5th element
a[c(3, 5)] 

#Using character vector as index
a <- c("first"=3, "second"=0, "third"=9) 
names(a)

a["second"] 

a[c("first", "third")] 

#How to modify a vector in R?
a <- 3:-2 
a

# modify 2nd element
a[2] <- 8	 	 
a

#Example: Add Two Vectors
vector1 <- c(2,4,6) 
vector2 <- c(1,3,5)

new_vector = vector1 + vector2
new_vector

#Add 1 to the new_vector
new_vector + 1

#Example: Sort a Vector, first we create a vector and then sort it
vector <- c(4,2,5,8,1,3,7,6) 
vector

# sort in ascending order 
sort(vector) 

# sort in descending order 
sort(vector, decreasing=TRUE) 

# vector x remains unaffected 
vector

# Create a list. 
list1 <- list(c(2,5,3),21.3,sin) 
# Print the list. 
print(list1)

n = c(2, 3, 5)
n

s = c("aa", "bb", "cc", "dd", "ee")
s
b=c(TRUE,FALSE,TRUE,FALSE,FALSE)
b

#x contains copies of n,s,b
x=list(n,s,b,3)
x

x[2]

#How to delete a Vector?
x <- c(7,1,8,3,2,6,5,2,2,4) 
x

x <- NULL
x

#DAY 2 - TRAINING. 
# Create an array - dimension - 3 * 3 - 3 rows, 3 columns 
a <- array(c('green','yellow'),dim = c(3,3)) 
print(a)

# 2*3 - 2 rows, 3 columns 
a <- array(c('green','yellow'),dim = c(2,3)) 
print(a)

#2 sets of an array
a <- array(c('green','yellow'),dim = c(3,3,2)) 
print(a)

