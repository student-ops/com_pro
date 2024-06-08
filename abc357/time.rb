require 'timeout'

loop_count = 0
begin
  Timeout.timeout(10) do
    loop do
      loop_count += 1
    end
  end
rescue Timeout::Error
  puts "10秒経過: ループ回数 #{loop_count}"
end
