function pause()
{
   read -p "$*"
}

c=$((($(ls | wc -l))-4))

while [ $c -ge 0 ]
do
	open -a Preview "$c".jpg
	pause
	c=$(($c-1))
done