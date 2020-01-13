let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/sandbox/apprun/05-test
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +4 src/pages/README.md
badd +1 src/pages/login.tsx
badd +8 src/index.tsx
badd +10 src/index.esm.tsx
badd +9 src/layout/index.html
badd +4 src/layout-coreui/index.tsx
badd +5 src/layout/index.tsx
badd +0 src/tsconfig.json
badd +1 src/pages/index.tsx
badd +3 src/_lib/index-esm.tsx
badd +29 src/00index.esm.tsx
badd +0 src/layout/style.scss
badd +4 src/pages/users.md
badd +1 src/pages/home.tsx
badd +8 src/pages/contact.tsx
badd +4 src/components/counter.tsx
badd +16 src/components/my-xkcd.tsx
badd +9 src/components/error-list.tsx
badd +3 src/models.ts
badd +0 src/api.ts
badd +0 src/fetch.ts
badd +1 src/pages/about.md
badd +1 src/components/login.tsx
argglobal
%argdel
edit src/index.esm.tsx
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 56 + 30) / 61)
exe 'vert 1resize ' . ((&columns * 136 + 136) / 272)
exe '2resize ' . ((&lines * 56 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 135 + 136) / 272)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
9
normal! zo
let s:l = 11 - ((10 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 011|
wincmd w
argglobal
if bufexists("src/index.tsx") | buffer src/index.tsx | else | edit src/index.tsx | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
10
normal! zo
let s:l = 11 - ((10 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 017|
lcd ~/sandbox/apprun/05-test
wincmd w
exe '1resize ' . ((&lines * 56 + 30) / 61)
exe 'vert 1resize ' . ((&columns * 136 + 136) / 272)
exe '2resize ' . ((&lines * 56 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 135 + 136) / 272)
tabedit ~/sandbox/apprun/05-test/src/pages/users.md
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 136 + 136) / 272)
exe 'vert 2resize ' . ((&columns * 135 + 136) / 272)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 3 - ((2 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 05|
wincmd w
argglobal
if bufexists("~/sandbox/apprun/05-test/src/index.tsx") | buffer ~/sandbox/apprun/05-test/src/index.tsx | else | edit ~/sandbox/apprun/05-test/src/index.tsx | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
10
normal! zo
let s:l = 23 - ((22 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 038|
lcd ~/sandbox/apprun/05-test
wincmd w
exe 'vert 1resize ' . ((&columns * 136 + 136) / 272)
exe 'vert 2resize ' . ((&columns * 135 + 136) / 272)
tabedit ~/sandbox/apprun/05-test/src/tsconfig.json
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
let s:l = 9 - ((8 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 012|
tabedit ~/sandbox/apprun/05-test/src/pages/login.tsx
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 90 + 136) / 272)
exe '2resize ' . ((&lines * 31 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 90 + 136) / 272)
exe '3resize ' . ((&lines * 26 + 30) / 61)
exe 'vert 3resize ' . ((&columns * 90 + 136) / 272)
exe 'vert 4resize ' . ((&columns * 90 + 136) / 272)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
7
normal! zo
29
normal! zo
31
normal! zo
32
normal! zo
40
normal! zo
44
normal! zo
39
normal! zo
40
normal! zo
47
normal! zo
48
normal! zo
50
normal! zo
let s:l = 49 - ((43 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
49
normal! 036|
wincmd w
argglobal
if bufexists("~/sandbox/apprun/05-test/src/api.ts") | buffer ~/sandbox/apprun/05-test/src/api.ts | else | edit ~/sandbox/apprun/05-test/src/api.ts | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
6
normal! zo
let s:l = 5 - ((4 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
lcd ~/sandbox/apprun/05-test
wincmd w
argglobal
if bufexists("~/sandbox/apprun/05-test/src/models.ts") | buffer ~/sandbox/apprun/05-test/src/models.ts | else | edit ~/sandbox/apprun/05-test/src/models.ts | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 4 - ((3 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
lcd ~/sandbox/apprun/05-test
wincmd w
argglobal
if bufexists("~/sandbox/apprun/05-test/src/fetch.ts") | buffer ~/sandbox/apprun/05-test/src/fetch.ts | else | edit ~/sandbox/apprun/05-test/src/fetch.ts | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
12
normal! zo
let s:l = 37 - ((36 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 045|
lcd ~/sandbox/apprun/05-test
wincmd w
exe 'vert 1resize ' . ((&columns * 90 + 136) / 272)
exe '2resize ' . ((&lines * 31 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 90 + 136) / 272)
exe '3resize ' . ((&lines * 26 + 30) / 61)
exe 'vert 3resize ' . ((&columns * 90 + 136) / 272)
exe 'vert 4resize ' . ((&columns * 90 + 136) / 272)
tabedit ~/sandbox/apprun/05-test/src/components/error-list.tsx
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
9
normal! zo
let s:l = 6 - ((5 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 010|
tabedit ~/sandbox/apprun/05-test/src/components/error-list.tsx
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 4
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
