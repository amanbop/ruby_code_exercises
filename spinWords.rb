def spinWords(string)

string.split(" ").map {|word|  word.chars.length >= 5 ? word.reverse : word }.join(" ")

end

puts spinWords( "Hey fellow warriors")
puts spinWords( "This is a test")