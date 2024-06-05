a,b = gets.split(" ").map(&:to_i) 

ary = [true,true,true];

ary[a -1 ] = false;
ary[b -1] = false;

if ary.count(true) > 1
  puts -1
else
  puts ary.index(true) + 1
end
