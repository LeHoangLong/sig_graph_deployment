set -o allexport
export BASE_DIR=$(realpath $(dirname "$0")/../)
echo $BASE_DIR
source $1
file=$(basename $1)
mkdir -p tmp
envsubst < $2 > tmp/$file.yaml
set +o allexport
docker compose -f tmp/$file.yaml up