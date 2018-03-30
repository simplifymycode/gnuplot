#
# gnuplot example script to plot a simple histogram
# Version 1.0.1
# https://github.com/simplifymycode
# (c) 2018 by simplifymycode
#
set term png
set output "histogram.png"
set datafile missing '-' # missing value in datafile
set style data histograms
set boxwidth 1.5 absolute # width of histogram columns
set style fill solid 1.00 border lt -1 # appearance of histogram columns
set style histogram clustered gap 1 # center histogram columns
set xtics border out scale 0,0 nomirror rotate by -45 # specify tic marks and labelling on x-axis
set yrange [ 0.0 : 10.0 ]
set title "This is an example header \n consisting of two lines"
# RGB Colors (Hex Code) #FF0000 red ; #008000 green ; #0000FF blue
plot 'test.dat' using 2:xtic(1) ti col linecolor rgb "#008000" # plot and define color
