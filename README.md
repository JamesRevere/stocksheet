# Stocksheet
Hello!

This is a collection of various programs designed to get stock prices based on symbol, and automatically an Excel spreadsheat based on them.

Note: Due to the library used, there is a non-zero chance of files getting corrupted. Unless you want to redo your hard work, please backup your files.

## Current State:
 	✓ Able to acess info about current stock prices (Stock Price Lookup)
 	✓ Able to modify spreadsheats with that info (Sheet)
 	✓ Can do so without user intervention (Sheet Auto)

## Manifest:
    Stock Price Lookup: Allows you to enter a series of stock symbols to get their current price.
    Sheet Read: The barebones test for the "spreadsheat" gem. Useful for debugging.
    Sheet Auto: Reads the sheat, and prints the stock prices.
    Sheet: The works. Automatically gets the current stock info for the sheet and updates the file with it.

## Debugging:
    It's not getting the info for the right collum!  
        Go to the file you're modifying and change the 0 in "value = row[0]" to whatever collum you're using (According to the comment)  
            Locations:
                - sheet.rb: Line 11
                - sheet_read.rb: Line 10
                - sheet_auto.rb: Line 11

    It's not modifying the right collum!
        Go to the file you're using and change the 1 in "row[1] = stock.op" to whatever collum you're using (According to the comment)  
            Locations:  
                - sheet.rb: Line 15  
                - sheet_read.rb: Line 10  
    It's not importing correctly!  
        Make sure that the file you're using is:  
            a) A xls document. xlsx and ods files don't work.  
            b) The file you're using isn't open  


## Reqirements:
    "stock_quote"
    "spreadsheet"