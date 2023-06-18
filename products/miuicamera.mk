#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Permissions
PRODUCT_COPY_FILES += \
    vendor/xiaomi/sweet-miuicamera/configs/default-permissions/miuicamera-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/miuicamera-permissions.xml \
    vendor/xiaomi/sweet-miuicamera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml
    vendor/xiaomi/sweet-miuicamera/configs/default-permissions/miuigallery-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/miuigallery-permissions.xml \
    vendor/xiaomi/sweet-miuicamera/configs/default-permissions/miuigalleryeditor-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/miuigalleryeditor-permissions.xml


# Sysconfig
PRODUCT_COPY_FILES += \
    vendor/xiaomi/sweet-miuicamera/configs/sysconfig/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml
    vendor/xiaomi/sweet-miuicamera/configs/sysconfig/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml \
    vendor/xiaomi/sweet-miuicamera/configs/sysconfig/miuigallery-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuigallery-hiddenapi-package-whitelist.xml \
    vendor/xiaomi/sweet-miuicamera/configs/sysconfig/miuigalleryeditor-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuigalleryeditor-hiddenapi-package-whitelist.xml

# Priv-app Permissions
PRODUCT_COPY_FILES += \
    vendor/xiaomi/sweet-miuicamera/configs/permissions/privapp-permissions-miuigallery.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuigallery.xml \
    vendor/xiaomi/sweet-miuicamera/configs/permissions/privapp-permissions-miuigalleryeditor.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuigalleryeditor.xml \

# Props
PRODUCT_PRODUCT_PROPERTIES += \
	ro.com.google.lens.oem_camera_package=com.android.camera \
        ro.miui.notch=1

PRODUCT_SYSTEM_PROPERTIES += \
    persist.vendor.camera.privapp.list=com.android.camera \
    vendor.camera.aux.packagelist=com.android.camera

$(call inherit-product, vendor/xiaomi/sweet-miuicamera/common/common-vendor.mk)

