" Conquer of completion configuration.

" coc
let g:coc_global_extensions = [
    \'coc-yank',
    \'coc-highlight',
    \'coc-prettier',
    \'coc-pairs',
    \'coc-json',
    \'coc-css',
    \'coc-html',
    \'coc-tslint',
    \'coc-tsserver',
    \'coc-yaml',
    \'coc-solargraph',
    \'coc-tsserver'
    \]

" use <tab> for trigger completion and navigate to the next completion item
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()

" use shift-<tab> to navigate to previous completion item
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" enter selects the first completion item and confirm the completion when no item has been selected
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" same as above but fixes coc + endwise conflict
" tpope/vim-endwise/issues/125
inoremap <silent> <CR> <C-r>=<SID>coc_confirm()<CR>
function! s:coc_confirm() abort
	if pumvisible()
		return coc#_select_confirm()
	else
		return "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
	endif
endfunction

" neoclide/coc.nvim/issues/28
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Use K to show/hide documentation in preview window
function! s:show_documentation()
	if coc#float#has_float()
		call coc#float#close_all()
	elseif (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	else
		execute '!' . &keywordprg . " " . expand('<cword>')
	endif
endfunction

" Coc Binds
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> K :call <SID>show_documentation()<CR>

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

" Show all diagnostics
nnoremap <silent><leader>d :<C-u>CocList diagnostics<cr>

" Fix autofix problem of current line
nmap <leader>cf <Plug>(coc-fix-current)

" Remap for codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
	execute 'CocCommand actions.open ' . a:type
endfunction

xmap <silent> <leader>ca :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>ca :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
