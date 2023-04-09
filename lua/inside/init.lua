require("inside.remap")
require("inside.set")
print("hello from inside")

set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P
