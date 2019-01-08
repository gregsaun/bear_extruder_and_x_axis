################################################################################
#
# Parse Hotend Cooling Log File
#
# Description:
# Parse Hotend Cooling Log File
#
# Author: Gregoire Saunier
# Website: www.ekunn.com
#
# Creation date: 2019.01.04
#
################################################################################

# Import
import os
import sys
import re
import datetime

# Constants and variables
num_measures = 10
fname = sys.argv[1]


# Test file path
if not os.path.isfile(fname):
    print("File %s does not exist. Exiting...") % fname
    sys.exit()


# format line to help parser
def format_line(line):
    return line.strip().split(' - ')[1].lower()


# Read log file
test_started = False
time_logged = []

with open(fname) as f:
    for line in f:

        line = format_line(line)

        # Read m31 to get time and test start
        if 'm31' in line:
            while not line.startswith("recv: echo:"):               # search for the response
                line = format_line(f.next())                        # read next line
                minsec = re.findall(r'\d+', line)                   # extract minutes and seconds
            time_logged.append(int(minsec[0])*60 + int(minsec[1]))  # convert extracted time in second and save it
            #print("time : %s") % (time_logged)
            
            test_started = True

        if test_started:

            # Read temperature
            if ("m105" in line) and num_measures > 0:
                while not line.startswith("recv: ok t:"):                # search for the response
                    line = format_line(f.next())                         # read next line
                print("%10s %10s") % (line.split()[2], line.split()[4])  # display hotend and bed temperatures
                num_measures -= 1


# Display delta time
if len(time_logged) <= 0:
    print("File %s does not exist. Exiting...") % fname
    sys.exit()
else:
    old_seconds = datetime.timedelta(seconds = time_logged[0])
    new_seconds = datetime.timedelta(seconds = time_logged[len(time_logged)-1])
    print("delta time : %s") % (new_seconds - old_seconds)