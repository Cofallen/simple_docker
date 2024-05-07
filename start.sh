#!/bin/bash
Val="hello world\n"
echo -e $Val  # 使用 -e 选项以便转义字符生效
mv src/work1.cpp src/new.cpp
rm src/work?.cpp  # 直接删除多个文件，无需循环
mkdir build
g++ -o build/new src/new.cpp
./build/new
