#
# gnuplot example script to plot a simple histogram with numbers
# Version 1.0
# https://github.com/simplifymycode
# (c) 2018 by simplifymycode
#
set size 1, 1
set term png size 600, 400
set output "histogram2.png"
set datafile missing '-'
set boxwidth 0.75
set style fill solid
set xtics out
set xtics border out scale 0,0 nomirror rotate by -45 # specify tic marks and labelling on x-axis
set yrange [0:10]
set key top left
set title "This is an example header"
plot "test2i.dat" using 2:xtic(1) with boxes linecolor rgb "#FF0000" ti col,\
  "test2ii.dat" using 0:($2+.3):(sprintf("%3.2f",$2)) with labels title ""
