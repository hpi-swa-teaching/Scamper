mkdir -p -v $TRAVIS_BUILD_DIR/travisCI/Scamper/fonts
cp -R -v $PROJECT_HOME/build-support/fonts ${BUILD_PATH}/travisCI/Scamper/
chmod -R 777 $TRAVIS_BUILD_DIR/travisCI/Scamper/fonts/*