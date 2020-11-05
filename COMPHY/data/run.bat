echo compiling
gfortran -o konstant\%1.exe konstant\%1.f90
echo executing from stdin
.\konstant\%1.exe