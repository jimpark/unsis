iconv -f UTF-16 -t UTF-8 %1 > %1.u8
mv %1.u8 %1
