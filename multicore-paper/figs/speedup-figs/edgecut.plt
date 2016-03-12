set terminal epslatex monochrome
            set output 'edgecut.tex'
            set key at 9.8, 0.5 
            set xrange [ 2 : 10  ]
            set yrange [ 7.85966e-07  : 0.942105  ]
	    set mytics 2
    	set xlabel '\# of partitions'
    	set ylabel '\% edgecut '
	set style line 1 pt 5 lw 2 
	set style line 2 pt 4 lw 2 
	set style line 3 pt 7 lw 2 
	set style line 4 pt 6 lw 2 
	set style line 5 pt 9 lw 2 
	set style line 6 pt 8 lw 1 
	set style line 7 pt 11 lw 1 
	set style line 8 pt 10 lw 1
plot 'edgecut.dat' using 1:2 t '\bunny' with lp ls 1, \
'edgecut.dat' using 1:4 t '\blobs' with lp ls 2, \
'edgecut.dat' using 1:6 t '\clique' with lp ls 3, \
'edgecut.dat' using 1:8 t '\gnp' with lp ls 4, \
'edgecut.dat' using 1:10 t '\sphere' with lp ls 5 
