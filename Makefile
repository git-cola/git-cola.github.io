prefix	?= $(CURDIR)/build

# Allow customization via config.mak
-include config.mak

install:
	jekyll "$(prefix)"
	-"$(prefix)"/scripts/create-md5sums

all: install

.PHONY: install
