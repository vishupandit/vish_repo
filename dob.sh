clear
echo "\n"
echo "                       welcome folks"
echo "\n"
read -p "     Enter date [mm/dd/yy] : " dob
echo "\n"
a=`date +%D|sed 's/\///g'`
b=`echo $dob|sed 's/\///g'`
c=`echo "$a"|sed 's/../&\//;s/d/&\//'|sed 's/...../&\//;s/d/&\//'`
d=`echo "$b"|sed 's/../&\//;s/d/&\//'|sed 's/...../&\//;s/d/&\//'`
echo "     Today's Date      :     $c"
echo "     Your entered date :     $d"
s=$(echo $(($(($(date -d "$c" "+%s") - $(date -d "$d" "+%s"))) / 86400)))
echo "\n"
echo "     .";sleep 2
echo "     ..";sleep 2 
echo "     ...";sleep 2
echo "     ....";sleep 2
echo "\n"
e=`expr $s / 365`
#echo "     `expr $s / 365`"
if [ $e -eq 1 ]; then
echo "     $e year "
else
echo "     $e years "
fi
echo "\n"
f=`expr $s % 365 / 30`
#echo "     `expr $s % 365 / 30`"
if [ $e -eq 1 ]; then
echo "     $f month "
else
echo "     $f months "
fi

echo "\n"
g=`expr $(expr $s % 365) % 30`
#echo "     `expr $(expr $s % 365) % 30`"
if [ $e -eq 1 ]; then
echo "     $g day "
else
echo "     $g days "
fi
echo "\n"
echo  "     tHanKs buddIeS\n     Exiting bye"


