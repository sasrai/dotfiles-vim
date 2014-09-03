" NeoBundle初期化
runtime! neobundle.conf.vim

" その他設定を読み込み
set runtimepath+=~/.vim/
runtime! conf.d/*.vim
