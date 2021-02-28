#
# From Brad's dotfiles Make script
# https://github.com/bradleywright/dotfiles/blob/master/Makefile
#

SOURCE		:= $(CURDIR)
TARGET		:= $(HOME)
FILES		:= bashrc.d bashrc bash_profile gitconfig gitignore gvimrc aliases profile tmux.conf vimrc vim zprofile zshrc

UNAME		:= $(shell uname)

.PHONY: git_submodule install clean

all: clean install

git_submodule:
	git submodule update --init --recursive

install_dotfiles:
	@for f in $(FILES); do \
		ln -sf $(SOURCE)/$$f $(TARGET)/.$$f; \
	done

clean_dotfiles:
	@-for f in $(FILES); do \
		unlink $(TARGET)/.$$f; \
	done

install: git_submodule install_dotfiles

clean: clean_dotfiles
