"=========================================================================
"" DesCRiption: 适合自己使用的vimrc文件，for Linux/Windows, GUI/Console
"
"" Last Change: 2010年4月25日 23时39分 Asins - asinsimple AT gmail DOT com
"
"" Author:      Assins - asinsimple AT gmail DOT com
"              Get latest vimrc from http://nootn.com/blog/Tool/22/ 
"              "
"              " Version:     1.80
"              "
"              "=========================================================================
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set smarttab
set list listchars=tab:>-

"如果需要，下面是一个完成的vimrc文件，可以供参考：
if v:lang =~ "^ko"
   set fileencodings=euc-kr
   set guifontset=-*-*-medium-r-normal--16-*-*-*-*-*-*-*
elseif v:lang =~ "^ja_JP"
   set fileencodings=euc-jp
   set guifontset=-misc-fixed-medium-r-normal--14-*-*-*-*-*-*-*
elseif v:lang =~ "^zh_TW"
   set fileencodings=big5
   set guifontset=-sony-fixed-medium-r-normal--16-150-75-75-c-80-iso8859-1,-taipei-fixed-medium-r-normal--16-150-75-75-c-160-big5-0
elseif v:lang =~ "^zh_CN"
   set fileencodings=gb2312
   set guifontset=*-r-*
endif

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1,chinese
endif

set encoding=utf-8
set fileencodings=utf-8,chinese
let &termencoding=&encoding
set ambiwidth=double
set autoindent cindent cinoptions=g0
set backspace=indent,eol,start
set backupcopy=yes
if v:version >= 700
        set completeopt=menu,longest,preview
endif

"for taglist
filetype on

set confirm
set display=lastline
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set smarttab
set list listchars=tab:>-

" Setting for python
"autocmd FileType * set tabstop=4|set shiftwidth=4|set noexpandtab
"autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
if has("autocmd")  
    "回到上次文件打开所在行  
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")  
        \| exe "normal g'\"" | endif  
    "自动检测文件类型，并载入相关的规则文件  
    filetype plugin on  
    filetype indent on  
    "智能缩进，使用4空格，使用全局的了  
    autocmd FileType python setlocal et | setlocal sta | setlocal sw=4  
    autocmd FileType c setlocal et | setlocal sta | setlocal sw=4  
    autocmd FileType h setlocal et | setlocal sta | setlocal sw=4  
endif  

"Python auto complete
let g:pydiction_location = '/home/molin/.vim/tools/pydiction-1.2/complete-dict'



"Mappin for python
map [r :! python % <CR>  
map [o :! python -i % <CR>  
map [t :! rst2html.py % %<.html <CR>  

set formatoptions=tcqro
set hidden
set history=50
set hlsearch
set ignorecase smartcase
set incsearch
set nobackup
set nocompatible
set noignorecase
set nolinebreak
set nonu
set ruler
set scrolloff=5
set showcmd
set showmatch
set hlsearch
set report=0
"set cursorline
set fileformat=unix
set foldmarker={,}  "缩进符号  
set foldmethod=indent   "缩进作为折叠标识  
set foldlevel=100   "不自动折叠  
set foldopen-=search    "搜索时不打开折叠  
set foldopen-=undo  "撤销时不打开折叠  
set updatecount=0   "不使用交换文件""""""}
set whichwrap=b,s,<,>,[,]
set wrap
syntax on
set cmdheight=1
set laststatus=2
set statusline=%F%m%r,%Y,%{&fileformat}\ \ \ ASCII=\%b,HEX=\%B\ \ \ %l,%c%V\ %p%%\ \ \ [\ %L\ lines\ in\ all\ ]
autocmd BufReadPost * cd %:p:h
cab tn tabnew
let Tlist_Exit_OnlyWindow=1
filetype plugin on
let g:pydiction_location = '/root/complete-dict'
"set number

""inoremap ( ()<ESC>i
""inoremap < <ESC>i
""inoremap { {}<ESC>i
""inoremap [ []<ESC>i
""inoremap ' ''<ESC>i
""inoremap " ""<ESC>i

