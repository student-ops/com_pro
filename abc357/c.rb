n = gets.to_i

carpet = [
  "###",
  "#.#",
  "###"
]

if n == 0
  puts "#"
  return
end
if n == 1
  puts carpet
  return
end

(n-1).times do |i|
  tmp = []
  (3 ** (i+1)).times do |j|
    tmp.push(carpet[j] * 3)
  end
  # if (3**(n - 1)) < i && i <= (3**(n)) - (3**(n-1))
  #   puts i
  # end
  (3 ** (i+1)).times do |j|
    str = carpet[j]
    str += "." * (3**(i+1))
    str += carpet[j]
    tmp.push(str)
  end

  (3 ** (i+1)).times do |j|
    tmp.push(carpet[j] * 3)
  end
  carpet = tmp
end

puts carpet
