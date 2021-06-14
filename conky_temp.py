#!/usr/bin/env python
import subprocess
import os
# perfixs
hwmon_directory = "/sys/class/hwmon/"
# Colors
GREEN   = "58eb34"
YELLOW  = "f7f705"
RED     = "f71d05"
WHITE   = "ffffff"
# Functions
def get_color(var, value):
    if ("tctl" in str(var).strip().lower()) or ("tccd" in str(var).strip().lower()):
        if value < 70:
            return GREEN
        elif value > 75:
            return RED
        else:
            return YELLOW
    elif str(var).strip().lower() == "tdie":
        if value < 50:
            return GREEN
        elif value > 60:
            return RED
        else:
            return YELLOW
    elif str(var).strip().lower() == "package id 0":
        if value < 60:
            return GREEN
        elif value > 80:
            return RED
        else:
            return YELLOW
    elif str(var).strip().lower() in ["nvidia", "radeon"]:
        if value < 50:
            return GREEN
        elif value > 60:
            return RED
        else:
            return YELLOW
    elif "core" in str(var).strip().lower():
        if value < 50:
            return GREEN
        elif value > 70:
            return RED
        else:
            return YELLOW
    return WHITE
# Generate list of hwmons
if not os.path.isfile("/tmp/conky_hwmod"):
    # Calculate number of hwmon folders
    cmd = "ls -n " + hwmon_directory + "hwmon* | wc -l"
    try:
        num_hmons = int(subprocess.getoutput(cmd))
    except:
        exit(0)
    f = open("/tmp/conky_hwmod", "w")
    for i in range(num_hmons):
        try:
            module_name = str(open(hwmon_directory + f"hwmon{i}/name").read()).strip().lower()
            if module_name in ["k10temp", "coretemp", "radeon"]:
                f.write(f"{i}\n")
        except:
            pass
    f.close()
# Check System Temperature
if os.path.isfile("/tmp/conky_hwmod"):   
    f = open("/tmp/conky_hwmod", "r")
    for i in str(f.read()).split("\n"):
        try:
            module_name = str(open(hwmon_directory + f"hwmon{i}/name").read()).strip().lower()
            
            if module_name in ["k10temp"]:
                jRange = range(1, 4)
            elif module_name in ["coretemp"]:
                jRange = range(1, 6)
            else:
                jRange = range(1, 2)

            for j in jRange:
                try:
                    temp_name = "radeon" if  module_name in ["radeon"] else str(open(hwmon_directory + f"hwmon{i}/temp{j}_label").read()).strip() 
                    temp_val  = float(str(open(hwmon_directory + f"hwmon{i}/temp{j}_input").read()).strip().lower()) / 1000
                    print("${color " + get_color(temp_name, temp_val) + "}" + temp_name + " $alignr " + f"{int(temp_val)}°C")
                except:
                    pass


            #if module_name in ["k10temp"]:
            #    try:
            #        temp2_name = str(open(hwmon_directory + f"hwmon{i}/temp2_label").read()).strip()
            #        temp2_val  = float(str(open(hwmon_directory + f"hwmon{i}/temp2_input").read()).strip().lower()) / 1000
            #        print("${color " + get_color(temp2_name, temp2_val) + "}" + temp2_name + " $alignr " + f"{int(temp2_val)}°C")
            #    except:
            #        pass
        except:
            pass    
    f.close()
# Check NVIDIA Temperature
cmd = 'nvidia-settings -query "[gpu:0]/GPUCoreTemp" -t'
try:
    nvidiaTemp = int(subprocess.getoutput(cmd))
    print("${color " + get_color("nvidia", nvidiaTemp) + "}NVIDIA $alignr " + f"{nvidiaTemp}°C")
except:
    pass
print("${color ffffff}")
