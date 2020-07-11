if [ -z "${DOTPATH:-}"  ]; then
   	DOTPATH=~/.dotfiles; export DOTPATH
fi

command rm -rf ~/.vim
command cd $DOTPATH

command mkdir ~/.backup

for f in .??*
do
	[ "$f" = ".git"  ]      && continue
	[ "$f" = ".gitignore" ] && continue
	[ "$f" = ".viminfo" ]   && continue
	mv $HOME/$f ~/.backup/$f
	ln -sn $HOME/.dotfiles/$f $HOME/$f
done
