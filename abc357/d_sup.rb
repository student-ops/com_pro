require 'timeout'

w = 998244353
n = 10**18

# 出力ファイルを開く
File.open("output.txt", "w") do |file|
  begin
    Timeout.timeout(10) do
      n.times do |i|
        str = i.to_s
        str *= i
        ans = str.to_i % w
        output_line = "#{i},#{ans}"
        file.puts(output_line)
        puts output_line # 標準出力にも出力
      end
    end
  rescue Timeout::Error
    puts "時間制限（10秒）を超えたため、処理を終了しました。"
  end
end
