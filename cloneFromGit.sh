cd ~/cloudBuildWS
echo "Paste your github project link"
read $link
git clone $link
cd ../GCP-automation/Template
echo "Paste path to project"
read $pathToProject
cp cloudbuild.yaml $pathToProject
cd ~$pathToProject
cloud-build-local --dryrun=false --substitutions=_CACHE_BUCKET=$cache,_ARTIFACT_BUCKET=$apk cloudbuild.yaml
