# Getting and Cleaning Data Course Project

library(dplyr)

# tidy_name: make a column name presentable
tidy_name <- function (name) {
  name <- gsub("mean()", "Mean", name, fixed=TRUE)
  name <- gsub("std()", "Std", name, fixed=TRUE)
  name <- gsub("()", "", name, fixed=TRUE)
  name <- gsub("angle\\((.*)\\)", "angle_\\1", name)
  name <- gsub("[-,]", "_", name)
  name <- gsub("_+", "_", name)
  name
}

# load the data files describing activity codes and features

activity_labels <- read.table('activity_labels.txt', col.names=c("activityCode", "activityLabel"))
features <- tbl_df(read.table('features.txt', col.names=c("featureCode", "rawFeatureLabel")))
features <- mutate(features, featureLabel=tidy_name(rawFeatureLabel))

# load_data: given a group identifier, load and merge the three related data files
load_data <- function(group, subject_file, activity_file, feature_file) {
  # load the three data frames: subject ids, activity codes, and measured features
  subjects <- read.table(subject_file, col.names=c("subject"))
  activity_codes <- read.table(activity_file, col.names=c("activityCode"))
  data <- read.table(feature_file, col.names=features$featureLabel)
  
  # join the three frames together.  Include only mean and standard deviation features
  data %>%
    mutate(subject=subjects$subject, activityCode=activity_codes$activityCode,
           group=group) %>%
    select(subject, activityCode, group, matches("(Mean)|(Std)"))
}

# join_sets: append two sets of data loaded via load_data, make presentable
join_sets <- function (set1, set2) {
  # append two data frames together and clean up:
  # - replace activity codes with labels
  # - reorder the columns
  # - sort by subject and activity
  
  rbind(set1, set2) %>%
    merge(activity_labels, by.x="activityCode", by.y="activityCode") %>%
    select(-activityCode) %>%
    select(data, subject, group, activityLabel, everything()) %>%
    arrange(subject, activityLabel)
}

training_set <- load_data('training',
                      'train/subject_train.txt', 'train/y_train.txt', 'train/X_train.txt')
test_set <- load_data('test',
                  'test/subject_test.txt', 'test/y_test.txt', 'test/X_test.txt')

# first tidy data set called for in assignment

tidy_set_1 <- tbl_df(join_sets(training_set, test_set))

# second tidy data set (mean of tidy_set_1 grouped by subject and activity)

tidy_set_2 <- tidy_set_1 %>%
  group_by(subject, activityLabel) %>% 
  summarize_each(funs(mean), -group)

# write out the two new data sets

write.csv(tidy_set_1, "tidy_set_1.csv", row.names=FALSE)
write.csv(tidy_set_2, "tidy_set_2.csv", row.names=FALSE)
