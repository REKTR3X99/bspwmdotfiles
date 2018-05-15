brightness=$(xrandr --verbose | grep -i brightness | sed "s/[^0-9^.]//g")
factor=0.1
upperlimit=1.0
newbrightness=$(echo "$brightness+$factor" | bc)

if [ $(echo "$newbrightness <= $upperlimit" | bc) -eq 1 ]
then
xrandr --output DVI-D-0 --brightness $newbrightness

fi
