# Don't build debug for host or device
ifeq ($(TARGET_BUILD_VARIANT), user)
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
endif
