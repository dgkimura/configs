" Vim - configuration file
" Author David Kimura

set number
set hlsearch
set expandtab
set tabstop=4
syntax on

" search path of tags
set tags=./tags;/,tags;/

" command to rebuild tags
nmap ,t :!(cd '%:p:h';ctags *)&

command! -complete=shellcmd -nargs=+ Ggrep call s:RunShellCommand('git grep -n '.<q-args>)
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
     if part[0] =~ '\v[%#<]'
        let expanded_part = fnameescape(expand(part))
        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     endif
  endfor
  botright vnew
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:    ' . a:cmdline)
  call setline(2, 'Expanded Form:  ' .expanded_cmdline)
  call setline(3,substitute(getline(2),'.','=','g'))
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
  1
endfunction
