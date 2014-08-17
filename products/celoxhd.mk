# Inherit AOSP device configuration for hercules.
$(call inherit-product, device/samsung/celoxhd/full_celoxhd.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# skyrocket overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/celoxhd

# Setup device specific product configuration.
PRODUCT_NAME := aokp_celoxhd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := celoxhd
PRODUCT_MODEL := SGH-I757M
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I757M TARGET_DEVICE=SGH-I757M BUILD_FINGERPRINT="samsung/SGH-I757M/SGH-I757M:4.4.2/KVT49L/UGMC5:user/release-keys" PRIVATE_BUILD_DESC="SGH-I757M-user 4.4.2 KVT49L UGMC5 release-keys"

# boot animation
#PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
