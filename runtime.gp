reset
set ylabel 'time(sec)'
set style fill solid
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot [:][0:30]'output.txt' using 1 with histogram title 'Baseline', \
'' using ($0-0.2):($1+1):1 with labels title ' ', \
'' using 2 with histogram title 'OpenMP 2', \
'' using ($0-0.05):($2+1):2 with labels title ' ', \
'' using 3 with histogram title 'OpenMP 2', \
'' using ($0+0.1):($3+1):3 with labels title ' ', \
'' using 4 with histogram title 'AVX SIMD', \
'' using ($0+0.2):($4+1):4 with labels title ' ', \
'' using 5 with histogram title 'AVX SIMD + Loop unrolling', \
'' using ($0+0.35):($5+1):5 with labels title ' ' \
