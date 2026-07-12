THEOS ?= $(HOME)/theos
export THEOS

TARGET := iphone:clang:latest:14.0
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = TestApp

TestApp_FILES = main.m
TestApp_FRAMEWORKS = UIKit Foundation
TestApp_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk
