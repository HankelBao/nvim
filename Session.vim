let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +18 Workspace\test\test.py
badd +4 Workspace\test\test2.py
badd +1 [Plugins]\ (2)
badd +0 [Plugins]
badd +0 C:\Users\[denite]
argglobal
silent! argdel *
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
if bufexists('.vim\plugged\denite.nvim\doc\denite.txt') | buffer .vim\plugged\denite.nvim\doc\denite.txt | else | edit .vim\plugged\denite.nvim\doc\denite.txt | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 139 - ((20 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
139
normal! 0
lcd ~\AppData\Local\nvim
tabedit ~\Workspace\test\test2.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 85) / 170)
exe '2resize ' . ((&lines * 5 + 23) / 47)
exe 'vert 2resize ' . ((&columns * 97 + 85) / 170)
exe '3resize ' . ((&lines * 28 + 23) / 47)
exe 'vert 3resize ' . ((&columns * 97 + 85) / 170)
exe '4resize ' . ((&lines * 10 + 23) / 47)
exe 'vert 4resize ' . ((&columns * 97 + 85) / 170)
exe 'vert 5resize ' . ((&columns * 40 + 85) / 170)
argglobal
enew
file ~\NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
lcd ~/
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 2) / 5)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
lcd ~/
wincmd w
argglobal
if bufexists('~\Workspace\test\test.py') | buffer ~\Workspace\test\test.py | else | edit ~\Workspace\test\test.py | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/
wincmd w
argglobal
enew
file ~\__Tagbar__.2
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
lcd ~/
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 85) / 170)
exe '2resize ' . ((&lines * 5 + 23) / 47)
exe 'vert 2resize ' . ((&columns * 97 + 85) / 170)
exe '3resize ' . ((&lines * 28 + 23) / 47)
exe 'vert 3resize ' . ((&columns * 97 + 85) / 170)
exe '4resize ' . ((&lines * 10 + 23) / 47)
exe 'vert 4resize ' . ((&columns * 97 + 85) / 170)
exe 'vert 5resize ' . ((&columns * 40 + 85) / 170)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
