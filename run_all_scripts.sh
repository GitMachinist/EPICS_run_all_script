#!/bin/bash

#copyright (c) Mareksella 2016

# this script runs scripts 1 - 10 in clean_server_setup and creates logfile.txt 

# check if user has right permissions
if [ "$(id -u)" != "0" ]; then
	echo "Sorry, you are not root. Please try again using sudo."
	exit 1
fi

echo "Logs for scripts are divided by ten hash characters and the number of the script (##########n)" 2>&1 | tee -a logfile.txt

chmod 777 logfile.txt

echo "##########1" | tee -a logfile.txt
echo "Running script 1.epics_base_3-14-12-3_install.sh"
sh ./1.epics_base_3-14-12-3_install.sh 2>&1 | tee -a logfile.txt

echo "##########2" | tee -a logfile.txt
echo "Running script 2.epics_seq_2-1-15_install."
sh ./2.epics_seq_2-1-15_install.sh 2>&1 | tee -a logfile.txt

echo "##########3" | tee -a logfile.txt
echo "Running script 3.epics_asyn_4-21_install.sh"
sh ./3.epics_asyn_4-21_install.sh 2>&1 | tee -a logfile.txt

echo "##########4" | tee -a logfile.txt
echo "Running script 4.epics_busy_1-6_install.sh"
sh ./4.epics_busy_1-6_install.sh 2>&1 | tee -a logfile.txt


echo "##########5" | tee -a logfile.txt
echo "Running script 5.epics_sscan_2-9_install.sh"
sh ./5.epics_sscan_2-9_install.sh 2>&1 | tee -a 4.txt


echo "##########6" | tee -a logfile.txt
echo "Running script 6.epics_streamdevice_2-6_install.sh"
sh ./6.epics_streamdevice_2-6_install.sh 2>&1 | tee -a logfile.txt

echo "##########7" | tee -a logfile.txt
echo "Running script 7.epics_calc_3-2_install.sh"
sh ./7.epics_calc_3-2_install.sh 2>&1 | tee -a logfile.txt

echo "##########8" | tee -a logfile.txt
echo "Running script 8.epics_autosave_5-1_install.sh"
sh ./8.epics_autosave_5-1_install.sh 2>&1 | tee -a logfile.txt

echo "##########9" | tee -a logfile.txt
echo "Running script 9.epics_areadetector_1-9-1_install.sh"
sh ./9.epics_areadetector_1-9-1_install.sh 2>&1 | tee -a logfile.txt

echo "##########9" | tee -a logfile.txt
echo "Running script 9.epics_areadetector_1-9-1_install.sh"
sh ./9.epics_areadetector_1-9-1_install.sh 2>&1 | tee -a logfile.txt

echo "##########10" | tee -a logfile.txt
echo "Running script 10.epics_modbus_2-4_install.sh"
sh ./10.epics_modbus_2-4_install.sh 2>&1 | tee -a logfile.txt






