# Plot P(rho) curves

load 'linestyle_defs.gnu'

set title 'Neutrino Luminosity Barotropic (Cold, Beta-Eq) tabulated EoS FSU 2.1, M_NS = 1.2Msun '
set xlabel 'code time'
set ylabel 'neutrino luminosity' # (G=c=Msun=1)'
#set y2label 'densest point (g/cm^3)'
unset x2label

#geoTocgs_rho=5.178e17
#min_rho_geo=4e-4
#max_rho_geo=3e-3
#set yrange [min_rho_geo:max_rho_geo]
#set y2range [min_rho_geo*geoTocgs_rho:max_rho_geo*geoTocgs_rho]
set ytics nomirror
#set y2tics nomirror
#set logscale y
#set logscale y2

#min_h_geo=0.2
#max_h_geo=8
#set yrange [min_h_geo:max_h_geo]
#unset y2tics
#set ytics mirror
#unset logscale y

set key bottom left

p \
'../FSU21/M12_7-S9-FSU21/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_AE/Run/MatterObservers/NeutrinoLuminosity.dat' u 1:2 w l ls 1 t 'PlungeAMR - end',\
'../FSU21/M12_7-S9-FSU21/QE/Ev-eqsym/AMRLev1_Plunge/Lev1_SettleDisk/Lev1_AA/Run/MatterObservers/NeutrinoLuminosity.dat' u 1:2 w l ls 2 t 'SettleDiskAMR - begin - [no matter-free subdomains] ',\
'../FSU21/M12_7-S9-FSU21/QE/Ev-eqsym/AMRLev1_Plunge/code.test.Lev1_SettleDisk/Lev1_AA/Run/MatterObservers/NeutrinoLuminosity.dat' u 1:2 w l ls 3 t 'SettleDiskAMR - begin - [with matter-free subdomains]'

