$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/mimmi/mimmi-vendor.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := U20i
PRODUCT_DEVICE := mimmi
PRODUCT_MODEL := U20i

#
# Boot files
#
ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

# density in DPI of the LCD of this board. This is used to scale the UI
# appropriately. If this property is not defined, the default value is 160 dpi. 
PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=120

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.    
DEVICE_PACKAGE_OVERLAYS := device/semc/mimmi/overlay

-include device/semc/msm7x27-common/msm7x27.mk

# Sensors and lights
PRODUCT_PACKAGES += \
    sensors.mimmi \
    lights.mimmi \
    Torch \
    MimmiParts

# media configuration xml file
PRODUCT_COPY_FILES += \
    device/semc/mimmi/prebuilt/media_profiles.xml:/system/etc/media_profiles.xml

# Robyn uses low-density artwork where available
PRODUCT_AAPT_CONFIG := normal ldpi mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Extra prebuilt binaries
PRODUCT_COPY_FILES += \
    device/semc/mimmi/prebuilt/hw_config.sh:system/etc/hw_config.sh

# Wifi firmware
PRODUCT_COPY_FILES += \
    device/semc/mimmi/prebuilt/tiwlan.ini:system/etc/wifi/tiwlan.ini \
    device/semc/mimmi/prebuilt/tiwlan_ap.ini:system/etc/wifi/softap/tiwlan_ap.ini

# Themes
PRODUCT_COPY_FILES += \
    device/semc/mimmi/prebuilt/minicm.png:system/usr/res/minicm.png \
    device/semc/mimmi/prebuilt/bootanimation.zip:system/media/bootanimation.zip \
    device/semc/mimmi/prebuilt/SuquashiInputMethod.apk:system/app/SuquashiInputMethod.apk

# Touchsceen
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/cy8ctma300_ser.idc:system/usr/idc/cy8ctma300_ser.idc \
    device/semc/msm7x27-common/prebuilt/mimmi_keypad.idc:system/usr/idc/mimmi_keypad.idc

