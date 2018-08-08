#!/bin/sh
HOME="/home/ubuntu"

echo "Creating Newspaper Works demo in ${HOME}/newspaper_works"
cd ${HOME}
sudo -u ubuntu git clone https://github.com/marriott-library/newspaper_works.git
cd newspaper_works
sudo -u ubuntu bundle install --quiet --path vendor/bundle
sudo -u ubuntu rake engine_cart:generate
echo "Installation of Newspaper Works App complete..."
