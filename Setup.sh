mkdir ~/cloudBuildWS;cd ~/cloudBuildWS
git clone https://github.com/GoogleCloudPlatform/cloud-builders-community.git
cd cloud-builders-community
cd tar
gcloud builds submit --config=cloudbuild.yaml
cd ../android
gcloud builds submit --config=cloudbuild-ndk.yaml --substitutions=_ANDROID_VERSION=29
gsutil mb gs://apk-ci-gcpapk
gsutil mb gs://apk-ci-gcptemp
