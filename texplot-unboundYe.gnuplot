# Plot P(rho) curves

load 'linestyle_defs.gnu'

set title 'Electron fraction in plunge-merger for Barotropic (Cold, Beta-Eq) Equations of State'
set xlabel '$t - t_{\textrm{disrupt}}$ (ms)'
set ylabel 'electron fraction $Y_e$'
#unset x2label
#unset y2label

min_Ye_geo=4.4e-2
max_Ye_geo=7.6e-2
set yrange [min_Ye_geo:max_Ye_geo]
set ytics nomirror
#set logscale y

min_dt=3
max_dt=4.5
set xrange [min_dt:max_dt]
set xtics nomirror

#min_h_geo=0.2
#max_h_geo=8
#set yrange [min_h_geo:max_h_geo]
#unset y2tics
#set ytics mirror
#unset logscale y

set key top right

p \
'../DD2/M12_7-S9-DD2/QE/Ev-eqsym/AMRLev1_Plunge/JoinedLev1/MatterObservers/UnboundMass.dat' u (($1-2915.476)/200):($6/$3) w l ls 1 t 'Hempel DD2 M=1.2',\
'../DD2/M14_7-S9-DD2/QE/Ev-eqsym/AMRLev1_Plunge/JoinedLev1/MatterObservers/UnboundMass.dat' u (($1-3993.854)/200):($6/$3) w l ls 5 t 'Hempel DD2 M=1.4',\
'../FSU21/M12_7-S9-FSU21/QE/Ev-eqsym/AMRLev1_Plunge/JoinedLev1/MatterObservers/UnboundMass.dat' u (($1-2916.693)/200):($6/$3) w l ls 2 t 'G. Shen FSU 2.1, M=1.2',\
'../FSU21/M14_7-S9-FSU21/QE/Ev-eqsym/FixingAMRLev1_Plunge/JoinedLev1/MatterObservers/UnboundMass.dat' u (($1-3958.919)/200):($6/$3) w l ls 6 t 'G. Shen FSU 2.1, M=1.4',\
'../SFHo/M12_7-S9-SFHo/QE/Ev-eqsym/AMRLev1_Plunge/JoinedLev1/MatterObservers/UnboundMass.dat' u (($1-2877.339)/200):($6/$3) w l ls 3 t 'SFHo M=1.2',\
'../SFHo/M14_7-S9-SFHo/QE/Ev-eqsym/AMRLev1_Plunge/JoinedLev1/MatterObservers/UnboundMass.dat' u (($1-3900.066)/200):($6/$3) w l ls 7 t 'SFHo M=1.4',\
'../SFHx/M12_7-S9-SFHx/QE/Ev-eqsym/AMRLev1_Plunge/JoinedLev1/MatterObservers/UnboundMass.dat' u (($1-2882.856)/200):($6/$3) w l ls 4 t 'SFHx M=1.2',\
'../SFHx/M14_7-S9-SFHx/QE/Ev-eqsym/AMRLev1_Plunge/JoinedLev1/MatterObservers/UnboundMass.dat' u (($1-3765.838)/200):($6/$3) w l ls 8 t 'SFHx M=1.4'

