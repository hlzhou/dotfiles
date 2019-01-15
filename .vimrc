
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable pathogen package manager
execute pathogen#infect("bundle/{}")

" Enable filetype plugins
filetype plugin on
filetype indent on

" How many lines of history vim has to remember
set history=500

" Auto-read when file changed from the outside
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NERDTree: ctrl + n to open/close, and close if only nerdtree is open
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Get rid of auto-comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Show line numbers
set number

" Turn on the Wild menu (like auto-complete for vim commands)
set wildmenu
set wildmode=longest:list,full

" ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
    else
        set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
        endif

" Show current file
set statusline+=%F

" Define tabs as four spaces; insert spaces instead of tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Always show current position and current line
set ruler
set cursorline

" Add a column to mark 80 character suggested wrap
set colorcolumn=80

" Height of the command bar
set cmdheight=2


" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results, and search as typing
set hlsearch
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" how many tenths of a second to blink when matching brackets
set mat=2

" Leave some buffer room when scrolling
if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized

