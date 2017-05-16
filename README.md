# C-based Implementation of LogCluster Algorithm Experiment Data

This repository supports the R3 principle (Repeatability, Reproducibility, and Rigor) of the experiments in the thesis (https://github.com/zhugehq/thesis-project-logclusterc-experiment-data/blob/master/Thesis/Thesis.pdf).

To reproduce the experiments in the thesis, the experiment folder should contain ExperimentScript.sh, logcluster.pl (https://github.com/ristov/logcluster/archive/0.03.tar.gz), logcluster008.pl (https://github.com/ristov/logcluster/archive/0.08.tar.gz), LogClusterC (https://github.com/zhugehq/thesis-project-logclusterc/archive/0.03.tar.gz, need compiling), SLCT (http://ristov.github.io/slct/slct-0.05.tar.gz , version 0.05, need compiling), and the seven log files (public available from https://www.usenix.org/cfdr-data , detailed descriptions on page 44 of the thesis).

*The experiments in Appendix2 was proved pointless. The hard drive used in Chapter4 is already fast enough, and the I/O speed was not the bottleneck (proved with unix command "hdparm -t /dev/sda"). Therefore, the corresponding folders are marked as outdated.*

The ExperimentScript is executed with the format shown below. 

*./ExperimentScript.sh experiment_serial_number (e.g., ./ExperimentScript.sh t1)*

The ExperimentScript will cost approximately 75 hours on the computer used in the thesis (Ubuntu Server 14.04. Intel i7-4720 HQ 2.6 GHz CPU, Kingston 16 GB DDR3 1600 MHz RAM, Western Digital 1 TB 5400 rpm hard disk.).

The project is stored in another GitHub repository: https://github.com/zhugegy/LogClusterC .