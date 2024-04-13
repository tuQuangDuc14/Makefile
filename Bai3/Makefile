.PHONY: rule1 rule2 rule3

var := "aa"
var3:= "bb"

var1 = $(var)
var2 :=$(var)
var3 ?= $(var)

var := "change"

rule1:
	@echo "$(var1)"
	@echo "$(var2)"
	@echo "$(var3)"

rule2:
	echo "ducTQ"

include a.mk
