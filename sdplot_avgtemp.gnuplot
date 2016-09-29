# Plot P(rho) curves

load 'linestyle_defs.gnu'

set title 'Average Temperatures in merger for Barotropic (Cold, Beta-Eq) Equations of State'
set xlabel 't - t_settledisk (ms)'
set ylabel 'Rho-averaged Temperature (MeV)'

#set yrange [min_rho_geo:max_rho_geo]
set ytics nomirror


set key top right

p \
'../DD2/M12_7-S9-DD2/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/MatterObservers/MassAvgs.dat' u (($1-3.6348465728229303e+03)/200):($3/$4) w l ls 1 t 'Hempel DD2 M=1.2',\
'../DD2/M14_7-S9-DD2/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/MatterObservers/MassAvgs.dat' u (($1-4.7676931777997652e+03)/200):($3/$4) w l ls 2 t 'Hempel DD2 M=1.4',\
'../FSU21/M12_7-S9-FSU21/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/MatterObservers/MassAvgs.dat' u (($1-3.5712011212390789e+03)/200):($3/$4) w l ls 3 t 'G. Shen FSU 2.1, M=1.2',\
'../FSU21/M14_7-S9-FSU21/QE/Ev-eqsym/FixingAMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/MatterObservers/MassAvgs.dat' u (($1-4.7391878408342591e+03)/200):($3/$4) w l ls 4 t 'G. Shen FSU 2.1, M=1.4',\
'../SFHo/M12_7-S9-SFHo/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/MatterObservers/MassAvgs.dat' u (($1-3.7564522624272140e+03)/200):($3/$4) w l ls 5 t 'SFHo M=1.2',\
'../SFHo/M14_7-S9-SFHo/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/MatterObservers/MassAvgs.dat' u (($1-4.702860440531322638e+03)/200):($3/$4) w l ls 6 t 'SFHo M=1.4',\
'../SFHx/M12_7-S9-SFHx/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/MatterObservers/MassAvgs.dat' u (($1-3.7594090000000001e+03)/200):($3/$4) w l ls 7 t 'SFHx M=1.2',\
'../SFHx/M14_7-S9-SFHx/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_SettleDisk/JoinedLev1/MatterObservers/MassAvgs.dat' u (($1-4.5342057934506838e+03)/200):($3/$4) w l ls 8 t 'SFHx M=1.4'

