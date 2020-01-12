# GCP-automation
This is a collection of tools to help you setup your android app project for  <a href="https://en.wikipedia.org/wiki/Continuous_integration">continuous build</a> by <a href="https://cloud.google.com/cloud-build/">google cloud build </a>

## Getting started

If this the first time, <a href="https://cloud.google.com/resource-manager/docs/creating-managing-projects">Create a new project</a> and grant acces to cloud storage 

Run setup.sh

Run cloneAndBuild.sh
Run triggerCreation.sh

Push a change onto GitHub to check if everything works

## What each files do 
### setup.sh
This creates android SDK and tar image, as well as assing google cloud storage

### cloneAndBuild.sh
This adds cloudbuild config to your project and validates by running a local build

### triggerCreation.sh
This links Google cloud build to GitHub

### Template
This contains google cloud build config, this will be coppied to the project folder
