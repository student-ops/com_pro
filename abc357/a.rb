n,m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

ans = 0
h.length.times do |i|
  if h[i] <= m
    m -= h[i]
  else
    break
  end
  ans += 1
end

puts ans
