# Creates a trigger conecting google cloud and github
gcloud beta builds triggers create github \

if [[ -z "${APP_GITHUB_URL}" ]]; then
  APP_GITHUB_URL="https://github.com/googlecodelabs/android-testing.git"
fi
echo "Curent project is $APP_GITHUB_URL"

NAME_AND_OWNER_FILE=${APP_GITHUB_URL#*/}
echo "Getting project name"
echo "Getting project owner"

NAME_FILE=${NAME_AND_OWNER#*/}
NAME=${NAME_FILE%.*}
OWNER=${NAME_AND_OWNER##*/}

--repo-name=[$NAME] \
echo "reposetory named as $NAME"
--repo-owner=[$OWNER] \
echo "The owner of this is $OWNER"
--branch-pattern=".*" \
--build-config=[~/GCP-automation/Template/cloudbuild.yaml] \
