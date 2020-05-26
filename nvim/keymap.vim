
" ==== nvim 快捷键映射

" 保存文件
nmap S     :w<CR>

" 打开文件树
map <C-n> :NERDTreeToggle<CR>

" 使用tab键来选择首个候选项
" NOTE: 使用命令':verbose imap <tab>' 查看tab键是否被其它插件使用
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" 使用 <c-space> 触发代码补全提示
inoremap <silent><expr> <c-space> coc#refresh()

" 使用<cr> 确认代码补全选项, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" 跳转到上一个、下一个 代码诊断位置
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" 跳转到函数、变量、类的定义
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" K 在浮动窗口显示注释文档
nnoremap <silent> K :call <SID>show_documentation()<CR>

" 变量重命名
nmap <leader>rn <Plug>(coc-rename)

" 格式化选中的代码
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Mappings using CoCList:
" 显示当前文件所有的代码诊断信息
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" ======选中函数代码段、类代码段
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" in function
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
" all of function
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
" in class
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
" all of class
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
