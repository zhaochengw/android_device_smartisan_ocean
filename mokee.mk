$(call inherit-product, device/smartisan/ocean/full_ocean.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

PRODUCT_NAME := mk_ocean
PRODUCT_DEVICE := ocean
PRODUCT_BRAND := Smartisan
PRODUCT_MODEL := Smartisan Pro 2S
PRODUCT_MANUFACTURER := Smartisan

PRODUCT_GMS_CLIENTID_BASE := android-smatisan

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ocean-user 8.1.0 OPM1.171019.026 1 dev-keys"

BUILD_FINGERPRINT := SMARTISAN/oxford/oxford:8.1.0/OPM1.171019.026/1540457762:user/dev-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.mk.maintainer=zhaochengw
