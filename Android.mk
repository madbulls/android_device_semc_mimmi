LOCAL_MODULE_TAGS := optional

LOCAL_PATH := $(my-dir)
subdir_makefiles := \
	$(LOCAL_PATH)/liblights/Android.mk \
	$(LOCAL_PATH)/libsensors/Android.mk \
	$(LOCAL_PATH)/MimmiParts/Android.mk

include $(subdir_makefiles)
