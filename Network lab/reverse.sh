if [ -z "$1" ];
then
 echo "usage: $0 <file>"
exit 1
fi
file ="$1"
lines=$(wc -l <"$file")
while [ "$lines" -gt 0 ];
do
head -n "$lines" "$file"/tail -n
lines =$((lines -1))
done
