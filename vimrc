" Install pathogen
call pathogen#infect()
call pathogen#helptags()

" Display line numbers for faster navigation
set number

" Syntax highlighting
syntax on

" Not sure what this does, but apparently it is good
set nocompatible

" Allow hiding modified buffers
set hidden

" Force UTF-8
set fileencodings=utf-8
set encoding=utf-8

" Tabs sweet tabs
"autocmd FileType * set ts=2 sw=2 sts=2 expandtab
"autocmd FileType c,m,h,objc,python,php set ts=4 sw=4 sts=4 expandtab
"autocmd FileType go set ts=4 sw=4 sts=4 noexpandtab

" Highlight tabs and trailing spaces
set listchars=tab:\|\ ,trail:·,extends:>,precedes:<,nbsp:+
set list

" Magic indenting
"filetype plugin indent on
"filetype plugin on

" Keep tidy
set formatoptions=tcqro
set textwidth=120
set nowrap
set wrapmargin=2
if exists('+colorcolumn') " vim >= 7.3
  set colorcolumn=120
endif

" Do not use octal when using <C-a> and <C-x>
set nrformats=

" Let's get wild
set wildmenu
set wildmode=longest:full

" Smart searches
set ignorecase
set smartcase

" Smoooooth scrolling
set scrolloff=2
set scroll=5

" Natural splits
set splitbelow
set splitright

" Show line numbers
set nu

" Gently highlight the current line
set cursorline

" Always show the status line
set laststatus=2

" Useful snippet straight from VIM documentation
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

" Store swap files in ~/.vim/swapfiles if it exists, otherwise /tmp
set dir=~/.vim/swapfiles//,/tmp

" Persistent undo
if has('persistent_undo') " vim >= 7.3
  set undodir=~/.vim/undofiles//,/tmp
  set undofile
endif

" Recognize README.md as Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']


" Enable mystical tutor colour scheme
colorscheme mysticaltutor

" Nerdtree bindings
map <F2> <ESC>:NERDTreeToggle<RETURN>
let g:NERDTreeNodeDelimiter = "\u00a0"

" Fuzzy find
map <C-p> <ESC>:FZF<RETURN>

" Vim terraform setup
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1
let g:terraform_commentstring='//%s'
let g:terraform_fmt_on_save=1


" Useful key bindings
noremap K     {
noremap J     }
noremap H     ^
noremap L     $

" tabulation using tab
nnoremap <Tab>   >>
nnoremap <S-Tab> <<
vnoremap <Tab>   >><Esc>gv
vnoremap <S-Tab> <<<Esc>gv

