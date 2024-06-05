n, m, k = gets.split(" ").map(&:to_i)

r = Array.new(m)
c = Array.new(m)
a = Array.new(m)

m.times do |i|
  t = gets.chomp.split(" ")
  r[i] = (t[-1] == "o")

  c[i] = (t[0].to_i)
  tmp = Array.new(t[0].to_i(),false)
  (t.length() -2).times do |j|
    tmp[t[j+1].to_i() -1] = true
  end
  a[i] = tmp
end

ans = 0

# p r,c,a
(1 << n).times do |i|
  exp = Array.new(n, false)
  n.times do |p|
    exp[p] = true if (i & (1 << p)) != 0
  end

  jud = true
  m.times do |j|
    cnt = 0
    n.times do |k|
      cnt += 1 if exp[k] && a[j][k]
    end

    if (!r[j] && cnt >= k) || (r[j] && cnt < k)
      jud = false
      break
    end
  end
  ans += 1 if jud
end
puts ans
