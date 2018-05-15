brightness=$(xrandr --verbose | grep -i brightness | sed "s/[^0-9^.]//g")
factor=0.1
lowerlimit=0.4
newbrightness=$(echo "$brightness-$factor" | bc)

if [ $(echo "$newbrightness >= $lowerlimit" | bc) -eq 1 ]
then
xrandr --output DVI-D-0 --brightness $newbrightness

fi
