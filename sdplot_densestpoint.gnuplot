# Plot P(rho) curves

load 'linestyle_defs.gnu'

set title 'Densest point in plunge-merger for Barotropic (Cold, Beta-Eq) Equations of State'
set xlabel 't - t_disrupt (ms)'
set ylabel 'densest point (G=c=Msun=1)'
set y2label 'densest point (g/cm^3)'
unset x2label

geoTocgs_rho=5.178e17
min_rho_geo=4e-4
max_rho_geo=3e-3
set yrange [min_rho_geo:max_rho_geo]
set y2range [min_rho_geo*geoTocgs_rho:max_rho_geo*geoTocgs_rho]
set ytics nomirror
set y2tics nomirror
set logscale y
set logscale y2

#min_h_geo=0.2
#max_h_geo=8
#set yrange [min_h_geo:max_h_geo]
#unset y2tics
#set ytics mirror
#unset logscale y

set key top right

p \
'../DD2/M12_7-S9-DD2/QE/Ev-eqsym/AMRLev1_Plunge/JoinedLev1/MatterObservers/DensestPoint.dat' u (($1-2915.476)/200):5 w l ls 1 t 'Hempel DD2 M=1.2',\
'../DD2/M14_7-S9-DD2/QE/Ev-eqsym/AMRLev1_Plunge/JoinedLev1/MatterObservers/DensestPoint.dat' u (($1-3993.854)/200):5 w l ls 2 t 'Hempel DD2 M=1.4',\
'../FSU21/M12_7-S9-FSU21/QE/Ev-eqsym/AMRLev1_Plunge/JoinedLev1/MatterObservers/DensestPoint.dat' u (($1-2916.693)/200):5 w l ls 3 t 'G. Shen FSU 2.1, M=1.2',\
'../FSU21/M14_7-S9-FSU21/QE/Ev-eqsym/FixingAMRLev1_Plunge/JoinedLev1/MatterObservers/DensestPoint.dat' u (($1-3958.919)/200):5 w l ls 4 t 'G. Shen FSU 2.1, M=1.4',\
'../SFHo/M12_7-S9-SFHo/QE/Ev-eqsym/AMRLev1_Plunge/JoinedLev1/MatterObservers/DensestPoint.dat' u (($1-2877.339)/200):5 w l ls 5 t 'SFHo M=1.2',\
'../SFHo/M14_7-S9-SFHo/QE/Ev-eqsym/AMRLev1_Plunge/JoinedLev1/MatterObservers/DensestPoint.dat' u (($1-3900.066)/200):5 w l ls 6 t 'SFHo M=1.4',\
'../SFHx/M12_7-S9-SFHx/QE/Ev-eqsym/AMRLev1_Plunge/JoinedLev1/MatterObservers/DensestPoint.dat' u (($1-2882.856)/200):5 w l ls 7 t 'SFHx M=1.2',\
'../SFHx/M14_7-S9-SFHx/QE/Ev-eqsym/AMRLev1_Plunge/JoinedLev1/MatterObservers/DensestPoint.dat' u (($1-3765.838)/200):5 w l ls 8 t 'SFHx M=1.4'

