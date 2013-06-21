def palindrome(str)
	return false if str.length < 1
	for i in (0..str.length/2)
		return false if str[i] != str[str.length-i-1]
	end
	return true
end

def test(num)
	(0..num).each { |n|
		puts n if palindrome(n.to_s)
	}
end


puts palindrome('121')
test(1000)


