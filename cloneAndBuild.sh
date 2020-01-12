echo "Cloning GitHub project"
cd ~/cloudBuildWS
echo "Paste your github project link"
read $git_URL
git clone $git_URL

echo "adding cloud config to project"
cd ../GCP-automation/Template

echo "getting file location"
gitProjectName = ${git_URL##*/}
projectName = ${gitProjectName%.*}
$PATH_TO_PROJECT= "~/cloudBuildWS/$projectName

echo "adding cloudbuild.yaml"
cp cloudbuild.yaml $PATH_TO_PROJECT

echo "Starting local test run"
cd ~$PATH_TO_PROJECT
cloud-build-local --dryrun=false --substitutions=_CACHE_BUCKET=$CACHE_BUCKET_NAME,_ARTIFACT_BUCKET=$APK_BUCKET_NAME cloudbuild.yaml
