set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-theme'
Plugin 'preservim/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'

" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" General Settings "
syntax enable
set number
set cursorline
set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set incsearch
set hlsearch
set nows
set splitright
set splitbelow
set history=1000
set ignorecase
set smartcase                      
set smartcase
set noswapfile
set encoding=utf-8
set fileencodings=utf-8,cp949
set formatoptions=croq
"c=autowrap comments, r=continue comment on <enter>,
"o=continue comment on o or O, q=allow format
"comment with gqgq
set background=dark
"colorscheme solarized
"colorscheme evening
"colorscheme slate

" from .vimrc from Alex Quinn "
"set backspace=2
"set ruler
"set mouse=a
"set viminfo='20,\"50
"set noexpandtab
"set textwidth=0
"set showcmd
set complete=.,w,b,u   " make autocomplete faster
"set switchbuf=usetab
"set tabpagemax=30
"set cryptmethod=blowfish   "use blowfish encryption for encrytped files
"let g:netrw_mouse_maps=0   "Ignore mouse clicks when browsing directories

" vim keybindings "
nnoremap <tab> <C-w>w
nnoremap <s-tab> gt
nnoremap ; :

"nmap <F2> :!g++ -W -Wall -O2 -g % -o %<<CR>  "compile
"nmap <F3> :!%<<cr> "run
nmap <F3> :set nohlsearch<CR>
nmap <F4> :set hlsearch<CR>
nmap <F5> gg=G<C-o><C-o>
nmap <F6> :tabnew
" ctags database path "
if filereadable("./tags")
set tags+=./tags
else
set tags+=~/OMS/bsp_high/kernel/linux/tags
endif

" tag list "
filetype on
nmap <F7> :TlistToggle<CR>
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_Auto_Open = 0
let Tlist_Use_Right_Window = 1
"let Tlist_WinWidth = 50

" source explorer "
nmap <F8> :SrcExplToggle<CR>
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

let g:SrcExpl_winHeight = 8
let g:SrcExpl_refreshTime = 1000 "or 100
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"
let g:SrcExpl_isUpdateTags = 0

" nerd tree "
nmap <F9> :NERDTreeToggle<CR>
let NERDTreeWinPos = "left"

" Cscope "
set csprg=/usr/bin/cscope
set csto=0 "cscope DB search first
set cst "cscope DB tag DB search
set nocsverb "verbose off
if filereadable("./cscope.out")
cs add cscope.out
else
cs add ~/OMS/bsp_high/kernel/linux-xlnx-2018.2/cscope.out
endif
set csverb "verbose off

" get Caller function "
nmap <F10> :cscope find c <cword> <CR>

let g:airline#extensions#tabline#enabled = 1

