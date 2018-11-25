
for i in (1000..9999)
	for j in (1..9)
		result = i * j
		if (i.to_s + j.to_s + result.to_s).split('').sort.join('') == "123456789"
			puts "#{i} * #{j} = #{i*j}"
		end
	end
end