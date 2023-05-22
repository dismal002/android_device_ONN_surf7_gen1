LOCAL_PATH := device/ONN/REL

TARGET_BOARD_PLATFORM := mt8167 
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := mid7015_mk_32

OVERRIDE_TARGET_FLATTEN_APEX := true

BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true

# BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23580672
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
RECOVERY_SDCARD_ON_DATA := true

TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_CRYPTO := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_SCREEN_BLANK_ON_BOOT := false
TW_USE_TOOLBOX := true
TW_THEME := portrait_hdpi
DEVICE_RESOLUTION := 600x1024
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 80
TW_INCLUDE_NTFS_3G := false
TW_INCLUDE_FUSE_EXFAT := true
TWRP_INCLUDE_LOGCAT := false
TW_INCLUDE_FB2PNG := false
TW_DEFAULT_LANGUAGE := en
TW_EXTRA_LANGUAGES := false

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/prebuilt/zImage
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2 buildvariant=user veritykeyid=id:7e4333f9bba00adfe0ede979e28ed1920492b40f
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x15000000 --tags_offset 0x14000000

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab

TARGET_USES_64_BIT_BINDER := true

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := $(TARGET_CPU_VARIANT)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI),$(TARGET_CPU_ABI2)
