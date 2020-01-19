# GCB-automation
This is a collection of tools to help you setup your android app project for  <a href="https://en.wikipedia.org/wiki/Continuous_integration">continuous build</a> by <a href="https://cloud.google.com/cloud-build/">google cloud build </a>

## Installing
Open up google shell and clone this
```
git clone https://github.com/Alwin-Lin/GCP-automation.git
```
```
cd GCP-automation
```

## Getting started

If this the first time, <a href="https://cloud.google.com/resource-manager/docs/creating-managing-projects">Create a new GCP project</a> and grant acces to cloud storage. 

After that, if this is first time, run setup.sh>cloneAndBuild.sh>triggerCreation.sh

### 1. Create android SDK and tar container images
```
bash setup.sh
```
### 2. Clone your Android app GitHub project and testing setup by triggereing local build
#### The script will clone <a href="https://github.com/googlecodelabs/android-testing.git">Android testing sample code</a> as a example
You can set APP_GITHUB_URL to your GitHub project URL to clone your project.
```
bash cloneAndBuild.sh
```
#### For example if your project is <a href="https://github.com/google/gpu-emulation-stress-test">GPU Emulation Stress Test</a> 
```
export APP_GITHUB_URL="https://github.com/google/gpu-emulation-stress-test"
bash cloneAndBuild.sh
```
### 3. Linking GCP to GitHub for auto build on commit

#### 3.1 Link GCB to your GitHub project
Follow the instructions <a href="https://cloud.google.com/cloud-build/docs/running-builds/create-manage-triggers"> here</a>
#### 3.2 Creates a trigger conecting google cloud and github
This links <a href="https://github.com/googlecodelabs/android-testing.git">Android testing sample code</a> to your GCP.

You can set APP_GITHUB_URL to your GitHub project URL to link your prposetory

After that is done:
```
bash triggerCreation.sh
```

## Examples
Here is a <a href="https://medium.com/@alwin001/continuous-integration-283852c71c02">blog</a> that goes through the complete process from creating a project to setting up a trigger.


## What each files do 
These scripts are designed for google shell
### setup.sh
Creates android SDK and tar image, as well as create google cloud storage. This takes care of step 3 and 4 in the example

The defalt SDK image type is SDK, Android version is 28

Defalt bucket is called gcb_bucket_apk for apk and gcb_bucket_cache for cache

Change as you see fit


### cloneAndBuild.sh
Clones your Github Project and adds cloudbuild config to the file, then validates by running a local build. This does steps 5~7

This requires you to input the project that you want to clone

### triggerCreation.sh
Links Google cloud build to GitHub so that it auto builds whenever there is a new commit. This takes care of step 8

Again, link your github to google cloud platform or else this will not work

### Template
Contains google cloud build config, this will be coppied to the project folder
