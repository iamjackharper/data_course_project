# Codebook

This is the CodeBook to explain the different variables used and the transformations applied in scripts for data cleaning assignment.

Credit: I followed the [guide of David Hood](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/) for the course.

# run_analysis.R

## file names


- train_data       : training data
- test_data        : test data
- train_label      : train label data
- test_label       : test label data
- features         : file containing features name
- activity_label  : file containing activity text labels 
- train_subject    : file for subject numbers for training observations
- test_subject     : file for subject numbers for test observations

## variables

 - total_data       : contains joined train and test observations
 - total_labels     : contains joined labels for train and test observations
 - total_subjects   : contains joined list of subjects from train and test observations
  - activity_labels : contains tabel mapping between activity code and text label
  - cols            : it keeps the return set from the function "get_feature_cols_means_std"
  - cols_to_keep : stores columns numbers to keep based in the criteria of features that only contains mean and standard deviation observations
  - cols_names: it keeps the column names as returned by the function ""get_feature_cols_means_std". These are used to give descriptive name to each feature
  - cols    : list of columns to keep composed by columns numbers and columns names
  - total_set   : contains total set of observations combined with activity labels and subject numbers
  - averages : stores the final result grouped by activity and subject with average value of all features for each group.

## transformations
  - total_data with all features is filtered based on the given columns for mean and std values. 
  - total_labels is return by the utility function as integer values. These values are transformed to text label by doing a lookup of values of total_labels into activity_labels dataframe
  - total_set is prepared by doing column bind of observations, activity labels and subject numbers
  - name of columns in total_set are replaced as provided in cols_names
  - averages is obtained by using dplyr library and chaining the functions groupby and summarize_each
  