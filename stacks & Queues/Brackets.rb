def solution(s)
holder = []
test = 1

s.split("").each do |x|
  if x == "{" || x == "[" || x == "("
    holder << x
  elsif x == "}" && holder.last == "{"
    holder.pop 
  elsif x == "]" && holder.last == "["
    holder.pop
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