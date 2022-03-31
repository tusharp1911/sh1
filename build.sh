set -ex
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=treeder
# image name
IMAGE=helloworld
docker build -t $USERNAME/$IMAGE:latest .
