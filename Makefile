.phony: build install

PREFIX ?= /usr

build:
	@echo "Nothing to build, please invoke the install target"

install:
	install -Dm755 bin/ssh-agents $(PREFIX)/bin/ssh-agents
