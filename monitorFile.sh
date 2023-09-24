#!/bin/bash

uploadDir=$1
archiveDir=$2
scheduleTime=$#

function displayUsage(){
    echo ""
    printf "${bold}%60s${boldend}\n" "Fusion Upload File Monitor"
    echo -e " ${bold}Usage:${boldend}"
    printf "%-40s %-70s \n" " ./monitorFile.sh %uploadDir %archiveDir %scheduleTime"
    echo ""
}

if [[ "x$uploadDir" == "x" || "x$archiveDir" == "x" || "x$scheduleTime" == "x" ]]; then
    displayUsage
else
    #iterate the files in the upload directory
    mkdir -p ${archiveDir}
    echo "Schedule Date: $(date -d "${scheduleTime}" '+%Y-%m-%d %H:%M:%S')"
    for uploadFile in ${uploadDir}/*; do
         #get the timestamp for these files
         accessDateStr=`stat ${uploadFile} | grep Access | awk -v FS=' ' '{print$2, $3}' | sed -n "2p"`

         #move the file if the access timestamp is later than the schedule time
         accessDate=`date -d "${accessDateStr}" +%s`
         scheduleDate=`date -d "${scheduleTime}" +%s`
         echo "Access Date  : $(date -d "${accessDateStr}" '+%Y-%m-%d %H:%M:%S') for file: ${uploadFile}"
         if [[ ${accessDate} -gt ${scheduleDate} ]]; then
            echo "Archive file : ${uploadFile}"
            mv ${uploadFile} ${archiveDir}/$(basename ${uploadFile})_$(date +%Y%m%d%H%M%S)
         fi
    done
fi