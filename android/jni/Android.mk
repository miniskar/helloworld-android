LOCAL_PATH:=$(call my-dir)

# Build HelloWorld library
include $(CLEAR_VARS)
LOCAL_MODULE:=HelloWorld
#LOCAL_SRC_FILES:=../../src/hello.c
SRCDIR:=../src
SRC_FILES:=$(shell find $(SRCDIR) -name '*.cpp') $(shell find $(SRCDIR) -name '*.c')
LOCAL_SRC_FILES:=$(addprefix ../,$(SRC_FILES))
LOCAL_CFLAGS:=-Wall
include $(BUILD_SHARED_LIBRARY)

# Build helloWorld executable
include $(CLEAR_VARS)
LOCAL_MODULE:=helloWorld
LOCAL_SHARED_LIBRARIES:=HelloWorld
include $(BUILD_EXECUTABLE)

