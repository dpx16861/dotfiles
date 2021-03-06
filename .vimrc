set nocompatible

so ~/.vim/plugins.vim

syntax on
set backspace=indent,eol,start
set number

"-------------Visuals--------------"
set background=dark
colorscheme hybrid_material
set t_Co=256
set guifont=Source_Code_Pro:h17
set linespace=6

"We don't want Gui tabs.
set guioptions-=e 

" Show invisibles
set listchars=tab:»\ ,extends:>,precedes:<,space:·
set nolist
" Now change the colours so that tabs blend in with the background
highlight SpecialKey ctermfg=8 ctermbg=8

" Now add a highlight group for tabs we do want to be visible.
" The command below is likely to work in all colorschemes, but feel free to
" edit to your taste.
highlight link VisibleTab Error

" Set up a match to use the new highlight for tabs at the end of the line
match VisibleTab /\t$/

"Disable Gui scrollbars.
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set cursorline
" set cursorcolumn

set ignorecase           " ignore case when searching
set smartcase            " ignore case if search pattern is all lowercase,

set visualbell           " don't beep
set noerrorbells         " don't beep
set autowriteall         " Save on buffer switch

set smartindent
set autoindent           " always set autoindenting on
set copyindent           " copy the previous indentation on autoindenting

" Tabs, Indents, and Spaces
set tabstop=8            " a tab is eight spaces
set expandtab            " expand tabs by default (overloadable per file type later)
set softtabstop=4        " when hitting <BS>, pretend like a tab is removed, even if spaces
set shiftwidth=4         " number of spaces to use

"Code folding 
"http://unix.stackexchange.com/questions/141097/how-to-enable-and-use-code-folding-in-vim
"set foldmethod=manual   
"set foldnestmax=10
"set nofoldenable
"set foldlevel=2

"To turn off swap files:
"http://stackoverflow.com/questions/11255877/vim-swp-files-interfere-with-repository-vimdiff
set nobackup
set nowritebackup
set noswapfile

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

"Make NERDTree easier to toggle.
nmap <D-1> :NERDTreeToggle<cr>

nmap <c-R> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

"-------------Plugins--------------"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"/
"/ JSX
"/
let g:jsx_ext_required = 0
let g:xml_syntax_folding = 1

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0

"/
"/ Gitgutter
"/
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green guifg=darkgreen
highlight GitGutterChange ctermfg=yellow guifg=darkyellow
highlight GitGutterDelete ctermfg=red guifg=darkred
highlight GitGutterChangeDelete ctermfg=yellow guifg=darkyellow

"/
"/ Emmet JSX (className)
"/
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

"let user_emmet_expandabbr_key = '<c-e>'

"/
"/ Airline
"/
set laststatus=2

"-------------Mappings--------------"
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Make it easy to edit the Vimrc Plugins file.
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Move lines
" https://dockyard.com/blog/2013/09/26/vim-moving-lines-aint-hard
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

"-------------Tips-n-Tricks--------------"
" How to Rename Files:
" http://vi.stackexchange.com/questions/305/how-can-i-rename-the-file-im-editing

" Indent Multiple Lines:
" http://stackoverflow.com/questions/235839/indent-multiple-lines-quickly-in-vi
