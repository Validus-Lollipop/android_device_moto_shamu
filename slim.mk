## Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := shamu

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := shamu
PRODUCT_NAME := slim_shamu
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := Moto
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=shamu BUILD_FINGERPRINT=google/hammerhead/hammerhead:4.4.4/KTU84P/1227136:user/release-keys PRIVATE_BUILD_DESC="hammerhead-user 4.4.4 KTU84P 1227136 release-keys"

