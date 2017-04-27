$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
PRODUCT_COPY_FILES += \
       device/qcom/msm8909_512/mixer_paths_qrd_skub.xml:system/etc/mixer_paths_qrd_skub.xml

$(call inherit-product, device/qcom/msm8909/msm8909.mk)

#QTIC flag
-include $(QCPATH)/common/config/qtic-config.mk

PRODUCT_NAME := msm8909_512
PRODUCT_DEVICE := msm8909_512

PRODUCT_PACKAGES += updater
