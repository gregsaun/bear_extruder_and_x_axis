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
mk25_parts_dir="${SCRIPTDIR}/../printed_parts/stl/mk2.5"
mk3_parts_dir="${SCRIPTDIR}/../printed_parts/stl/mk3"
src_dir="${SCRIPTDIR}/"
dest_dir="${SCRIPTDIR}/zips"
mkdir -p "${dest_dir}"

# Zip files
mk25_zip_file="${dest_dir}/bear_extruder_mk25.zip"
mk3_zip_file="${dest_dir}/bear_extruder_mk3.zip"
src_zip_file="${dest_dir}/bear_extruder_sources.zip"

# Test if zip package is installed
if [ $(dpkg-query -W -f='${Status}' zip 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
    echo "ERROR : 'zip' package not installed"
    exit -1
fi

# Delete previous zip files
echo "Delete old zip files"
rm -f $mk25_zip_file
rm -f $mk3_zip_file
rm -f $src_zip_file

# Zip files
echo "Zip MK2.5"
cp -r ${common_parts_dir}/* ${mk25_parts_dir}/* -t ${dest_dir}
cd $dest_dir && zip -q -r -m $mk25_zip_file ./*.st* && cd - > /dev/null
echo "Zip MK3"
cp -r ${common_parts_dir}/* ${mk3_parts_dir}/* -t ${dest_dir}
cd $dest_dir && zip -q -r -m $mk3_zip_file ./*.st* && cd - > /dev/null
echo "Zip Sources"
cd $src_dir && zip -q -r $src_zip_file ./* -x "zips/*" && cd - > /dev/null