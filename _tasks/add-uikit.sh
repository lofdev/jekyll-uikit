#!/bin/bash
if [[ "$PWD" = */_tasks ]]; then
  cd ..
fi
if [[ "$PWD" = */jekyll-uikit ]]; then
  cd _tmp
fi
if [[ "$PWD" = */_tmp ]]; then
  echo "Cloning UIKit from master..."
  git clone -q git://github.com/uikit/uikit.git
  echo "Copying SCSS source files to assets pipeline..."
  cp -R uikit/src/scss/* ../_assets/css/uikit/
  echo "Copying JS source files to assets pipeline..."
  cp -R uikit/src/js/* ../_assets/js/uikit/
  echo "Cleaning up..."
  rm -rf uikit
else
  echo "This script should be run from the root of the install."
fi
