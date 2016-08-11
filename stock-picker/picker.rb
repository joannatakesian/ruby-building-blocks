def picker(prices)
    b = 0
    buy_day = 0
    sell_day = 0
    profit = 0
    
    while b < prices.size do
        s = b + 1
        
        while s < prices.size do
            
            if (prices[s] - prices[b]) > profit
                profit = (prices[s] - prices[b])
                buy_day = b
                sell_day = s
            end
                        
            s += 1
        end
        
        b += 1
    end
    
    puts "Buy on day #{buy_day} and sell on day #{sell_day} for a profit of $#{profit}."
end

picker([17,3,6,9,15,8,6,1,10])