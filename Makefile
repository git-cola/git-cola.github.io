prefix ?= build
flags ?=

all:: install

install::
	jekyll build --destination "$(prefix)" $(flags)

sanitize::
	dos2unix share/doc/git-cola/*.html share/doc/git-cola/html/*.html

docker::
	docker run -it --rm --user="$(UID):$(GID)" --volume="$(CURDIR):/srv/jekyll" jekyll/minimal:latest jekyll build --destination "$(prefix)" $(flags)
