mkdir -vp $TRAVIS_BUILD_DIR/travisCI/Scamper/fonts
pwd
if [! [-d $TRAVIS_BUILD_DIR/build-support/fonts/ ]]
	then
		echo "font dir not exists."
fi

cp -vR $TRAVIS_BUILD_DIR/build-support/fonts/* $TRAVIS_BUILD_DIR/travisCI/Scamper/fonts
chmod -R 777 $TRAVIS_BUILD_DIR/travisCI/Scamper/fonts/*