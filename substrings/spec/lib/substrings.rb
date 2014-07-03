def substrings(str, dctnry)
	answer = Hash.new
	dctnry.each do |word|
		str = str.downcase
		word = word.downcase
		counter = 0
		counter = str.scan(word).length
		answer[word] = counter if counter > 0
	end
	answer
end
