set nocompatible

" so ~/.vim/plugins.vim

syntax enable
set backspace=indent,eol,start
set number
" let mapleader = ',' 						    	"The default is \, but a comma is much better.

"-------------Visuals--------------"
colorscheme xoria256
set t_Co=256
set guifont=Menlo:h15
set linespace=10

set guioptions-=l                                                       "Disable Gui scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R

"-------------Search--------------"
set hlsearch
set incsearch

"-------------Split Management--------------"
set splitbelow
set splitright

"We'll set simpler mappings to switch between splits `ctrl+(h/j/k/l)`.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"-------------Mappings--------------"
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

