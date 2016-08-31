set title 'Example Plot'
set ylabel'Execution time in Seconds'
set xlabel'Number of Search integers'
set logscale x 2
set format x ".0s*10^%T"
set grid
set term png
set output "graph.png"
plot 'data.dat'
set term x11

