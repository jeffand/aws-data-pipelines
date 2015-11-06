#!/bin/sh
source ./dotenv

# script to create a pipeline
# argument one: 	name of the pipeline
# argument two: 	FOD's unique id for this pipeline
# argument three: 	file path to the pipeline's configuration file

NAME=$1
UNIQUE_ID=$2
CONFIG_FILE=$3

echo "Creating $NAME pipeline"
PIPELINE_ID=$(aws datapipeline create-pipeline \
    --name "$NAME" \
    --unique-id "$UNIQUE_ID" \
    --region us-east-1 \
    --profile redshift-production)

echo "finished the creation"
ID=$(echo $PIPELINE_ID | jq -r '.pipelineId')


aws datapipeline put-pipeline-definition \
    --pipeline-id $ID \
    --pipeline-definition "file://$CONFIG_FILE" \
    --region us-east-1 \
    --profile redshift-production
