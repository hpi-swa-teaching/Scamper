mkdir -vp /home/travis/smalltalkCI-master/_builds/Scamper/scamper-icons
pwd
if [! [-d $TRAVIS_BUILD_DIR/build-support/scamper-icons/ ]]
	then
		echo "font dir not exists."
fi

cp -vR $TRAVIS_BUILD_DIR/build-support/scamper-icons/* /home/travis/smalltalkCI-master/_builds/Scamper/scamper-icons
chmod -R 777 /home/travis/smalltalkCI-master/_builds/Scamper/scamper-icons/*
