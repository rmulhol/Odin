# Caesar cypher cryptography method for Odin Project exercise (Ruby Buidling Blocks)

# take input from user - string and integer by which to shift each character

def caesar(x, y = 0)

# break input into individual characters

	letters = x.scan(/./)

# modify user string 

	modified_letters = letters.collect do |l|

# convert characters to integers

			l = l.ord

# retain non-letters

			if l < 65 || (l > 90 && l < 97) || l > 122
				l.chr

# modify upper-case letters by input

			elsif l >= 65 && l <=90
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

# modify lower-case letters by input

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

# join all characters to return output

	modified_letters.join

end

puts caesar("What a string!", 5)