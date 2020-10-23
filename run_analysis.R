library(dplyr)

# Path for the files needed
train_data = "data/train/X_train.txt"
test_data = "data/test/X_test.txt"
train_label = "data/train/y_train.txt"
test_label = "data/test/y_test.txt"
features = "data/features.txt"
activity_label = "data/activity_labels.txt"
train_subject = "data/train/subject_train.txt"
test_subject = "data/test/subject_test.txt"

# Read data from the files
#observations
total_data = rbind(read.table(train_data), read.table(test_data))
#labels 
total_labels = rbind(read.table(train_label), read.table(test_label))
#subjects 
total_subjects = rbind(read.table(train_subject), read.table(test_subject))
#activity text labels
activity_labels = read.table(activity_label)

# Get the columns to be kept i.e. only with means and standard deviation
features = read.table(features)

#get column numbers and names where description has mean or std in it
col_nums =grep("mean|std",features[,2])
col_names = grep("mean|std",features[,2],value = TRUE)

# clean names for any special characters
col_names = gsub("[()-]","",col_names)

cols = list("col_numbers"=col_nums,"col_names"=col_names)
cols_to_keep = cols[[1]]

# select the given columns as needed
total_data = total_data %>% select(all_of(cols_to_keep))

# change the integer labels with text labels
total_labels = activity_labels[match(total_labels[,1],activity_labels[,1]),2]
#total_labels = as.factor(total_labels)

# Combine observations and labels
total_set = cbind(total_data,total_labels,total_subjects)

# Give descriptive names to variables
cols_names = cols[[2]]
names(total_set) =c(cols_names,"activitylabel","subject")

averages = total_set %>% group_by(activitylabel,subject) %>% summarize_all(mean)