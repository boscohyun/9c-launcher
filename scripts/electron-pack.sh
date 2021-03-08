#!/usr/bin/env bash
hash="$(git rev-parse HEAD)"
npx electron-packager ./dist --out ./pack --overwrite --icon=./logo-launcher.icns --app-version="$npm_package_version"-"${hash:0:8}"
