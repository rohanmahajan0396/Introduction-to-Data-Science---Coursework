#Course number - IST 687.
#Homework 1 - Submitted by Rohan Mahajan on September 5,2018.
#Name of Assignment -  HW 1: Basic R coding(vectors,conditionals)
#Due Date - September 5,2018.

#Step A - Create a Vector.

#Two vectors, "grades" and "courseName" are created and a variable "BetterThanB" is defined with the value 3.

grades <- c(4.0, 3.3, 3.7)
courseName <- c("Bio", "Math", "History")
BetterThanB <- 3

#Step B - Calculating statistics using R.

#The average of the values of the vector "grades" is calculated using the command "mean(vectorname)". The number of elements in the vector is also found using the command length(vectorname).

mean(grades)
length(grades)
total.length <- length(grades)
total.length
total <- sum(grades)

#Recomputng the average grades by diving "total" derived from Question 7 with "total length" derived from Question 5.

average_grades <- total/total.length
average_grades

#Step C - Using max/min functions in R.

#The maximum and minimum values of the vector "grades" are stored in maxG and minG respectively.

maxG <- max(grades)
maxG
minG <- min(grades)
minG

#Step D - Vector Math

#All elements of the vector "grades' is added by 0.3 and is stored in "betterGrades" The mean of "betterGrades is taken".

betterGrades <- grades + 0.3
mean(betterGrades)

#Step E - Use conditional if statements

#maxG is compared to the value 3.5 and if it is greater than 3.5, the output will print "yes" otherwise it will print "no".

if(maxG > 3.5) "yes" else "no"

#minG is compared to the value of "BetterThanB". If it is greater then the output will print "yes" otherwise it will print "no".

if(minG > BetterThanB) "yes" else "no"

#Step F - Accessing an element in a vector.

#Second element of the vector "courseName" is accessed.

courseName[2]
