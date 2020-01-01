This is a collection of bash files to help with setting up continuous build on google cloud

File.1 Background setup. This inclues :Android SDK, Tar, Output storage location, Clones project from Github to GCP

Template file. This contains google cloud build config, put this into the project folder

#1. Create project
#2. Grant project access to cloud storage
#3. Assign output storage location in the bash file by swaping out apk-ci-GCPApk and apk-ci-GCPTemp
#4. Run bash file
#5. clone cloudbuil.yaml into the git project
#6. Run local build
