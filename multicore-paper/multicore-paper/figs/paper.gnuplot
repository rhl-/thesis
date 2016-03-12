set terminal pdf 
set output "speedup.pdf"
set multiplot
set xtics 1
set key left top
set xlabel "Number of partitions"
set ylabel "Speedup factor"
plot "speedup-factors" u 1:2 title "persistence speedup" lw 5 lc rgb "#C6A8D0" w linespoints, \
     "speedup-factors" u 1:3 title "total speedup" lw 5 lc rgb "#B6D770" w linespoints
unset multiplot
