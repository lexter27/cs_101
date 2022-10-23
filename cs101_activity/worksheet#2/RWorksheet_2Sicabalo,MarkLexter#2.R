#Sicabalo, Mark Lexter. BSIT 2-A
#Worksheet 2

#1)

#a.
operator <- seq(-5, 5)
operator

#R code:  operator <- seq(-5, 5)
#operator

#Output: [1] -5 -4 -3 -2 -1  0  1  2  3  4  5
#Answer: It displayed the a sequence from -5 to 5. 

#b. 
x <- 1:7
x

#Answer: The value of x are 1, 2, 3, 4, 5, 6, 7. 

#2)

#a. 
seq(1, 3, by=0.2)

#R code: seq(1, 3, by=0.2)

#Code: [1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0 
#Anser: It created a sequence from 1 to 3 by 0.2. It adds 0.2 until it reaches to 3.

#3.

#a. Access 3rd element, what is the value?
ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
18)
ages
ages[3]

#Anwser: The value of the 3rd element is 22.

#b. Access 2nd and 4th element, what are the values?
ages[2]
ages[4]

#Anwser: The values of the 2nd and 4th element are 28 and 36.

#c. Access all but the 1st element is not included. Write the R code and its output.
ages 
ages[2:50]

#Answer:

#4.
#a.
x <- c("first"=3, "second"=0, "third"=9)
#The output is displaying first and third which is 3 and 9.
#b.
x[c("first", "third")]
#Output: first third 
#        3     9 

#5. Create a sequence x from -3:2.
#a. Modify 2nd element and change it to 0;
x <- seq(-3,2)
x[2] <- 0
x
#Describe the output.
#The second number will change to zero.
#b.Write the code and its output.
x <- seq(-3,2)
x
#x[2]
#[1] -3 -2 -1  0  1  2
#[1] -2

#6. *The following data shows the diesel fuel purchased by Mr. Cruz.

month <- c("January", "Febraury", "March", "April", "May", "June")
price_per_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25, 30, 40, 50, 10, 45)

#a. Create a data frame for month, price per liter (php) and purchase-quantity (liter).
#Write the codes.

data_frame <- data.frame(month, price_per_liter, purchase_quantity)
data_frame

#b. What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use weighted.mean(liter, purchase)

weighted.mean(price_per_liter, purchase_quantity)

#7. 
#a.
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
data

#b. What are the results?
#[1]    141.0000  83357.0000    591.1844    425.0000 243908.4086
#[6]    493.8708    135.0000   3710.0000

#c. Write the code and its outputs.
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
data

#8. 
#a.
power_ranking <- 1:25
celebrity_name <- c("Tom Cruise", "Rolling Stones", "Orpah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K. Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")
pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)

ranking <- data.frame(power_ranking, celebrity_name, pay)
ranking

#b.
power_ranking [19] <- 15
pay [19] <- 90

#c.
power <- data.frame(power_ranking, celebrity_name, pay)
power 

