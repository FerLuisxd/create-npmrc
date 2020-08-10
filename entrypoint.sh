#!/bin/sh -l
echo "registry = https://npm.pkg.github.com/$INPUT_ORG_NAME" > .npmrc
if [[ -z "$INPUT_AUTH_TOKEN" ]]; then
    echo "//npm.pkg.github.com/:_authToken=$AUTH_TOKEN" >> .npmrc
else
    echo "//npm.pkg.github.com/:_authToken=$INPUT_AUTH_TOKEN" >> .npmrc
fi