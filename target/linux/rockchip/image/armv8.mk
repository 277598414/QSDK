# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2020 Tobias Maedel

define Device/friendlyarm_nanopi-r2c
  DEVICE_VENDOR := FriendlyElec
  DEVICE_MODEL := NanoPi R2C
  SOC := rk3328
  UBOOT_DEVICE_NAME := nanopi-r2c-rk3328
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-bin | gzip | append-metadata
  DEVICE_PACKAGES := kmod-usb-net-rtl8152
endef
TARGET_DEVICES += friendlyarm_nanopi-r2c

define Device/friendlyarm_nanopi-r2s
  DEVICE_VENDOR := FriendlyElec
  DEVICE_MODEL := NanoPi R2S
  SOC := rk3328
  UBOOT_DEVICE_NAME := nanopi-r2s-rk3328
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-bin | gzip | append-metadata
  DEVICE_PACKAGES := kmod-usb-net-rtl8152
endef
TARGET_DEVICES += friendlyarm_nanopi-r2s

define Device/friendlyarm_nanopi-r4s
  DEVICE_VENDOR := FriendlyElec
  DEVICE_MODEL := NanoPi R4S
  SOC := rk3399
  UBOOT_DEVICE_NAME := nanopi-r4s-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-bin | gzip | append-metadata
  DEVICE_PACKAGES := kmod-r8169 -urngd
endef
TARGET_DEVICES += friendlyarm_nanopi-r4s

define Device/friendlyarm_nanopi-r4se
  DEVICE_VENDOR := FriendlyElec
  DEVICE_MODEL := NanoPi R4SE
  SOC := rk3399
  UBOOT_DEVICE_NAME := nanopi-r4se-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-bin | gzip | append-metadata
  DEVICE_PACKAGES := kmod-r8169 -urngd
endef
TARGET_DEVICES += friendlyarm_nanopi-r4se

define Device/friendlyarm_nanopi-r5s
  DEVICE_VENDOR := FriendlyElec
  DEVICE_MODEL := NanoPi R5S
  SOC := rk3568
  UBOOT_DEVICE_NAME := nanopi-r5s-rk3568
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r5s | pine64-bin | gzip | append-metadata
  DEVICE_PACKAGES := kmod-r8125
endef
TARGET_DEVICES += friendlyarm_nanopi-r5s

define Device/pine64_rockpro64
  DEVICE_VENDOR := Pine64
  DEVICE_MODEL := RockPro64
  SOC := rk3399
  UBOOT_DEVICE_NAME := rockpro64-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := -urngd
endef
TARGET_DEVICES += pine64_rockpro64

define Device/radxa_rock-pi-4a
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := ROCK Pi 4A
  SOC := rk3399
  SUPPORTED_DEVICES := radxa,rockpi4a
  UBOOT_DEVICE_NAME := rock-pi-4-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := -urngd
endef
TARGET_DEVICES += radxa_rock-pi-4a

define Device/radxa_rock-pi-4a-plus
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := ROCK Pi 4A Plus
  SOC := rk3399
  SUPPORTED_DEVICES := radxa,rockpi4a-plus
  UBOOT_DEVICE_NAME := rock-pi-4-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := -urngd
endef
TARGET_DEVICES += radxa_rock-pi-4a-plus

define Device/radxa_rock-pi-4b
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := ROCK Pi 4B
  SOC := rk3399
  SUPPORTED_DEVICES := radxa,rockpi4b
  UBOOT_DEVICE_NAME := rock-pi-4-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := -urngd
endef
TARGET_DEVICES += radxa_rock-pi-4b

define Device/radxa_rock-pi-4b-plus
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := ROCK Pi 4B Plus
  SOC := rk3399
  SUPPORTED_DEVICES := radxa,rockpi4b-plus
  UBOOT_DEVICE_NAME := rock-pi-4-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := -urngd
endef
TARGET_DEVICES += radxa_rock-pi-4b-plus

define Device/radxa_rock-pi-4c
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := ROCK Pi 4C
  SOC := rk3399
  SUPPORTED_DEVICES := radxa,rockpi4c
  UBOOT_DEVICE_NAME := rock-pi-4-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := -urngd
endef
TARGET_DEVICES += radxa_rock-pi-4c

define Device/xunlong_orangepi-r1-plus
  DEVICE_VENDOR := Xunlong
  DEVICE_MODEL := Orange Pi R1 Plus
  SOC := rk3328
  UBOOT_DEVICE_NAME := orangepi-r1-plus-rk3328
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-bin | gzip | append-metadata
  DEVICE_PACKAGES := kmod-usb-net-rtl8152
endef
TARGET_DEVICES += xunlong_orangepi-r1-plus

define Device/xunlong_orangepi-r1-plus-lts
  DEVICE_VENDOR := Xunlong
  DEVICE_MODEL := Orange Pi R1 Plus LTS
  SOC := rk3328
  UBOOT_DEVICE_NAME := orangepi-r1-plus-lts-rk3328
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-bin | gzip | append-metadata
  DEVICE_PACKAGES := kmod-usb-net-rtl8152
endef
TARGET_DEVICES += xunlong_orangepi-r1-plus-lts
