.PHONY: build clean

PATH_OUTPUT := output
PRO_DIR := .


INCLUDE_DIRS := $(PRO_DIR)/inc


SRC_DIRS := $(PRO_DIR)/src

# Comand wildcard
INCLUDES_FILE := $(wildcard $(INCLUDE_DIRS)/*.h)

#comand foreach
SRC_FILES := $(foreach SRC_DIRS, $(SRC_DIRS),$(wildcard $(SRC_DIRS)/*.c))



vpath %.c $(SRC_DIRS)
vpath %.h $(INCLUDE_DIRS)

build: main.o sum.o
	gcc $(PATH_OUTPUT)/main.o $(PATH_OUTPUT)/sum.o -o $(PATH_OUTPUT)/app.exe
	./$(PATH_OUTPUT)/app.exe

%.o :%.c $(INCLUDE_DIRS)
	gcc -I$(INCLUDE_DIRS) -c $< -o $(PATH_OUTPUT)/$@

clean:
	rm -rf $(PATH_OUTPUT)/*

log-%:
	@echo $($(subst log-,,$@))