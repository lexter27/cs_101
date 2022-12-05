#Worksheet#6
#Mark Lexter Sicabalo BSIT 2-A

library(ggplot2)
data(mpg)
as.data.frame(data(mpg))
"mpg"
str(mpg)
library(dplyr)
glimpse(mpg)
ggplot(mpg, aes(cty, hwy)) + geom_point()

#1. How many columns are in mpg dataset? How about the number of rows? Show the codes and its result.
data_mpg <- glimpse(mpg)
data_mpg
#Answer: There are 234 rows and have a 11 columns.

#2. Which manufacturer has the most models in this data set? Which model has the most variations? 
#Ans: Dodge, because it has 37 models.
brand_count <-  data_mpg %>% group_by(manufacturer,model) %>% count()
brand_count

colnames(brand_count) <- c("Manufacturer","Model","Counts")

#a. Group the manufacturers and find the unique models. Copy the codes and result.
unique_models <- data_mpg %>% group_by(manufacturer,model) %>% distinct() %>% count()
unique_models

colnames(unique_models) <- c("Manufacturer","Model","Counts")
#b. Graph the result by using plot() and ggplot(). Write the codes and its result.
plot(brand_count)

ggplot(brand_count, aes(Manufacturer,Model)) +geom_point()

#3. Same dataset will be used. You are going to show the relationship of the modeland the manufacturer.
#a. What does ggplot(mpg, aes(model, manufacturer)) + geom_point() show?
ggplot(data_mpg, aes(model, manufacturer)) + geom_point()

#b. For you, is it useful? If not, how could you modify the data to make it more informative?
#Answer: No, it is not useful because the data is already organized, but it can be improved to look more informative by including a legend to help users understand the data from the scatter plot.

#4. Using the pipe (%>%), group the model and get the number of cars per model. Show codes and its result.
car_data <- data_mpg %>% group_by(model) %>%count()
car_data

colnames(car_data) <- c("Model","Count")
#a. Plot using the geom_bar() + coord_flip() just like what is shown below. Show codes and its result.
qplot(model,data = data_mpg,
      main = "Number of Cars per model",
      xlab = "Model",
      ylab = "Number of Cars", geom = "bar", fill = manufacturer) + coord_flip()

#b. Use only the top 20 observations. Show code and results.
toptwenty_data <- car_data[1:20,] %>% top_n(2)
toptwenty_data

ggplot(toptwenty_data, aes(x = Model, y = Count)) + geom_bar(stat = "Identity") + coord_flip()

#5. Plot the relationship between cyl - number of cylinders and displ - engine displacement using geom_point with aesthetic colour = engine displacement. Title should be “Relationship between No. of Cylinders and Engine Displacement”.
#a. Show the codes and its result.
ggplot(data = data_mpg , 
       mapping = aes(x = displ, y = cyl, 
                     main = "Relationship between No of Cylinders and Engine Displacement")) + geom_point(mapping=aes(colour = "engine displacement"))

#b. How would you describe its relationship?
#Answer: The relationship between cyl - number of cylinders and displ - engine displacement is they are proportional with each other because if cyl increases also the displ increases.

#6. Get the total number of observations for drv - type of drive train (f = front-wheel drive, r = rear wheel drive, 4 = 4wd) and class - type of class (Example: suv, 2seater, etc.).
#Plot using the geom_tile() where the number of observations for class be used as a fill for aesthetics.
#a. Show the codes and its result for the narrative in #6.
ggplot(data = data_mpg, mapping = aes(x = drv, y = class)) +geom_tile(aes(fill=class))

#b. Interpret the result.
#Answer: When mapping a geomatric tile, it graphs the data and fill a random different colors depends on its class, drv is the x axis while class is the y axis.

#7. Discuss the difference between these codes. Its outputs for each are shown below.
#Code #1
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, colour = "blue"))

#& Code #2
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), colour = "blue")
#Answer: If the x and y axis is with the colour inside the parenthesis, it graph with legend but the color is red. But when the x and y axis is separated with colour it only graph with a color of blue. 

#8. Try to run the command ?mpg. What is the result of this command?
?mpg

#a. Which variables from mpg dataset are categorical?
#Answer: The manufacturer, model, trans, drv, fl, class are the categorical variables from the data-set of mpg.

#b. Which are continuous variables?
#Answee: The continuous variable of the mpg data-set are the dsipl, year, cyl, cty, and hwy.

#c. Plot the relationship between displ (engine displacement) and hwy(highway mile per gallon). Mapped it with a continuous variable you have identified in #5-b. What is its result? Why it produced such output?
ggplot(mpg, aes(x = cty, y = hwy, colour = displ)) + geom_point()

#9. Plot the relationship between displ (engine displacement) and hwy(highway miles per gallon) using geom_point(). Add a trend line over the existing plot usingeom_smooth() with se = FALSE. Default method is “loess”. per gallon) using geom_point(). Add a trend line over the existing plot usimgeom_smooth() with se = FALSE. Default method is “loess”.uigeom_smooth() with se = FALSE. Default method is “loess”.geom_smooth() with se = FALSE. Default method is “loess”.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +geom_point(mapping=aes(color=class)) +geom_smooth(se = FALSE)

#10. Using the relationship of displ and hwy, add a trend line over existing plot. Set the se = FALSE to remove the confidence interval and method = lm to check for linear modeling.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) +geom_point() +geom_smooth(se = FALSE, method = lm)

