

def substrings(str, dctnry)
	output = Hash.new
	dctnry.each do |word|
		str = str.downcase
		word = word.downcase
		counter = 0
		counter = str.scan(word).length
		output[word] = counter if counter > 0
	end
	output
end
