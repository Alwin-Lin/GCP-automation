echo "Cloning GitHub project"
cd ~/cloudBuildWS

if [[ -z "${APP_GITHUB_URL}" ]]; then
  APP_GITHUB_URL="https://github.com/googlecodelabs/android-testing.git"
fi

echo "Project url is $APP_GITHUB_URL"
git clone $APP_GITHUB_URL

echo "adding cloud config to project"
cd ../GCP-automation/Template

echo "getting file location"
gitProjectName=${APP_GITHUB_URL##*/}
projectName=${gitProjectName%.*}
$PATH_TO_PROJECT= "~/cloudBuildWS/$projectName"

echo "adding cloudbuild.yaml"
cp cloudbuild.yaml $PATH_TO_PROJECT

echo "starting local test run"
cd ~$PATH_TO_PROJECT
cloud-build-local --dryrun=false --substitutions=_CACHE_BUCKET=$CACHE_BUCKET_NAME,_ARTIFACT_BUCKET=$APK_BUCKET_NAME cloudbuild.yaml