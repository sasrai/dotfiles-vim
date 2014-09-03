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
if [ ! -e $HOME/.vim/backup ]; then
	mkdir -p $HOME/.vim/backup
fi
if [ ! -e $HOME/.vim/swp ]; then
	mkdir -p $HOME/.vim/swp
fi
if [ ! -e $HOME/.vim/bundle ]; then
	mkdir -p $HOME/.vim/bundle
fi

# NeoBundleをインストール
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
