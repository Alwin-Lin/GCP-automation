cd ~/cloudBuildWS
git clone https://github.com/Alwin-Lin/performance-samples.git
cd ../GCP-automation/Template
cp cloudbuild.yaml /home/alwin001/cloudBuildWS/performance-samples/BenchmarkSample/
cd ~/cloudBuildWS/performance-samples/BenchmarkSample/
cloud-build-local --dryrun=false --substitutions=_CACHE_BUCKET=apk-ci-gcptemp,_ARTIFACT_BUCKET=apk-ci-gcpapk cloudbuild.yaml
