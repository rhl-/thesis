set terminal epslatex monochrome
            set output 'graph_balance.tex'
            set key top right
            set xrange [ 2 : 10  ]
            set yrange [ 0.1  : .55]
	    set mytics 2
    	set xlabel '\# of partitions'
    	set ylabel 'graph balance ratio '
	set style line 1 pt 5 lw 2 
	set style line 2 pt 4 lw 2 
	set style line 3 pt 7 lw 2 
	set style line 4 pt 6 lw 2 
	set style line 5 pt 9 lw 2 
	set style line 6 pt 8 lw 1 
	set style line 7 pt 11 lw 1 
	set style line 8 pt 10 lw 1
plot 'graph_balance-factors.dat' u 1:2 t '\bunny' w lp ls 1, \
'graph_balance-factors.dat' u  1:4 t '\blobs' w lp ls 2, \
'graph_balance-factors.dat' u  1:6 t '\clique' w lp ls 3, \
'graph_balance-factors.dat' u 1:8 t '\gnp' w lp ls 4, \
'graph_balance-factors.dat' u 1:10 t '\sphere' w lp ls 5 
