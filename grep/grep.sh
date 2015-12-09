#!/bin/bash
#-c 只输出匹配行的计数。
#-i 不区分大小写（只适用于单字符）。
#-h 查询多文件时不显示文件名。
#-l 查询多文件时只输出包含匹配字符的文件名。
#-n 显示匹配行及行号。
#-s 不显示不存在或无匹配文本的错误信息。
#-v 显示不包含匹配文本的所有行。
#-w 匹配整个单词
cat test.txt | grep -E '^hello'
cat test.txt | grep -E 'hello$'
cat test.txt | grep -E '^hello'
cat test.txt | grep -E 'hello$'
cat test.txt | grep -E '^hello$'
cat test.txt | grep -E '[^hello]'
cat test.txt | grep -Ei '^hello'
cat test.txt | grep -E '^hello'
cat test.txt | grep -Ei 'hello|world'
cat test.txt | grep -Ei '^[^hello]'
cat test.txt | grep -E '^$'
cat test.txt | grep -E '^1[0-9]{10}$'
grep -Ei '[0-9]+hello$'
grep -Ei '^hello[0-9]+$'
grep -ri 'hello' ./
grep -ri 'hello' ./
grep -rih 'hello' ./
grep -wrih 'hello' ./
grep -cwrih 'hello' ./
grep -crih 'hello' ./
grep -nrih 'hello' ./