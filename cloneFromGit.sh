echo "Cloning GitHub project"
cd ~/cloudBuildWS
echo "Paste your github project link"
read $link
git clone $link
echo "adding cloud config to project"
cd ../GCP-automation/Template
echo "Paste path to project"
read $pathToProject
cp cloudbuild.yaml $pathToProject
echo "Starting test build"
cd ~$pathToProject
cloud-build-local --dryrun=false --substitutions=_CACHE_BUCKET=$cache,_ARTIFACT_BUCKET=$apk cloudbuild.yaml
