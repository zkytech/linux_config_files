
"=====自动补全插件coc.nvim相关配置
"=====https://github.com/neoclide/coc.nvim

"使vim能够解析coc.vim的json配置文件的注释语法
autocmd FileType json syntax match Comment +\/\/.\+$+
"如果不设置这一项，可能会影响自动补全工作
set hidden

"不创建备份文件
"自动补全的部分language server可能会受到备份文件的影响
set nobackup
set nowritebackup

"为自动补全消息提供更大的显示空间
set cmdheight=2

"自动补全更新延时 默认是4000ms
set updatetime=300

"Don't pass messages to |ins-completion-menu|

"快捷键映射
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
"set statusline=%{coc#status()}

" coc-highlight，高亮显示光标当前选中的变量
autocmd CursorHold * silent call CocActionAsync('highlight')

"=====插件列表
let g:coc_global_extensions=["coc-css","coc-cssmodules","coc-emmet","coc-highlight","coc-html","coc-java","coc-json","coc-marketplace","coc-python","coc-tsserver","coc-webpack","coc-git","coc-gitignore"]
