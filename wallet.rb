wallet = Array.new(rand(1..11)) {[1,2,5,10].sample}
puts wallet.inspect
if wallet.sum == 0
    puts "У тебя нет денег"
else
    puts "В сумме денег: #{wallet.sum}"
    puts "Штук каждой монеты: #{wallet.group_by { |el| el}}"
end