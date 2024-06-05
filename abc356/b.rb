n,m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
x = Array.new(n) {gets.split.map(&:to_i)}

# p a,x

sum = Array.new(m,0)

m.times do |j|
  n.times do |i|
    sum[j] += x[i][j]
  end
end


m.times do |i|
  if sum[i] < a[i]
    puts "No"
    return
  end
end

puts "Yes"
