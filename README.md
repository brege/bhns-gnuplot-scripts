* I cloned these gnuplot palettes in the parent directory to these files:
``` bash
git clone https://github.com/Gnuplotting/gnuplot-palettes/
```
which allows you to choose between different color palettes on the fly. 
You just need to edit `styles.gpi`.

* Usage: `gnuplot` then `load 'restmass.gpi'`

* You can output to png for group meetings:
``` bash
set term png
set output 'images/restmass.png'
replot
```

* You can output to latex for talks and papers:
``` bash
set term latex
set output 'latex/restmass.tex'
replot
```

* You can output all your pngs with a single command
``` bash
load 'make-images.gpi'
```
then just rsync `images/` over.

* You can execute a gnuplot shell command from the bash terminal (may be useful for cronjobs/automation):
``` bash
gnuplot -e "load 'make-images.gpi'"
```

* Once in a while, update all the `JoinedLev1` directories using `../scripts/rejoinsegments.sh`

