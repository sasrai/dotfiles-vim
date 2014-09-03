#!/bin/sh

# オリジナルファイルをバックアップ
if [ -f $HOME/.vimrc ]; then
	mv $HOME/.vimrc $HOME/.vimrc.backup.`date +"%Y%m%d%H%M%S"`
fi

# .vimディレクトリ内のvimrcを$HOMEへ設置(リンク)
if [ ! -L $HOME/.vimrc ]; then
	cd $HOME
	ln -s .vim/vimrc .vimrc
fi

# 足らないディレクトリを作成
if [ -d $HOME/.vim/backup ]; then
	mkdir -p $HOME/.vim/backup
fi
if [ -d $HOME/.vim/swp ]; then
	mkdir -p $HOME/.vim/swp
fi
