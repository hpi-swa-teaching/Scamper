mkdir -p -v ${BUILD_PATH}/travisCI/Scamper/fonts
cp -R -v $PROJECT_HOME/build-support/fonts ${BUILD_PATH}/travisCI/Scamper/
chmod -R 777 ${BUILD_PATH}/travisCI/Scamper/fonts/*
ls -lisa ${BUILD_PATH}/travisCI/Scamper/fonts/