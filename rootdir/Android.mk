ifeq ($(TARGET_BOOTLOADER_BOARD_NAME), mt6592)

LOCAL_PATH := $(call my-dir)

# Init scripts

include $(CLEAR_VARS)
LOCAL_MODULE       := enableswap.sh
LOCAL_MODULE_TAGS  := optional eng
LOCAL_SRC_FILES    := boot/ramdisk/enableswap.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := factory_init.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_SRC_FILES    := boot/ramdisk/factory_init.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := fstab.mt6592
LOCAL_MODULE_TAGS  := optional eng
LOCAL_SRC_FILES    := boot/ramdisk/fstab.mt6592
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.modem.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_SRC_FILES    := boot/ramdisk/init.modem.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.mt6592.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_SRC_FILES    := boot/ramdisk/init.mt6592.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.mt6592.usb.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_SRC_FILES    := boot/ramdisk/init.mt6592.usb.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.recovery.mt6592.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_SRC_FILES    := boot/ramdisk/init.recovery.mt6592.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.mt6592.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_SRC_FILES    := boot/ramdisk/ueventd.mt6592.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

endif
