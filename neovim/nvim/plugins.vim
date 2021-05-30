"============================================================
"
" init-plugins.vim - 插件配置
"
"============================================================

let g:plug_list = ['airline', 'nerdtree', 'fugitive', 'gitgutter', 'closetag', 'easymotion']
let g:plug_list += ['coc-nvim']
let g:plug_list += ['vim-go']
let g:plug_list += ['tagbar']
let g:plug_list += ['fzf']
let g:plug_list += ['leetcode']
" let g:plug_list += ['youcompleteme']

call plug#begin('$HOME/.config/nvim/plugged')


"------------------------------------------------------------
" airline
"------------------------------------------------------------
if index(g:plug_list, 'airline') >= 0
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_powerline_fonts = 0
    let g:airline_exclude_preview = 1
    let g:airline_theme = 'ayu_dark'
    let g:airline#extensions#branches#enable = 1
    let g:airline#extensions#hunks#enabled = 0
    let g:airline#extensions#syntastic#enable = 0
    let g:airline#extensions#fugitiveline#enable = 0
    let g:airline#extensions#csv#enable = 0
    let g:airline#extensions#vimagit#enable = 0

    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#tab_nr_type = 1
    let g:airline#extensions#tabline#show_tab_nr = 1
    let g:airline#extensions#tabline#buffer_nr_show = 1
endif


"------------------------------------------------------------
" nerdtree
"------------------------------------------------------------
if index(g:plug_list, 'nerdtree')
    Plug 'scrooloose/nerdtree'

    " 配置 NERDTree 快捷键
    nmap <silent><F8> :NERDTreeToggle<CR>

    " 控制光标移动超过一定距离时，自动将焦点调整到中心
    let NERDTreeAutoCenter=1

    " 默认显示文件，而不是目录
    let NERDTreeShowFiles=1

    " NERDTree 窗口不显示 signcolumn
    autocmd FileType nerdtree setlocal signcolumn=no
endif


"------------------------------------------------------------
" taglist
"------------------------------------------------------------
if index(g:plug_list, 'taglist') >= 0
    Plug 'vim-scripts/taglist.vim'
    " Plug g:plug_home.'/taglist'

    " 配置 taglist 快捷键
    nmap <silent><F9> :TlistToggle<CR>

    " 只显示当前缓冲区的列表函数
    let Tlist_Use_Right_Window=1

    " 只显示当前缓冲区的列表函数
    let Tlist_Show_One_File=1

    " 为新编辑的文件自动更新 tag
    let Tlist_Auto_Update=1

    " 非当前文件，函数列表折叠隐藏
    let Tlist_File_Fold_Auto_Close=1

    " 当 taglist 窗口为最后一个窗口时，退出 vim
    let Tlist_Exit_OnlyWindow=1

    " taglist 窗口不显示 signcolumn
    autocmd FileType taglist setlocal signcolumn=no
endif


"------------------------------------------------------------
" tagbar
"------------------------------------------------------------
if index(g:plug_list, 'tagbar') >= 0
    Plug 'majutsushi/tagbar'

    " 需要 gotag 支持，执行 go get -u github.com/jstemmer/gotags
    " 配置 taglist 快捷键
    nmap <silent><F9> :TagbarToggle<CR>
    " 启动时自动 focus
    let g:tagbar_autofocus = 1
    " golang 配置
    let g:tagbar_type_go = {
        \ 'ctagstype' : 'go',
        \ 'kinds'     : [
            \ 'p:package',
            \ 'i:imports:1',
            \ 'c:constants',
            \ 'v:variables',
            \ 't:types',
            \ 'n:interfaces',
            \ 'w:fields',
            \ 'e:embedded',
            \ 'm:methods',
            \ 'r:constructor',
            \ 'f:functions'
        \ ],
        \ 'sro' : '.',
        \ 'kind2scope' : {
            \ 't' : 'ctype',
            \ 'n' : 'ntype'
        \ },
        \ 'scope2kind' : {
            \ 'ctype' : 't',
            \ 'ntype' : 'n'
        \ },
        \ 'ctagsbin'  : 'gotags',
        \ 'ctagsargs' : '-sort -silent'
    \ }

