puts "室温と設定温度を入力してください"
input_line = gets
integers = input_line.split
A = integers[0]   #室温
B = integers[1]   #設定温度

# 温度差
diff = (A.to_i - B.to_i).abs

if diff < 5
  time = 15
elsif diff < 10
  time = 30
else
  time = 60
end

puts "室内温度がエアコンの設定温度になるまでの時間は#{time}分です"