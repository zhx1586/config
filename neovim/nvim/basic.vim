"============================================================
"
" init-basic.vim - 基础配置
"
"============================================================


"------------------------------------------------------------
" 基础设置
"------------------------------------------------------------

" 禁用 vi 兼容模式
set nocompatible

" 设置 backspace 按键模式
set bs=eol,start,indent

" 开启自动缩进
set autoindent

" 开启 C/C++ 语言缩进优化
set cindent

" Windows 禁用 ALT 操作菜单
set winaltkeys=no

" 关闭自动换行
set nowrap

" 打开功能键超时检测
set ttimeout

" 设置功能键超时检测时间为 50ms
set ttimeoutlen=50

" 显示光标位置
set ruler


"------------------------------------------------------------
" 搜索设置
"------------------------------------------------------------

" 搜索时忽略大小写
set ignorecase

" 智能搜索大小写判断
set smartcase

" 高亮搜索内容
set hlsearch

" 查找输入时动态增量显示查找结果
set incsearch


"------------------------------------------------------------
" 编码设置
"------------------------------------------------------------

set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936

"----------------------------------------------------------------------
" 允许 Vim 自带脚本根据文件类型自动设置缩进等
"----------------------------------------------------------------------

if has('autocmd')
    filetype plugin indent on
endif


"----------------------------------------------------------------------
" 语法高亮设置
"----------------------------------------------------------------------

if has('syntax')  
    syntax enable 
    syntax on 
endif


"----------------------------------------------------------------------
" 其他设置
"----------------------------------------------------------------------

" 显示匹配的括号
set showmatch

" 显示括号匹配的时间
set matchtime=2

" 显示最后一行
set display=lastline

" 允许下方显示目录
set wildmenu

" 延迟绘制（提升性能）
set lazyredraw

" 错误格式
set errorformat+=[%f:%l]\ ->\ %m,[%f:%l]:%m

" 设置分隔符可视
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<


" 设置 tags：当前文件所在目录往上向根目录搜索直到碰到 .tags 文件
" 或者 Vim 当前目录包含 .tags 文件
set tags=./.tags;,.tags

" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m

" 合并两行中文时，不在中间加空格
set formatoptions+=B

" 文件换行符，默认使用 unix 换行符
set ffs=unix,dos,mac


"----------------------------------------------------------------------
" 设置代码折叠
"----------------------------------------------------------------------
if has('folding')
    " 允许代码折叠
    set foldenable

    " 代码折叠默认使用缩进
    set fdm=indent

    " 默认打开所有缩进
    set foldlevel=99
endif


"----------------------------------------------------------------------
" 文件搜索和补全时忽略下面扩展名
"----------------------------------------------------------------------

set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class

set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib "stuff to ignore when tab completing
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz    " MacOSX/Linux
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android
