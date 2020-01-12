echo "Cloning GitHub project"
cd ~/cloudBuildWS
echo "Paste your github project link"
read $link
git clone $link

echo "adding cloud config to project"
cd ../GCP-automation/Template
$PATH_TO_PROJECT= "~/cloudBuildWS/$link
cp cloudbuild.yaml $PATH_TO_PROJECT

echo "Starting test build"
cd ~$PATH_TO_PROJECT
cloud-build-local --dryrun=false --substitutions=_CACHE_BUCKET=$CACHE_BUCKET_NAME,_ARTIFACT_BUCKET=$APK_BUCKET_NAME cloudbuild.yaml
