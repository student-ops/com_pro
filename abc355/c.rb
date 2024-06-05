n,t = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
ary = Array.new(n) { Array.new(n, 0) }
judge = Array.new(n) { Array.new(n, false) }
ans = 0

n.times do |i|
  n.times do |j|
    ary[i][j] = n * i + j + 1
  end
end

p ary
p a

def judge_bingo(row, clumn, judge,n)
end

t.times do |i|
  clumn = nil
  n.times do |row|
    clumn = ary[row].index(a[i])
    if clumn != nil
      puts "#{a[i]} is at position [#{row}, #{clumn}]"
      judge[row][clumn] = true
      if judge_bingo(row, clumn, judge,row) == true
        puts "#{i + 1}"
        return
      end
      break
    end
  end
end
puts "-1"
