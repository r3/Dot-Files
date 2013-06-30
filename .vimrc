
" Pathogen
call pathogen#infect()
call pathogen#helptags()

""""""""""""""""""""
"" General Optons ""
""""""""""""""""""""
syntax enable                   " Set syntax highlighting on
syntax on                       " Set syntax highlighting on
filetype plugin indent on       " Turn on filetype specific options

let mapleader=","               " Set leader key to comma
let g:mapleader=","             " Set leader key to comma for Gvim

set nosmartindent               " Smart indentation causes deindentation of #
set showmode                    " Displays mode on changes
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
set textwidth=78                " Hard wrap at 78 characters
set formatoptions=t             " Fix formatting (line width) when editing
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



""""""""""""""
""  Colour  ""
""""""""""""""

set background=dark
colorscheme solarized



""""""""""""""
"" Keybinds ""
""""""""""""""

" Fast saving
nnoremap <silent><leader>w :w!<cr>

"       --General Binds--
" Fast buffer closing
nnoremap <silent><leader>q :bd<cr>
" Fast quit
nnoremap <silent><leader>qq :quitall!<cr>
" Fast vertical split
nnoremap <silent><leader>\ :vsp<cr>
" Fast horizontal split
nnoremap <silent><leader>- :sp<cr>
" Unhighlight search results
nnoremap <silent><leader>/ :nohls<cr>
" Use H/(L|T) for head/tail of line
nnoremap H ^
nnoremap L $
nnoremap T $
" Use arrow keys to change buffers
nnoremap <right> :bn<cr>
nnoremap <left> :bp<cr>
" Select everything
nnoremap <silent><leader>a ggVG
" Resize buffers
nnoremap <pageup> :res +10<cr>
nnoremap <pagedown> :res -10<cr>
nnoremap <leader><pageup> :vertical res +10<cr>
nnoremap <leader><pagedown> :vertical res -10<cr>
" Sane pasting without paste mode
nnoremap <silent><leader>v "+p

"       --Python Binds--
" Trigger Jedi completion
let g:jedi#autocompletion_command = "<C-Space>"
" Python -> Break (pdb debugger)
nnoremap <silent><leader>pb Oimport pdb; pdb.set_trace()<esc>
" Python -> Break -> ipdb (ipdb Debugger)
nnoremap <silent><leader>pbi Oimport ipdb; ipdb.set_trace()<esc>
" Python -> Related (Other invokations of given function)
let g:jedi#related_names_command = "<leader>pr"
" Python -> Django -> Template (Toggle template syntax for html)
nnoremap <leader>pdt :setfiletype htmldjango<cr>
" Python -> Flake
nnoremap <leader>pf :call Flake8()<cr>

"       --Toggle Binds--
" Toggle invisibles
nnoremap <silent><leader>ti :set list!<cr>
" Toggle spellcheck
nnoremap <silent><leader>ts :set spell!<cr>
" Toggle relative line numbering
let g:NumberToggleTrigger="<leader>tn"

"       --F# Binds--
" Toggle the Tagbar
nnoremap <F3> :TagbarToggle<cr>
" Toggle NerdTree
nnoremap <F2> :NERDTreeToggle<cr>


""""""""""""""""""""
"" Plugin Options ""
""""""""""""""""""""

"           --Ultisnips--
" Define directory for snippits
let g:UltiSnipsSnippetDir="/home/ryan/.vim/UltiSnips"
" When defining new snippits, split vertically
let g:UltiSnipsEditSplit="vertical"
" Ultisnips trigger
let g:UltiSnipsExpandTrigger="<c-j>"
" Jump forwards
let g:UltiSnipsJumpBackwardTrigger="<c-j>"
" Jump backwards
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" Shortcut to snippit editing
nnoremap <silent><leader>j :UltiSnipsEdit<cr>
" Documentation type set to doxygen
let g:ultisnips_python_style="doxygen"

"           --Easy Motion--
" Use leader key twice to trigger easy motion
let g:EasyMotion_leader_key="<leader><leader>"  

"            --Tagbar--
"       (See: F# Binds)
" Do not sort the tagbar!
let g:tagbar_sort=0

"           --Jedi--
"    (See: Python Binds)
"switch buffer/tab usage
let g:jedi#use_tabs_not_buffers = 0
"automatic selection of first completion on trigger
let g:jedi#popup_select_first = 1
"no automatic function display
let g:jedi#show_function_definition = "0"

"           --JS Library Syntax Highlighting--
"'jquery,underscore,backbone,prelude,angularjs,requirejs' Libs to highlight
let g:used_javascript_libs = 'underscore,backbone'


"""""""""""""""""
"" Extra magic ""
"""""""""""""""""

" Remember last location
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Easily change between split buffers
nmap <silent> <c-k> :wincmd k<cr>
nmap <silent> <c-j> :wincmd j<cr>
nmap <silent> <c-h> :wincmd h<cr>
nmap <silent> <c-l> :wincmd l<cr>

" Custom invisibles
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" Make Y behave like D
map Y y$

" Ask ctags to look in .git for the tags file
" See: ~/.git_template/ctags
set tags=./.git/tags;$HOME


"""""""""""""""""""""
"" Python Specific ""
"""""""""""""""""""""

" Omnicompletion for Python
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
