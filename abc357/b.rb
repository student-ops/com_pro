s = gets.chomp
# p s
up , low = 0, 0
s.each_char do |char|
 if char =~ /[A-Z]/
   up += 1
 elsif char =~ /[a-z]/
   low += 1
 end
end
if up > low
 puts s.upcase
else
 puts s.downcase
end
