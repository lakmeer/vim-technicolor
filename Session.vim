let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/Vim/Technicolor
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +23 ~/.vimrc
badd +1 technicolor.vim
badd +0 javascript.js
badd +0 html.html
badd +0 .gitignore
badd +1 ~/Projects/Vim/Technicolor/.git/refs/heads/master
badd +0 ~/Projects/Vim/Technicolor/.technicolor.vim.swp
badd +0 css.css
badd +56 sparefunctions.vim
silent! argdel *
edit technicolor.vim
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 104 + 104) / 209)
exe '2resize ' . ((&lines * 3 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 104 + 104) / 209)
exe '3resize ' . ((&lines * 1 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 104 + 104) / 209)
exe '4resize ' . ((&lines * 48 + 28) / 56)
exe 'vert 4resize ' . ((&columns * 104 + 104) / 209)
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=6
setlocal fml=2
setlocal fdn=20
setlocal fen
15
normal zo
15
normal zo
19
normal zo
156
normal zo
160
normal zo
161
normal zo
163
normal zo
164
normal zo
209
normal zo
19
normal zo
29
normal zo
38
normal zo
47
normal zo
167
normal zo
171
normal zo
172
normal zo
174
normal zo
175
normal zo
216
normal zo
let s:l = 172 - ((26 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
172
normal! 0
wincmd w
argglobal
edit html.html
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=0
setlocal fml=2
setlocal fdn=20
setlocal fen
let s:l = 19 - ((1 * winheight(0) + 1) / 3)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 07l
wincmd w
argglobal
edit css.css
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=2
setlocal fml=2
setlocal fdn=20
setlocal fen
let s:l = 42 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
42
normal! 027l
wincmd w
argglobal
edit javascript.js
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=2
setlocal fml=2
setlocal fdn=20
setlocal fen
62
normal zo
let s:l = 88 - ((22 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
88
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 104 + 104) / 209)
exe '2resize ' . ((&lines * 3 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 104 + 104) / 209)
exe '3resize ' . ((&lines * 1 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 104 + 104) / 209)
exe '4resize ' . ((&lines * 48 + 28) / 56)
exe 'vert 4resize ' . ((&columns * 104 + 104) / 209)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
