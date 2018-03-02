#!/bin/bash
lex lexer.l
gcc lex.yy.c -lfl
echo "give me a bottle of rum!"
