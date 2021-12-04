def filter_list(l)
  # return a new list with the strings filtered out
  l.select{|e| (e.is_a?(Integer)) }
end
l = [1,2,'a','b']
filter_list(l)