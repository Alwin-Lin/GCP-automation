This is a collection of tools to help you setup your android app project for continuous build by google cloud build

#1. Create project and grant acces to cloud storage

#2. Run setup.sh

#3. Run cloneAndBuild.sh

#4. Set up auto trigger

Few files in this

Setup.sh: This creates android SDK and tar image, as well as assing google cloud storage

cloneFromGit.sh: This adds cloudbuild config to your project and validates by running a local build

Template file. This contains google cloud build config, this will be coppied to the project folder
