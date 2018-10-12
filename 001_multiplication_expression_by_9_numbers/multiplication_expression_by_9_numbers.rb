def getArr(*args)
	arr = [1,2,3,4,5,6,7,8,9]
	args.each do |i|
		if arr.include?(i)
			arr.delete(i)
		end
	end	
	return arr
end

getArr().each do |i1|
	getArr(i1).each do |i2|
		getArr(i1,i2).each do |i3|
			getArr(i1,i2,i3).each do |i4|				
				getArr(i1,i2,i3,i4).each do |i5|					
					getArr(i1,i2,i3,i4,i5).each do |i6|
						getArr(i1,i2,i3,i4,i5,i6).each do |i7|
							getArr(i1,i2,i3,i4,i5,i6,i7).each do |i8|
								getArr(i1,i2,i3,i4,i5,i6,i7,i8).each do |i9|
									num1 = i1*1000 + i2*100 + i3*10 + i4
									num2 = i5
									result = i6*1000 + i7*100 + i8*10 + i9
									if num1 * num2 == result
										puts "#{num1} * #{num2} == #{result}"
									end

									num1 = i1*10 + i2
									num2 = i3*100 + i4*10 + i5
									result = i6*1000 + i7*100 + i8*10 + i9
									if num1 * num2 == result
										puts "#{num1} * #{num2} == #{result}"
									end
								end
							end
						end
					end
				end
			end
		end
	end	
end