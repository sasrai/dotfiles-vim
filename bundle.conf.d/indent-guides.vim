"###############################################
"# vim-indent-guides.vim - インデントの視覚化
"###############################################

" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'

" Vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1

" インデントのハイライト表示を調整
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size  = 1

" 色調整
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=233
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=238
