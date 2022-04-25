" Key binding for Neovim out of the box.

nnoremap s <Nop>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sq :<C-u>q<CR>
nnoremap sn gt
nnoremap sp gT

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

nnoremap <ESC><ESC> :nohlsearch<CR>

" Return to last opened file
nmap <Leader><Leader> <c-^>

" arrow keys resize pane
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>

nnoremap <Leader>r :exec 'resize' line('$')<CR>

" disable arrow keys in insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Quick save
nnoremap <Leader>s :update<CR>

" Tabs
nnoremap <Leader><Tab> :tabnew<CR>
nnoremap <Leader>q :tabclose<CR>
nnoremap <Tab> :tabn<CR>
nnoremap <S-Tab> :tabp<CR>

" Move between panes
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

" Tagbar
nnoremap <Leader>t :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/local/bin/uctags'

" Buffer
noremap <silent> <Leader>b :CtrlPBuffer<CR>

" Zoom
nmap <Leader>z <Plug>(zoom-toggle)

" ale
nmap <leader>d <Plug>(ale_fix)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
