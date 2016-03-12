set terminal pdf 
set output "speedup.pdf"
set multiplot
set xtics 1
set key left top
set xlabel "Number of partitions"
set ylabel "Blowup Factor"
set yrange [1:1.03]
plot "blowup-factors" u 1:2 title "bunny" lw 5 lc rgb "#C6A8D0" w linespoints, \
     "blowup-factors" u 1:3 title "mumford" lw 5 lc rgb "#B6D770" w linespoints, \
     "blowup-factors" u 1:4 title "blobs" lw 5 lc rgb "#8FA6D7" w linespoints
unset multiplot
