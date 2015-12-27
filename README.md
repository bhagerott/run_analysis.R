## run_analysis.R
This code takes data from the working directory and morphs it in 5 main steps.
#Modifications:
1. Merges training and test sets into one directory. This is done by creating new variables based of the variables in the data tables "test" and "train" for labels, subjects and data.
2. Extracts Mean and Standard Deviations of variables by creating a table with only these values.
3. Uses descriptive labels for activities in data by creating a table with only the labels necessary.
4. Labels data set with descriptive names by morphing the column names of the previous table.
5. Creates a new data set with averages for each variable for each activity and subject by aggregating the variables. A table is created with this new tables in a tidy form called "tidydataset.txt"