#!/bin/bash

set -e

echo "Hello!!"
echo "INPUT_CI_USER: ${INPUT_CI_USER}"
echo "INPUT_CI_TOKEN: ${INPUT_CI_TOKEN}"
echo "INPUT_CONTINT_TOKEN_ART: ${INPUT_CONTINT_TOKEN_ART}"
echo "INPUT_ARTIFACTORY_URL: ${INPUT_ARTIFACTORY_URL}"

git clone https://$INPUT_CI_USER:$INPUT_CI_TOKEN@github.com/Telefonica/$INPUT_TLF_BFW.git
output=$( python3 $INPUT_TLF_BFW/tlfbuild.py --help )

echo "::set-output name=output_message::$output"
echo $output