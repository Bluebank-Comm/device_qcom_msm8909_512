$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
PRODUCT_COPY_FILES += \
       device/qcom/msm8909_512/mixer_paths_qrd_skub.xml:system/etc/mixer_paths_qrd_skub.xml \
       device/qcom/msm8909_512/mixer_paths_qrd_sku3.xml:system/etc/mixer_paths_qrd_sku3.xml \
       device/qcom/msm8909_512/mixer_paths_wcd9340_i2s.xml:system/etc/mixer_paths_wcd9340_i2s.xml

PRODUCT_COPY_FILES += device/qcom/msm8909/media/media_codecs_8905.xml:system/etc/media_codecs_8905.xml

PRODUCT_PROPERTY_OVERRIDES += \
       ro.kaios.torch_node=/sys/class/leds/flashlight/brightness \
       ro.kaios.torch_enable_value=127

$(call inherit-product, device/qcom/msm8909/msm8909.mk)

#QTIC flag
-include $(QCPATH)/common/config/qtic-config.mk

PRODUCT_NAME := msm8909_512
PRODUCT_DEVICE := msm8909_512

PRODUCT_PACKAGES += updater
TARGET_KAIOS_SUPPORT_VERIFIED_BOOT := true

# Enable NFC in gecko frameworks
PRODUCT_PROPERTY_OVERRIDES += \
       ro.moz.nfc.enabled=true

# NFC nfcd daemon and nci/hal libraries for nxp.
PRODUCT_PACKAGES += \
  libnfc-nci \
  nfc_nci.pn54x.default \
  nfcd \
  libnfc-mifare \
  libgcs \
  libgcs-calwrapper \
  libgcs-ipc \
  libgcs-osal \
  libese-jcop-kit

# NFC configuration files
PRODUCT_COPY_FILES += \
    external/libnfc-nci/halimpl/pn54x/libnfc-nxp-PN80S_example.conf:system/etc/libnfc-nxp.conf \
    external/libnfc-nci/halimpl/pn54x/libnfc-nxp_RF-PN80S_example.conf:system/etc/libnfc-nxp_RF.conf \
    external/libnfc-nci/halimpl/pn54x/libnfc-nxp_RF-PN80S_example.conf:system/vendor/libnfc-nxp_RF.conf \
    external/libnfc-nci/halimpl/pn54x/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    external/libnfc-nci/halimpl/pn54x/firmware/libpn553_fw.so:system/vendor/firmware/libpn553_fw.so
