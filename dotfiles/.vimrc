set nocompatible              " be iMproved, required
filetype off                  " required

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
set background=dark     "background color"
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
