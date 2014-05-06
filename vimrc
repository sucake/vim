set nu
syntax on
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
"set smartindent
set list
set listchars=tab:>-,trail:-
set hls
map <F8> :NERDTreeToggle<CR>
map <F7> :Tlist<CR>
map <F5> :!g++ "%" -o tmp.out && ./tmp.out<CR>
map <F6> :!php "%"<CR>
filetype plugin on
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set tags=tags;
set autochdir
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" vundle config
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/ShowMarks'
Bundle 'mattn/emmet-vim'

"
" original repos on GitHub
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
"Bundle 'L9'
" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!

" vim-powerline配置
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'unicode'
set encoding=utf8


""""""""""""""""""""""""""""""
" showmarks setting
""""""""""""""""""""""""""""""
" Enable ShowMarks
let showmarks_enable = 1
" Show which marks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1 
" For showmarks plugin
hi ShowMarksHLl ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
hi ShowMarksHLu ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black 
