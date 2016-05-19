# C-based Implementation of LogCluster Algorithm Experiment Data

This repository supports the R3 principle (Repeatability, Reproducibility, and Rigor) of the experiments in the thesis (https://github.com/zhugehq/thesis-project-logclusterc-experiment-data/blob/master/Thesis/Thesis.pdf).

The thesis manuscript will be continuously modified until May 25th, 2016.

To reproduce the experiments in the thesis, the experiment folder should contain logcluster.pl (https://github.com/ristov/logcluster/archive/0.03.tar.gz), logcluster008.pl (https://github.com/ristov/logcluster/archive/0.08.tar.gz), LogClusterC (https://github.com/zhugehq/thesis-project-logclusterc/archive/0.03.tar.gz), SLCT (http://ristov.github.io/slct/slct-0.05.tar.gz), the seven log files (public available from https://www.usenix.org/cfdr-data , whose descriptions are on page 44 of the thesis), and the ExperimentScript itself.

The ExperimentScript is executed with the format shown below. 

*./ExperimentScript experiment_serial_number (e.g. ./ExperimentScript t1)*

The ExperimentScript will cost approximately 75 hours on the computer used in the thesis (Ubuntu Server 14.04. Intel i7-4720 HQ 2.6 GHz CPU, 16 GB DDR3 1600 MHz RAM, WD 1 TB 5400 rpm hard disk.).

The project is stored in another GitHub repository: https://github.com/zhugehq/thesis-project-logclusterc .