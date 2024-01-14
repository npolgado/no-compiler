@echo off

REM Check if a command line argument is provided
IF "%~1"=="" (
    echo No file specified. Please provide a file name as a command line argument.
    exit /b
)

REM Assemble the file using NASM
nasm -f elf64 %~1.asm -o %~1.o

REM Compile the object file using GCC
gcc %~1.o -o %~1

REM Check if the compilation was successful
IF %errorlevel% neq 0 (
    echo Compilation failed.
    exit /b
)

echo Compilation successful.
