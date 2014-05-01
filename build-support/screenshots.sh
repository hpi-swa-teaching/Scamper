if [ "$SCREENSHOT" = "true" ] && [ "$TRAVIS_BRANCH" = "master" ] && [ "$TRAVIS_SECURE_ENV_VARS" = "true" ]; then
	PNG=$(find -name "scamper.png")
	echo $PNG
	curl --form-string "token=$SCREENSHOT_KEY" --form "file=@$PNG" "https://swt-scamper.azurewebsites.net/screenshot/"
fi
