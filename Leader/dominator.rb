def solution(a)
freq = a.inject(Hash.new(0)) { |h,v| h[v] += 1; h }

mode = a.max_by { |v| freq[v] }

occurence = freq[mode]

if occurence > (a.length/2)
  a.each_with_index { |val,index|
    if val == mode
      return index
    end
  }
else 
  -1
end

end