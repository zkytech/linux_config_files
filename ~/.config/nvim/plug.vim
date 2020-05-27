
" ======插件
call plug#begin('~/.vim/plugged')
" 提供各种语言的语法分析支持
"Plug 'sheerun/vim-polyglot'
" 文件树
Plug 'preservim/nerdtree'
" 代码补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 打开文件时自动打开文件树
"autocmd vimenter * NERDTree
" markdown自动折叠
"Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'
" markdown预览
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" 底部状态栏
Plug 'itchyny/lightline.vim'
" 自动打开markdown预览窗口
"let g:mkdp_auto_start = 1
call plug#end()
