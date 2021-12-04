my_s = "recede"
my_s1 = 1
puts my_s
def replace_duplicate_aman (word)
  if word.is_a? String
    word = word.upcase
    outword = ""
    for i in 0..word.length-1
      #x = word.count(word[i])
      x = word.scan(word[i]).length
      puts x
      if x == 1
       outword = outword +"("       
      end
      if x > 1
        outword = outword + ")"       
      end  
    end#for
    puts outword
  else
    puts "you must supply a string"
  end#unless word.is_a? String
end#def replace_duplicate (s)

def replace_duplicate(word)
  
  word
  .downcase
  .chars
  .map {|char| word.downcase.count(char)>1 ? letter = ")" : letter = "(" }.join
end  

puts replace_duplicate(my_s)
#replace_duplicate(my_s1)



