THEOS_PACKAGE_SCHEME=rootless
TARGET = iphone:clang:latest:7.0
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = TestApp
TestApp_FILES = main.m
TestApp_FRAMEWORKS = UIKit Foundation
TestApp_CFLAGS = -fobjc-arc
TestApp_INFO_PLIST = Info.plist

include $(THEOS_MAKE_PATH)/application.mk
