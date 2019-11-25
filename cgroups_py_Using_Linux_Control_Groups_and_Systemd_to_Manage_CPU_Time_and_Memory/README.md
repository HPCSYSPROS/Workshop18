# cgroups py : Using Linux Control Groups and Systemd to Manage CPU Time and Memory

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3552968.svg)](https://doi.org/10.5281/zenodo.3552968)

**Authors:**
* Curtis Maves, Purdue University
* Jason St. John, Purdue University

**Abstract:**
Cgroups provide a mechanism to limit user andprocess resource consumption on Linux systems. This paper discusses cgroups_py, a Python script that runs as a systemd service that dynamically throttles users on shared resource systems, such as HPC cluster front-ends. This is done using the cgroups kernel API and systemd.
