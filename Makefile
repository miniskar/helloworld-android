all: compile push run

compile:
	cd android ; ndk-build ; cd ..

push:
	adb push android/libs/armeabi-v7a/libHelloWorld.so /data/local/tmp/.
	adb push android/libs/armeabi-v7a/helloWorld /data/local/tmp/.

run:
	adb shell "cd /data/local/tmp ; export LD_LIBRARY_PATH=. ; ./helloWorld"


clean:
	cd android ; ndk-build clean ; cd ..
