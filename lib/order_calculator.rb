class OrderCalculator
  
  def self.sales_per_day(orders, start_time = 51.days.ago, end_time = 2.days.ago)
    orders_by_day = orders.group_by { |order| order.order_creation_date }
    
    start_date = start_time.to_date
    end_date = end_time.to_date
    
    results = {}
    
    (start_date..end_date).each do |date| 
      results[date] = orders_by_day[date] || []
    end
    
    results
  end
  
end