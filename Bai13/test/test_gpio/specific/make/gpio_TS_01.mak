TEST_DETAILS  :=  "Check Count"
TEST_CASE_CONTENT_1:= "check count = 4"

include $(CFG_DIR)/make/gpio_common.mk

SRC_FILE += $(CFG_DIR)/../generic/source/gpio_TC_01.c

SRC_FILE += $(CFG_DIR)/source/gpio_TS_01.c

