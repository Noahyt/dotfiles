" `Tex`-file specific preferences.

" Conceal level for characters
" set conceallevel=0
" let g:tex_conceal='abdmg'

" Tex checking.
let b:ale_linters = ['lacheck']

" Open usizng `zathura` viewer.
" For Install, see https://github.com/zegervdv/homebrew-zathurai
let g:vimtex_view_method = "zathura"

" Automatically start compile-on-save for tex.
autocmd VimEnter *.tex VimtexCompile

" Allow folding everyting up except current line (needed for later)
nnoremap zl zMzv

" Begin arbitrary environments.
inoremap ,be <Esc>^y$^i\begin{<Esc>$a}<Enter>;<Enter>\end{}<Esc>hp?\;<Enter>xi
inoremap ,BE <Esc>^y$^i\begin{<Esc>$a}[]<Enter><++><Enter>\end{}<Esc>hp?\]<Enter>i
