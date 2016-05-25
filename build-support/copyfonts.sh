mkdir -vp ${BUILD_PATH}/travisCI/Scamper/fonts
pwd
if [! [-d $TRAVIS_BUILD_DIR/build-support/fonts/ ]]
	then
		echo "font dir not exists."
fi

cp -vR $TRAVIS_BUILD_DIR/build-support/fonts/* ${BUILD_PATH}/travisCI/Scamper/fonts
chmod -R 777 ${BUILD_PATH}/travisCI/Scamper/fonts/*
ls -l  /home/travis/smalltalkCI-master/_builds