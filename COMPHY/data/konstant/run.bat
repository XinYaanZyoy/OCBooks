echo compiling
gfortran -o %1.exe %1.f90
echo executing from stdin
.\%1.exe