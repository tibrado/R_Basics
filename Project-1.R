# Marketne Noel 
# 09 Mar 2019

# install multiple packages at once
install.packages(pkgs = c("dplyr", "ggplot2", "ggformula","mosaic", "supernova", "lsr","Lock5Data", "Lock5withR",
                          "okcupiddata", "dslabs","fivethirtyeight"))

# function library(): allow package use in project 
# package "dplyr" avalible functions tally(), select(), arrange(), desc()
# for more info use function: browseVignettes(package = "dplyr")
library("dplyr")

# Open csv data set in R [DataFrameName <- read.csv("https://url.com", header=TRUE)]
# If data set form github open raw version. 
SoftwareECSV_dataFrame <- read.csv("https://raw.githubusercontent.com/hmendozar17/R-Learning/master/softwareECSV.csv", header=TRUE)

# Attach data set to R search path
# allow for variable calls with out refrencing data fram
attach(SoftwareECSV_dataFrame) 

#### Step: 1 Clean Data
#1.1 To get overview of data use function str()
str(SoftwareECSV_dataFrame)
## str() return 
# 'data.frame':	149 obs. of  12 variables:
# $ Sex       : Factor w/ 2 levels "Female","Male": 1 1 2 2 1 1 1 2 2 2 ...
# $ Age       : int  23 21 21 18 24 18 18 19 22 17 ...
# $ Topic     : Factor w/ 5 levels "Business","Education",..: 5 2 1 3 2 2 4 3 4 2 ...
# $ Language  : Factor w/ 12 levels "C","C#","C++",..: 1 1 1 1 1 1 1 1 1 1 ...
# $ OS        : Factor w/ 3 levels "Linux","macOS",..: 1 1 1 2 3 3 3 3 3 3 ...
# $ LengthTime: int  32 46 47 47 36 40 48 32 35 39 ...
# $ Efficiency: int  100 98 92 84 85 60 60 70 56 50 ...
# $ Quality   : Factor w/ 3 levels "High","Intermediate",..: 1 1 1 2 2 3 3 2 3 3 ...
# $ Errors    : int  3 5 5 2 1 3 6 0 2 3 ...
# $ Runtime   : num  7.452 0.484 6.21 1.646 8.785 ...
# $ Size      : int  89 41 24 31 51 14 36 24 24 32 ...
# $ Grade     : num  5 5 4.7 3.2 4.5 3 3.3 3.5 3 4.2 ...

# 1.2 View factorable varibles values/meaning 
# use function summary to get variable labels/levels 
# summary Sex 2 levels
summary(Sex) # Female, Male 
sexLevel <- c("Female", "Male")
sexLabel <- c("1","2")

# summary Topic 5 levels
summary(Topic)  # Business, Education, Games, Recreativo, Research 
topicLevel <- c("Business", "Education", "Games", "Recreativo", "Research")
topicLabel <- c("1","2","3","4","5")

# summary Language 12 levels
summary(Language)  # C, C#, C++, HTML5, Java, JavaScript, Pearl, PHP, Python, Ruby, Visual Basic, Xcode 
languageLevel <- c("C", "C#", "C++", "HTML5", "Java", "JavaScript", "Pearl", "PHP", "Python", "Ruby", "Visual Basic", "Xcode")
languageLabel <- c("1","2","3","4","5","6","7","8","9","10","11","12")

# summary OS 3 levels
summary(OS)  # Linux, macOS, Windows 
osLevel <- c("Linux", "macOS", "Windows")
osLabel <- c("1","2","3")

# summary Quality 3 levels 
summary(Quality) # High, Intermediate, Poor 
qualityLevel <- c("High", "Intermediate", "Poor")
qualityLabel <- c("1","2","3")

# 1.3 Factor function to change varibale type
SoftwareECSV_dataFrame$Sex <- factor(Sex, levels = sexLevel, labels = sexLabel)
SoftwareECSV_dataFrame$Topic <- factor(Topic, levels = topicLevel, labels = topicLabel )
SoftwareECSV_dataFrame$Language <- factor(Language, levels = languageLevel, labels = languageLabel)
SoftwareECSV_dataFrame$OS <- factor(OS, levels = osLevel , labels = osLabel )
SoftwareECSV_dataFrame$Quality <- factor(Quality, levels = qualityLevel, labels = qualityLabel)

# 1.4 Print Factored variables 
select(SoftwareECSV_dataFrame, Sex, Topic, Language, OS, Quality)

# 2.0  Classify each variable according to the level of measurement: categorical and quantitative.
Categorical <- c("Sex", "Topic", "Language", "OS", "Quality")
Quantitative <- c("Age", "LengthTime", "Efficiency", "Errors", "Runtime", "Size", "Grade")

print("A quantitative variable is naturally measured as a number for which meaningful arithmetic operations make sense.")
Quantitative

print("Categorical variables take on values that are names or labels.")
Categorical
