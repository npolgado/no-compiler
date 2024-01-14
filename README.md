# NO-COMPILER

an arm based compiler (in python for now) for custom language with .no extension

# INSTALLING

["This is the project webpage for the Netwide Assembler (NASM), an asssembler for the x86 CPU architecture portable to nearly every modern platform, and with code generation for many platforms old and new."](https://www.nasm.us/)

## on Windows

```bash
winget install nasm -i
```

make sure you add the installed folder to your path

## on mac TODO

## on linux TODO

## Syntax Highlighting for VSCode

I use the following extension however looking for better ones

- 13xforever.language-x86-64-assembly

# HOW A COMPILER WORKS

[Compiler's use Abstract Syntax Trees](https://en.wikipedia.org/wiki/Abstract_syntax_tree) to respresent the source code. The AST is then used to generate the machine code.

Compiler's also use something called Lexical Analysis to convert the source code into tokens. These tokens are then used to generate the AST. Tokens shouldn't be confused with AST nodes. Tokens are the smallest unit of the language. For example, in the following code:

```c 
int main() {
    return 0;
}
```

The tokens would be:

```c
int, main, (, ), {, return, 0, ;, }
```
or something similar.

# DEV WORKFLOW

## Windows
using build_win.bat to compile the asm file into an exe file

```bash
build_win.bat test_win 
test_win.exe
echo %ERRORLEVEL%
```

## Mac TODO
## Linux TODO

# TODO

- [x] get familiar with NASM
- [x] simple return 0 program in windows using elf64 and gcc
- [ ] get familiar with arm compiler
- [ ] get familiar with arm assembly
- [x] what language to use? (python for now, move to C then Rust)
- [x] .no language return 0 
- [ ] .no language hello world
- [ ] develop syntax further