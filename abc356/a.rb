n,l,r = gets.chomp.split(" ").map(&:to_i)

ary = []
n.times do | i |
  ary.push(i + 1 )
end

s_ary = ary.slice(l - 1, r - l + 1)
s_ary = s_ary.reverse

ary = ary.slice(0, l - 1) + s_ary + ary.slice(r, ary.length - r)

(ary.length() -1).times do | i |
  print"#{ary[i]} "
end

puts ary[ary.length - 1]
