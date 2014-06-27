# Caesar cipher cryptography method for Odin Project exercise (Ruby Buidling Blocks)

def caesar_cipher(x, y = 0)
	
	letters = x.scan(/./)
	
	modified_letters = letters.collect do |l|
			
			l = l.ord
			
			if l < 65 || (l > 90 && l < 97) || l > 122
				l.chr
			elsif l >= 65 && l <= 90
				l = l + y
				if l < 65
					l = l + 26
					l.chr	
				elsif l > 90
					l = l - 26
					l.chr
				else
					l.chr
				end
			elsif l >= 97 && l <= 122
				l = l + y
				if l < 97
					l = l + 26
					l.chr
				elsif l > 122
					l = l - 26
					l.chr
				else
					l.chr
				end
			end
		end
	
	modified_letters.join

end

puts caesar_cipher("What a string!", 5)