#!/bin/bash
# A simple script to setup container images and cloud storage buckets
echo "Clones cloud builder into file cloudBuildWS"
mkdir ~/cloudBuildWS;cd ~/cloudBuildWS
# https://github.com/GoogleCloudPlatform/cloud-builders-community.git
git clone https://github.com/GoogleCloudPlatform/cloud-builders-community.git
cd cloud-builders-community

echo "Building tar and Android SDK"
cd tar
gcloud builds submit --config=cloudbuild.yaml
cd ../android
if [[ -z "${ANDROID_SDK_IMAGE_TYPE}" ]]; then
  ANDROID_SDK_IMAGE_TYPE="SDK"
fi
echo "Android image type is $ANDROID_SDK_IMAGE_TYPE"
if [[ -z "${ANDROID_SDK_API_LEVEL}" ]]; then
  ANDROID_SDK_API_LEVEL=28
fi
echo "Android image type is $ANDROID_SDK_API_LEVEL"

if [ $ANDROID_SDK_IMAGE_TYPE = "SDK" ]
then gcloud builds submit --config=cloudbuild.yaml --substitutions=_ANDROID_VERSION=$ANDROID_SDK_API_LEVEL
else gcloud builds submit --config=cloudbuild-ndk.yaml --substitutions=_ANDROID_VERSION=$ANDROID_SDK_API_LEVEL
fi

echo "Setting up cloud storage for cache and apk"

if [[ -z "$apk" ]]; then
 apk=$HOSTNAME apk
fi

if [[ -z "$cache" ]]; then
 cache=$HOSTNAME cache
fi
echo "APK is stored in $apk , cache is stored in $cache"
gsutil mb gs://$apk
gsutil mb gs://$cache
