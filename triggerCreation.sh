echo "Creating trigger for GitHub"
gcloud beta builds triggers create github \
echo "Input name of github reposetory"
read $REPO_NAME
--repo-name=$REPO_NAME\
echo "Input name of github reposetory"
read $REPO_OWNER
--repo-owner=$REPO_OWNER\
--branch-pattern=".*" \
--build-config=$pathToProject \
