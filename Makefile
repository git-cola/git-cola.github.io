prefix ?= $(CURDIR)/build

all:: install

install:
	jekyll "$(prefix)"
