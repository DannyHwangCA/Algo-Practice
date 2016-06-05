
def fish(a, b)
  stack = []
  survivors = 0

  a.each_index do |i|
    if b[i] == 1
      stack << a[i]
      next
    end
    while stack.any? && a[i] > stack.last
      stack.pop
    end
    survivors += 1 if stack.empty?
  end

  stack.size + survivors
end
