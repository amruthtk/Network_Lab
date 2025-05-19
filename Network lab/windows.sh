if [ $# -gt 1 ]
then
echo "Syntax error"
exit 1
fi
if [ $# -eq 1 ]; then
 cd "$1" 2>/dev/null
if [ $? -ne 0 ]; then
echo "There is no such directory! $1"
exit 1
fi
fi
echo " Directory of $(pwd)\n"
ls -l --time-style=+"%Y/%m/%d %I:%M %p" | tail -n +2 | while read perms links owner group size date time ampm name; do
case "$perms" in
d*) echo "$date $time $ampm   <DIR>       $name" ;;
*)  echo "$date $time $ampm        $size $name" ;;
esac
done
