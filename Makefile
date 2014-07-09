prefix ?= $(CURDIR)/build

all:: install

install:
	jekyll build --destination "$(prefix)"

sanitize:
	dos2unix share/doc/git-cola/*.html share/doc/git-cola/html/*.html
