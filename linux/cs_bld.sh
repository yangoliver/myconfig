find . -name '*.[c|h]' -print > cscope.files
find . -name '*.txt' -print >> cscope.files
cscope -Rbkq
