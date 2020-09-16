def s(k, n)
  s = 0
  (1..n).each{|i| s += i if n % i == 0 && i % k == 0}
  s
end

def A(ary, n)
  a_ary = [1]
  a = [0] + (1..n).map{|i| ary.inject(0){|s, j| s + j[1] * s(j[0], i)}}
  (1..n).each{|i| a_ary << (1..i).inject(0){|s, j| s - a[j] * a_ary[-j]} / i}
  a_ary
end

n = 200
# A000122
p A([[2, 5], [1, -2], [4, -2]], n)

# A002448
p A([[1, 2], [2, -1]], n)

# A010054
p A([[2, 2], [1, -1]], n)

# A010815
p A([[1, 1]], n)

# A080995
p A([[2, 1], [3, 2], [1, -1], [6, -1]], n)

# A089801
p A([[2, 2], [3, 1], [12, 1], [1, -1], [4, -1], [6, -1]], n)

# A089802
p A([[1, 1], [6, 2], [2, -1], [3, -1]], n)

# A089807
p A([[1, 1], [4, 1], [6, 2], [2, -1], [3, -1], [12, -1]], n)

# A089810
p A([[2, 2], [3, 1], [1, -1], [6, -1]], n)

# A089812
p A([[1, 2], [6, 1], [2, -1], [3, -1]], n)

# A106459
p A([[1, 1], [4, 1], [2, -1]], n)

# A121373
p A([[2, 3], [1, -1], [4, -1]], n)

# A133985
p A([[1, 1], [4, 1], [6, 5], [2, -2], [3, -2], [12, -2]], n)

# A133988
p A([[2, 5], [3, 1], [12, 1], [1, -2], [4, -2], [6, -2]], n)
