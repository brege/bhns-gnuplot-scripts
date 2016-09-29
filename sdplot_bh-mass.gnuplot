# Plot P(rho) curves

load 'linestyle_defs.gnu'

set title 'Black hole mass in merger for Barotropic (Cold, Beta-Eq) Equations of State'
set xlabel 't - t_settledisk (ms)'
set ylabel '[Christodoulou] BH mass - initial BH mass (M_dot)'

set yrange [0.05:0.8]
set ytics nomirror
unset logscale y

set key top right

p \
'../DD2/M12_7-S9-DD2/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/ApparentHorizon/Spin_AhA.dat' u (($1-3.6348465728229303e+03)/200):(($6-7.0)) w l ls 1 t 'Hempel DD2 M=1.2',\
'../DD2/M14_7-S9-DD2/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/ApparentHorizon/Spin_AhA.dat' u (($1-4.7676931777997652e+03)/200):(($6-7.0)) w l ls 2 t 'Hempel DD2 M=1.4',\
'../FSU21/M12_7-S9-FSU21/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/ApparentHorizon/Spin_AhA.dat' u (($1-3.5712011212390789e+03)/200):(($6-7.0)) w l ls 3 t 'G. Shen FSU 2.1, M=1.2',\
'../FSU21/M14_7-S9-FSU21/QE/Ev-eqsym/FixingAMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/ApparentHorizon/Spin_AhA.dat' u (($1-4.7391878408342591e+03)/200):(($6-7.0)) w l ls 4 t 'G. Shen FSU 2.1, M=1.4',\
'../SFHo/M12_7-S9-SFHo/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/ApparentHorizon/Spin_AhA.dat' u (($1-3.7564522624272140e+03)/200):(($6-7.0)) w l ls 5 t 'SFHo M=1.2',\
'../SFHo/M14_7-S9-SFHo/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/ApparentHorizon/Spin_AhA.dat' u (($1-4.702860440531322638e+03)/200):(($6-7.0)) w l ls 6 t 'SFHo M=1.4',\
'../SFHx/M12_7-S9-SFHx/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/ApparentHorizon/Spin_AhA.dat' u (($1-3.7594090000000001e+03)/200):(($6-7.0)) w l ls 7 t 'SFHx M=1.2',\
'../SFHx/M14_7-S9-SFHx/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/ApparentHorizon/Spin_AhA.dat' u (($1-4.5342057934506838e+03)/200):(($6-7.0)) w l ls 8 t 'SFHx M=1.4',\
0.6 lt 0 t '',\
0.7 lt 0 t ''

