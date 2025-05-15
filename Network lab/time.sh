
tm=$(date +%H)

if [ $tm -ge 5 ] && [ $tm -lt 12 ]; then
    echo "Good morning"
elif [ $tm -ge 12 ] && [ $tm -lt 16 ]; then
    echo "Good afternoon"
elif [ $tm -ge 16 ] && [ $tm -lt 19 ]; then
    echo "Good evening"
else
    echo "Good night"
fi
