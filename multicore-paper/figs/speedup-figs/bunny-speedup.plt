set terminal epslatex monochrome
            set output 'bunny-speedup.tex'
            set key top left
            set xrange [ 3 : 11  ]
            set yrange [ 2  : 11  ]
	    set mytics 2
    	set xlabel '\# of threads'
    	set ylabel 'homology speedup '
    	set style line 1 pt 5 lw 2
    	set style line 2 pt 4 lw 2 
    	set style line 3 pt 7 lw 2 
    	set style line 4 pt 6 lw 2 
    	set style line 5 pt 9 lw 2 
    	set style line 6 pt 8 lw 1 
    	set style line 7 pt 11 lw 1 
    	set style line 8 pt 10 lw 1

unset key
#set xlabel "{/CMMI10 \017}"
#set data style linespoints
#set log y
#set ylabel "Seconds" offset 2,0
#set yrange [0.01:100]
#set xrange [0:0.05]
#set xtics 0,0.01,0.05
#set lmargin 3.5
 
plot \
'bunny-speedup.dat' u 1:2 w lp ls 1, \
x with lines title 'y=x' 
