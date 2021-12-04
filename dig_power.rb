def dig_pow(n, p)
   sum_ary = ((n.to_s.chars.each_with_index.inject(0){|sum,(v,k)| sum+((v.to_i)**(p+k))}))
   k_int = sum_ary%n
   k_int == 0 ? sum_ary/n : -1    
end

n=695
p=2

puts dig_pow(n,p)
