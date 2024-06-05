n,m,k = gets.chomp.split(" ").map(&:to_i)

r = Array.new()
c = Array.new()
a = Array.new()

m.times do |i|
  t = gets.chomp.split(" ")
  if t[-1] == "o"
    r.push([i,true])
  else
    r.push([i,false])
  end

  c.push(t[0].to_i)
  a.push(t[1..-2].map(&:to_i))
end

def ncr(n,r)
  ans = 1
  devider = 1

  n.times do |i|
    ans *= n - i
  end

  r.times do |i|
    devider *= r - i
  end

  # p ans,devider
  ans = ans / devider
end

ans = ncr(n,k)
# p r,c,a
# puts ans

m.times do |i|
  if r[i] == "o"
  else
  end
end

sorted_r = r.sort_by { |element| element[1] ? 0 : 1 }

m.times do |i|
  if sorted_r[i][1] == true
    t_ans = ncr(c[i],k)
    # puts "True and valued = #{ans}"
    if t_ans < ans
      ans = t_ans
    end
  else
    if c[i] == n
      puts "0"
      return
    else
      ans -= 1
    end
  end
end

puts ans
