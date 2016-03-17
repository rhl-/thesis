set terminal epslatex monochrome
            set output 'homology-speedup.tex'
            set key top left
            set xrange [ 2 : 10  ]
            set yrange [ 0.001419289  : 7.98701  ]
	    set mytics 2
    	set xlabel '\# of partitions'
    	set ylabel 'homology speedup '
	set style line 1 pt 5 lw 2 
	set style line 2 pt 4 lw 2 
	set style line 3 pt 7 lw 2 
	set style line 4 pt 6 lw 2 
	set style line 5 pt 9 lw 2 
	set style line 6 pt 8 lw 1 
	set style line 7 pt 11 lw 1 
	set style line 8 pt 10 lw 1
plot 'homology-speedup.dat' u 1:2 t '\bunny' w lp ls 1, \
'homology-speedup.dat' u 1:4 t '\blobs' w lp ls 2, \
'homology-speedup.dat' u 1:6 t '\clique' w lp ls 3, \
'homology-speedup.dat' u 1:8 t '\gnp' w lp ls 4, \
'homology-speedup.dat' u 1:10 t '\sphere' w lp ls 5 
