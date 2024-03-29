" Author: Robbe Decorte <decorte.robbe@hotmail.com>
"
" To use it, copy it to
"     for Unix and OS/2:      ~/.vimrc
"     for MS-DOS and Win32:   $VIM\_vimrc (where $VIM is usually "C:\Program Files (x86)\vim" or "C:\Users\{username})
"


" base settings
syntax on                             " syntax highlighting
set nocompatible                      " vim, not vi
filetype plugin indent on             " try to recognise filetype and load plugins and indent files
set backspace=indent,eol,start        " make delete work on vim8
set encoding=utf8

" interface
syntax enable
set number                            " show line numbers
set showcmd                           " show command in bottom bar
set wildmenu                          " better tab completion on file names
set wildmode=longest:full,full
set ruler                             " show current position at bottom
highlight Comment ctermfg=green       " highlight comments in green
set spl=en spell                      " set spellcheck language to english
set nospell                           " disable spellcheck by default
set nowrap                            " disable line wrapping
set splitbelow
set splitright

" search mode
set ic                                " ignore case when searching
set is                                " show parial matches for a search phrase
set smartcase                         " don't ignore case when typing a capital letter

" whitespace
set expandtab                         " tabs are spaces
set tabstop=2                         " number of visual spaces per TAB
set softtabstop=2                     " number of spaces in tab when editing
set shiftround                        " shift to next tabstop
set shiftwidth=4                      " indent newline with x amount of tabs

" toolbar
set guioptions-=m                     " hide menu bar
set guioptions-=T                     " hide toolbar
set guioptions-=r                     " hide scrollbar

" keybindings
nmap <F6> :NERDTreeToggle<CR>         " toggle NERDTree

" background processes
set autoread                          " update file when changed outsite of vim
set ai                                " auto indetation, copy indentation from previous line
set autochdir                         " auto cd to the folder where the file is in

" remap keys
imap jj <Esc>

" externam vimrc files
set exrc                              " allow an extra vimrc per project

" miscellaneous
set statusline=\PATH:\ %r%F\ \ \ \ \LINE:\ %l/%L/%P\ TIME:\ %{strftime('%c')}
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
