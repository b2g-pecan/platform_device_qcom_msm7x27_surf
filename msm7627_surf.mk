PRODUCT_PACKAGES := \
    IM \
    VoiceDialer \
    SdkSetup


$(call inherit-product, build/target/product/generic_with_google.mk)

# Overrides
PRODUCT_NAME := msm7627_surf
PRODUCT_DEVICE := msm7627_surf
