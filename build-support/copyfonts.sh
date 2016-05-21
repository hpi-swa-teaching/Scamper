mkdir -p -v $TRAVIS_BUILD_DIR/travisCI/Scamper/fonts
pwd
cp -vR $TRAVIS_BUILD_DIR/build-support/fonts/* $TRAVIS_BUILD_DIR/travisCI/Scamper/fonts
chmod -R 777 $TRAVIS_BUILD_DIR/travisCI/Scamper/fonts/*