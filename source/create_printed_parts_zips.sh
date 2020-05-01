#!/bin/bash

################################################################################
#
# Create Printed Parts Zip file for all printer version
#
# Author: Gregoire Saunier
# Website: http://github.com/gregsaun
#
# Description:
# Create ZIP file for printed parts of each printer version, optional parts
# and sources.
#
# Resources:
#   - http://github.com/gregsaun
#
################################################################################

# Sources directories and paths
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ROOTDIR="$( cd "${SCRIPTDIR}/../" && pwd )"
bear_stl_dir="${ROOTDIR}/printed_parts/stl"
bear_src_dir="${ROOTDIR}/source"
bearmera_stl_dir="${ROOTDIR}/optional_parts/bear_hemera/printed_parts/stl"
bearmera_src_dir="${ROOTDIR}/optional_parts/bear_hemera/source"
bondtech_stl_dir="${ROOTDIR}/optional_parts/bondtech_x_carriage/printed_parts/stl"
bondtech_src_dir="${ROOTDIR}/optional_parts/bondtech_x_carriage/source"

# Destination zip files
temp_dir="${ROOTDIR}/.tmp_zip"
bear_zip_stl_dir="${ROOTDIR}/printed_parts"
bear_zip_src_dir="${ROOTDIR}/source"
bearmera_zip_stl_dir="${ROOTDIR}/optional_parts/bear_hemera/printed_parts"
bearmera_zip_src_dir="${ROOTDIR}/optional_parts/bear_hemera/source"
bondtech_zip_stl_dir="${ROOTDIR}/optional_parts/bondtech_x_carriage/printed_parts"
bondtech_zip_src_dir="${ROOTDIR}/optional_parts/bondtech_x_carriage/source"

