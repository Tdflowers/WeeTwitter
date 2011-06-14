SDKVERSION = 5.0
include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = WeeTwitter
WeeTwitter_FILES = WeeAppTest.mm
WeeTwitter_INSTALL_PATH = /System/Library/WeeAppPlugins/WeeTwitter.bundle
WeeTwitter_FRAMEWORKS = UIKit CoreGraphics
WeeTwitter_PRIVATE_FRAMEWORKS = BulletinBoard

include $(THEOS_MAKE_PATH)/library.mk

after-stage::
	mv _/System/Library/WeeAppPlugins/WeeTwitter.bundle/WeeTwitter.dylib _/System/Library/WeeAppPlugins/WeeTwitter.bundle/WeeTwitter