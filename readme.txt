Hello!
The end goal of this project is to create a easy to use program to update a spreadsheat with the current stock prices without user input.

Note: Due to the library used, there is a non-zero chance of files getting corrupted. Unless you want to redo your hard work, please backup your files.

CURRENT STATE:
 	✓ Able to acess info about current stock prices (Stock Price Lookup)
 	✓ Able to modify spreadsheats with that info (Sheet)
 	✓ Can do so without user intervention (Sheet Auto)

Manifest:
    Stock Price Lookup: Allows you to enter a series of stock symbols to get their current price.
    Sheet Read: The barebones test for the "spreadsheat" gem. Useful for debugging.
    Sheet Auto: Reads the sheat, and prints the stock prices.
    Sheet: The works. Automatically gets the current stock info for the sheet and updates the file with it.

Debugging:
    It's not getting the info for the right table!
        Go to the file you're modifying and change the 0 in "value = row[0]" to whatever collum you're using (According to the comment)
    It's not importing correctly!
        Make sure that the file you're using is:
            a) A xls document. xlsx and ods files don't work.
            b) The file you're using isn't open


Reqirements:
    "stock_quote"
    "spreadsheet"


