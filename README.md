# no-compiler
arm based compiler for custom language

# Installing NASM on Windows

["This is the project webpage for the Netwide Assembler (NASM), an asssembler for the x86 CPU architecture portable to nearly every modern platform, and with code generation for many platforms old and new."](https://www.nasm.us/)

``` winget install nasm -i ```

make sure you add the installed folder to your path

## Syntax Highlighting for VSCode

- 13xforever.language-x86-64-assembly

# Dev Workflow

## WINDOWS
using build_win.bat to compile the asm file into an exe file

``` build_win.bat test_win ```
``` test_win.exe ```
``` echo %ERRORLEVEL% ```

## MAC TODO
## LINUX TODO

# TODO

- [x] get familiar with NASM
- [x] simple return 0 program in windows using elf64 and gcc
- [ ] get familiar with arm compiler
- [ ] get familiar with arm assembly
- [ ] what language to use?
- [ ] .no language return 0 
- [ ] .no language hello world