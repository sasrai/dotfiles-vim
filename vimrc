" 操作関係
set autoindent
set smartindent
set nocompatible
set backspace=2
set tabstop=2
set shiftwidth=2
set cindent
set comments=sl:/*,mb:*,elx:*/
set wildmenu
set mouse=a

" 検索関係
set incsearch

" 補完関係
setlocal omnifunc=syntaxcomplete#Complete

" 日本語関係
set termencoding=utf-8
set encoding=japan
set enc=utf-8
set fencs=utf-8,cp932,iso-2022-jp,euc-jp,sjis,ucs2le,ucs-2
set fenc=utf-8
set imi=0
set ims=0

" 表示関係
set background=dark
syntax on
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/
set hlsearch
set title
set lcs=tab:>-

" バックアップ関係
set backup
set directory=~/.vim/swp
set swapfile
set backupdir=~/.vim/backup

" NeoBundle
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
