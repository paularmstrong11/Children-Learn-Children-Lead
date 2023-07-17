# Create a vector of values 
children_ages <- c(2, 5, 7, 9, 10, 11, 13, 15, 17, 19)

# Calculate the mean age of the children 
mean_age <- mean(children_ages)

# Print the result 
print("The mean age of the children is")
print(mean_age)
 
# Create a data frame to store the children's learning preferences 
children_learning_preferences <- data.frame(
  age = children_ages,
  prefer_reading = c(TRUE, FALSE, TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE),
  prefer_writing = c(FALSE, TRUE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, FALSE, TRUE),
  prefer_math = c(FALSE, FALSE, TRUE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE, TRUE)
)

# Create a factorial array 
children_learning_preferences_array <- t(children_learning_preferences[, -1])

# Calculate and print the frequencies of children's learning preferences
print("The frequencies of children's learning preferences are:")
read_freq <- sum(children_learning_preferences_array[1, ])
write_freq <- sum(children_learning_preferences_array[2, ])
math_freq <- sum(children_learning_preferences_array[3, ])
print(paste("Reading:",read_freq))
print(paste("Writing:",write_freq))
print(paste("Maths:",math_freq))

# Calculate and Print the learning preferences by age
read_by_age <- aggregate(children_learning_preferences$prefer_reading, by = list(age = children_learning_preferences$age), FUN = mean)
write_by_age <- aggregate(children_learning_preferences$prefer_writing, by = list(age = children_learning_preferences$age), FUN = mean)
maths_by_age <- aggregate(children_learning_preferences$prefer_math, by = list(age = children_learning_preferences$age), FUN = mean)

print("The probabilities of learning preferences by age are:")
print(paste("Reading:", read_by_age))
print(paste("Writing:", write_by_age))
print(paste("Maths:", maths_by_age))

# Create a plot to visualize the learning preferences by age
plot(children_learning_preferences$age, children_learning_preferences$prefer_reading, ylim = c(0, 1), type = "l", xlab = "Age", ylab = "Preference", main = "Children Learn ")
lines(children_learning_preferences$age, children_learning_preferences$prefer_writing, col = "blue")
lines(children_learning_preferences$age, children_learning_preferences$prefer_math, col = "green")

# Find the correlation between age and learning preferences
corr_read_age <- cor(children_learning_preferences$age, children_learning_preferences$prefer_reading)
corr_write_age <- cor(children_learning_preferences$age, children_learning_preferences$prefer_writing)
corr_maths_age <- cor(children_learning_preferences$age, children_learning_preferences$prefer_math)

print("The correlation between age and learning preferences are:")
print(paste("Reading:", corr_read_age))
print(paste("Writing:", corr_write_age))
print(paste("Maths:", corr_maths_age))

# Create a histogram to show the distribution of learning preferences
hist(children_learning_preferences$prefer_reading, main = "Distribution of Reading Preference", xlim = c(-0.5, 1.5), ylab = "Number of Children", xlab = "Preference")
hist(children_learning_preferences$prefer_writing, main = "Distribution of Writing Preference", xlim = c(-0.5, 1.5), ylab = "Number of Children", xlab = "Preference")
hist(children_learning_preferences$prefer_math, main = "Distribution of Maths Preference", xlim = c(-0.5, 1.5), ylab = "Number of Children", xlab = "Preference")

# Create a linear model for learning preference by age
read_lm <- lm(children_learning_preferences$prefer_reading ~ children_learning_preferences$age)
write_lm <- lm(children_learning_preferences$prefer_writing ~ children_learning_preferences$age)
maths_lm <- lm(children_learning_preferences$prefer_math ~ children_learning_preferences$age)

# Print the summary of the linear models
print("The linear models for learning preference by age are:")
print(summary(read_lm))
print(summary(write_lm))
print(summary(maths_lm))

# Create a scatterplot to visualize the linear relationships 
plot(children_learning_preferences$age, children_learning_preferences$prefer_reading, xlab = "Age", ylab = "Reading Preference", main = "Linear Relationship between Age and Learning Preference")
abline(read_lm, col = "blue")

plot(children_learning_preferences$age, children_learning_preferences$prefer_writing, xlab = "Age", ylab = "Writing Preference", main = "Linear Relationship between Age and Learning Preference")
abline(write_lm, col = "blue")

plot(children_learning_preferences$age, children_learning_preferences$prefer_math, xlab = "Age", ylab = "Maths Preference", main = "Linear Relationship between Age and Learning Preference")
abline(maths_lm, col = "blue")

# Create a boxplot to compare the learning preferences
boxplot(children_learning_preferences$prefer_reading, children_learning_preferences$prefer_writing, children_learning_preferences$prefer_math, main = "Comparison of Learning Preferences")

# Perform a t-test to compare the learning preferences 
read_write_t_test <- t.test(children_learning_preferences$prefer_reading, children_learning_preferences$prefer_writing)
read_maths_t_test <- t.test(children_learning_preferences$prefer_reading, children_learning_preferences$prefer_math)
write_maths_t_test <- t.test(children_learning_preferences$prefer_writing, children_learning_preferences$prefer_math)

# Print the t-test results 
print("The t-test results for the learning preferences are:")
print(paste("Reading vs Writing:",read_write_t_test$p.value))
print(paste("Reading vs Maths:",read_maths_t_test$p.value))
print(paste("Writing vs Maths:",write_maths_t_test$p.value))