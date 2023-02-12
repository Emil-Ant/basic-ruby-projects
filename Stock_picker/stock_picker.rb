# implement a method #stock_picker that takes an array of stock prices
# One (stock price) for each hypothetical day
# It should return a pair of days representing the best day to buy
# and the best day to sell. Days start at 0.

list = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_prices)
    best_buy = 0
    best_sell = 0
    maximum_profit = 0
    stock_prices[0..-2].each_with_index do |buy, i|
        stock_prices[(i + 1) .. -1].each_with_index do |sell, j|
            if (sell - buy ) > maximum_profit
                maximum_profit = sell - buy
                best_buy = i
                best_sell = j + (i + 1)
            end 
        end
    end
    [best_buy, best_sell]
end

p stock_picker(list)