$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
PRODUCT_COPY_FILES += \
       device/qcom/msm8909_512/mixer_paths_qrd_skub.xml:system/etc/mixer_paths_qrd_skub.xml

$(call inherit-product, device/qcom/msm8909/msm8909.mk)

#QTIC flag
-include $(QCPATH)/common/config/qtic-config.mk

PRODUCT_NAME := msm8909_512
PRODUCT_DEVICE := msm8909_512

PRODUCT_PACKAGES += updater

# Enable NFC in gecko frameworks
PRODUCT_PROPERTY_OVERRIDES += \
       ro.moz.nfc.enabled=true

# NFC nfcd daemon and nci/hal libraries for nxp.
PRODUCT_PACKAGES += \
  libnfc-nci \
  nfc_nci.pn54x.default \
  nfcd \
  libnfc-mifare \
  libese-jcop-kit

# NFC configuration files
PRODUCT_COPY_FILES += \
    external/libnfc-nci/halimpl/pn54x/libnfc-nxp-PN80S_example.conf:system/etc/libnfc-nxp.conf \
    external/libnfc-nci/halimpl/pn54x/libnfc-nxp_RF-PN80S_example.conf:system/etc/libnfc-nxp_RF.conf \
    external/libnfc-nci/halimpl/pn54x/libnfc-nxp_RF-PN80S_example.conf:system/vendor/libnfc-nxp_RF.conf \
    external/libnfc-nci/halimpl/pn54x/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    external/libnfc-nci/halimpl/pn54x/firmware/libpn553_fw.so:system/vendor/firmware/libpn553_fw.so
