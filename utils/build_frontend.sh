#!/usr/bin/env bash

set -e

echo Current Working Dir: "$PWD"

cd playground-frontend
yarn build
build-frontend-pack build/ -o app.frontend

cd ..
cp playground-frontend/app.frontend src/slambda_playground/assets/app.frontend