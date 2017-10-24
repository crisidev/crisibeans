  call neomake#configure#automake({
  \ 'TextChanged': {},
  \ 'InsertLeave': {},
  \ 'BufWritePost': {'delay': 0},
  \ 'BufWinEnter': {},
  \ }, 500)
