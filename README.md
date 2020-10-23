Assignment of course 3 in Data Science Specialization

Information about the R scripts used for final assignment of the data cleaning course. The project is based on data collected from the sensors on Samsung Galaxy smarphones. Full description of the dataset used is available at 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Credit: I followed the [compendium by David Hood](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/) for the course and the [help guide by Luis Santino](https://drive.google.com/file/d/1TiA9Re1y16HTJ_7xUvsW1V15blzjvj03/view) for the assignment.

This repository assumes that datazip file has been downloaded and unzipped in a "data" folder.

# Run_analysis.R

This is the main script that is called to performed the cleaning and tidying of the dataset as described in the excercise and listed below.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

