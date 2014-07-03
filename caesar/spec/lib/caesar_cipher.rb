# Caesar cipher cryptography method for Odin Project exercise (Ruby Buidling Blocks)

def caesar_cipher(str, inc_val = 0)
	
	letters = str.scan(/./)
	
	modified_letters = letters.collect do |char|
			
			char = char.ord
			
			if char < 65 || (char > 90 && char < 97) || char > 122
				char.chr
			elsif char >= 65 && char <= 90
				char = char + inc_val
				if char < 65
					char = char + 26
					char.chr	
				elsif char > 90
					char = char - 26
					char.chr
				else
					char.chr
				end
			elsif char >= 97 && char <= 122
				char = char + inc_val
				if char < 97
					char = char + 26
					char.chr
				elsif char > 122
					char = char - 26
					char.chr
				else
					char.chr
				end
			end
		end
	
	modified_letters.join

end
