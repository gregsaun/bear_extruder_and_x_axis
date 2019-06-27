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

# Sources directories and paths
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
common_parts_dir="${SCRIPTDIR}/../printed_parts/stl/common_to_all_versions"
mk25s_parts_dir="${SCRIPTDIR}/../printed_parts/stl/mk2.5s"
mk3s_parts_dir="${SCRIPTDIR}/../printed_parts/stl/mk3s"
src_dir="${SCRIPTDIR}"

# Destination directories and paths
dest_dir="${SCRIPTDIR}/../printed_parts"
temp_dir="${SCRIPTDIR}/tmp_zip"
mkdir -p "${dest_dir}"

# Destination zip files
mk25s_zip_file="${dest_dir}/bear_extruder_x_axis_mk25s.zip"
mk3s_zip_file="${dest_dir}/bear_extruder_x_axis_mk3s.zip"
src_zip_file="${dest_dir}/bear_extruder_x_axis_sources.zip"

# Test if zip package is installed
if [ $(dpkg-query -W -f='${Status}' zip 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
    echo "ERROR : 'zip' package not installed"
    exit -1
fi

# Compress zip files
# Arguments:
#   $1 = files to compress (/path/to/files/*)
#   $2 = path to future zip file (example: path/to/compressedfile.zip)
#   $3 = optional. file extension to exclude
function create_zip {
    source_dir="$1"
    zip_path="$2"

    # Remove existing files
    if [ -d "${temp_dir}" ]; then
        rm $zip_path
    fi
    if [ -d "${temp_dir}" ]; then
        rm -f ${temp_dir}/*
    else
        mkdir -p "$temp_dir"
    fi

    # Copy source and create zip
    cp $source_dir -t "${temp_dir}/"
    cd "$temp_dir" && zip -q -r -m "$zip_path" ./*

    # Clean up
    rm -f ${temp_dir}/* && rm -d ${temp_dir}
}

# Zip files
echo "Zip MK2.5"
create_zip "${common_parts_dir}/* ${mk25s_parts_dir}/*" "$mk25s_zip_file"

echo "Zip MK3"
create_zip "${common_parts_dir}/* ${mk3s_parts_dir}/*" "$mk3s_zip_file"

echo "Zip Sources"
create_zip "${src_dir}/*.f*" "$src_zip_file"
