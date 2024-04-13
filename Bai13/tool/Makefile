# ifeq ($(MODULE),)
#     $(error export MODULE before starting tests: example export MODULE=gpio   )
# endif

# ifeq ($(TEST),)
#     $(error export TEST before starting tests: example export TEST=gpio_TS_01   )
# endif

MODULE := gpio
TEST := gpio_TS_01

ROOT_DIR := ..
CFG_DIR := $(ROOT_DIR)/test/test_$(MODULE)/specific
include $(CFG_DIR)/make/$(TEST).mak
# ifeq ($(TEST),)
# include $(CFG_DIR)/make/$(TEST).mak
# $(if $(wildcard $(CFG_DIR)/make/$(TEST).mak),,$(warning "error !!! Looks like test makefile is invalid name"))
# endif


PRO_DIR      := .
PATH_OUTPUT  := $(ROOT_DIR)/output/$(TEST)
PROJ_NAME := $(MODULE)

INCLUDE_DIRS += $(PRO_DIR)/include
SRC_DIRS     += $(PRO_DIR)/source

SRC_FILE      += $(foreach SRC_DIRS, $(SRC_DIRS), $(wildcard $(SRC_DIRS)/*))
INCLUDE_FILES := $(foreach INCLUDE_DIRS, $(INCLUDE_DIRS), $(wildcard $(INCLUDE_DIRS)/*))

LINKER_FILE  := $(PRO_DIR)/linker/ThoNV_stm32_startup.ld
COMPILER_DIR := C:/GCC

CC	:= $(COMPILER_DIR)/bin/arm-none-eabi-gcc
LD	:= $(COMPILER_DIR)/bin/arm-none-eabi-ld

INCLUDE_DIRS_OPT := $(foreach INCLUDE_DIRS,$(INCLUDE_DIRS),-I$(INCLUDE_DIRS))

CC_OPT := -mcpu=cortex-m3 -c -O0 -g -mthumb $(INCLUDE_DIRS_OPT)
LD_OPT := -T $(LINKER_FILE) -Map $(PATH_OUTPUT)/$(PROJ_NAME).map

OJB_FILES := $(notdir $(SRC_FILE))
OJB_FILES := $(subst .c,.o,$(OJB_FILES))
PATH_OJBS  := $(foreach OJB_FILES, $(OJB_FILES), $(PATH_OUTPUT)/$(OJB_FILES))

vpath %.c $(SRC_DIRS)
vpath %.h $(INCLUDE_DIRS)

# .PHONY: run
run: $(OJB_FILES) $(LINKER_FILE)
	$(LD) $(LD_OPT) $(PATH_OJBS) -o $(PATH_OUTPUT)/$(PROJ_NAME).elf

%.o: %.c $(INCLUDE_FILES)
	mkdir -p $(PATH_OUTPUT)
	$(CC) $(CC_OPT) -c $< -o $(PATH_OUTPUT)/$@

# .PHONY: clean
# clean:
#	rm -rf $(PATH_OUTPUT)

# .PHONY: run
# run:
# 	$(PRO_DIR)/ST-LINKUtility/ST-LINK_CLI.exe -p "$(PATH_OUTPUT)/$(PROJ_NAME).hex" 0x08000000
# 	$(PRO_DIR)/ST-LINKUtility/ST-LINK_CLI.exe -rst
# 	rm -fr $(PATH_OUTPUT)/$(TEST).html
# 	rm -fr $(PATH_OUTPUT)/result.log


log-%:
	@echo $($(subst log-,,$@))