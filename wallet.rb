AVAILABLE_WALLET_COINS = [1,2,5,10]
wallet = Array.new(rand(0..11)) {AVAILABLE_WALLET_COINS.sample}
puts wallet.inspect
if wallet.count == 0
    puts "У тебя нет денег"
else
    puts "В сумме денег: #{wallet.sum}"
    puts "Штук каждой монеты: #{wallet.tally}"
end