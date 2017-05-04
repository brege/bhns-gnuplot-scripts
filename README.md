* I cloned these gnuplot palettes in the parent directory to these files:
``` bash
git clone https://github.com/Gnuplotting/gnuplot-palettes/
```
which allows you to choose between different color palettes on the fly. 
You just need to edit `styles.cfg`.

* Usage: `gnuplot` then `load 'restmass.cfg'`

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
load 'make-images.cfg'
```
then just rsync `images/` over.

* You can execute a gnuplot shell command from the bash terminal (may be useful for cronjobs/automation):
``` bash
gnuplot -e "load 'make-images.cfg'"
```

* Once in a while, update all the `JoinedLev1` directories using `../scripts/rejoinsegments.sh`

