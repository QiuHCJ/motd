#############################################################
# Filename:    motd.sh
# Revision:    1.1
# Date:        2017/07/28
#############################################################
DATE=`date`
UPTIME=`uptime|awk '{print $2,$3,$4,$6,$7,$8}'`
#load average=``
LAST_LOGIN=`last|awk 'NR==1{print $1}'`
IP=`ifconfig|grep 172|awk '{print $2}'`
echo -e "\E[1;34m||---------------------------------------------------------||\E[0m"
echo -e "\E[1;34m||-----------------------\E[1;32mStartup\E[0m\E[1;34m---------------------------||\E[0m"
echo -e "\E[1;34m||---------------------------------------------------------||\E[0m"
#echo -e "    \E[1;31m $DATE \E[0m"
echo -e "\E[1;34m||\E[1;32m   Welcome back,\E[5;31m$USER\E[0m \E[1;32m! Wish you have a nice day!         \E[1;34m||\E[0m" 
echo -e "\E[1;34m||\E[1;32mDate:========> $DATE              \E[1;34m||\E[0m"
echo -e "\E[1;34m||\E[0m\E[1;32mFdisk:=======> Size=`df -h|awk 'NR==2{print $2}'`;Used=`df -h|awk 'NR==2{print $3}'`;Avail=`df -h|awk 'NR==2{print $4}'`;Use%=`df -h|awk 'NR==2{print $5}'`     \E[1;34m||\E[0m"
echo -e "\E[1;34m||\E[1;32mModel name:==>`cat /proc/cpuinfo |awk -F":" '/^model name/{print $2}'|awk 'NR==1'`   \E[1;34m||\E[0m"
echo -e "\E[1;34m||\E[1;32mUptime:======> $UPTIME                 \E[1;34m||\E[0m"
echo -e "\E[1;34m||\E[1;32mLast_login:==> $LAST_LOGIN                                      \E[1;34m||\E[0m"
echo -e "\E[1;34m||\E[1;32mIP addr:=====> $IP                             \E[1;34m||\E[0m"
#echo -e "\E[1;34m||\E[1;32m    \E[1;34m||\E[0m"
#echo -e "\E[1;34m||\E[1;32m    \E[1;34m||\E[0m"
#echo -e "\E[1;34m||\E[1;32m    \E[1;34m||\E[0m"
#echo -e "\E[1;34m||\E[1;32m    \E[1;34m||\E[0m"
#echo -e "\E[1;34m||\E[1;32m    \E[1;34m||\E[0m"
#echo -e "\E[1;34m||\E[1;32m    \E[1;34m||\E[0m"
#echo -e "\E[1;31m fdisk: \E[0m" 
echo -e "\E[1;34m||---------------------------------------------------------||\E[0m"
echo -e "\E[1;34m||---------------------------------------------------------||\E[0m"
