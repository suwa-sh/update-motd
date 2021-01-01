#!/bin/bash
PATH="${PATH}:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

COLOR_LIGHT_GREEN='\033[0;32m'
COLOR_LIGHT_BLUE='\033[0;34m'
COLOR_YELLOW='\033[0;33m'
COLOR_RED='\033[0;31m'
COLOR_WHITE='\033[0;37m'

echo -e "
${COLOR_LIGHT_GREEN}$(/usr/local/bin/figlet -ckw 100 -f slant $(hostname | sed -e 's/.local//'))
${COLOR_WHITE}Motd Updated          : ${COLOR_LIGHT_BLUE}$(date '+%Y/%m/%d %T')
${COLOR_WHITE}Hostname              : ${COLOR_LIGHT_BLUE}$(hostname)
${COLOR_WHITE}Privte IP Address     : ${COLOR_LIGHT_BLUE}$(ifconfig en0 2>/dev/null | grep 'inet ' | cut -d ' ' -f 2)
${COLOR_WHITE}OS Info               : ${COLOR_LIGHT_BLUE}$(sw_vers | sed -e '2,$s/^/                        /')
${COLOR_WHITE}Hardware Info         : ${COLOR_LIGHT_BLUE}$(system_profiler SPHardwareDataType | grep -v '^$' | sed -e 's/ *//' | grep -v '^Hardware' | grep -v 'Cache' | grep -v 'Boot' | grep -v 'SMC' | grep -v 'Serial' | grep -v 'Number of Processors' | grep -v 'Model Name' | sed -e '2,$s/^/                        /')
${COLOR_WHITE}Disk Used/Total       : ${COLOR_LIGHT_BLUE}$(df -PH -t apfs | grep '/System/Volumes/Data' | awk '{print $3" / "$2}' )
${COLOR_WHITE}" > /etc/motd
