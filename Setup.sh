#!/bin/bash
# A simple script to setup container images and cloud storage buckets
echo "Clones cloud builder into file cloudBuildWS"
mkdir ~/cloudBuildWS;cd ~/cloudBuildWS
git clone https://github.com/GoogleCloudPlatform/cloud-builders-community.git
cd cloud-builders-community

echo "Building tar and Android SDK"
cd tar
gcloud builds submit --config=cloudbuild.yaml
cd ../android
echo "ndk or sdk?"
read version
echo "Chose Android Version"
read number
gcloud builds submit --config=cloudbuild-$version.yaml --substitutions=_ANDROID_VERSION=$number

echo "Setting up cloud storage for cache and apk"
echo "Name your artifact bucket"
read apk
gsutil mb gs://$apk
echo "Name your cache bucket"
read cache
gsutil mb gs://$cache
