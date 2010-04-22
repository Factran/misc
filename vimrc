"""""""""""""
" SHORTCUTS "
"""""""""""""
"   F1          help
"   F7          Compiile litchee and send to SDU.
"   F8          view tag list

syntax on
set splitright
"affiche la statusline sur l'avant dernière ligne.
set laststatus=2
"status git, position, nom du fichier.
set statusline=%<%f\ %h%w%m%r%3.(\ %)%{fugitive#statusline()}%=%([%{Tlist_Get_Tagname_By_Line()}]%)%3.(\ %)%-14.(%l,%c%V%)\ %P
map <F7> : call CompileAndSend()<CR>
map <silent> <F8> :TlistToggle<CR>
"Coloration syntaxique C-style pour les fichiers edc.
autocmd BufNewFile,BufRead *.edc set ft=c

if &t_Co == 256
        highlight! Pmenu          ctermfg=Grey        ctermbg=236
elseif &t_Co > 8
        highlight! Pmenu          ctermfg=Grey        ctermbg=DarkGrey
else
        highlight! Pmenu          ctermfg=Grey        ctermbg=DarkCyan
endif
if &t_Co > 8
        highlight! PmenuSel       ctermfg=Yellow      ctermbg=Blue
else
        highlight! PmenuSel       ctermfg=Yellow      ctermbg=Cyan
endif
        highlight! def link PmenuSbar Pmenu
        highlight! PmenuThumb	  ctermbg=DarkMagenta cterm=none


func! CompileAndSend()
  exec "w"
  exec "cd /home/pvullo/sicma/litchee"
  exec "!/home/pvullo/sicma/litchee/makelitchee.sh" 
  exec "i" 
endfunc

