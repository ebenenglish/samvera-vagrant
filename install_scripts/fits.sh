#!/bin/sh

# FITS
SHARED_DIR=$1

if [ -f "$SHARED_DIR/install_scripts/config" ]; then
  . $SHARED_DIR/install_scripts/config
fi

cd $DOWNLOAD_DIR
if [ ! -d fits-$FITS_VERSION ]; then
  DOWNLOAD_URL="http://projects.iq.harvard.edu/files/fits/files/fits-${FITS_VERSION}.zip"
  if [ ! -f "fits.zip" ]; then
    curl $DOWNLOAD_URL -o fits.zip
  fi
  unzip fits.zip
  chmod a+x fits-$FITS_VERSION/*.sh
fi

cd fits-$FITS_VERSION/
sudo cp -a *.properties *.sh lib tools xml /usr/local/bin
