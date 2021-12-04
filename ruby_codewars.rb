#Given a list lst and a number N, create a new list that contains each number of lst at most N times without reordering. For example if N = 2, and the input is [1,2,3,1,2,1,2,3], you take [1,2,3,1,2], drop the next [1,2] since this would lead to 1 and 2 being in the result 3 times, and then take 3, which leads to [1,2,3,1,2,3].
def delete_nth(order,max_e)
  c=[]
  order.each {|e| c<<e if c.grep(e).length <max_e}
  return c
end

order = [1,2,3,4,5,3,2,3,122,12,13,1,3,5,8]
max_e = 2
#puts delete_nth(order,max_e)


## Constants example

#puts "###########1############"

MR_COUNT = 0         # constant defined on main Object class
module Foo
   MR_COUNT = 0
   ::MR_COUNT = 1    # set global count to 1
   MR_COUNT = 2      # set local count to 2
end
puts MR_COUNT        # this is the global constant
puts Foo::MR_COUNT   # this is the local "Foo" constant

#puts "###########2############"


CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST

#### increment loop

for i in (0..10) do
  #puts i
end

for i in 10.downto(0) do
  #puts i
end

10.downto(0) do |e|
 # puts e
end

puts "##################"
i=10
until i < 0 do
#puts i
  i-=1
end

def test
  puts "You are in method"
  if block_given?
    yield 
  end
  puts "You are in method again"
end
test
puts
test {puts "block given"}
puts
test {(1..10).each {|e| puts e}}

puts "hello"
