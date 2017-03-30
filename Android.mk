# Only export in debug builds
ifeq ($(filter user, $(TARGET_BUILD_VARIANT)),)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_XPCOM_VARS)

LOCAL_MODULE := Protobuf.js
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SRC_FILES := dist/ProtoBuf.js

include $(BUILD_XPCOM)
endif
