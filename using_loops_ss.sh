for i in {1..5}; do
	echo "Iteration $i"
done

for i in {1..4};do
	for j in {A..D}; do
	echo "i : $i, j : $j"
	done
done



for ((i=1; i<=10; i++)) do
	echo "$i*2 = $((i*2))"
done	
