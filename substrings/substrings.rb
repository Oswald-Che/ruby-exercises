dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
	words.downcase.split.reduce(Hash.new(0)) do |hash, word|
		dictionary.each do |dict|
			if word.include?(dict)
				hash[dict] += 1
			end
		end
		hash
	end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
