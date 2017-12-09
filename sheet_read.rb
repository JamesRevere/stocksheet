require "spreadsheet"

begin
    book = Spreadsheet.open 'test.xls' # Change this to a route to your spreadsheet
rescue
    puts "Unable to import the sheet. Please ensure that the sheet is an .xls file that is not currently open."
else
    sheet1 = book.worksheet 0
    sheet1.each 1 do |row|
        puts "#{row[0]}: #{row[1]}" # Modify 0 to be the column that you are using for the stocks and 1 to be the column that you're storeing the prices in (A = 0, B = 1, C = 2, etc.)
    end
end


=begin
sheet1 = book.worksheet 0
sheet1.each 1 do |row|
    puts row[0] # Modify 0 to be the column that you are using (A = 0, B = 1, C = 2, etc.)
end
=end