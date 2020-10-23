
matrix(1:9, byrow = TRUE, nrow = 3)

new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)
box_office 
star_wars_matrix <- matrix(box_office, byrow=TRUE, nrow=3)
star_wars_matrix 

region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region
# Name the rows with titles
rownames(star_wars_matrix) <- titles
star_wars_matrix







# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope", 
            "The Empire Strikes Back", 
            "Return of the Jedi")

star_wars_matrix <- matrix(box_office, 
                           nrow = 3, byrow = TRUE,
                           dimnames = list(titles, region))

star_wars_matrix
# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector

all_star_wars <-  cbind(star_wars_matrix, worldwide_vector)
c <- star_wars_matrix *2
c
all_star_wars <-  cbind(c, worldwide_vector)

all_wars_matrix <- rbind(star_wars_matrix, worldwide_vector )
all_wars_matrix
total_revenue_vector <- colSums(all_star_wars)

total_revenue_vector

#Selection of matrix elements
mymatrix [1,2]

* #my_matrix[1,2] selects the element at the first row and second column.
* 
  #my_matrix[1:3,2:4] results in a matrix with the data on the rows 1, 2, 3 and columns 2, 3, 4.
  # all_wars_matrix is available in your workspace
  all_wars_matrix
# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[1:3,1]
non_us_all
# Average non-US revenue
mean(non_us_all)
## Select the non-US revenue for first two movies
non_us_rev <- all_wars_matrix[1:2,2]
non_us_rev
#average
mean(non_us_rev)
#A little arithmetic with matrices

# all_wars_matrix is available in your workspace
all_wars_matrix

# Estimate the visitors
visitors <- all_wars_matrix/5
visitors

#Exercise

 
  #Divide all_wars_matrix by ticket_prices_matrix - *2 to get the estimated number of US and non-US visitors for the six movies. Assign the result to visitors.
ticket_prices_matrix <- all_wars_matrix*2
ticket_prices_matrix
visitors <-all_wars_matrix/ticket_prices_matrix
visitors
  #From the visitors matrix, select the entire first column, representing the number of visitors in the US. Store this selection as us_visitors.
us_visitors<- visitors[,1]
us_visitors
  #Calculate the average number of US visitors; print out the result
mean(us_visitors)

#Assign to variable theory the value "factors".
theory <- "factors"

factor()

sex_vector <- c("Male","Female","Female","Male","Male", "boy")
factor_sex_vector <- factor(sex_vector)
factor_sex_vector

# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")

factor_survey_vector

# Generate summary for survey_vector
summary(survey_vector)
male <- factor_survey_vector[1]
male
female <- factor_survey_vector[2]
female
male > female

#As a first step, assign speed_vector a vector with 5 entries, one for each analyst. Each entry should be either "slow", "medium", or "fast". Use the list below:
  
  #Analyst 1 is medium,

  #Analyst 2 is slow,

  #Analyst 3 is slow,

  #Analyst 4 is medium and

  #Analyst 5 is fast.

speed_vector <- c ("medium", "slow", "slow", "medium", "fast")
speed_vector
factor_speed_vector <- factor(speed_vector,
       ordered = TRUE,
       levels = c("slow", "medium", "fast"))
factor_speed_vector
summary(factor_speed_vector)




mtcars 




