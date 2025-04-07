if [ $# -ne 3 ]
then
echo "The syntax is <$0> <no1> <no2> <no3>"
exit 1
else
case $2 in
+) sum=`expr $1 + $3`;;
-) sum=`expr $1 - $3`;;
x|X) sum=`expr $1 \* $3`;;
%) sum=`expr $1 % $3`;;
/) sum=`expr $1 / $3`;;
*) echo "Invalid Operator";;
esac
echo $sum
fi
