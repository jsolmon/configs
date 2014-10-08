" Packages:
" Nerdtree
" go-vim
" supertab
" syntastic
" vim-airline
" vim-colorschemes
" vim-fugitive
" vim-go
execute pathogen#infect()

" allow for autoformatting on save in go
set runtimepath+=$GOROOT/misc/vim " replace $GOROOT with the output of: go env GOROOT
filetype plugin on
filetype plugin indent on
filetype on

" general
syntax on
colorscheme jellybeans
set number
set showmode
set showmatch
set autoread    "reload files changed outside vim
set backspace=eol,start,indent "backspace past eol


" Tabbs and Indents
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set copyindent


" Search Options
set hlsearch
set incsearch
set ignorecase    "ignores case in searches
set smartcase     "pays attention to case when includes uppercase character
set cpoptions+=$  "adds a $ at the end of the selected area for change commands

" Code completion
set omnifunc=syntaxcomplete#Complete

" Backups
set backupdir=~/.vim/backup// " set a specific dir for backups to keep them out of the working dir
set directory=~/.vim/swap// " set a specific dir for swap files to keep them out of the working dir

" Airline
let g:airline_powerline_fonts = 1
set laststatus=2 " always show statusline
set encoding=utf-8
let g:airline#extensions#tabline#enabled = 1

"Nerdtree
map <C-t> :NERDTreeToggle<CR>

"Moving between tabs
inoremap <c-space> <c-n>
nmap <silent> <C-n> :tabnext<CR>
nmap <silent> <C-p> :tabprev<CR>
imap <silent> <C-n> <esc><C-n>
imap <silent> <C-p> <esc><C-p>


" Mouse
set mouse=a

" Go autoformat
let g:go_fmt_fail_silently = 1

