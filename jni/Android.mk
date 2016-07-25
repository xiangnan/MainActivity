LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

#for loop
LOCAL_CFLAGS += -std=c99

#Position Independent Code
LOCAL_CFLAGS += -fPIE
LOCAL_LDFLAGS += -fPIE -pie

LOCAL_MODULE := dialserver
LOCAL_SRC_FILES :=dial_data.c \
				dial_server.c \
				LinuxInterfaces.c \
				main.c \
				mongoose.c \
				quick_ssdp.c \
				url_lib.c
#lots of files use this
#MY_FILES := $(wildcard $(LOCAL_PATH)/*.c)
#MY_FILES := $(MY_FILES:$(LOCAL_PATH)/%=%)
#LOCAL_SRC_FILES += $(MY_FILES)

LOCAL_MODULE_CLASS := EXECUTABLES
include $(BUILD_EXECUTABLE)