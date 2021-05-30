"============================================================
"
" init-keymaps.vim - 按键配置
"
"============================================================


"------------------------------------------------------------
" 引号和括号的自动补全
"------------------------------------------------------------
inoremap '  ''<ESC>i
inoremap "  ""<ESC>i
inoremap `  ``<ESC>i
inoremap (  ()<ESC>i
inoremap [  []<ESC>i
inoremap {  {}<ESC>i


"------------------------------------------------------------
" 自定义按键映射
"------------------------------------------------------------
inoremap jj <ESC>
inoremap jk <ESC>la


"------------------------------------------------------------
" 定义 leader 键
"------------------------------------------------------------
let mapleader="\<space>"


"------------------------------------------------------------
" 定义窗口操作相关快捷键
"------------------------------------------------------------
nnoremap <leader>w <C-w><C-w>
nnoremap <leader>h <C-w><C-h>
nnoremap <leader>j <C-w><C-j>
nnoremap <leader>k <C-w><C-k>
nnoremap <leader>l <C-w><C-l>


"------------------------------------------------------------
" 定义移动操作相关快捷键
"------------------------------------------------------------
nnoremap J 5j
nnoremap K 5k