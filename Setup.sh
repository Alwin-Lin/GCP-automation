mkdir ~/cloudBuildWS;cd ~/cloudBuildWS
git clone https://github.com/GoogleCloudPlatform/cloud-builders-community.git
cd cloud-builders-community
cd tar
gcloud builds submit --config=cloudbuild.yaml
cd ../android
echo "ndk or sdk?"
read version
echo "Chose Android Version"
read number
gcloud builds submit --config=cloudbuild-$version.yaml --substitutions=_ANDROID_VERSION=$number
echo "Name your artifact bucket"
read bucket
gsutil mb gs://$bucket
echo "Name your cache bucket"
read cache
gsutil mb gs://$cache
