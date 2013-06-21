#字符串逆序

#solution1:
def reverse_str1(str)
	tmp_str=''
	for i in (0..str.length-1)
		tmp_str << str[str.length-1-i]
	end
	tmp_str
end
     
#solution2:
def reverse_str2(str)
    return str if str.length < 1
	for i in (0..str.length/2)
		str[i], str[str.length-1-i] = str[str.length-1-i], str[i]
	end
	str
end


puts reverse_str1("I am a developer")



#单词逆序,可以把以空格分开的字符串转化为单词数组

def reverse_words(words)
	words=words.split(' ').to_a
	for i in (0...(words.length/2))
		words[i], words[words.length-i-1] = words[words.length-i-1], words[i]
	end
	words.join(' ')
end

puts reverse_words("I am a developer")
puts reverse_words("I am")
puts reverse_words("I")