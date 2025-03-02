#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the proprietary version
$(call inherit-product, vendor/oneplus/dolby/dolby-vendor.mk)

# DolbyManager
PRODUCT_PACKAGES += \
    OplusDolby

# Overlay-RRO
PRODUCT_PACKAGES += \
    OplusDolbyResCommon

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs_c2_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_dolby_audio.xml
