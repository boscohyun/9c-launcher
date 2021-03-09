#!/usr/bin/env pwsh
$hash = git rev-parse HEAD
npx electron-packager ./dist `
  --out ./pack `
  --overwrite `
  --icon=./logo-launcher.ico `
  --app-version=$env:npm_package_version-$($hash.Substring(0,8))
cp ./logo-launcher.ico ./pack/icon.ico
