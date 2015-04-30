runtime syntax/git.vim

syntax match gitBlameLine /^\x\{8}\s\+.*$/ contains=gitBlameHash,gitBlameAuthorStart,gitBlameAuthor,gitBlameDate
syntax match gitBlameFile @\([^/( ]\+/\)*[^/( ]\+@ contained nextgroup=gitBlameAuthorStart conceal
syntax match gitBlameAuthorStart '(' contained nextgroup=gitBlameAuthor conceal
syntax match gitBlameAuthor /\([-_.A-Za-z]\+\s\+\)\+/ contained nextgroup=gitBlameDate
syntax match gitBlameDate /\([-+:0-9]\+\s\+\)\+\([-+:0-9]\+\s*\)$/ contained
syntax match gitBlameHash /^\x\{8}\s\+/ contained nextgroup=gitBlameFile,gitBlameAuthorStart

highlight link gitBlameFile         String
highlight link gitBlameAuthorStart  Ignore
highlight link gitBlameAuthor       Identifier
highlight link gitBlameDate         Number
highlight link gitBlameHash         Statement

setlocal conceallevel=2
setlocal concealcursor=nc
