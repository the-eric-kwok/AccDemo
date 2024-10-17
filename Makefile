ifdef SIMULATOR
	TARGET = simulator:clang:latest:14.0
else
	ARCHS = arm64 arm64e

	ifeq ($(THEOS_PACKAGE_SCHEME), rootless)
		TARGET = iphone:clang:latest:15.0
	else
		TARGET = iphone:clang:latest:14.0
	endif

	THEOS_DEVICE_IP = localhost
	THEOS_DEVICE_PORT = 2222
endif

INSTALL_TARGET_PROCESSES = fatego GameDemo-mobile RealRacing3
INSTALL_TARGET_PROCESSES += SpringBoard

TWEAK_NAME = AccDemo AccDemoLoader

AccDemo_FILES = Tweak.x
AccDemo_CFLAGS = -fobjc-arc

AccDemo_FILES += WQSuspendView/SuspendView/SuspendView/WQSuspendView.m
AccDemo_CFLAGS += -I./WQSuspendView/SuspendView

AccDemo_FILES += $(wildcard WHToast/WHToast/*.m)
AccDemo_CFLAGS += -I./WHToast

AccDemo_LIBRARIES = substrate
AccDemo_LOGOSFLAGS = -c generator=MobileSubstrate
AccDemo_PRIVATE_FRAMEWORKS = Preferences AltList


AccDemoLoader_FILES = TweakLoader.x
AccDemoLoader_CFLAGS = -fobjc-arc

ADDITIONAL_CFLAGS += -Wno-error=unused-variable -Wno-error=unused-function -Wno-error=undef-prefix -Wno-error=deprecated-declarations -include Prefix.pch

SUBPROJECTS += accdemopref
SUBPROJECTS += ccaccdemo

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
