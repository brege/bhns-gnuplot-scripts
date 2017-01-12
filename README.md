* I cloned these gnuplot palettes in the parent directory fo these files:
```
git clone https://github.com/Gnuplotting/gnuplot-palettes/
```
  This allows you to choose between different color palettes on the fly. 
  You just need to edit `styles.cfg`.

* Try it out: `gnuplot` then `load 'restmass-sd.cfg'`

* You can output to png for meetings:
```
set term png
set output 'images/restmass-sd.png'
replot
```

* You can output to latex for talks and papers:
```
set term latex
set output 'latex/restmass-sd.tex'
replot
```

* You can output all your pngs with a single command
``` 
load 'make-images.cfg'
```
  then just rsync `images/` over.

* You can execute a gnuplot shell command from the bash terminal (may be useful for cronjobs/automation):
``` bash
gnuplot -e "load 'make-images.cfg'"
```

* Once in a while, update all the `JoinedLev1` directories using `../scripts/rejoinsegments.sh`

