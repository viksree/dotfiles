" Be iMproved! (Or, enable all features.)
set nocompatible

" Tab length
set tabstop=4

" Upon <BS>, remove a tab's worth of spaces.
set softtabstop=4

" (Auto)indent tab length
set shiftwidth=4

" Insert spaces instead of tab character.
set expandtab

" Set text width to 80 characters.
set tw=79

" This option copies indent from current line when starting a new line.
set autoindent

" Enable syntax highlighting.
syntax on

" Show the line & column number of the cursor position, separated by a comma.
set ruler

" Print the line number in front of each line.
set number

" Enable mouse input for all modes.
set mouse=a

" Enable 256-color color schemes
let &t_Co=256

" Set 0 to ^
noremap 0 ^

" Set colorscheme. From w0ng/vim-hybrid.
colorscheme hybrid

" Highlight HORN files as YACC files
au BufRead,BufNewFile *.hn set filetype=yacc

" set leader key to ,
:let mapleader = ","

" Strip trailing whitespace on buffer save.
"  source: http://vimcasts.org/episodes/tidying-whitespace/
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" Call StripTrailingWhitespaces upon saving Scala, Python, Java, C, C++, and Objective-C files.
autocmd BufWritePre *.scala,*.py,*.java,*.c,*.h,*.m : call <SID>StripTrailingWhitespaces()

" Airline configuration
set laststatus=2

let g:airline_theme='base16'

" Directories for swp files. This doesn't pollute the working directories.
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Tagbar activation
nmap <leader>b :TagbarToggle<CR>

" Move between windows with <C-hjkl> and <C-Tab>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-Tab> <C-W>w

" NERDTree configuration
nnoremap <Leader>v :let NERDTreeQuitOnOpen = 1<bar>NERDTreeToggle<CR>
nnoremap <Leader>V :let NERDTreeQuitOnOpen = 0<bar>NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.o$']

" Open vsplits to right and splits to bottom
set splitbelow
set splitright

" Use virtual window tabs
set guioptions-=e

" Set line spacing to 3
set lsp=3

" Highlight search results
set hlsearch

" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

""""""""""""""""""""""
" Plug Configuration "
""""""""""""""""""""""

call plug#begin('~/.vim/plugged')
" Ag for vim
Plug 'rking/ag.vim'

"" Activate NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Tab completion in vim
Plug 'ervandew/supertab'

" Autoformat tabs
Plug 'godlygeek/tabular'

" Browse tags in current file
Plug 'majutsushi/tagbar'

" Enhanced status/tabline
Plug 'bling/vim-airline'

" Show git diff in gutter of file
Plug 'airblade/vim-gitgutter'

" Go syntax highlighting in vim
Plug 'fatih/vim-go', { 'for': 'go' }

" Markdown syntax highlighting for vim
Plug 'plasticboy/vim-markdown'

" Scala syntax highlighting for vim
Plug 'derekwyatt/vim-scala'

" Simplifies modifying 'surroundings'
Plug 'tpope/vim-surround'

call plug#end()
