puts "室温と設定温度を入力してください"
input_line = gets
integers = input_line.split
A = integers[0]   #室温
B = integers[1]   #設定温度

puts "風量を1~3で入力してください"
input_wind = gets
wind = input_wind.to_i

if wind == 1
  fast = 0
elsif wind == 2
  fast = 5
elsif wind == 3
  fast = 10
else
  puts "風量の値は1~3にしてください"
  exit
end

# 温度差
diff = (A.to_i - B.to_i).abs

time = 0    #設定温度になるまでにかかる時間の初期値

if diff < 5
  time = 15
elsif diff < 10
  time = 30
else
  time = 60
end

puts "室内温度がエアコンの設定温度になるまでの時間は#{time - fast}分です"