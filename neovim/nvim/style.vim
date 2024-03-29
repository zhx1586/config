"============================================================
"
" init-style.vim - 界面配置
"
"============================================================

"------------------------------------------------------------
" 显示设置
"------------------------------------------------------------

" 总是显示状态栏
set laststatus=2

" 总是显示行号
set number

" 总是显示侧边栏
set signcolumn=yes

" 总是显示标签栏
set showtabline=2

" 设置显示制表符等隐藏字符
set list

" 右下角显示命令
set showcmd

" 水平切割窗口时，默认在右边显示新窗口
set splitright

" 设置命令行高度
set cmdheight=2

"------------------------------------------------------------
" 颜色设置
"------------------------------------------------------------

" 允许 256 色
set t_Co=256

" 设置颜色主题
" color solarized
highlight Pmenu ctermfg=black ctermbg=cyan
highlight PmenuSel ctermfg=black ctermbg=white

" 高亮当前行行号
set cursorline
hi LineNr ctermfg=grey

hi CursorLineNR cterm=bold
augroup CLNRSet
    autocmd! ColorScheme * hi CursorLineNR cterm=bold
augroup END

highlight CursorLine cterm=NONE ctermbg=DarkGray ctermfg=NONE guibg=NONE guifg=NONE

"------------------------------------------------------------
" 状态栏设置
"------------------------------------------------------------
set statusline=                                 " 清空状态了
set statusline+=\ %F                            " 文件名
set statusline+=\ [%1*%M%*%n%R%H]               " buffer 编号和状态
set statusline+=%=                              " 向右对齐
set statusline+=\ %y                            " 文件类型

" 最右边显示文件编码和行号等信息，并且固定在一个 group 中，优先占位
set statusline+=\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %v:%l/%L%)
