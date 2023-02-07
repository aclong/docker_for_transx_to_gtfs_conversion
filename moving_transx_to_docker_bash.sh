#!/bin/bash

for file in chosen_transx/*.zip

do
    transx_date_string=$(echo $file | grep -Po '[0-9]{8}')
    file_outpath="WM_${transx_date_string}.zip"
    docker cp $file run_transx_instance:/home/input_transx/$file_outpath
done
