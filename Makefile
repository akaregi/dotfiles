EXCLUTIONS := .git
CANDICATES := $(wildcard .??*) bin
DOTFILES := $(filter-out $(EXCLUTIONS), $(CANDICATES))
DOTPATH := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

.PHONY: install
install:
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

.PHONY: clean
clean:
	@$(foreach val, $(DOTFILES), rm -rf $(HOME)/$(val);)

.PHONY: list
list:
	@$(foreach val, $(DOTFILES), echo $(HOME)/$(val);)