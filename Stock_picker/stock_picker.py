# implement a method #stock_picker that takes an array of stock prices
# One (stock price) for each hypothetical day
# It should return a pair of days representing the best day to buy
# and the best day to sell. Days start at 0.

list = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_prices):
    # iterates through list but stop 1 value before the full length of list becase can't sell on the last day
    profit = 0 
    maximum_profit = 0
    for value in stock_prices[0:len(stock_prices)-1]:
        value_index = stock_prices.index(value)
            # profit = stock_prices[value_index] - stock_prices[i]
            # print(f"The profit is: {profit}")


print(stock_picker(list))

    