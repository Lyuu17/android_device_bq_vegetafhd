# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Call device specific makefile
$(call inherit-product, device/bq/vegetafhd/device.mk)

LOCAL_PATH := device/bq/vegetafhd

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=6.0.1/MMB29M/2419427:user/release-keys PRIVATE_BUILD_DESC="vegetafhd-user 6.0.1 MMB29M 2419427 release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="vegetafhd"

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq    
       
PRODUCT_NAME := lineage_vegetafhd
PRODUCT_DEVICE := vegetafhd
PRODUCT_BRAND := bq
PRODUCT_MANUFACTURER := bq
PRODUCT_MODEL := Aquaris E5 FHD

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# set locales & aapt config.
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Inherit some common CM stuff.
CM_BUILD := vegetafhd

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp
	
PRODUCT_PROPERTY_OVERRIDES += \
  persist.service.adb.enable=1 \
  persist.service.debuggable=1 \
  persist.sys.usb.config=mtp,adb

$(call inherit-product, vendor/cm/config/common_full_phone.mk)
