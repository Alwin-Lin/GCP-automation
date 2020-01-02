mkdir ~/cloudBuildWS;cd ~/cloudBuildWS
git clone https://github.com/GoogleCloudPlatform/cloud-builders-community.git
cd cloud-builders-community
cd tar
gcloud builds submit --config=cloudbuild.yaml
cd ../android
gcloud builds submit --config=cloudbuild-ndk.yaml --substitutions=_ANDROID_VERSION=29
gsutil mb gs://apk-ci-gcpapk
gsutil mb gs://apk-ci-gcptemp


cd ~/cloudBuildWS
git clone https://github.com/Alwin-Lin/performance-samples.git
cd ../GCP-automation/Template
cp cloudbuild.yaml /home/alwin001/cloudBuildWS/performance-samples/BenchmarkSample/
cd ~/cloudBuildWS/performance-samples/BenchmarkSample/
cloud-build-local --dryrun=false --substitutions=_CACHE_BUCKET=apk-ci-gcptemp,_ARTIFACT_BUCKET=apk-ci-gcpapk cloudbuild.yaml
