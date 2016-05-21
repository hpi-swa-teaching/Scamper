mkdir -p -v $TRAVIS_BUILD_DIR/travisCI/Scamper/fonts
cp -vR $PROJECT_HOME/build-support/fonts/* $TRAVIS_BUILD_DIR/travisCI/Scamper/fonts
chmod -R 777 $TRAVIS_BUILD_DIR/travisCI/Scamper/fonts/*