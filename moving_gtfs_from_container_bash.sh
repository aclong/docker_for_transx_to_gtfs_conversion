#!/bin/bash

filename_list_string="WM_20140930_gtfs.zip  WM_20160628_gtfs.zip  WM_20180327_gtfs.zip  WM_20191029_gtfs.zip  WM_20210326_gtfs.zip WM_20141230_gtfs.zip  WM_20160927_gtfs.zip  WM_20180626_gtfs.zip WM_20191231_gtfs.zip  WM_20210625_gtfs.zip WM_20150331_gtfs.zip  WM_20161228_gtfs.zip  WM_20180925_gtfs.zip  WM_20200324_gtfs.zip  WM_20210813_gtfs.zip WM_20150630_gtfs.zip WM_20170328_gtfs.zip  WM_20190101_gtfs.zip  WM_20200626_gtfs.zip WM_20150929_gtfs.zip  WM_20170627_gtfs.zip  WM_20190326_gtfs.zip  WM_20200925_gtfs.zip WM_20151229_gtfs.zip WM_20170801_gtfs.zip  WM_20190625_gtfs.zip  WM_20201030_gtfs.zip WM_20160329_gtfs.zip  WM_20171229_gtfs.zip  WM_20191001_gtfs.zip  WM_20210101_gtfs.zip"

for file_name in $filename_list_string

do
    #transx_date_string=$(echo $file | grep -Po '[0-9]{8}')
    #gtfs_filename="WM_${transx_date_string}_gtfs.zip"
    #docker cp run_transx_instance:/home/output_gtfs/$gtfs_filename output_gtfs/$gtfs_filename
    docker cp run_transx_instance:/home/output_gtfs/$file_name output_gtfs/$file_name
done
