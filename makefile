TOP=..

all: glbench

GLBENCH_COMMON:=utils.cc waffle_stuff.cc

glbench:
	g++ -o $@ \
	-std=c++11 \
	attributefetchtest.cc \
	cleartest.cc \
	contexttest.cc \
	fillratetest.cc \
	glinterfacetest.cc \
	main.cc \
	md5.cc \
	png_helper.cc \
	readpixeltest.cc \
	swaptest.cc \
	testbase.cc \
	texturereusetest.cc \
	texturetest.cc \
	textureupdatetest.cc \
	textureuploadtest.cc \
	trianglesetuptest.cc \
	varyingsandddxytest.cc \
	windowmanagercompositingtest.cc \
	yuvtest.cc \
	-I$(TOP) \
	-I$(TOP)/gflags/include \
	-I$(TOP)/libchrome/ \
	-L$(TOP)/libchrome/ \
	-I$(TOP)/waffle/include/waffle/ \
	-L$(TOP)/waffle/lib/ \
	-DPLATFORM=PLATFORM_NULL \
	-DUSE_OPENGLES=1 \
	$(GLBENCH_COMMON) \
	-lGL \
	-lpng \
	-lrt \
	-lpthread \
	-lbase-core-0 \
	-lwaffle-1 \
	$(TOP)/gflags/lib/libgflags.a \


clean:
	rm -rf glbench
