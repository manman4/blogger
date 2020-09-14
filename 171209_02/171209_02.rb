require 'prime'

def A(n)
  ary = []
  cnt = 0
  (0..n).each{|i|
    cnt += 1 if i % 4 == 3 && i.prime?
    ary << cnt
  }
  ary
end

ary1 = [0] +
[1,11,80,609,4783,39175,332180,2880504,25423491,
 227523275,2059020280,18803924340,173032709183,
 1602470783672,14922284735484,139619168787795,
 1311778575685086,12369977142579584,
 117028833597800689,1110409801150582707]
ary2 =
[1,3,10,31,100,316,1000,3162,10000,31622,100000,
 316227,1000000,3162277,10000000,31622776,
 100000000,316227766,1000000000,3162277660,
 10000000000,31622776601,100000000000]

n = 8
ary = A(10 ** n)
p (1..2 * n).map{|i| 8 * ary1[i] + 4 * ary[ary2[i]] + 4}
