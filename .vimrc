set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

" Clang formatter
" init clang formatter config using: clang-format -style=llvm -dump-config > .clang-format
nnoremap <C-k> :ClangFormat<CR>
vnoremap <C-k> :ClangFormat<CR>
let g:clang_format#style_options = {
            \ "BasedOnStyle" : "LLVM",
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11",
            \ "BreakBeforeBraces" : "Stroustrup"}

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" air-line
let g:airline_powerline_fonts = 1


" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

"{{ Configuring YouCompleteMe

" ---> youcompleteme configuration <---
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
" ---> compatibility with another plugin (ultisnips) <---
let g:ycm_key_list_select_completion = [ '<C-n>', '<Down>' ]
let g:ycm_key_list_previous_completion = [ '<C-p>', '<Up>' ]
let g:SuperTabDefaultCompletionType = '<C-n>'
" ---> disable preview window <---
set completeopt-=preview
" ---> navigating to the definition of a a symbol <---
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"}}
