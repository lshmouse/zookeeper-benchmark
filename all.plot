set terminal postscript portrait enhanced color dashed lw 1 "Helvetica" 14 
set output "results.ps"
set xlabel "Time since start"
set size 1.0, 0.6

set ylabel "CREATE ops per second"
plot "CREATE.dat" with lines

set ylabel "DELETE ops per second"
plot "DELETE.dat" with lines

set ylabel "READ ops per second"
plot "READ.dat" with lines

set ylabel "SETSINGLE ops per second"
plot "SETSINGLE.dat" with lines

set ylabel "SETMULTI ops per second"
plot "SETMULTI.dat" with lines
