
#!/bin/bash

cythonize -b $1.pyx
rm $1.c
rm -r -f build