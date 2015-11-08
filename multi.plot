set terminal postscript portrait enhanced color dashed lw 1 "Helvetica" 14 
set output "multi.ps"
set xlabel "Time since start"
set size 1.0, 0.6

set ylabel "CREATE ops per second"
plot "pre/CREATE.dat" title 'Pre' with lines, "post/CREATE.dat" title 'Post' with lines

set ylabel "DELETE ops per second"
plot "pre/DELETE.dat" title 'Pre' with lines, "post/DELETE.dat" title 'Post' with lines

set ylabel "READ ops per second"
plot "pre/READ.dat" title 'Pre' with lines, "post/READ.dat" title 'Post' with lines

set ylabel "SETSINGLE ops per second"
plot "pre/SETSINGLE.dat" title 'Pre' with lines, "post/SETSINGLE.dat" title 'Post' with lines

set ylabel "SETMULTI ops per second"
plot "pre/SETMULTI.dat" title 'Pre' with lines, "post/SETMULTI.dat" title 'Post' with lines
