##Project: Data Wrangling Exercise 2: Dealing with missing values

#Port of embarkation - Find missing values and replace with "S"
titanic_clean <- titanic_clean %>% mutate(embarked = replace_na(embarked, "S"))

#Age: fill in missing values by calculating the mean then using this value to populate missing values
titanic_clean <- titanic_clean %>% mutate(age = replace_na(age, mean(titanic_clean$age,na.rm = TRUE)))

#Lifeboat: fill in missing values with "None"
titanic_clean <- titanic_clean %>% mutate(boat, boat = replace_na(boat, replace = "None"))

#Cabin: create new column "has_cabin_number" 1 = yes, 0 = no
titanic_clean <- titanic_clean %>% mutate(cabin, has_cabin_number = case_when(grepl(x = cabin, "\\.*") ~ 1, TRUE ~ 0))
