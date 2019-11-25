# Studying Effects of Meltdown and Spectre Patches on the Performance of HPC Applications Using Application Kernel Module of XDMoD

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3552963.svg)](https://doi.org/10.5281/zenodo.3552963)

**Authors:**
* Nikolay A. Simakov, State University of New York at Buffalo
* Martins D. Innus, State University of New York at Buffalo
* Matthew D. Jones, State University of New York at Buffalo
* Ohad Katz, State University of New York at Buffalo
* Joseph P. White, State University of New York at Buffalo
* Ryan Rathsam, State University of New York at Buffalo
* Steven M. Gallo, State University of New York at Buffalo
* Robert L. DeLeon, State University of New York at Buffalo
* Thomas R. Furlani, State University of New York at Buffalo

**Abstract:**
In this work we examine how the updates addressing Meltdown and Spectre vulnerabilities impact the performance of HPC applications. To study this we use the application kernel module of XDMoD to test the performance before and after the application of the vulnerability patches. The application kernel module is designed for continuous performance monitoring of HPC systems. Here, we tested the performance difference for multiple applications and benchmarks including: NWChem, NAMD, GAMESS, ENZO, HPCC, IOR, MDTest and IMB. The results show that although some specific functions can have execution times decreased by as much as 74%, the majority of individual metrics indicate little to no decrease in performance. The real-world applications show a 2-3% decrease in performance for single node jobs and a 5-11% decrease for two node jobs. For node-counts up to 8 the degradation continues to increase reaching 27% in some cases.
