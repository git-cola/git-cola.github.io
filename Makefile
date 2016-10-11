prefix ?= $(CURDIR)/build
flags ?=

all:: install

install:
	jekyll build --destination "$(prefix)" $(flags)

sanitize:
	dos2unix share/doc/git-cola/*.html share/doc/git-cola/html/*.html
