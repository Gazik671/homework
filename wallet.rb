coins = [1,2,5,10]
wallet = Array.new(rand(1..11)) {coins.sample}
puts wallet.inspect
if wallet.count == 0
    puts "У тебя нет денег"
else
    puts "В сумме денег: #{wallet.sum}"
    puts "Штук каждой монеты: #{wallet.tally}"
end