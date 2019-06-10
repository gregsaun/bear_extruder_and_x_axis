#!/bin/bash

################################################################################
#
# Create Printed Parts Zip file for all printer version
#
# Author: Grégoire Saunier
# Website: www.ekunn.com
#
# Description:
# Create ZIP file for printed parts of each printer version. Include sources.
#
# Resources:
#   - http://github.com/gregsaun
#
################################################################################

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Directories and paths
common_parts_dir="${SCRIPTDIR}/../printed_parts/stl/common_to_all_versions"
mk25s_parts_dir="${SCRIPTDIR}/../printed_parts/stl/mk2.5s"
mk3s_parts_dir="${SCRIPTDIR}/../printed_parts/stl/mk3s"
src_dir="${SCRIPTDIR}/"
dest_dir="${SCRIPTDIR}/../printed_parts/"
mkdir -p "${dest_dir}"

# Zip files
mk25s_zip_file="${dest_dir}/bear_extruder_x_axis_mk25s.zip"
mk3s_zip_file="${dest_dir}/bear_extruder_x_axis_mk3s.zip"
src_zip_file="${dest_dir}/bear_extruder_x_axis_sources.zip"

# Test if zip package is installed
if [ $(dpkg-query -W -f='${Status}' zip 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
    echo "ERROR : 'zip' package not installed"
    exit -1
fi

# Delete previous zip files
echo "Delete old zip files"
rm -f $mk25s_zip_file
rm -f $mk3s_zip_file
rm -f $srcs_zip_file

# Zip files
echo "Zip MK2.5"
cp -r ${common_parts_dir}/* ${mk25s_parts_dir}/* -t ${dest_dir}
cd $dest_dir && zip -q -r -m $mk25s_zip_file ./*.st* && cd - > /dev/null
echo "Zip MK3"
cp -r ${common_parts_dir}/* ${mk3s_parts_dir}/* -t ${dest_dir}
cd $dest_dir && zip -q -r -m $mk3s_zip_file ./*.st* && cd - > /dev/null
echo "Zip Sources"
cd $src_dir && zip -q -r $src_zip_file ./* -x "zips/*" && cd - > /dev/null