# Test if zip package is installed
if [ $(dpkg-query -W -f='${Status}' zip 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
    echo "ERROR : 'zip' package not installed"
    exit -1
fi

# Compress zip files
# Arguments:
#   $1     = future zip filename and path (example: path/to/compressedfile.zip)
#   $2..$n = path containing files to compress (/path/t o/files/)
function create_zip {
    zip_path="$1"

    # Remove existing files
    if [[ -d "$temp_dir" ]]; then
        rm "$temp_dir"/*
    else
        mkdir -p "$temp_dir"
    fi
    if [[ -f "$zip_path" ]]; then
        rm "$zip_path"
    fi

    # Copy source into temp directory
    shift
    while test $# -gt 0; do
        echo -n "."
        if [[ -d $1 ]]; then      # if directory
            cp -r "$1"/. -t "$temp_dir"/
        elif [[ -f $1 ]]; then    # if file
            cp "$1" -t "$temp_dir"/
        else
            echo "Zip filename and path $1 is not valid"
            exit 1
        fi
        shift
    done

    # Compress all files into temp directory
    echo -n "."
    cd "$temp_dir" && zip -q -r -m -T "$zip_path" ./* || exit 1

    # Clean up
    echo -n "."
    rm -f "$temp_dir"/*.* && rm -d "$temp_dir"
    echo ""
}


######## MAIN ########

echo -n "Zip Bear MK2.5S"
create_zip "${bear_zip_stl_dir}/bear_extruder_x_axis_mk2.5s.zip" "${bear_stl_dir}/mk2.5s" "${bear_stl_dir}/common_to_all_versions"


echo -n "Zip Bear MK3S"
create_zip "${bear_zip_stl_dir}/bear_extruder_x_axis_mk3s.zip" "${bear_stl_dir}/mk3s" "${bear_stl_dir}/common_to_all_versions"


echo -n "Zip Bear Source"
create_zip "${bear_zip_src_dir}/bear_extruder_x_axis_source.zip" "${bear_src_dir}"/*.f3* "${bear_src_dir}"/*.step


echo "Zip BearMera MK2(S) MK2.5(S)"
echo "  - copy parts from Bear extruder and X axis"
bearmera_temp_dir="${bearmera_zip_stl_dir}/.tmp_bearmera_mk2"
mkdir -p "$bearmera_temp_dir"
cp -t "$bearmera_temp_dir" \
    "${bear_stl_dir}/common_to_all_versions/"cable_guide_back_*.stl \
    "${bear_stl_dir}/common_to_all_versions/"x_end_idler*.stl \
    "${bear_stl_dir}/mk2.5s/"x_carriage_back.stl \
    "${bear_stl_dir}/mk2.5s/"x_end_motor.stl
echo -n "  - create zip"
create_zip "${bearmera_zip_stl_dir}/bearmera_mk2_mk2s_mk2.5_mk2.5s.zip" "${bearmera_stl_dir}/mk2_mk2s_mk2.5_mk2.5s" "${bearmera_stl_dir}/common_to_all_versions" "$bearmera_temp_dir"
rm -f "${bearmera_temp_dir}"/*.* && rm -d "${bearmera_temp_dir}"


echo "Zip BearMera MK3(S)"
echo "  - copy parts from Bear extruder and X axis"
bearmera_temp_dir="${bearmera_zip_stl_dir}/.tmp_bearmera_mk3"
mkdir -p "$bearmera_temp_dir"
cp -t "$bearmera_temp_dir" \
    "${bear_stl_dir}/common_to_all_versions/"cable_guide_back_*.stl \
    "${bear_stl_dir}/common_to_all_versions/"x_end_idler*.stl \
    "${bear_stl_dir}/mk3s/"x_carriage_back.stl \
    "${bear_stl_dir}/mk3s/"x_end_motor.stl
echo -n "  - create zip"
create_zip "${bearmera_zip_stl_dir}/bearmera_mk3_mk3s.zip" "${bearmera_stl_dir}/mk3_mk3s" "${bearmera_stl_dir}/common_to_all_versions" "$bearmera_temp_dir"
rm -f "${bearmera_temp_dir}"/*.* && rm -d "$bearmera_temp_dir"


echo -n "Zip BearMera Source"
create_zip "${bearmera_zip_src_dir}/bearmera_source.zip" "${bearmera_src_dir}"/*.f3* "${bearmera_src_dir}"/*.step


echo "Zip Bondtech"

# MK2-2.5
echo "  - copy parts from Bear extruder and X axis"
bondtech_temp_dir="${bondtech_zip_stl_dir}/.tmp_bondtech"
mkdir -p "$bondtech_temp_dir"
cp -t "$bondtech_temp_dir" \
    "${bear_stl_dir}/common_to_all_versions/"cable_guide_back_*.stl \
    "${bear_stl_dir}/common_to_all_versions/"x_end_idler*.stl \
    "${bear_stl_dir}/mk2.5s/"x_carriage_back.stl \
    "${bear_stl_dir}/mk2.5s/"x_end_motor.stl
echo -n "  - create zip E3D MK2S MK2.5"
create_zip "${bondtech_zip_stl_dir}/bear_bondtech_e3d_mk2s_mk2.5.zip" "${bondtech_stl_dir}/bondtech_e3d_x_carriage_mk2s_mk2.5.stl" "$bondtech_temp_dir"
echo -n "  - create zip E3D MK2.5S"
create_zip "${bondtech_zip_stl_dir}/bear_bondtech_e3d_mk2.5s.zip" "${bondtech_stl_dir}/bondtech_e3d_x_carriage_mk2.5s.stl" "$bondtech_temp_dir"
echo -n "  - create zip Mosquito MK2.5S"
create_zip "${bondtech_zip_stl_dir}/bear_bondtech_mosquito_mk2.5s.zip" "${bondtech_stl_dir}/bondtech_mosquito_x_carriage_mk2.5s.stl" "$bondtech_temp_dir"

# MK3
rm -f "${bondtech_temp_dir}"/*.x_carriage_back.stl "${bondtech_temp_dir}"/*.x_end_motor.stl
cp -t "$bondtech_temp_dir" "${bear_stl_dir}/mk3s/"x_carriage_back.stl "${bear_stl_dir}/mk3s/"x_end_motor.stl
echo -n "  - create zip E3D MK3"
create_zip "${bondtech_zip_stl_dir}/bear_bondtech_e3d_mk3.zip" "${bondtech_stl_dir}/bondtech_e3d_x_carriage_mk3.stl" "$bondtech_temp_dir"
echo -n "  - create zip E3D MK3S"
create_zip "${bondtech_zip_stl_dir}/bear_bondtech_e3d_mk3s.zip" "${bondtech_stl_dir}/bondtech_e3d_x_carriage_mk3s.stl" "$bondtech_temp_dir"
echo -n "  - create zip Mosquito MK3S"
create_zip "${bondtech_zip_stl_dir}/bear_bondtech_mosquito_mk3s.zip" "${bondtech_stl_dir}/bondtech_mosquito_x_carriage_mk3s.stl" "$bondtech_temp_dir"
rm -f "${bondtech_temp_dir}"/*.* && rm -d "$bondtech_temp_dir"


echo -n "Zip Bondtech Source"
create_zip "${bondtech_zip_src_dir}/bondtech_x_carriage_source.zip" "${bondtech_src_dir}"/*.f3* "${bearmera_src_dir}"/*.step
