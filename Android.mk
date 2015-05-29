
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

BDROID_DIR:= external/bluetooth/bluedroid

LOCAL_C_INCLUDES := $(BDROID_DIR)/hci/include

LOCAL_SRC_FILES:= \
              btconfig.c

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := debug
LOCAL_MODULE:=btconfig

LOCAL_SHARED_LIBRARIES += libcutils   \
                          libutils    \
                          libdl

include $(BUILD_EXECUTABLE)
