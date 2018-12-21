" Be sure to execute :PluginInstall, suck Vundle
" Vundle install: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" Be iMproved.
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  " Vundle.
  Plugin 'VundleVim/Vundle.vim'

  " Colorscheme
  Plugin 'ayu-theme/ayu-vim'
  Plugin 'tomasr/molokai'
  
  " Language support
  Plugin 'sheerun/vim-polyglot'

  " Parenthesis
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'tpope/vim-surround'

  " Git support
  Plugin 'tpope/vim-fugitive'
  Plugin 'airblade/vim-gitgutter'

  " UI
  Plugin 'scrooloose/nerdtree'
  Plugin 'itchyny/lightline.vim'

  " Indent
  Plugin 'Yggdroot/indentLine'
call vundle#end()

filetype plugin indent on

set termguicolors

colorscheme ayu

source ~/.vim/rc/common.vim
source ~/.vim/rc/config.vim
