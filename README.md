# GCB-automation
This is a collection of tools to help you setup your android app project for  <a href="https://en.wikipedia.org/wiki/Continuous_integration">continuous build</a> by <a href="https://cloud.google.com/cloud-build/">google cloud build </a>

## Getting started

If this the first time, <a href="https://cloud.google.com/resource-manager/docs/creating-managing-projects">Create a new project</a> and grant acces to cloud storage.
## Installing
Open up google shell and clone this
```
git clone https://github.com/Alwin-Lin/GCP-automation.git
```
```
cd GCP-automation
```
## Examples
Here is a <a href="https://medium.com/@alwin001/continuous-integration-283852c71c02">blog</a> that goes through the complete process from creating a project to setting up a trigger.

## What each files do 
These scripts are designed for google shell
### setup.sh
Creates android SDK and tar image, as well as create google cloud storage.

The defalt SDK image type is SDK, Android version is 28

Defalt bucket is called gcb_bucket_apk for apk and gcb_bucket_cache for cache

Change as you see fit


### cloneAndBuild.sh
Clones your Github Project and adds cloudbuild config to the file, then validates by running a local build

This requires you to input the project that you want to clone

### triggerCreation.sh
Links Google cloud build to GitHub so that it auto builds whenever there is a new commit

work in progress

### Template
Contains google cloud build config, this will be coppied to the project folder

## What to run and how
If this is first time, run setup.sh>cloneAndBuild.sh>triggerCreation.sh
```
bash setup.sh
```
```
bash cloneAndBuild.sh
```
```
bash triggerCreation.sh
```
If you just want to clone project and build, cloneAndBuild.sh
### Before your run triggerCreation.sh
It is important that you have <a href="https://cloud.google.com/cloud-build/docs/running-builds/create-manage-triggers">connected to github repositories</a> or else this will not work at all
