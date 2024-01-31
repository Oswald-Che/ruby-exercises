
def caeser_cipher(word, shift)
	word.split('').map do |char|  
		if char.match(/[a-zA-Z]/) 
			new_char = (char.ord + (shift % 26))
			new_char -= 26 if new_char > 122 || new_char.between?(91, 96)
			new_char.chr
		else
			 char
		end 
	end.join('')
end


puts caeser_cipher("What a string!", 5)
