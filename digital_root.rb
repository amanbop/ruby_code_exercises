#digital root function.

#A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has two digits, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

def digital_root(n)
 n1 = n.to_s.split(//).collect(&:to_i).inject(&:+)
 n1<10 ? n1 : digital_root(n1)
end

n = 12345456
puts digital_root(n)