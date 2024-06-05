n,m = gets.chomp.split(" ").map(&:to_i)

def popcount(x)
  count = 0
  while x > 0
    count += x & 1
    x >>= 1
  end
  count
end

def factorial(n)
  return 1 if n == 0
  n * factorial(n - 1)
end


am = popcount(m)
an= popcount(n)

if n >= m
  if am == 0
    puts 0
    return
  end
  puts 2 ** am
end
