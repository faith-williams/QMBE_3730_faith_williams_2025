#Assignment 0 Advanced Business Analytics: Faith Williams
install.packages("data.table")
library(data.table)
read.csv("C:/User/Faith/my documents/netflix_titles.csv")
head(netflix_titles) #Check Data was formated correctly
summary(netflix_titles)

#Shape 
dim(netflix_titles)   #Rows and Columnns
nrow(netflix_titles)  #Row 8807
ncol(netflix_titles)  #Columns 12

#What are the column names?
colnames(netflix_titles) #[1] "show_id"      "type"         "title"        "director"     "cast"         "country"     [7] "date_added"   "release_year" "rating"       "duration"     "listed_in"    "description" 

#What are the data types?
str(netflix_titles)
sapply(netflix_titles,class) # show_id         type        title     director         cast      country   date_added "character"  "character"  "character"  "character"  "character"  "character"  "character" release_year   rating     duration    listed_in  description "integer"  "character"  "character"  "character"  "character" 

#Column Break down Type
table(netflix_titles$type). # Movie 6131 TV Show 2676 

table(netflix_titles$country, useNA ="ifany")  #Table of country combinations

barplot(table(netflix_titles$release_year, useNA = "ifany"))     #barplot of release year
 main = "Frequency of release_year"
 ylab = "Count"



 