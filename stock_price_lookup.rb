require "stock_quote"
values = []
entry = "1"

puts "Enter the Stock symbols you want to search (Press enter after each): "
loop do
    entry = gets.chomp.upcase
    break if entry == ""
    values.push(entry)
    #p entry
end

puts "Calculating Values..."
puts
#p values


values.each do |value|
    begin
        stock = StockQuote::Stock.quote(value)
        puts "#{stock.name}: #{stock.l}"
    rescue
        puts "#{value} is not avalable"
    end
=begin
    stock = StockQuote::Stock.quote(value)
    puts "#{stock.name}: #{stock.op}"
=end
end
