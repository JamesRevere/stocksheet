require "stock_quote"
require "spreadsheet"

begin
    book = Spreadsheet.open 'test.xls' # Change this to a route to your spreadsheet
rescue
    puts "Unable to import the sheet. Please ensure that the sheet is an .xls file that is not currently open."
else
    sheet1 = book.worksheet 0
    sheet1.each 1 do |row| # For each row of data
        value = row[0].upcase # Modify 0 to be the column that you are using to store the stock symbol (A = 0, B = 1, C = 2, etc.)

        begin
            stock = StockQuote::Stock.quote(value) # Gets the stock value for the current value
            row[1] = stock.l # Modify 1 to be the column that you are storing the current stock price info in (A = 0, B = 1, C = 2, etc.)

            book.write 'output.xls' # Change this to the output file, but FOR THE LOVE OF GOD DON'T SET THIS TO THE SAME SPREADSHET THAT YOU"RE IMPORTING THIS STUFF FROM. Acme Database Servaces does not claim responsability for damages caused by IDIOTS MONKYING AROUND WITH THE FILENAMES.
            
            puts "#{value}: Changes Written"
        rescue
            puts "#{value}: Not Avalable"
        end
    end
end

