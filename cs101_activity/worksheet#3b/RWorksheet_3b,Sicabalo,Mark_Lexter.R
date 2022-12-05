#Worksheet-3b in R
#Mark Lexter Sicabalo BSIT 2-A

#1.Create data frame using the table below.

#a. Write the codes.
Respondents <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)
Sex <- c(2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1, 2)
FathersOccupation <- c(1, 3, 3, 3, 1, 2, 3, 1, 1, 1, 3, 2, 1, 3, 3, 1, 3, 1, 2, 1)
PersonsatHome <- c(5, 7, 3, 8, 5, 9, 6, 7, 8, 4, 7, 5, 4, 7, 8, 8, 3, 11, 7, 6)
Siblingsatschool <- c(6, 4, 4, 1, 2, 1, 5, 3, 1, 2, 3, 2, 5, 5, 2, 1, 2, 5, 3, 2)
TypesofHouses <- c(1, 2, 3, 1, 1, 3, 3, 1, 2, 3, 2, 3, 2, 2, 3, 3, 3, 3, 3, 2)

fam_data <- data.frame(Respondents,Sex,FathersOccupation,PersonsatHome,Siblingsatschool,TypesofHouses)
fam_data
#b. Describe the data. Get the structure or the summary of the data.
summary(fam_data)

#c. Is the mean number of siblings attending is 5?
mean_siblings <- mean(Siblingsatschool)
mean_siblings
#answer: NO

#d. Extract the 1st two rows and then all the columns using the subsetting functions.
#Write the codes and its output.
trows_occup <- fam_data$FathersOccupation[1:2]
trows_occup

trows_pers <- fam_data$PersonsatHome[1:2]
trows_pers

trow_respond <- fam_data$Respondents[1:2]
trow_respond

trows_sex <- fam_data$Sex[1:2]
trows_sex

trows_sibl <- fam_data$Siblingsatschool[1:2]
trows_sibl

trows_house <- fam_data$TypesofHouses[1:2]
trows_house

#e. Extract 3rd and 5th row with 2nd and 4th column. Write the codes and its result.
trow_2ndcol <- fam_data$Sex[3:5]
trow_2ndcol

trow_4thcol <- fam_data$PersonsatHome[3:5]
trow_4thcol

#f. Select the variable types of houses then store the vector that results as types_houses. Write the codes.
types_houses <- fam_data$TypesofHouses[1:20]
types_houses

#g. Select only all Males respondent that their father occupation was farmer. Write the codes and its output.
male <- subset(fam_data[c(1:20),c(2,3)])
male

farmer <- subset(fam_data,Sex == '1' & FathersOccupation == '1')
farmer 

malefar <- farmer[c(2,3)]
malefar

#h. Select only all females respondent that have greater than or equal to 5 number of siblings attending school. Write the codes and its outputs.
female <- subset(fam_data[c(1:20),c(2,5)])
female

fem_resp <- subset(fam_data,Sex == '2' & Siblingsatschool >= 5)
fem_resp

fem_sib <- fem_resp[c(2,5)]
fem_sib

#2. Write a R program to create an empty data frame. Using the following codes:
df = data.frame(Ints=integer(),
                Doubles=double(), Characters=character(),
                Logicals=logical(),
                Factors=factor(),
                stringsAsFactors=FALSE)
print("Structure of the empty dataframe:")
print(str(df))

#a. Describe the results.
#Answer: No data available in the table or in the data frame.

#3. Interpret the graph.
#The sentiments of tweets per day as days goes by the negative sentiments is high with the legend color of red. While in the middle is positive sentiments with the legend color of blue and the lowest is neutral sentiments with the legend color of yellow.
