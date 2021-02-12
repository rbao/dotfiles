call plug#begin('~/.vim/plugged')

Plug 'elixir-lang/vim-elixir'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-endwise'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'

call plug#end()

syntax on
filetype plugin indent on

let g:dracula_colorterm = 0
let g:dracula_italic = 0
colorscheme dracula


" Make backsapce work like other program
set backspace=indent,eol,start

set expandtab
set tabstop=2
set number
set relativenumber
set autoindent
set nowrap
set showcmd


" Line number for netrw (the default file explore)
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
let g:netrw_liststyle = 3


" Enable top tab line
let g:airline#extensions#tabline#enabled = 1
" Display the buffer number in the tab
let g:airline#extensions#tabline#buffer_nr_show = 1


" Automatically remove trailing whitespace
autocmd FileType c,cpp,java,php,elixir,javascript,ruby,python autocmd BufWritePre <buffer> %s/\s\+$//e


" Left sidebar for directory navigation 
noremap <C-n> :NERDTreeToggle<CR>
" Fuzzy find file name
noremap <Leader>fn :FZF<CR>
" Fuzzy find file content
noremap <Leader>fc :Rg 
" Locate current file in left sidebar
noremap <Leader>l :NERDTreeFind<CR>
" Close all buffer except current
noremap <Leader>c :%bd\|e#<CR>
" Search an replace in visual mode, confirm one by one or all at once
vnoremap <Leader>rc "hy:%s/<C-r>h//gc<left><left><left>
vnoremap <Leader>rg "hy:%s/<C-r>h//g<left><left>
" Search and replace word under cursor in normal mode, confirm one by one or all at once
nnoremap <Leader>rc :%s/\<<C-r><C-w>\>//gc<left><left><left>
nnoremap <Leader>rg :%s/\<<C-r><C-w>\>//g<left><left>

nnoremap <Leader>ra :cfdo %s//g\|:w<left><left><left><left><left>
