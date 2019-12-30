mkdir ~/cloudBuildWS;cd ~/cloudBuildWS
git clone https://github.com/GoogleCloudPlatform/cloud-builders-community.git
cd cloud-builders-community
cd tar
gcloud builds submit — config=cloudbuild.yaml
cd ../android
gcloud builds submit — config=cloudbuild-ndk.yaml — substitutions=_ANDROID_VERSION=29
gcloud config set project cloudBuildWS
mkdir ~/cloudBuildWS
cd ~/cloudBuildWS
git clone https://github.com/Alwin-Lin/performance-samples.git
