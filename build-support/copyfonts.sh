mkdir -p /home/travis/smalltalkCI-master/_builds/Scamper/fonts
pwd
if ![[-d $TRAVIS_BUILD_DIR/build-support/fonts/ ]]
	then
		echo "font dir not exists."
fi

cp -R $TRAVIS_BUILD_DIR/build-support/fonts/* /home/travis/smalltalkCI-master/_builds/Scamper/fonts
chmod -R 777 /home/travis/smalltalkCI-master/_builds/Scamper/fonts/*
