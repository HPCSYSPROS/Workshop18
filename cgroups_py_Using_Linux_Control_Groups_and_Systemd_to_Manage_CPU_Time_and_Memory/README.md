# cgroups py : Using Linux Control Groups and Systemd to Manage CPU Time and Memory

**Authors:**
* Curtis Maves, Purdue University

**Abstract:**
Cgroups provide a mechanism to limit user andprocess resource consumption on Linux systems. This paper discusses cgroups_py, a Python script that runs as a systemd service that dynamically throttles users on shared resource systems, such as HPC cluster front-ends. This is done using the cgroups kernel API and systemd.
