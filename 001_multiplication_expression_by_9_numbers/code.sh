function getArr() {
	arr=(1 2 3 4 5 6 7 8 9)

	for i in $*; do
		for ((j=0; j<9; j++)); do
			if [[ $i -eq ${arr[j]} ]]
			then
				unset arr[j] # arr length is smaller, but idx don't change. arr[2] = 3, then arr[2] = null
				break
			fi
		done
	done

	echo ${arr[*]}
}

arr1=(`getArr`)
for i1 in ${arr1[*]}; do
	arr2=(`getArr $i1`)
	for i2 in ${arr2[*]}; do
		arr3=(`getArr $i1 $i2`)
		for i3 in ${arr3[*]}; do
			arr4=(`getArr $i1 $i2 $i3`)
			for i4 in ${arr4[*]}; do
				arr5=(`getArr $i1 $i2 $i3 $i4`)
				for i5 in ${arr5[*]}; do
					arr6=(`getArr $i1 $i2 $i3 $i4 $i5`)
					for i6 in ${arr6[*]}; do
						arr7=(`getArr $i1 $i2 $i3 $i4 $i5 $i6`)
						for i7 in ${arr7[*]}; do
							arr8=(`getArr $i1 $i2 $i3 $i4 $i5 $i6 $i7`)
							for i8 in ${arr8[*]}; do
								arr9=(`getArr $i1 $i2 $i3 $i4 $i5 $i6 $i7 $i8`)
								for i9 in ${arr9[*]}; do
									num1=$((i1*1000 + i2*100 + i3*10 + i4))
									num2=$i5
									result=$((i6*1000 + i7*100 + i8*10 + i9))

									if [[ $((num1*num2)) -eq $result ]]; then
										echo "$num1 * $num2 = $result"
									fi
								done
							done
						done
					done
				done
			done
		done
	done
done





