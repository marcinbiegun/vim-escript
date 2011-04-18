" escript_compile.vim 
" Maintainer:   Marcin Biegun <biegun.m@gmail.com>
" Version:      0.1

if exists('g:escript_compile') || &cp
  finish
endif
let g:escript_compile = 1

map <F7> :call CompileEscript()<CR>
func! CompileEscript()
  :let ecompile_path = "/home/nagl/Projekty/st/pol-st/scripts/ecompile"
  :let project_path = "/home/nagl/Projekty/st/pol-st/"
  :let abs_file_path = expand('%:p')
  :let rel_file_path = substitute(abs_file_path, project_path, "../", "")
  :echo system("cd / ; ".ecompile_path." .".abs_file_path)
endfunc

