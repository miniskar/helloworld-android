How to build and run hello world application for android device

### Sources
Sources are placed in <b>src</b> directory

### Building 
Make sure that Android NDK is installed and ndk-build is accessible
$ make compile 
The make command will call ndk-build in <b>android</b> directory. Current example builds two targets. 
1. <b>libHelloWorld.so</b> shared library.
2. <b>helloWorld</b> executable

### Push to device
Make sure that the android device is connected to the machine and android platform tools <b>(adb)</b> are accessible
$ make push
It pushes the sharedy library and executable to <b>/data/local/tmp</b> location in device

### Run on device
Make command to run on device
$ make run
It runs it through adb shell.
