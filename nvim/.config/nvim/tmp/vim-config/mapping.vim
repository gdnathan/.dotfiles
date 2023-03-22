" set leader key
let mapleader=','

map <C-s> :%s/\s\+$//e<CR>

nnoremap <C-Down> <C-w><Down>
nnoremap <C-Up> <C-w><Up>
nnoremap <C-Left> <C-w><Left>
nnoremap <C-Right> <C-w><Right>

nnoremap <C-j> <C-w><Down>
nnoremap <C-k> <C-w><Up>
nnoremap <C-h> <C-w><Left>
nnoremap <C-l> <C-w><Right>

nnoremap <S-j> <S-Down>
nnoremap <S-k> <S-Up>

nnoremap [ zo :action CollapseBlock<CR>
nnoremap ] zc :action ExpandBlock<CR>

" Don't touch unnamed register when pasting over visual selection
xnoremap <expr> p 'pgv"' . v:register . 'y'


"map <Leader>f :CocFix<CR>
map <Leader>gc :Git commit<CR>
map <Leader>gp :Git push<CR>
" nnoremap <Enter> :call CocActionAsync('doHover')<CR>

" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gr <Plug>(coc-reference)
" nmap <silent> gi <Plug>(coc-implementation)

" x doesnt copy to clipboard
noremap x "_x

map m za

" nvim-completion
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

" imap <silent><script><expr> <Right> copilot#Accept("\<Right>")
" let g:copilot_no_tab_map = v:true


