This is a collection of bash files to help with setting up continuous build on google cloud

File.1 Background setup. This inclues :Android SDK, Tar, Output storage location, Clones project from Github to GCP

Template file. This contains google cloud build config, put this into the project folder

#1. Create project
#2. Grant project access to cloud storage
#3. Set project ID in cloud shell
#4. Modify Setup.sh:

Line8,9: Change the names apk-ci-gcpapk and apk-ci-gcptemp 
Line 12: Change the URL to target project
Line 14: Change the location to your project location
Line 15: Change the location to your project location
Line 16: Change names apk-ci-gcpapk and apk-ci-gcptemp to match line 8 and 9

#5. Run bash script Setup.sh
#6. Set up auto trigger
