"" .vimrc
"" Mac Radigan

"" pathogen
let g:pathogen_disabled = []
"silent! call add(g:pathogen_disabled, 'nerdtree')
silent! call add(g:pathogen_disabled, 'lusty')
silent! execute pathogen#infect()

"" conque term
"let g:ConqueTerm_InsertOnEnter = 0
"let g:ConqueTerm_EscKey = '<Esc><Esc>'

"" matching
runtime macros/matchit.vim

"" nerd tree
let NERDTreeShowHidden=1
let NERDTreeHijackNetrw=1

"" tags
if filereadable("GTAGS")
  cs add GTAGS
elseif $CSCOPE_DB != ""
  cs add $CSCOPE_DB
endif
set omnifunc=syntaxcomplete#Complete
set tags+=./tags;./src/tags;/
set cscopeprg=gtags-cscope

"" syntax
filetype plugin on
syntax on
"color torte
"color delek

"" settings
setlocal autoread
set clipboard=unnamed
set go+=aAc
set go-=mT
set cst
set csto=0
set nocsverb
"set mp=(gmake\ -j -C.\ $*)
"set mp=(gmake\ -j -C.\ $*)
let &makeprg='make -j -C . '
set fdm=manual
set foldlevel=10000
set nolist
set ve=all
set showmode
set mouse=a
set path+=,,
set path+=.
set path+=./include
set nu
set et
set ts=2
set sw=2
set so=3
set siso=3
set confirm
set shortmess=aTI
set vb t_vb=".
set visualbell
set title
set history=1000
set display=uhex
set showmatch
set cinoptions=(0
set hlsearch
set nocp
set ruler
set showmode
set modeline
set bs=2
set ls=2
set smartindent
set nu
set incsearch
set confirm
set wmnu
set wim=list:longest,full

"" toggle
nn <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
let g:fld=0
let g:win=10

"" autocmd
au QuickFixCmdPost [^l]* nested cwindow
au QuickFixCmdPost l* nested lwindow
au FileType python set omnifunc=pythoncomplete#Complete
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType xml set omnifunc=xmlcomplete#CompleteTags
au FileType php set omnifunc=phpcomplete#CompletePHP
au FileType c set omnifunc=ccomplete#Complete
au BufReadPre, FileReadPre *.[chy] setlocal cindent
au BufReadPre, FileReadPre Makefile setlocal noexpandtab
au BufReadPre, FileReadPre *.mk setlocal noexpandtab
au BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

"" keymap
let mapleader = ","
nn ;w :w<CR>
nn ;a :qall<CR>
ino ;c <ESC>
map <leader>, <ESC>
nn <leader>. .n<CR>
ino <silent> <leader>, <Esc>
nn <leader>/ :noh<CR>

"" reflow text
nno <leader>F gqap
vno <leader>F gq

"" marks
nm f `
nm ' `
nm \ '
nn ma mA
nn mb mB
nn mc mC
nn md mD
nn me mE
nn mf mF
nn mg mG
nn mh mH
nn mi mI
nn mj mJ
nn mk mK
nn ml mL
nn mm mM
nn mn mN
nn mo mO
nn mp mP
nn mq mQ
nn mr mR
nn ms mS
nn mt mT
nn mu mU
nn mv mV
nn mw mW
nn mx mX
nn my mY
nn mz mZ
nn mA ma
nn mB mb
nn mC mc
nn mD md
nn mE me
nn mF mf
nn mG mg
nn mH mh
nn mI mi
nn mJ mj
nn mK mk
nn mL ml
nn mM mm
nn mN mn
nn mO mo
nn mP mp
nn mQ mq
nn mR mr
nn mS ms
nn mT mt
nn mU mu
nn mV mv
nn mW mw
nn mX mx
nn mY my
nn mZ mz
nn 'a 'A
nn 'b 'B
nn 'c 'C
nn 'd 'D
nn 'e 'E
nn 'f 'F
nn 'g 'G
nn 'h 'H
nn 'i 'I
nn 'j 'J
nn 'k 'K
nn 'l 'L
nn 'm 'M
nn 'n 'N
nn 'o 'O
nn 'p 'P
nn 'q 'Q
nn 'r 'R
nn 's 'S
nn 't 'T
nn 'u 'U
nn 'v 'V
nn 'w 'W
nn 'x 'X
nn 'y 'Y
nn 'z 'Z
nn 'A 'a
nn 'B 'b
nn 'C 'c
nn 'D 'd
nn 'E 'e
nn 'F 'f
nn 'G 'g
nn 'H 'h
nn 'I 'i
nn 'J 'j
nn 'K 'k
nn 'L 'l
nn 'M 'm
nn 'N 'n
nn 'O 'o
nn 'P 'p
nn 'Q 'q
nn 'R 'r
nn 'S 's
nn 'T 't
nn 'U 'u
nn 'V 'v
nn 'W 'w
nn 'X 'x
nn 'Y 'y
nn 'Z 'z
nn `a `A
nn `b `B
nn `c `C
nn `d `D
nn `e `E
nn `f `F
nn `g `G
nn `h `H
nn `i `I
nn `j `J
nn `k `K
nn `l `L
nn `m `M
nn `n `N
nn `o `O
nn `p `P
nn `q `Q
nn `r `R
nn `s `S
nn `t `T
nn `u `U
nn `v `V
nn `w `W
nn `x `X
nn `y `Y
nn `z `Z
nn `A `a
nn `B `b
nn `C `c
nn `D `d
nn `E `e
nn `F `f
nn `G `g
nn `H `h
nn `I `i
nn `J `j
nn `K `k
nn `L `l
nn `M `m
nn `N `n
nn `O `o
nn `P `p
nn `Q `q
nn `R `r
nn `S `s
nn `T `t
nn `U `u
nn `V `v
nn `W `w
nn `X `x
nn `Y `y
nn `Z `z

"" omnicomplete
ino <leader>, 

"" navigation
nn <C-j> <C-f>
nn <C-k> <C-b>

"" processes
nn ;rc :call Calculate()<CR>
nn <silent> ;rb :!rlwrap -a -m -z shell bc -q<CR>
nn <silent> ;rd :!rlwrap -a -m -z shell dc<CR>
nn <silent> ;rq :!rlwrap -a -m -z shell q<CR>
nn <silent> ;re :!rlwrap -a -m -z shell elix<CR>
nn <silent> ;rm :!octave -q<CR>
nn <silent> ;ra :!apl --silent<CR>
nn <silent> ;rj :!rlwrap -a -m -z shell jconsole<CR>
nn <silent> ;ru :!rlwrap -a -m -z shell julia<CR>
nn <silent> ;rr :!rlwrap -a -m -z shell R -q<CR>
nn <silent> ;rg :!rlwrap -a -m -z shell gdl -q<CR>
nn <silent> ;ro :!root -l<CR>
nn <silent> ;rp :!python -q<CR>
nn <silent> ;rl :!clojure<CR>
nn <silent> ;rs :!sbcl<CR>
nn <leader>ra :!ranger<CR>
nn <leader>fm :!vifm<CR>

"" compiler
nn <leader>g :make <CR>
nn ;gc :make clean<CR>
nn <leader>S :e ../src/%<.cpp<CR>
nn <leader>H :e ../include/%<.hpp<CR>

"" processes
nn j :cn<CR>
nn k :cp<CR>

"" processes
nn <leader>zz :w!<CR>:qall<CR>
nn <leader>cd :cd %:h<CR>
nn <leader>nn :nonu!<CR>

"" printer
nn <leader>lpu :!enscript -b"HEADER" -h -G -L65 -r -fCourier7 -2 %<CR>
nn ;i :cd %:h<CR>:e .<CR>

"" windows
nn <leader>e :e .<CR>
nn <leader>E :Sex!<CR>
nn ;e :e 
nn ;E :Sex<CR>

"" tabs
nn <leader>to :tabo<CR>
nn <leader>t1 1gt
nn <leader>t2 2gt
nn <leader>t3 3gt
nn <leader>t4 4gt
nn <leader>t5 5gt
nn <leader>t6 6gt
nn <leader>t7 7gt
nn <leader>t8 8gt
nn <leader>t9 9gt
nn <leader>t0 1gt
nn ;l :tabn<CR>
nn ;k :tabn<CR>
nn ;h :tabN<CR>
nn ;g :tabN<CR>
nn ;q :tabc<CR>
nn ;$ :tabl<CR>
nn ;0 :tabf<CR>
nn ;t :tabnew<CR>

"" tags
"nn <leader>tu :!ctags --langmap=c:+.cu --exclude=".pc" --recurse<CR><CR>
nn <leader>tu :!ctags -f tags *.[ch]*<CR><CR>
nn <leader>ta :ta 
nn <leader>sts :stj /
nn <leader>ts :tj /
nn ;K :tagN<CR>
nn ;H :tagN<CR>
nn ;J :tagn<CR>
nn ;L :tagn<CR>
nn ;q :tagc<CR>
nn ;$ :tagl<CR>
nn ;0 :tagf<CR>
nn ;O :tago<CR>
nn ;q :tabc<CR>

"" shell
nn ;X :!chmod 755 %<CR>
nn <leader>x :!./%<CR>
nn ;x :!./%<CR>
nn ;s :shell<CR>
nn ;p "+p

"" drill
nn <leader>d 
nn <leader>D 

"" split window
nn <leader>v :vs<CR>
nn <leader>s :sp<CR>
nnoremap <leader>nn <C-W>_<C-W><Bar>
nnoremap <leader>NN <C-W>_<C-W>=

"" window
nn <leader>i :hid<CR>
nn <leader>l :winc l<CR>
nn <leader>j :winc j<CR>
nn <leader>k :winc k<CR>
nn <leader>h :winc h<CR>
nn <leader>o :on<CR>
nn <leader>n <C-W>_<C-W><Bar>
nn <leader>N <C-W>_<C-W>=

"" search
nn <leader>gr :vimgrep 
nn <leader>GR :!grep 

"" macros
nn <leader>gm :exe @g<CR>
nn <leader>QQ :call DoNMacro()<CR>
nn <leader>QB :bufdo! normal! @q<CR>
nn <leader>QW :windo! normal! @q<CR>
vn / y:execute "/".escape(@",'[]/\.*')<CR>

"" visual
nn <leader>V <C-V>
nn ;v <C-V>
nn ;V 0{j<C-V>}k

"" scroll
nn <Space> }
nn <S-Space> {
nn <C-Space> {
nn <Tab> }
nn <S-Tab> {

"" vim project
nn <silent> ;<Space> <plug>ToggleProject

"" nerd tree
nn <leader>y :NERDTreeToggle<CR>
nn <leader>F :NERDTreeFind<CR>
nn <leader>@ :setlocal spell!<CR>
nn <leader># :set invnu<CR>
nn <leader>$ :set invlist<CR>
nn <leader>% :call ToggleSyntax()<CR>
nn <leader>m :call ToggleSyntax()<CR> :set invlist<CR> :set invnu<CR>
nn <leader>^ :colorscheme 
nn <leader>) :set invcul<CR>

"" text objects
nn <C-i> "*p
nn <C-c> "*y

"" buffers
nn ;b :b 
nn <leader>b :ls<CR>
nn <leader>1 :b1<CR>
nn <leader>2 :b2<CR>
nn <leader>3 :b3<CR>
nn <leader>4 :b4<CR>
nn <leader>5 :b5<CR>
nn <leader>6 :b6<CR>
nn <leader>7 :b7<CR>
nn <leader>8 :b8<CR>
nn <leader>9 :b9<CR>
nn <leader>0 '0
nn <leader>a :b#<CR>

"" fold
nn <leader>z1 :set foldlevel=1<CR>
nn <leader>z2 :set foldlevel=2<CR>
nn <leader>z3 :set foldlevel=3<CR>
nn <leader>z4 :set foldlevel=4<CR>
nn <leader>z5 :set foldlevel=5<CR>
nn <leader>z6 :set foldlevel=6<CR>
nn <leader>z7 :set foldlevel=7<CR>
nn <leader>z8 :set foldlevel=8<CR>
nn <leader>z9 :set foldlevel=9<CR>
nn <leader>z0 :set foldlevel=0<CR>
nn ;m :call ToggleFold()<CR>
nn <leader>zf {zf}
nn ;o zA

"" conque term
"cm ct :ConqueTerm zsh<CR>
cm w!! w !sudo tee %>/dev/null

"" fuzzy buffer
nn <leader>F :FufFile **/<CR>
nn <leader>B :FufBuffer **/<CR>
"nn <leader>b :BufExplorer<CR>
nn <leader>T :FufTag<CR>
nn <leader>f <C-Z>

"" popup
ino <expr> j ((pumvisible())?("\<C-n>"):("j"))
ino <expr> k ((pumvisible())?("\<C-p>"):("k"))

"" cscope
nn ;ss :cs find s <C-R>=expand("<cword>")<CR><CR>
nn ;sg :cs find g <C-R>=expand("<cword>")<CR><CR>
nn ;sc :cs find c <C-R>=expand("<cword>")<CR><CR>
nn ;st :cs find t <C-R>=expand("<cword>")<CR><CR>
nn ;se :cs find e <C-R>=expand("<cword>")<CR><CR>
nn ;sf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nn ;si :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nn ;sd :cs find d <C-R>=expand("<cword>")<CR><CR>
nn ;sss :scs find s <C-R>=expand("<cword>")<CR><CR>
nn ;ssg :scs find g <C-R>=expand("<cword>")<CR><CR>
nn ;ssc :scs find c <C-R>=expand("<cword>")<CR><CR>
nn ;sst :scs find t <C-R>=expand("<cword>")<CR><CR>
nn ;sse :scs find e <C-R>=expand("<cword>")<CR><CR>
nn ;ssf :scs find f <C-R>=expand("<cfile>")<CR><CR>
nn ;ssi :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nn ;ssd :scs find d <C-R>=expand("<cword>")<CR><CR>
nn ;svs :vert scs find s <C-R>=expand("<cword>")<CR><CR>
nn ;svg :vert scs find g <C-R>=expand("<cword>")<CR><CR>
nn ;svc :vert scs find c <C-R>=expand("<cword>")<CR><CR>
nn ;svt :vert scs find t <C-R>=expand("<cword>")<CR><CR>
nn ;sve :vert scs find e <C-R>=expand("<cword>")<CR><CR>
nn ;svf :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
nn ;svi :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nn ;svd :vert scs find d <C-R>=expand("<cword>")<CR><CR>
nn <leader>sd :cs find d 
nn <leader>ss :cs find s 
nn <leader>sg :cs find g 
nn <leader>sc :cs find c 
nn <leader>st :cs find t 
nn <leader>se :cs find e 
nn <leader>sf :cs find f 
nn <leader>si :cs find i 
nn <leader>ssd :scs find d 
nn <leader>sss :scs find s 
nn <leader>ssg :scs find g 
nn <leader>ssc :scs find c 
nn <leader>sst :scs find t 
nn <leader>sse :scs find e 
nn <leader>ssf :scs find f 
nn <leader>ssi :scs find i 
nn <leader>svd find d 
nn <leader>svs find s 
nn <leader>svg find g 
nn <leader>svc find c 
nn <leader>svt find t 
nn <leader>sve find e 
nn <leader>svf find f 
nn <leader>svi find i 

"" stamping
nn S "_diwgP
nn s yiw

"" xml
nn [ vito
nn ] vit

"" quick fix
"nn <C-j> :cn<CR>
"nn <C-k> :cp<CR>
nn <leader><leader>j :cn<CR>
nn <leader><leader>k :cp<CR>
nn ∆ :cn<CR>
nn  :cn<CR>
nn ˚ : cp<CR>
nn  : cp<CR>

"" directories
if exists('+autochdir')
 "set autochdir
else
  autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif

"" functions

function! ToggleFold()
  if g:fld == 1
    let g:fld = 0
    normal!zM
  else
    let g:fld = 1
    normal!zR
  endif
endfunction

function! ToggleSyntax()
  if exists("g:syntax_on")
    syntax off
  else
    syntax on
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

"" tabline
if exists("+showtabline")
  function MyTabLabel(n)
    let buflist = tabpagebuflist(a:n)
    let winnr = tabpagewinnr(a:n)
    return '[' . buflist[winnr - 1] . '] ' .  bufname(buflist[winnr - 1])
  endfunction
  function MyTabLine()
    let s = ''
    for i in range(tabpagenr('$'))
      " select the highlighting
      if i + 1 == tabpagenr()
        let s .= '%#TabLineSel#'
      else
        let s .= '%#TabLine#'
      endif
      " set the tab page number (for mouse clicks)
      let s .= '%' . (i + 1) . 'T'
      " the label is made by MyTabLabel()
      let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
    endfor
    " after the last tab fill with TabLineFill and reset tab page nr
    let s .= '%#TabLineFill#%T'
    " right-align the label to close the current tab page
    if tabpagenr('$') > 1
      let s .= '%=%#TabLine#%999Xclose'
    endif
    return s
  endfunction
  set stal=2
  set tabline=%!MyTabLine()
  hi TabLineFill ctermfg=White  ctermbg=White
  hi TabLine     ctermfg=White  ctermbg=Black
  hi TabLineSel  ctermfg=Yellow ctermbg=White
endif

hi Folded ctermfg=yellow ctermbg=black guifg=yellow guibg=black
hi Search ctermfg=black  ctermbg=red   guifg=black  guibg=red
"hi Folded ctermfg=yellow ctermbg=black guifg=yellow guibg=black

"" indent text object
onoremap <silent>ai :<C-U>cal <SID>IndTxtObj(0)<CR>
onoremap <silent>ii :<C-U>cal <SID>IndTxtObj(1)<CR>
vnoremap <silent>ai :<C-U>cal <SID>IndTxtObj(0)<CR><Esc>gv
vnoremap <silent>ii :<C-U>cal <SID>IndTxtObj(1)<CR><Esc>gv

function! s:IndTxtObj(inner)
  let curline = line(".")
  let lastline = line("$")
  let i = indent(line(".")) - &shiftwidth * (v:count1 - 1)
  let i = i < 0 ? 0 : i
  if getline(".") !~ "^\\s*$"
    let p = line(".") - 1
    let nextblank = getline(p) =~ "^\\s*$"
    while p > 0 && ((i == 0 && !nextblank) || (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
      -
      let p = line(".") - 1
      let nextblank = getline(p) =~ "^\\s*$"
    endwhile
    normal! 0V
    call cursor(curline, 0)
    let p = line(".") + 1
    let nextblank = getline(p) =~ "^\\s*$"
    while p <= lastline && ((i == 0 && !nextblank) || (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
      +
      let p = line(".") + 1
      let nextblank = getline(p) =~ "^\\s*$"
    endwhile
    normal! $
  endif
endfunction

"" *EOF*