# SEMC T9 k/b
PRODUCT_COPY_FILES += \
    device/semc/mimmi/prebuilt/usr/keychars/mimmi_keypad.kcm.bin:system/usr/keychars/mimmi_keypad.kcm.bin \
    device/semc/mimmi/prebuilt/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/semc/mimmi/prebuilt/usr/keychars/systemconnector.kcm.bin:system/usr/keychars/systemconnector.kcm.bin \
    device/semc/mimmi/prebuilt/usr/zi/Basque/Zi8DatEUs.z8d:system/usr/zi/Basque/Zi8DatEUs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Danish/Zi8DatDAs.z8d:system/usr/zi/Danish/Zi8DatDAs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Estonian/Zi8DatETs.z8d:system/usr/zi/Estonian/Zi8DatETs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/German/Zi8DatDEs.z8d:system/usr/zi/German/Zi8DatDEs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Czech/Zi8DatCSs.z8d:system/usr/zi/Czech/Zi8DatCSs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Dutch/Zi8DatNLs.z8d:system/usr/zi/Dutch/Zi8DatNLs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Greek/Zi8DatELs.z8d:system/usr/zi/Greek/Zi8DatELs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Malay/Zi8DatMSs.z8d:system/usr/zi/Malay/Zi8DatMSs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Catalan/Zi8DatCAs.z8d:system/usr/zi/Catalan/Zi8DatCAs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Romanian/Zi8DatROs.z8d:system/usr/zi/Romanian/Zi8DatROs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Polish/Zi8DatPLs.z8d:system/usr/zi/Polish/Zi8DatPLs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/French_CA/Zi8DatFRCAs.z8d:system/usr/zi/French_CA/Zi8DatFRCAs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/French_EU/Zi8DatFREUs.z8d:system/usr/zi/French_EU/Zi8DatFREUs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Slovak/Zi8DatSKs.z8d:system/usr/zi/Slovak/Zi8DatSKs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Lithuanian/Zi8DatLTs.z8d:system/usr/zi/Lithuanian/Zi8DatLTs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Italian/Zi8DatITs.z8d:system/usr/zi/Italian/Zi8DatITs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Ukrainian/Zi8DatUKs.z8d:system/usr/zi/Ukrainian/Zi8DatUKs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Hungarian/Zi8DatHUs.z8d:system/usr/zi/Hungarian/Zi8DatHUs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Spanish_EU/Zi8DatESEUs.z8d:system/usr/zi/Spanish_EU/Zi8DatESEUs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Spanish_SA/Zi8DatESSAs.z8d:system/usr/zi/Spanish_SA/Zi8DatESSAs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Galician/Zi8DatGLs.z8d:system/usr/zi/Galician/Zi8DatGLs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Latvian/Zi8DatLVs.z8d:system/usr/zi/Latvian/Zi8DatLVs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Serbian/Zi8DatSRLAs.z8d:system/usr/zi/Serbian/Zi8DatSRLAs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Slovenian/Zi8DatSLs.z8d:system/usr/zi/Slovenian/Zi8DatSLs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Croatian/Zi8DatHRs.z8d:system/usr/zi/Croatian/Zi8DatHRs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Indonesian/Zi8DatINs.z8d:system/usr/zi/Indonesian/Zi8DatINs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Russian/Zi8DatRU.z8d:system/usr/zi/Russian/Zi8DatRU.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Tagalog/Zi8DatTLs.z8d:system/usr/zi/Tagalog/Zi8DatTLs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Bulgarian/Zi8DatBGs.z8d:system/usr/zi/Bulgarian/Zi8DatBGs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Finnish/Zi8DatFIs.z8d:system/usr/zi/Finnish/Zi8DatFIs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Swedish/Zi8DatSVs.z8d:system/usr/zi/Swedish/Zi8DatSVs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Norwegian/Zi8DatNOs.z8d:system/usr/zi/Norwegian/Zi8DatNOs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/English_AM/Zi8DatENAMs.z8d:system/usr/zi/English_AM/Zi8DatENAMs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/English_UK/Zi8DatENUKs.z8d:system/usr/zi/English_UK/Zi8DatENUKs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Turkish/Zi8DatTRs.z8d:system/usr/zi/Turkish/Zi8DatTRs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Portuguese_BZ/Zi8DatPTBZs.z8d:system/usr/zi/Portuguese_BZ/Zi8DatPTBZs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Portuguese_EU/Zi8DatPTEUs.z8d:system/usr/zi/Portuguese_EU/Zi8DatPTEUs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Arabic/Zi8DatARs.z8d:system/usr/zi/Arabic/Zi8DatARs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Farsi/Zi8DatFAs.z8d:system/usr/zi/Farsi/Zi8DatFAs.z8d \
    device/semc/mimmi/prebuilt/usr/zi/Hebrew/Zi8DatIWs.z8d:system/usr/zi/Hebrew/Zi8DatIWs.z8d \
    device/semc/mimmi/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/semc/mimmi/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/semc/mimmi/prebuilt/usr/keylayout/systemconnector.kl:system/usr/keylayout/systemconnector.kl \
    device/semc/mimmi/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/kaz.xml:system/usr/keyboard-config/languages/kaz.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/deu.xml:system/usr/keyboard-config/languages/deu.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/fra_ca.xml:system/usr/keyboard-config/languages/fra_ca.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/por_br.xml:system/usr/keyboard-config/languages/por_br.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/lav.xml:system/usr/keyboard-config/languages/lav.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/ron.xml:system/usr/keyboard-config/languages/ron.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/lit.xml:system/usr/keyboard-config/languages/lit.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/ell.xml:system/usr/keyboard-config/languages/ell.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/eng.xml:system/usr/keyboard-config/languages/eng.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/rus.xml:system/usr/keyboard-config/languages/rus.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/eng_us.xml:system/usr/keyboard-config/languages/eng_us.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/slk.xml:system/usr/keyboard-config/languages/slk.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/numberDecimal.xml:system/usr/keyboard-config/languages/numberDecimal.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/slv.xml:system/usr/keyboard-config/languages/slv.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/spa.xml:system/usr/keyboard-config/languages/spa.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/spa_la.xml:system/usr/keyboard-config/languages/spa_la.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/est.xml:system/usr/keyboard-config/languages/est.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/sqi.xml:system/usr/keyboard-config/languages/sqi.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/fin.xml:system/usr/keyboard-config/languages/fin.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/tgl.xml:system/usr/keyboard-config/languages/tgl.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/srp.xml:system/usr/keyboard-config/languages/srp.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/eus.xml:system/usr/keyboard-config/languages/eus.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/sun.xml:system/usr/keyboard-config/languages/sun.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/numberNatural.xml:system/usr/keyboard-config/languages/numberNatural.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/swe.xml:system/usr/keyboard-config/languages/swe.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/fra.xml:system/usr/keyboard-config/languages/fra.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/msa.xml:system/usr/keyboard-config/languages/msa.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/glg.xml:system/usr/keyboard-config/languages/glg.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/nld.xml:system/usr/keyboard-config/languages/nld.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/tur.xml:system/usr/keyboard-config/languages/tur.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/ukr.xml:system/usr/keyboard-config/languages/ukr.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/nor.xml:system/usr/keyboard-config/languages/nor.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/phone.xml:system/usr/keyboard-config/languages/phone.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/numberInteger.xml:system/usr/keyboard-config/languages/numberInteger.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/hrv.xml:system/usr/keyboard-config/languages/hrv.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/hun.xml:system/usr/keyboard-config/languages/hun.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/cat.xml:system/usr/keyboard-config/languages/cat.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/jav.xml:system/usr/keyboard-config/languages/jav.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/ind.xml:system/usr/keyboard-config/languages/ind.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/bos.xml:system/usr/keyboard-config/languages/bos.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/ces.xml:system/usr/keyboard-config/languages/ces.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/pol.xml:system/usr/keyboard-config/languages/pol.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/por.xml:system/usr/keyboard-config/languages/por.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/ita.xml:system/usr/keyboard-config/languages/ita.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/isl.xml:system/usr/keyboard-config/languages/isl.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/bul.xml:system/usr/keyboard-config/languages/bul.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/dan.xml:system/usr/keyboard-config/languages/dan.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/ara.xml:system/usr/keyboard-config/languages/ara.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/fas.xml:system/usr/keyboard-config/languages/fas.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/heb.xml:system/usr/keyboard-config/languages/heb.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/languages/dan.xml:system/usr/keyboard-config/languages/dan.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/keyprint.xml:system/usr/keyboard-config/keyprint.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/arabic.xml:system/usr/keyboard-config/layouts/arabic.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/azerty.xml:system/usr/keyboard-config/layouts/azerty.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/cyrillic.xml:system/usr/keyboard-config/layouts/cyrillic.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/greek.xml:system/usr/keyboard-config/layouts/greek.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/hebrew.xml:system/usr/keyboard-config/layouts/hebrew.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/latin-on-arabic-azerty.xml:system/usr/keyboard-config/layouts/latin-on-arabic-azerty.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/latin-on-arabic.xml:system/usr/keyboard-config/layouts/latin-on-arabic.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/latin-on-bopomofo.xml:system/usr/keyboard-config/layouts/latin-on-bopomofo.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/latin-on-cyrillic.xml:system/usr/keyboard-config/layouts/latin-on-cyrillic.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/latin-on-greek.xml:system/usr/keyboard-config/layouts/latin-on-greek.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/latin-on-hebrew.xml:system/usr/keyboard-config/layouts/latin-on-hebrew.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/latin-on-korean.xml:system/usr/keyboard-config/layouts/latin-on-korean.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/latin-on-pinyin.xml:system/usr/keyboard-config/layouts/latin-on-pinyin.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/latin-on-thai.xml:system/usr/keyboard-config/layouts/latin-on-thai.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/qwerty-br.xml:system/usr/keyboard-config/layouts/qwerty-br.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/qwerty-en.xml:system/usr/keyboard-config/layouts/qwerty-en.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/qwerty-no-dk.xml:system/usr/keyboard-config/layouts/qwerty-no-dk.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/qwerty-se-fi.xml:system/usr/keyboard-config/layouts/qwerty-se-fi.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/layouts/qwertz.xml:system/usr/keyboard-config/layouts/qwertz.xml \
    device/semc/mimmi/prebuilt/usr/keyboard-config/keyprint_qwertz.xml:system/usr/keyboard-config/keyprint_qwertz.xml

