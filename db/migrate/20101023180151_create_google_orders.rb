class CreateGoogleOrders < ActiveRecord::Migration
  def self.up
    create_table :google_orders do |t|
      
      t.integer :google_order_number, :null => false
      t.integer :merchant_order_number, :null => false
      t.date :order_creation_date, :null => false
      t.string :currency_of_transaction, :null => false
      t.decimal :order_amount, :null => false
      t.decimal :amount_charged, :null => false
      t.string :financial_status, :null => false
      t.string :fulfillment_status, :null => false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :google_orders
  end
end
