cd $IMAGES_PATH

case "$ST" in

  # Squeak-4.3 ... allow Squeak4.3 for backwards compatibility
  Squeak-4.3|Squeak4.3)
    cd Squeak4.3
    ;;
  # Squeak-4.4
  Squeak-4.4)
    # 4.3 stores things in a Squeak4.3 directory. 4.4 doesn't.
    # So we mimic the behaviour of 4.3.
    cd Squeak4.4
    ;;
  # Squeak-4.5
  Squeak-4.5)
    # 4.3 stores things in a Squeak4.3 directory. 4.5 doesn't.
    # So we mimic the behaviour of 4.3.
    cd Squeak4.5
    ;;
  # Squeak-Trunk
  Squeak-Trunk)
    cd TrunkImage
    ;;

  # unknown
  \?) echo "Unknown Smalltalk version ${ST}"
    exit 1
  ;;
  esac
ls
#mkdir -p -v $VM_PATH/Resources/Scamper/fonts
#cp -R -v $PROJECT_HOME/build-support/fonts $VM_PATH/Resources/Scamper/