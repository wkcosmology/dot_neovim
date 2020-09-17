function! Dot(path)
  return '~/.config/nvim/' . a:path
endfunction

" excute all the files under rc/ and rc/plugins/
for file in split(glob(Dot('rc/*.vim')), '\n')
  execute 'source' file
endfor
for file in split(glob(Dot('rc/plugins/*.vim')), '\n')
  execute 'source' file
endfor

execute 'source ~/.config/nvim/rc/keymapping.vim'
