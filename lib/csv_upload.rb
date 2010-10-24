require 'rubygems'
require 'csv'

class CsvUpload
  
  # The expected headers for the CSV upload
  ORDERS_EXPECTED_HEADERS = ['Google Order Number', 'Merchant Order Number', 'Order Creation Date', 'Currency of Transaction',
    	'Order Amount', 'Amount Charged',	'Financial Status',	'Fulfillment Status']
  
  def self.process_orders(file) 
    count = 0
    CSV.open(file, 'r', ',') do |row|
      if count == 0 
        ORDERS_EXPECTED_HEADERS.each_with_index do |col, i|
          if row[i] != col
            raise "Expected columns not found. Expected '#{col}'.  Got '#{row[i]}'."
          end
        end
        count = count + 1
        next
      end
      count = count + 1 
      
      puts "#{row[0]} - #{row[1]} - #{row[2]} - #{row[3]} - #{row[4]} - #{row[5]} - #{row[6]} - #{row[7]}"
      
      GoogleOrder.create!(:google_order_number => row[0], 
                          :merchant_order_number => row[1],
                          :order_creation_date => row[2],
                          :currency_of_transaction => row[3],
                          :order_amount => row[4],
                          :amount_charged => row[5],
                          :financial_status => row[6],
                          :fulfillment_status => row[7])
      
    end
    
  end
  
end
