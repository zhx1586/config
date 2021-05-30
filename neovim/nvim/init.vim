"============================================================
"
" init.vim 配置加载入口
"
"============================================================

" 防止重复加载
if get(s:, 'loaded', 0) != 0
    finish
else
    let s:loaded = 1
endif

" 获取当前目录
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" 定义加载文件的命令
command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

" 将当前目录加入 runtimepath
exec 'set rtp+='.s:home


"------------------------------------------------------------
" 模块加载
"------------------------------------------------------------

" 加载基础配置
LoadScript basic.vim

" 加载扩展配置
LoadScript config.vim

" 加载缩进配置
LoadScript tabsize.vim

" 加载按键配置
LoadScript keymaps.vim

" 加载界面配置
LoadScript style.vim

" 加载插件配置
LoadScript plugins.vim
