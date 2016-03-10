FILE=/Users/shiladitya/Documents/Codex/Glasses/Comics/Data/Asterix/*.jpeg
c=0

for f in $FILE
do
	mv "$f" "$c".jpg
	c=$(($c+1))
done

echo $c