endif


"------------------------------------------------------------
" fugitive
"------------------------------------------------------------
if index(g:plug_list, 'fugitive') >=0
    Plug 'tpope/vim-fugitive'

    " 快捷键
    nmap <silent><F6> :Git blame<CR>
endif


"------------------------------------------------------------
" gitgutter
"------------------------------------------------------------
if index(g:plug_list, 'gitgutter') >=0
    Plug 'airblade/vim-gitgutter'
endif


"------------------------------------------------------------
" closetag
"------------------------------------------------------------
if index(g:plug_list, 'closetag') >=0
    Plug 'docunext/closetag.vim'
endif


"------------------------------------------------------------
" fzf
"------------------------------------------------------------
if index(g:plug_list, 'fzf') >=0
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
    Plug 'junegunn/fzf.vim'

    " 快捷键
    map <silent><leader>f :Files <CR>
    map <silent><leader>w :Ag <CR>
endif


"------------------------------------------------------------
" easymotion
"------------------------------------------------------------
if index(g:plug_list, 'easymotion') >=0
    Plug 'Lokaltog/vim-easymotion'

    let g:EasyMotion_smartcase = 1
    "let g:EasyMotion_startofline = 0

    map <leader><leader>h <Plug>(easymotion-linebackward)
    map <leader><leader>j <Plug>(easymotion-j)
    map <leader><leader>k <Plug>(easymotion-k)
    map <leader><leader>l <Plug>(easymotion-lineforward)
    map <leader><leader>. <Plug>(easymotion-repeat)
endif


"------------------------------------------------------------
" vim-go
"------------------------------------------------------------
if index(g:plug_list, 'vim-go') >= 0
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'mattn/vim-goimports'

    " 语法高亮
    let g:go_version_warning = 1
    let g:go_highlight_types = 1
    let g:go_highlight_fields = 1
    let g:go_highlight_functions = 1
    let g:go_highlight_function_calls = 1
    let g:go_highlight_operators = 1
    let g:go_highlight_extra_types = 1
    let g:go_highlight_methods = 1
    let g:go_highlight_generate_tags = 1
    let g:goimports = 1
    let g:go_doc_keywordprg_enabled = 0

    " 快捷键
    nmap <silent><F7> :GoImports<CR>
endif


"------------------------------------------------------------
" youcompleteme
"------------------------------------------------------------
if index(g:plug_list, 'youcompleteme') >= 0
    " 代码自动完成，安装完插件还需要额外配置才可以使用
    " cd ~/.vim/plugged/YouCompleteMe && ./install.py --go-completer
    Plug 'ycm-core/YouCompleteMe'

    " 不显示预览窗口
    set completeopt=menu,menuone
    let g:ycm_add_preview_to_completeopt = 0
    " 不显示诊断信息
    " let g:ycm_show_diagnostics_ui = 0
endif

"------------------------------------------------------------
" leetcode
"------------------------------------------------------------
if index(g:plug_list, 'leetcode') >= 0
    Plug 'ianding1/leetcode.vim'

    let g:leetcode_china=0
    let g:leetcode_solution_filetype='golang'
    let g:leetcode_browser='chrome'
    let g:leetcode_hide_paid_only=1
    let g:leetcode_hide_topics=1
    let g:leetcode_hide_companies=1
    let g:leetcode_problemset='all'
endif

"------------------------------------------------------------
" coc-nvim
"------------------------------------------------------------
if index(g:plug_list, 'coc-nvim') >= 0
    " 默认开启的 coc 扩展
    let g:coc_global_extensions = ['coc-json', 'coc-go', 'coc-python', 'coc-sh', 'coc-vimlsp']

    Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install() }}

    " 关闭内置补全菜单信息
    set shortmess+=c

    " 使用 tab 触发补全
    inoremap <silent><expr> <TAB>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<TAB>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    " 使用 <cr> 确认补全
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

    " 定义跳转快捷指令
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)
endif


call plug#end()
