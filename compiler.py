#!/usr/bin/env python3


# using python3.10

from pprint import pprint
# import os
# import pathlib
import sys
# import re
import argparse

class Compiler:
    def __init__(self, path, DEBUG=False):
        self.db = DEBUG
        self.filepath = path
        self.tokens = self.tokenize()
        self.ast = self.parse()

    def pd(self, msg:str, space:bool=False, end:str="\n"):
        caller = str(sys._getframe(1).f_code.co_name).upper()
        
        if self.db:
            print(f"[{caller}]: {msg}")
            if space:
                print("------------------------------", end=end)

    def tokenize(self):
        with open(self.filepath, "r") as f:
            lines = f.readlines()
        
        # remove lines with only "\n"
        for i in lines:
            if i == "\n":
                lines.remove(i)

        return lines

    def parse(self):
        count = 0

        for i in self.tokens:
            is_semi = False
            is_comment = False

            self.pd(f"looking at line {count}")

            if i.startswith("#"):
                self.pd(f"found comment\n{i}", True)
                is_comment = True

            elif i.startswith("ret"):
                self.pd(f"found return\n{i}", True)

            count += 1

            # check if last character in line is ;
            if i[-1] == ";":
                self.pd("semicolon ; at end of line")
                is_semi = True

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Compiler for the Win programming language")

    c = Compiler("test_win.no", True)