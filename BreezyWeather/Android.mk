LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := default-permissions-org.breezyweather.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/default-permissions
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := BreezyWeather
LOCAL_SRC_FILES := BreezyWeather.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := platform
LOCAL_REQUIRED_MODULES := default-permissions-org.breezyweather.xml
LOCAL_DEX_PREOPT := false
$(shell mkdir -p $(TARGET_OUT_PRODUCT)/app/BreezyWeather/lib/$(TARGET_ARCH))
$(shell unzip -qqjo $(LOCAL_PATH)/BreezyWeather.apk lib/arm64-v8a/*.so -d $(TARGET_OUT_PRODUCT)/app/BreezyWeather/lib/$(TARGET_ARCH))
include $(BUILD_PREBUILT)
