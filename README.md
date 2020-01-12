# GCP-automation
This is a collection of tools to help you setup your android app project for  <a href="https://en.wikipedia.org/wiki/Continuous_integration">continuous build</a> by <a href="https://cloud.google.com/cloud-build/">google cloud build </a>

## Getting started

If this the first time, <a href="https://cloud.google.com/resource-manager/docs/creating-managing-projects">Create a new project</a> and grant acces to cloud storage.
## Installing
Open up google shell and clone this project
```
git clone https://github.com/Alwin-Lin/GCP-automation.git
```
```
cd GCP-automation
```
## What each files do 
### setup.sh
Creates android SDK and tar image, as well as assing google cloud storage.

### cloneAndBuild.sh
Clones your Github Project and adds cloudbuild config to the file, then validates by running a local build

### triggerCreation.sh
Links Google cloud build to GitHub

### Template
Contains google cloud build config, this will be coppied to the project folder

## What to run
If this is first time, run setup.sh>cloneAndBuild.sh>triggerCreation.sh
 
If you just want to clone project and build, cloneAndBuild.sh
