#!/bin/bash

set -e

echo "Hello!!"
printenv

git clone https://$INPUT_CI_USER:$INPUT_CI_TOKEN@github.com/Telefonica/$INPUT_TLF_BFW.git
output=$( python3 $INPUT_TLF_BFW/tlfbuild.py --help )

echo "::set-output name=output_message::$output"
echo $output