require 'prime'

def A056768(n)
  ary = Prime.each.take(n)
  m = ary[-1]
  ps = Array.new(m + 1){0}
  ps[0] = 1
  a_ary = []
  ary.each{|num|
    (num..m).each{|i|
      ps[i] += ps[i - num]
    }
    a_ary << ps[num]
  }
  a_ary
end
ary = A056768(40)

# OEIS A056768のデータ
ary0 =
[1,1,2,3,6,9,17,23,40,87,111,219,336,413,614,1083,
 1850,2198,3630,5007,5861,9282,12488,19232,33439,
 43709,49871,64671,73506,94625,221265,279516,
 394170,441250,766262,853692,1175344,1608014,
 1975108,2675925]
# 一致の確認
p ary == ary0
