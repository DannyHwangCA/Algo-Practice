
def triangle(a)
  a.sort.each_cons(3) do |p, q, r|
    return 1 if r < p + q
  end
  0
end