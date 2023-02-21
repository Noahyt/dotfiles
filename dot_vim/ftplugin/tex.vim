" `Tex`-file specific preferences.

" Conceal level for characters
" set conceallevel=1
" let g:tex_conceal='abdmg'

let g:vimtex_syntax_conceal = {
  \ 'accents': 0,
  \ 'cites': 0,
  \ 'fancy': 0,
  \ 'greek': 0,
  \ 'math_bounds': 0,
  \ 'math_delimiters': 0,
  \ 'math_fracs': 0,
  \ 'math_super_sub': 0,
  \ 'math_symbols': 0,
  \ 'sections': 0,
  \ 'styles': 0,
  \}

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
