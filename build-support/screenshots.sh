if [ "$SCAMPER_SCREENSHOT" = "true" ] && [ "$TRAVIS_BRANCH" = "master" ] && [ "$TRAVIS_PULL_REQUEST" = "false" ] && [ "$TRAVIS_SECURE_ENV_VARS" = "true" ]; then
	curl --form-string "token=$SCREENSHOT_KEY" --form "file=@${BUILD_PATH}/travisCI/scamper.png" "https://swt-scamper.azurewebsites.net/screenshot/"
fi
