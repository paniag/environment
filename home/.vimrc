"" .vimrc
"" Mac Radigan

let g:pathogen_disabled = []
"call add(g:pathogen_disabled, 'nerdtree')
call add(g:pathogen_disabled, 'lusty')
execute pathogen#infect()
set clipboard=unnamed
set go+=a
setlocal autoread
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set tags+=./tags;./src/tags;/
"let &makeprg='if [ -f Makefile ]; then make; else make -C ..; fi; '
"let &makeprg='make -C .. '
let &makeprg='make -C . '
"color torte
"color delek
set fdm=manual
set foldlevel=10000
"set expandtab
"set cul
set go-=m
set go-=T
set list
set ve=all
let g:lst=1
let g:fld=0
let g:win=10
let g:lnum=1
let g:cline=1
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost l* nested lwindow
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd BufReadPre, FileReadPre *.[chy] setlocal cindent
autocmd BufReadPre, FileReadPre Makefile setlocal noexpandtab
autocmd BufReadPre, FileReadPre *.mk setlocal noexpandtab
runtime macros/matchit.vim
let mapleader = ","
let NERDTreeShowHidden=1
let NERDTreeHijackNetrw=1
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
set mouse=a
syntax on
set path+=,,
set path+=.
set path+=./include
set nu
set scrolloff=3
set confirm
"set viminfo='20,<50,s10,h,%
set guioptions+=c
set autochdir
set shortmess=aTI
set vb t_vb=".
set visualbell
set title
"set backupdir=~/.vim-temp
"set directory=~/.vim-temp
"set dir=~/.vim-temp
set history=1000
set display=uhex
set showmatch
set cinoptions=(0
"set expandtab
set hlsearch
"set spelllang=en_us
set nocp
set ruler
set showmode
set shiftwidth=1
set modeline
set bs=2
set ls=2
set smartindent
set nu
set incsearch
set confirm

"cmap hs sp
"cmap buf buffers
nnoremap ;rc :call Calculate()<CR>
nnoremap <silent> ;rb :!rlwrap -a -m -z shell bc -q<CR>
nnoremap <silent> ;rd :!rlwrap -a -m -z shell dc<CR>
nnoremap <silent> ;rq :!rlwrap -a -m -z shell q<CR>
nnoremap <silent> ;re :!rlwrap -a -m -z shell elix<CR>
nnoremap <silent> ;rm :!octave -q<CR>
nnoremap <silent> ;ra :!apl --silent<CR>
nnoremap <silent> ;rj :!rlwrap -a -m -z shell jconsole<CR>
nnoremap <silent> ;ru :!rlwrap -a -m -z shell julia<CR>
nnoremap <silent> ;rr :!rlwrap -a -m -z shell R -q<CR>
nnoremap <silent> ;rg :!rlwrap -a -m -z shell gdl -q<CR>
nnoremap <silent> ;ro :!root -l<CR>
nnoremap <silent> ;rp :!python -q<CR>
nnoremap <silent> ;rl :!clojure<CR>
nnoremap <silent> ;rs :!sbcl<CR>
nnoremap <leader>gm :exe @g<CR>
"nnoremap <leader>g :!%:p
"nnoremap <leader>gg :!%:p<CR>
nnoremap <leader>gc :make clean<CR>
nnoremap <leader>gg :make <CR>
"nnoremap <leader>gg :make -C ..<CR>
nnoremap <leader>rr :make test<CR>
nnoremap <leader>ss :call MakeSession()<CR>
nnoremap j :cn<CR>
nnoremap k :cp<CR>
"nnoremap <leader>cc :hid<CR>
nnoremap <leader>zz :w!<CR>:qall<CR>
"nnoremap <leader>cd :cd %:h<CR>
nnoremap <leader>nn :nonu!<CR>
nnoremap <leader>lpu :!enscript -b"HEADER" -h -G -L65 -r -fCourier7 -2 %<CR>
"nnoremap <leader>ei :cope<CR>
nnoremap <leader>e :e .<CR>
nnoremap <leader>E :Sex!<CR>
nnoremap ;e :e 
nnoremap ;E :Sex<CR>
nnoremap <leader>t1 1gt
nnoremap <leader>t2 2gt
nnoremap <leader>t3 3gt
nnoremap <leader>t4 4gt
nnoremap <leader>t5 5gt
nnoremap <leader>t6 6gt
nnoremap <leader>t7 7gt
nnoremap <leader>t8 8gt
nnoremap <leader>t9 9gt
nnoremap <leader>t0 1gt
nnoremap ;l :tabn<CR>
nnoremap ;k :tabn<CR>
nnoremap ;h :tabN<CR>
nnoremap ;g :tabN<CR>
nnoremap ;q :tabc<CR>
nnoremap ;$ :tabl<CR>
nnoremap ;0 :tabf<CR>
"nnoremap <leader>ro :tabo<CR>
nnoremap ;t :tabnew<CR>
nnoremap <leader>ta :ta 
nnoremap <leader>sts :stj /
nnoremap <leader>ts :tj /
nnoremap ;K :tagN<CR>
nnoremap ;H :tagN<CR>
nnoremap ;J :tagn<CR>
nnoremap ;L :tagn<CR>
nnoremap ;q :tagc<CR>
nnoremap ;$ :tagl<CR>
nnoremap ;0 :tagf<CR>
nnoremap ;O :tago<CR>
nnoremap ;q :tabc<CR>
"nnoremap <leader>tu :!ctags --langmap=c:+.cu --exclude=".pc" --recurse<CR><CR>
nnoremap <leader>tu :!ctags -f tags *.[ch]*<CR><CR>
nnoremap ;s :shell<CR>
nnoremap <F1> .j0
nnoremap <leader>v :vs<CR>
nnoremap <leader>s :sp<CR>
nnoremap <leader>gr :vimgrep 
nnoremap <leader>GR :!grep 
nnoremap <leader>i :hid<CR>
nnoremap <leader>l :winc l<CR>
nnoremap <leader>j :winc j<CR>
nnoremap <leader>k :winc k<CR>
nnoremap <leader>h :winc h<CR>
nnoremap <leader>o :on<CR>
nnoremap ;X :!chmod 755 %<CR>
nnoremap <leader>x :!./%<CR>
nnoremap <leader>ra :!ranger<CR>
nnoremap <leader>fm :!vifm<CR>
nnoremap <leader>QQ :call DoNMacro()<CR>
nnoremap <leader>QB :bufdo! normal! @q<CR>
nnoremap <leader>QW :windo! normal! @q<CR>
"map <leader>e :call ExecVisual()<CR>
nnoremap <leader>nn <C-W>_<C-W><Bar>
nnoremap <leader>NN <C-W>_<C-W>=
nnoremap <leader>V <C-V>
nnoremap ;v <C-V>
nnoremap ;V 0{j<C-V>}k
nnoremap <Space> }
nnoremap <S-Space> {
nnoremap <C-Space> {
nnoremap <Tab> }
nnoremap <S-Tab> {
nnoremap <leader><leader>j :cn<CR>
nnoremap <leader><leader>k :cp<CR>
nnoremap <leader>. .n<CR>
nnoremap <leader>/ :noh<CR>
"nnoremap <leader><Space> :cn<CR>
nnoremap ∆ :cn<CR>
nnoremap  :cn<CR>
nnoremap ˚ : cp<CR>
nnoremap  : cp<CR>
nnoremap <leader>S :e ../src/%<.cpp<CR>
nnoremap <leader>H :e ../include/%<.hpp<CR>
nmap <silent> <Leader>W :Project ~/.vimproject<CR>
nnoremap <leader>y :NERDTreeToggle<CR>
nnoremap <leader>F :NERDTreeFind<CR>
nnoremap <leader># :call ToggleLineNumber()<CR>
nnoremap <leader>$ :call ToggleList()<CR>
nnoremap <leader>% :call ToggleSyntax()<CR>
nnoremap <leader>m :call ToggleSyntax()<CR> :call ToggleLineNumber()<CR> :call ToggleList()<CR>
nnoremap <leader>^ :colorscheme 
nnoremap <leader>) :call ToggleCursorLine()<CR>
"nnoremap <C-N> :next<Enter>
"nnoremap <C-P> :prev<Enter>
"nnoremap <C-P> :prev<Enter>
nnoremap <C-i> "*p
nnoremap <C-c> "*y
nnoremap <leader>b :ls<CR>
nnoremap <leader>1 :b1<CR>
nnoremap <leader>2 :b2<CR>
nnoremap <leader>3 :b3<CR>
nnoremap <leader>4 :b4<CR>
nnoremap <leader>5 :b5<CR>
nnoremap <leader>6 :b6<CR>
nnoremap <leader>7 :b7<CR>
nnoremap <leader>8 :b8<CR>
nnoremap <leader>9 :b9<CR>
nnoremap <leader>0 :b0<CR>
nnoremap <leader>z1 :set foldlevel=1<CR>
nnoremap <leader>z2 :set foldlevel=2<CR>
nnoremap <leader>z3 :set foldlevel=3<CR>
nnoremap <leader>z4 :set foldlevel=4<CR>
nnoremap <leader>z5 :set foldlevel=5<CR>
nnoremap <leader>z6 :set foldlevel=6<CR>
nnoremap <leader>z7 :set foldlevel=7<CR>
nnoremap <leader>z8 :set foldlevel=8<CR>
nnoremap <leader>z9 :set foldlevel=9<CR>
nnoremap <leader>z0 :set foldlevel=0<CR>
imap <leader>c <ESC>
map <leader>c <ESC>
vmap / y:execute "/".escape(@",'[]/\.*')<CR>
"inoremap <Tab> <C-n>
noremap ; :
noremap ;w :w<CR>
noremap ;o zA
noremap ;m :call ToggleFold()<CR>
noremap <leader>zf {zf}
noremap ;a :qall<CR>
cmap w!! w !sudo tee %>/dev/null
nnoremap <leader>F :FufFile **/<CR>
nnoremap <leader>B :FufBuffer **/<CR>
nnoremap <leader>b :BufExplorer<CR>
nnoremap <leader>T :FufTag<CR>
nnoremap <leader>f <C-Z>
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

if exists('+autochdir')
 "set autochdir
else
  autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif

function! ToggleCursorLine()
  if g:cline == 1
    let g:cline = 0
    :set cursorline
  else
    let g:cline = 1
    :set nocursorline
  endif
endfunction

function! ToggleFold()
  if g:fld == 1
    let g:fld = 0
    normal!zM
  else
    let g:fld = 1
    normal!zR
  endif
endfunction

function! ToggleLineNumber()
  if g:lnum == 1
    let g:lnum = 0
    :set nonu
  else
    let g:lnum = 1
    :set nu
  endif
endfunction

function! ToggleSyntax()
  if exists("g:syntax_on")
    syntax off
  else
    syntax on
  endif
endfunction

function! ToggleList()
  if g:lst == 1
    let g:lst = 0
    :set list
  else
    let g:lst = 1
    :set nolist
  endif
endfunction

function! TellScreenR() range
  normal!""gvy
  let text = getreg('"')
  let lines = split(text, '\n')
  "echo text
  for line in lines
    silent exec '!screen -R -D -p ' . g:win . ' -X stuff "' . line . '"'
  endfor
endfunction

function! TellScreen() 
  normal!""ggyG
  let text = getreg('"')
  let lines = split(text, '\n')
  "echo text
  for line in lines
    silent exec '!screen -R -D -p ' . g:win . ' -X stuff "' . line . '"'
  endfor
endfunction

function! ExecVisual()
  normal!""gvy
  let text = getreg('"')
  let line = substitute(text, '\n', '', 'g')
  exec 'echo "' . line . '"'
  exec line
endfunction

function! DoNMacro()
  call NMacro(@/, "q")
endfunction

function! NMacro(pattern, macro)
  exec(":lv ".a:pattern." ".expand("%"))
  let n = len(getloclist(0))
  exec("normal! ".n."@".a:macro)
endfunction

function! Calculate()
  let expr = ""
  while expr != "q"
    let expr = input("")
    "exec("normal! :echo ".expr)
    exec "echo ".expr
  endwhile
endfunction

function! Browser()
  let buf = getline(".")
  let buf = matchstr (buf, "http[^ ]*")
  exec "!/opt/firefox/firefox-bin ".buf
" let result = system("!/opt/firefox/firefox-bin ".buf)
endfunction
map <leader>w :call Browser()<CR>

hi Folded ctermfg=yellow ctermbg=black guifg=yellow guibg=black

"" *EOF*
