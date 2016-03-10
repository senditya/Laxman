FILE=/Users/shiladitya/Documents/Codex/Glasses/Comics/Data/Tintin/*.jpg
c=0

for f in $FILE
do
	mv "$f" "$c".jpg
	c=$(($c+1))
done

echo $c
