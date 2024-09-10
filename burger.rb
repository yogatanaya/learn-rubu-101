def main
    orders = []

    loop do 

        puts "-- Welcome to Our Burger Shop -- "
        puts "-- what do you want to order --"
        puts "######### Food ###########"
        puts "1. Single Cheese Burger"
        puts "2. Double Cheese Burger"
        puts "3. Big Mac"
        puts "########## Beverages ###########"
        puts "4. Beer"
        puts "5. Soda Drinks (Coke/Fanta/Pepsi/Sprite etc)"
        puts "6. Redbull"
        puts "0. Need Checkout?"
        puts "Your Order: "

        order_input = gets().chomp().to_i

        case order_input

        when 1
            item_price = 2.00
            qty = 0;
            item_name = "Single Cheese Burger"
            puts "Price will be $#{item_price}"
            puts "How many ?"
            qty = gets().chomp().to_i
            amount = qty * item_price
            orders << {"item_name": item_name, "item_price": item_price, "qty": qty, "amount": amount}
        when 2
            item_price = 3.00
            qty = 0;
            item_name = "Double Cheese Burger"
            puts "Price will be $#{item_price}"
            puts "How many ?"
            qty = gets().chomp().to_i
            amount = qty * item_price
            orders << {"item_name": item_name, "item_price": item_price, "qty": qty, "amount": amount} 
        when 3 
            item_price = 4.00
            qty = 0;
            item_name = "Big Mac"
            puts "Price will be $#{item_price}"
            puts "How many ?"
            qty = gets().chomp().to_i
            amount = qty * item_price
            orders << {"item_name": item_name, "item_price": item_price, "qty": qty, "amount": amount}  
        when 4 
            item_price = 3.50
            qty = 0;
            item_name = "Beer"
            puts "Price will be $#{item_price}"
            puts "How many ?"
            qty = gets().chomp().to_i
            amount = qty * item_price
            orders << {"item_name": item_name, "item_price": item_price, "qty": qty, "amount": amount}   
        when 5 
            item_price = 2.50
            qty = 0;
            item_name = "Soda Drinks"
            puts "Price will be $#{item_price}"
            puts "How many ?"
            amount = qty * item_price
            orders << {"item_name": item_name, "item_price": item_price, "qty": qty, "amount": amount}   
        when 6 
            item_price = 3.15
            qty = 0;
            amount = 0.0
            item_name = "Redbull"
            puts "Price will be $#{item_price}"
            puts "How many ?"
            qty = gets().chomp().to_i
            amount = qty * item_price
            orders << {"item_name": item_name, "item_price": item_price, "qty": qty, "amount": amount}   
        when 0
            total = 0.0
            paid = 0.0
            change = 0.0
            puts "---- Your Order Summary (Incl. VAT 11%) ----"
            orders.each_with_index do |item, index| 
                puts "#{index+1}. #{item[:item_name]} - $#{'%.2f' % item[:item_price]} - x#{item[:qty]} - $#{'%.2f' % item[:amount]}"
                total += item[:amount] + (item[:amount] * 0.11)  
            end
            puts "Total Payment: $#{'%.2f' % total}"
            puts "Amount Paid: "
            paid = gets().chomp().to_f 
            change = paid - total 
            puts "Change: $#{'%.2f' % change}"
            puts "Goodbye!"
        break
        else 
            puts "Invalid selection! please choose valid option"
        end
    end
end

main if __FILE__ == $PROGRAM_NAME