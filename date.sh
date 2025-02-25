date
echo "enter a date1: "
read date1
if [$date -eq $date1];
    echo "shutdowing now"
    logout shutdown now
else
    echo "error"
fi

