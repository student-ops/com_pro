n,m,k = gets.split(" ").map(&:to_i)

r = Array.new()
c = Array.new()
a = Array.new()

m.times do |i|
  t = gets.chomp.split(" ")
  if t[-1] == "o"
    r.push(true)
  else
    r.push(false)
  end

  c.push(t[0].to_i)
  tmp = Array.new(t[0].to_i(),false)
  (t.length() -2).times do |j|
    tmp[t[j+1].to_i() -1] = true
  end
  a.push(tmp)
end


# end
ans = 0

(1<< n).times do |i|
  exp = Array.new(n,false)
  n.times do |p|
    if (i & (1 << p)) != 0
      exp[p] = true
    end
  end

  # p "exp=#{exp}"

  jud = true
  m.times do |j|
    cnt =  0
    n.times do |k|
    # c[j].times do |k|
      if exp[k] && a[j][k]
        cnt += 1
        # p "j,k = #{j},#{k}"
      end
    end

    # p "cj=#{c[j]},rj=#{r[j][1]},c=#{c},cnt=#{cnt},aj=#{a[j]},exp=#{exp}"
    if !r[j] && cnt >= k
      # p "false hit"
      jud = false
    end
    if r[j] && cnt < k
      # p "true hit"
      jud = false
    end

    # jud = false if (r[j][1] == false && cnt >= k)
    # jud = false if r[j][1] && cnt < k
  end
  # p "jud=#{jud}"
  ans += 1 if jud
end
puts ans
# 問題は実験用と条件を判断するときに、c[j]回の比較をしていて最後までループが回りきっていなかった。c[j].timed do |i|をmapだと判断してしまっていた。ようそが0始まりなのでループが回りきらない。
