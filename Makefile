THEOS_PACKAGE_SCHEME=rootless
TARGET = iphone:clang:latest:7.0
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = TestApp
TestApp_FILES = Tweak.xm
TestApp_FRAMEWORKS = UIKit
TestApp_PRIVATE_FRAMEWORKS = 

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "uiopen 'com.example.testapp://'" || true
