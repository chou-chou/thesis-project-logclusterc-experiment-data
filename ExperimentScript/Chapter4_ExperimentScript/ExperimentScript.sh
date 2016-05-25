#!/bin/bash
#Experiment script, the first parameter defines the file naming.
name=$1
#Log file Cray_A
#percent support threshold 0.5
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_A --rsupport=0.5 2>&1 | tee Tbl4Row1_LCC_${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_A --rsupport=0.5 2>&1 | tee Tbl4Row1_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 0.5% Cray_A 2>&1 | tee Tbl4Row1_SLCT${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_A --rsupport=0.5 --aggrsup 2>&1 | tee Tbl6Row2_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_A --rsupport=0.5 --aggrsup 2>&1 | tee Tbl6Row2_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_A --rsupport=0.5 --wweight=0.6 2>&1 | tee Tbl6Row3_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_A --rsupport=0.5 --wweight=0.6 2>&1 | tee Tbl6Row3_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_A --rsupport=0.5 --aggrsup --wweight=0.6 2>&1 | tee Tbl6Row4_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_A --rsupport=0.5 --aggrsup --wweight=0.6 2>&1 | tee Tbl6Row4_LCP${name}
#percent support threshold 0.1
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_A --rsupport=0.1 2>&1 | tee Tbl4Row2_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_A --rsupport=0.1 2>&1 | tee Tbl4Row2_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 0.1% Cray_A 2>&1 | tee Tbl4Row2_SLCT${name}
#constant support threshold 200
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_A --support=200 2>&1 | tee Tbl4Row3_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_A --support=200 2>&1 | tee Tbl4Row3_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 200 Cray_A 2>&1 | tee Tbl4Row3_SLCT${name}
#Log file Cray_B
#percent support threshold 0.5
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_B --rsupport=0.5 2>&1 | tee Tbl4Row4_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_B --rsupport=0.5 2>&1 | tee Tbl4Row4_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 0.5% Cray_B 2>&1 | tee Tbl4Row4_SLCT${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_B --rsupport=0.5 --aggrsup 2>&1 | tee Tbl6Row6_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_B --rsupport=0.5 --aggrsup 2>&1 | tee Tbl6Row6_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_B --rsupport=0.5 --wweight=0.6 2>&1 | tee Tbl6Row7_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_B --rsupport=0.5 --wweight=0.6 2>&1 | tee Tbl6Row7_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_B --rsupport=0.5 --aggrsup --wweight=0.6 2>&1 | tee Tbl6Row8_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_B --rsupport=0.5 --aggrsup --wweight=0.6 2>&1 | tee Tbl6Row8_LCP${name}
#percent support threshold 0.1
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_B --rsupport=0.1 2>&1 | tee Tbl4Row5_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_B --rsupport=0.1 2>&1 | tee Tbl4Row5_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 0.1% Cray_B 2>&1 | tee Tbl4Row5_SLCT${name}
#constant support threshold 200
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_B --support=200 2>&1 | tee Tbl4Row6_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_B --support=200 2>&1 | tee Tbl4Row6_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 200 Cray_B 2>&1 | tee Tbl4Row6_SLCT${name}
#Log file Cray_C
#percent support threshold 0.5
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_C --rsupport=0.5 2>&1 | tee Tbl4Row7_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_C --rsupport=0.5 2>&1 | tee Tbl4Row7_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 0.5% Cray_C 2>&1 | tee Tbl4Row7_SLCT${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_C --rsupport=0.5 --aggrsup 2>&1 | tee Tbl6Row10_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_C --rsupport=0.5 --aggrsup 2>&1 | tee Tbl6Row10_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_C --rsupport=0.5 --wweight=0.6 2>&1 | tee Tbl6Row11_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_C --rsupport=0.5 --wweight=0.6 2>&1 | tee Tbl6Row11_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_C --rsupport=0.5 --aggrsup --wweight=0.6 2>&1 | tee Tbl6Row12_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_C --rsupport=0.5 --aggrsup --wweight=0.6 2>&1 | tee Tbl6Row12_LCP${name}
#percent support threshold 0.1
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_C --rsupport=0.1 2>&1 | tee Tbl4Row8_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_C --rsupport=0.1 2>&1 | tee Tbl4Row8_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 0.1% Cray_C 2>&1 | tee Tbl4Row8_SLCT${name}
#constant support threshold 200
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=Cray_C --support=200 2>&1 | tee Tbl4Row9_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=Cray_C --support=200 2>&1 | tee Tbl4Row9_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 200 Cray_C 2>&1 | tee Tbl4Row9_SLCT${name}
#Log file BGL
#percent support threshold 0.5
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=BGL --rsupport=0.5 2>&1 | tee Tbl4Row10_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=BGL --rsupport=0.5 2>&1 | tee Tbl4Row10_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 0.5% BGL 2>&1 | tee Tbl4Row10_SLCT${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=BGL --rsupport=0.5 --aggrsup 2>&1 | tee Tbl6Row14_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=BGL --rsupport=0.5 --aggrsup 2>&1 | tee Tbl6Row14_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=BGL --rsupport=0.5 --wweight=0.6 2>&1 | tee Tbl6Row15_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=BGL --rsupport=0.5 --wweight=0.6 2>&1 | tee Tbl6Row15_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=BGL --rsupport=0.5 --aggrsup --wweight=0.6 2>&1 | tee Tbl6Row16_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=BGL --rsupport=0.5 --aggrsup --wweight=0.6 2>&1 | tee Tbl6Row16_LCP${name}
#percent support threshold 0.1
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=BGL --rsupport=0.1 2>&1 | tee Tbl4Row11_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=BGL --rsupport=0.1 2>&1 | tee Tbl4Row11_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 0.1% BGL 2>&1 | tee Tbl4Row11_SLCT${name}
#constant support threshold 200
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=BGL --support=200 2>&1 | tee Tbl4Row12_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=BGL --support=200 2>&1 | tee Tbl4Row12_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 200 BGL 2>&1 | tee Tbl4Row12_SLCT${name}
#Log file LBR
#percent support threshold 0.5
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=LBR --rsupport=0.5 2>&1 | tee Tbl4Row13_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=LBR --rsupport=0.5 2>&1 | tee Tbl4Row13_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 0.5% LBR 2>&1 | tee Tbl4Row13_SLCT${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=LBR --rsupport=0.5 --aggrsup 2>&1 | tee Tbl6Row18_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=LBR --rsupport=0.5 --aggrsup 2>&1 | tee Tbl6Row18_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=LBR --rsupport=0.5 --wweight=0.6 2>&1 | tee Tbl6Row19_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=LBR --rsupport=0.5 --wweight=0.6 2>&1 | tee Tbl6Row19_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=LBR --rsupport=0.5 --aggrsup --wweight=0.6 2>&1 | tee Tbl6Row20_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=LBR --rsupport=0.5 --aggrsup --wweight=0.6 2>&1 | tee Tbl6Row20_LCP${name}
#percent support threshold 0.1
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=LBR --rsupport=0.1 2>&1 | tee Tbl4Row14_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=LBR --rsupport=0.1 2>&1 | tee Tbl4Row14_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 0.1% LBR 2>&1 | tee Tbl4Row14_SLCT${name}
#constant support threshold 200
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=LBR --support=200 --wsize=2000000 --csize=200000000 2>&1 | tee Tbl4Row15_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster008.pl --input=LBR --support=200 --wsize=2000000 --csize=200000000 2>&1 | tee Tbl4Row15_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 200 -v 2000000 -z 200000000 LBR 2>&1 | tee Tbl4Row15_SLCT${name}
#Log file TDB
#percent support threshold 0.5
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=TDB --rsupport=0.5 2>&1 | tee Tbl4Row16_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=TDB --rsupport=0.5 2>&1 | tee Tbl4Row16_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 0.5% TDB 2>&1 | tee Tbl4Row16_SLCT${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=TDB --rsupport=0.5 --aggrsup 2>&1 | tee Tbl6Row22_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=TDB --rsupport=0.5 --aggrsup 2>&1 | tee Tbl6Row22_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=TDB --rsupport=0.5 --wweight=0.6 2>&1 | tee Tbl6Row23_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=TDB --rsupport=0.5 --wweight=0.6 2>&1 | tee Tbl6Row23_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=TDB --rsupport=0.5 --aggrsup --wweight=0.6 2>&1 | tee Tbl6Row24_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=TDB --rsupport=0.5 --aggrsup --wweight=0.6 2>&1 | tee Tbl6Row24_LCP${name}
#percent support threshold 0.1
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=TDB --rsupport=0.1 2>&1 | tee Tbl4Row17_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=TDB --rsupport=0.1 2>&1 | tee Tbl4Row17_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 0.1% TDB 2>&1 | tee Tbl4Row17_SLCT${name}
#constant support threshold 200
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=TDB --support=200 --wsize=2000000 --csize=200000000 2>&1 | tee Tbl4Row18_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster008.pl --input=TDB --support=200 --wsize=2000000 --csize=200000000 2>&1 | tee Tbl4Row18_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 200 -v 2000000 -z 200000000 TDB 2>&1 | tee Tbl4Row18_SLCT${name}
#Log file SPT
#percent support threshold 0.5
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=SPT --rsupport=0.5 2>&1 | tee Tbl4Row19_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=SPT --rsupport=0.5 2>&1 | tee Tbl4Row19_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 0.5% SPT 2>&1 | tee Tbl4Row19_SLCT${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=SPT --rsupport=0.5 --aggrsup 2>&1 | tee Tbl6Row26_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=SPT --rsupport=0.5 --aggrsup 2>&1 | tee Tbl6Row26_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=SPT --rsupport=0.5 --wweight=0.6 2>&1 | tee Tbl6Row27_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=SPT --rsupport=0.5 --wweight=0.6 2>&1 | tee Tbl6Row27_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=SPT --rsupport=0.5 --aggrsup --wweight=0.6 2>&1 | tee Tbl6Row28_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=SPT --rsupport=0.5 --aggrsup --wweight=0.6 2>&1 | tee Tbl6Row28_LCP${name}
#percent support threshold 0.1
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=SPT --rsupport=0.1 2>&1 | tee Tbl4Row20_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster.pl --input=SPT --rsupport=0.1 2>&1 | tee Tbl4Row20_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 0.1% SPT 2>&1 | tee Tbl4Row20_SLCT${name}
#constant support threshold 200
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./LogClusterC --input=SPT --support=200 --wsize=2000000 --csize=200000000 2>&1 | tee Tbl4Row21_LCC${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' perl logcluster008.pl --input=SPT --support=200 --wsize=2000000 --csize=200000000 2>&1 | tee Tbl4Row21_LCP${name}
/usr/bin/time -f 'Command line: %C\nRumtime: %e\nCPU system: %S\nCPU user: %U\nMemory Consumption: %M' ./SLCT -s 200 -v 2000000 -z 200000000 SPT 2>&1 | tee Tbl4Row21_SLCT${name}
