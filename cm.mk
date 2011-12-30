## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GALAXYNOTE

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/galaxynote/full_galaxynote.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := galaxynote
PRODUCT_NAME := cm_galaxynote
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy Note

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N7000 TARGET_DEVICE=GT-N7000 BUILD_ID=GRJ22 BUILD_DISPLAY_ID=IML74K BUILD_FINGERPRINT=samsung/GT-N7000/GT-N7000:2.3.6/GINGERBREAD/XXKK9:user/release-keys PRIVATE_BUILD_DESC="GT-N7000-user 2.3.6 GINGERBREAD XXKK9 release-keys"
