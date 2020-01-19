# Getting GitHub links
if [[ -z "${APP_GITHUB_URL}" ]]; then
  APP_GITHUB_URL="https://github.com/googlecodelabs/android-testing.git"
fi
echo "Curent project is $APP_GITHUB_URL"

# NAME_AND_OWNER_FILE="googlecodelabs/android-testing.git"
NAME_AND_OWNER_FILE=${APP_GITHUB_URL##*/github.com/}
echo "NAME_AND_OWNER_FILE=$NAME_AND_OWNER_FILE"

# GIT_PROJECT_FULL_NAME="android-testing.git"
GIT_PROJECT_FULL_NAME=${NAME_AND_OWNER_FILE#*/}
echo "GIT_PROJECT_FULL_NAME=$GIT_PROJECT_FULL_NAME"

# GIT_PROJECT_NAME="android-testing"
GIT_PROJECT_NAME=${GIT_PROJECT_FULL_NAME%.*}
echo "GIT_PROJECT_NAME=$GIT_PROJECT_NAME"

# REPOSETORY_OWNER_NAME="googlecodelabs"
REPOSETORY_OWNER_NAME=${NAME_AND_OWNER_FILE%/$GIT_PROJECT_FULL_NAME}
echo "REPOSETORY_OWNER_NAME=$REPOSETORY_OWNER_NAME"


# Creates a trigger conecting google cloud and github
gcloud beta builds triggers create github \
--repo-name="$GIT_PROJECT_NAME" \
--repo-owner="$REPOSETORY_OWNER_NAME" \
--branch-pattern=".*" \
--build-config="~/GCP-automation/Template/cloudbuild.yaml" \
