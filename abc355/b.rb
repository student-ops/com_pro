n,m = gets.split(" ").map(&:to_i) 
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)

a_asc = a.sort()
c = a + b
c.sort!()

a_asc.each_with_index do |s, index|
  if a_asc[index +1] == nil
    break
  end
  if a_asc[index  + 1] == c[c.index(s)+1]
    puts "Yes"
    return
  end
end

puts "No"


