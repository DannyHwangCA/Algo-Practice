def solution(s)
holder = []
test = 1

s.split("").each do |x|
  if x == "("
    holder << x
  elsif x == ")" && holder.last == "("
    holder.pop
  else
    test = 0
  end
end

unless holder.empty?
  test = 0 
end
test


end