#!/bin/bash

set -e

echo ${INPUT_CI_USER_NAME}
echo ${INPUT_CI_TOKEN}
echo ${INPUT_CONTINT_TOKEN_ART}
echo ${INPUT_ARTIFACTORY_URL}

output=$( bash -c "ls -la")
echo "::set-output name=output_message::$output"
echo $output