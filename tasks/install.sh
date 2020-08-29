#!/usr/bin/env bash
. files.sh

for i in "${FILES[@]}" do
    rm -rf $HOME/$i
    ln -sn $HOME/.dotfiles/$i $HOME/$i
done
