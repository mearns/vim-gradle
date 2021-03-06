" Vim Compiler File
" Compiler: gradlew

if exists("current_compiler")
    finish
endif
let current_compiler = "gradlew"

if exists(":CompilerSet") != 2 " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=./gradlew

CompilerSet errorformat=
    \%E[ant:scalac]\ %f:%l:\ error:\ %m,
    \%W[ant:scalac]\ %f:%l:\ warning:\ %m,
    \%E:compileJava%f:%l:\ %m,
    \%E:compileTestJava%f:%l:\ %m,
    \%E%f:%l:\ %m,%-Z%p^,%-C%.%#,%-G%.%#,
    \%E%f:\ %\\d%\\+:\ %m\ @\ line\ %l\\,\ column\ %c.,%-C%.%#,%Z%p^,
    \%E%>%f:\ %\\d%\\+:\ %m,%C\ @\ line\ %l\\,\ column\ %c.,%-C%.%#,%Z%p^,
    \%-G\\s%#,
    \%-GBUILD\ SUCCESSFUL#,
    \%-GTotal\ \time:\ %.%#,
    \%E%f:%l:\ %m,
    \%-G%.%#

