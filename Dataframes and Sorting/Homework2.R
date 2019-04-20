#Course number - IST 687.
#Homework 2 - Submitted by Rohan Mahajan on September 12,2018.
#Name of Assignment -  HW 2: Data Frames & Sorting.
#Due Date - September 12,2018.

#Step A: Initialize an 'arrests' dataframe - I created a variable named "arrests" and copied "USArrests" to a new variable.

arrests <- USArrests
arrests

#Step B: Explore the assault rate - 
#Is a higher or lower assault rate best?
#Answer - The lower assault rate is the best assault rate. I used the "min()" command to find out the minimum assault rate and I assigned a variable called "best_assaultrate" to it. Then I displayed the state which has the best assault rate in the next command.
#The state which has the best assault rate is Vermont which is 48 per hundred thousand.


best_assaultrate <- min(arrests$Assault)
best_assaultrate
arrests[best_assaultrate,]

#Step C: Explore the murder rate 

#I used to "max()" command to determine which state has the highest murder rate. Then, I assgined it to a variable and displayed the row of the State which had the highest murder rate. The State with the highest murder rate is Alabama with a murder rate of 2.2 per hundred thousand.

high_murderrate <- max(arrests$Murder)
high_murderrate
arrests[high_murderrate,]

#Below, I have created a sorted dataframe based on descending murder rate. I used the command "rev(order)" for this. 

sorted_df <- arrests[rev(order(arrests$Murder)),]
sorted_df

#The first 10 states with the highest murder rate are given as follows.

head(arrests[order(arrests$Murder,decreasing=TRUE),],n=10)


#The value of the 20th row and 3rd column is 50. I have used the R code below for this.


sorted_df[20,3]



#Step D: Which state is the least safe? Explain your logic
#As mentioned last week in class, the values of Assault, Murder, Urban Population and Rape are per hundred thousand. 
#So I first multiplied the entire "arrests" dataframe by 100,000 to get their exact values and stored it in another dataframe.


arrests_value <- arrests*100000

#To calculate the least safe state, I added the values of Assault, Murder and Rape of each value to get the total number of "Crimes" done in the respective states.
#Then I divided the total value by the total urban population to get the crime rate of each state. I used the variable "crime_rate" to assign this.


crime_rate <- (arrests_value[1] + arrests_value[2] + arrests_value[4])/arrests_value[3]

#I renamed the column of the new data frame due to "Murder" being published under the crime rates.

colnames(crime_rate) <- c("Crime")

#I then added this value to the first variable I created with the original "USArrests" dataframe. 

arrests$newcolumn <- crime_rate

#The new dataframe is shown below.

arrests

#I then sorted this dataframe according to the highest crime rate.

least_safe <- arrests[rev(order(arrests$newcolumn)),]

#To show the least safe state, I then displayed the first row of the sorted dataframe.
#In this way, North Carolina is the least safe state with the crime rate of 8.135556.

least_safe[1,]