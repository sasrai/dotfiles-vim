" 表示関係
set background=dark
syntax on
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/
set hlsearch
set title
set lcs=tab:>-
colorscheme hybrid 

" 背景色を消し去る
autocmd VimEnter,Colorscheme * :hi Normal ctermbg=none
