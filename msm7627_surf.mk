PRODUCT_PROPERTY_OVERRIDES += \
       dalvik.vm.heapstartsize=5m \
       dalvik.vm.heapgrowthlimit=36m \
       dalvik.vm.heapsize=64m

$(call inherit-product, device/qcom/common/common.mk)

PRODUCT_NAME := msm7627_surf
PRODUCT_DEVICE := msm7627_surf

