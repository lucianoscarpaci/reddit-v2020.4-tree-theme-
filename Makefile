include $(THEOS)/makefiles/common.mk

ARCHS = armv7 arm64 arm64e
FINALPACKAGE = 1

TWEAK_NAME = Redditv20204TreesTheme
Redditv20204TreesTheme_FILES = Tweak.xm
Redditv20204TreesTheme_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
