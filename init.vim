function! Dot(path)
  return "~/.config/nvim/" . a:path
endfunction

for file in split(glob(Dot('rc/*.vim')), '\n')
  execute 'source' file
endfor
for file in split(glob(Dot('rc/plugins/*.vim')), '\n')
  execute 'source' file
endfor
