if [$# -nc2]
then
echo "Syntax is <$0> <n> <r>"
exit 1
fi
fact()
{n=$1
i=1
f=1
while [$i -le $n]
do
f=1
while [$1 -le $n]
do
f=`expr $f \* $i`
i=`expr $i+1`
done
return $f
}
fact $1
factn=$?
fact$2
factr=$2
factr=$?
fact `expr $ -$2`
rnr=`expr $factr\*$factnr
echo "$1c$2=`expr$factn/$rnr
