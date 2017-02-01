"Stephen Gilardi vimrc
"  Most suggestions taken from github.com/amix/vimrc, the Ultimate vimrc


" History Length
set history=500

" Turn on the wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc,.git

" Show current position
set ruler

" Height of the command bar
set cmdheight=2

" Configure backspace to act correctly
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Modify search to be smarter
set ignorecase
set smartcase
set hlsearch
set incsearch
set magic
map <space> /   
map <c-space> ?

" Better syntax
set showmatch
set mat=2
set foldcolumn=1
syntax enable
colorscheme desert
set background=dark
set encoding=utf8
set ffs=unix,dos,mac

" Better Vim Management
set nobackup
set nowb
set noswapfile
try
   set undodir=~/.undodir
   set undofile
catch
endtry
:map Q <Nop>

" Better Vim Typing
set expandtab
set smarttab
set shiftwidth=3
set tabstop=3
set ai
set si

" Vim Shortcuts
"     - search using the spacebar, backwards search using Ctrl spacebar
"     - 0 goes to first non-blank character
"     - xdate gets turned into the date
map 0 ^
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

" Vim Loading Behavior
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Vim Behavior
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Additional Stuff

"Disable scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

"Helper Functions
function! HasPaste()
   if &paste
      return 'PASTE MODE '
   endif
   return ''
endfunction

set mouse=a
set nu
