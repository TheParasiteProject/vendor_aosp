PRODUCT_BRAND ?= TheParasiteProject

CUSTOM_BUILD_DATE := $(shell date +%Y%m%d-%H%M)
CUSTOM_BUILD_DATE_UTC := $(shell date '+%Y-%m-%d %H:%M UTC %s')

CUSTOM_VERSION := TheParasiteProject_$(CUSTOM_BUILD)-$(BUILD_ID)-$(CUSTOM_BUILD_DATE)
CUSTOM_VERSION_PROP := $(BUILD_ID)
