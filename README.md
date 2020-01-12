What:

This is a collection of tools to help you setup your android app project for  <a href="https://en.wikipedia.org/wiki/Continuous_integration">continuous build</a> by <a href="https://cloud.google.com/cloud-build/">google cloud build </a>

#1. Create project and grant acces to cloud storage

#2. Run setup.sh

#3. Run cloneAndBuild.sh

#4. Run triggerCreation.sh

#5 Push a change onto GitHub to check if everything works

What each files do 

setup.sh: This creates android SDK and tar image, as well as assing google cloud storage

cloneAndBuild.sh: This adds cloudbuild config to your project and validates by running a local build

triggerCreation.sh: This links Google cloud build to GitHub

Template file. This contains google cloud build config, this will be coppied to the project folder
