" Pathogen
call pathogen#infect()
call pathogen#helptags()

""""""""""""""""""""
"" General Optons ""
""""""""""""""""""""
syntax on                       " Set syntax highlighting on
filetype plugin indent on       " Turn on filetype specific options

"set mouse=a                     " Enable mouse in console vim

let mapleader=","               " Set leader key to comma
let g:mapleader=","             " Set leader key to comma for Gvim

set nocompatible                " Who needs vi?
set laststatus=2                " Always show status line
set number                      " Enable line numbering
set history=50                  " Number of lines to remember
set numberwidth=2               " Default width of line numbering
set wildmenu                    " Enable wild menu
set wildmode=list:longest,full  " Extended wild menu
set timeoutlen=1000             " Timeout on mapped keys (default: 1000)
set modeline                    " Allow vim options to be embedded in files
set modelines=5                 " they must be within the first or last 5 lines
set ffs=unix,dos,mac            " Try recognizing dos, unix, and mac line endings
set hidden                      " Don't require saving a buffer to edit another
set colorcolumn=80              " Draw a coloured column in column 80
set encoding=utf-8              " Default encoding
set t_Co=256                    " Let vim know that terminal has 256 colours

set undodir=~/.vim/undo         " Undo directory
set undofile
set undolevels=100              " Level of undo remembered
set undoreload=100              " Same, but for redo

set noerrorbells                " Error bells are obnoxious
set t_vb=                       " Disable beeping
set novisualbell                " Don't flash either

set hid                         " Enable changing buffers without saving
set magic                       " Enable magic
set shell=/bin/zsh          	" My shell
set ruler                       " Show numeric indication of location
set scrolloff=3                 " Three lines of context above/below cursor
set backspace=2                 " Enable backspacing over autoindent, EOL, and BOL
set showmatch                   " Highlight matching parens
set mat=3                       " Time to show matching parens
set matchpairs+=<:>             " Allow matching of brackets too!
set noswapfile                  " No swapfiles

set nowrap                      " Don't wrap lines
set linebreak                   " Don't linebreak in the middle of a line
"set autoindent                  " Enable autoindenting
set smartindent                 " Enable smart indenting

set tabstop=4                   " <tab> inserts 4 spaces
set shiftwidth=4                " Indent level is 4 spaces
set softtabstop=4               " Backspace on tabbed spaces deletes all of the spaces
set expandtab                   " Expand tabs to spaces
set shiftround                  " Indentation is always a multiple of shiftwidth

set noautowrite                 " Never write a file unless I request it.
set noautowriteall              " NEVER.
set noautoread                  " Don't automatically re-read changed files.

set ignorecase                  " Default to using case insensitive searches
set smartcase                   " unless uppercase letters are used in the regex
set smarttab                    " Handle tabs more intelligently
set hlsearch                    " Highlight searches by default
set incsearch                   " Incrementally search while typing a regex


"""""""""""""""""""
"" Colour Scheme ""
"""""""""""""""""""
set background=dark
let g:solarized_termcolors=256
let g:solarized_visibility="high"
colorscheme solarized



""""""""""""""
"" Keybinds ""
""""""""""""""

" Don't deindent #'s
:inoremap # X<C-H>#

" Tagbar binding
nnoremap <F3> :TagbarToggle<cr>

" Fast saving
nnoremap <silent><leader>w :w!<cr>

" Fast buffer closing
nnoremap <silent><leader>q :clo<cr>

" Fast quit
nnoremap <silent><leader>qq :quitall!<cr>

" Fast vertical split
nnoremap <silent><leader>\ :vsp<cr>

" Fast horizontal split
nnoremap <silent><leader>- :sp<cr>

" Toggle spellcheck
nnoremap <silent><leader>s :set spell!<cr>

" Comment line(s) using '#'
nnoremap <leader>m :s/^/#/<cr>
vnoremap <leader>m :s/^/#/<cr>

" Uncomment line(s) using '#'
nnoremap <leader>mm :s/^#//<cr>
vnoremap <leader>mm :s/^#//<cr>

" Use arrow keys to change buffers
nnoremap <right> :bn<cr>
nnoremap <left> :bp<cr>

" Unhighlight search results
nnoremap <silent><leader>/ :nohls<cr>

" Toggle invisibles
nnoremap <silent><leader>i :set list!<cr>

" Use H/(L|T) for head/tail of line
nnoremap H ^
nnoremap L $
nnoremap T $

" Toggle paste mode
set pastetoggle=<F4>

" Select everything
nnoremap <silent><leader>A ggVG

" Open shell
nnoremap <silent><leader>d :sh<cr>

" Resize buffers
nnoremap <pageup> :res +10<cr>
nnoremap <pagedown> :res -10<cr>
nnoremap <leader><pageup> :vertical res +10<cr>
nnoremap <leader><pagedown> :vertical res -10<cr>

" Quick replace
vnoremap <leader>S :s/
nnoremap <leader>S :s/

" Remove trailing whitespace
nnoremap <silent><leader>W :%s/\s\+$//e<cr>



""""""""""""""""""""
"" Plugin Options ""
""""""""""""""""""""

" Ultisnips
let g:UltiSnipsSnippetDir="/home/ryan/.vim/UltiSnips"
let g:UltiSnipsEditSplit="vertical"          " When defining new snippits, split vertically
let g:UltiSnipsExpandTrigger="<c-j>"         " Ultisnips trigger
let g:UltiSnipsJumpBackwardTrigger="<c-j>"   " Jump forwards
let g:UltiSnipsJumpBackwardTrigger="<c-k>"   " Jump backwards
nnoremap <silent><leader>j :UltiSnipsEdit<cr>

" Easy Motion
let g:EasyMotion_leader_key="<leader><leader>"  " Use leader key twice to trigger easy motion

" Nerd Tree
"Closes vim if nerdtree is the only buffer open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nnoremap <silent><leader>tt :NERDTreeToggle<cr>
nnoremap <silent><leader>tb :NERDTreeFromBookmark 
nnoremap <silent><leader>tf :NERDTreeFind 

" Relative Line Numbering
let g:NumberToggleTrigger = '<C-n>'

" Python-Mode
"Run linter on the fly
let  g:pymode_lint_onfly = 0
"Don't open error window on error
let g:pymode_lint_cwindow = 0
"Disable folding
let g:pymode_folding = 0
"Key for set/unset breakpoint
let g:pymode_breakpoint_key = '<leader>b'
"Stop checking on saves, I check all the time anyway
let g:pymode_lint_write = 1
"Rope rename (refactor)
imap <leader>R :RopeRename
"Syntax highlighting
let g:pymode_synax = 0



"""""""""""""""""
"" Extra magic ""
"""""""""""""""""

" Remember last location
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Easily change between split buffers
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
imap <C-W> <C-O><C-W>

" Custom invisibles
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" Forget to use sudo? Save with :w!!
cmap w!! %!sudo tee > /dev/null %

" Make Y behave like D
map Y y$

" Relative line numbers
let g:NumberToggleTrigger="<c-n>"            " Toggle relative line numbering with Ctrl+n

" Magic to make it see the cursor on parens
highlight MatchParen gui=bold guibg=NONE guifg=lightblue cterm=bold ctermbg=NONE



""""""""""""""""""
"" Python Stuff ""
""""""""""""""""""

" Highlight errors with whitespace
let python_highlight_space_errors = 1
