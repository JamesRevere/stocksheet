require "stock_quote"
require "spreadsheet"

begin
    book = Spreadsheet.open 'test.xls' # Change this to a route to your spreadsheet
rescue
    puts "Unable to import the sheet. Please ensure that the sheet is an .xls file that is not currently open."
else
    sheet1 = book.worksheet 0
    sheet1.each 1 do |row|
        value = row[0].upcase # Modify 0 to be the column that you are using (A = 0, B = 1, C = 2, etc.)
        begin
            stock = StockQuote::Stock.quote(value)
            puts "#{stock.name}: #{stock.l}" # Gets the stock value for the current value
        rescue
            puts "#{value} is not avalable"
        end
    end
end

