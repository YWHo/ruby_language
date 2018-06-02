#!/usr/bin/ruby

class Customer
  @customer_num = 0
  @@total_customers = 0
  def initialize(id, name, addr)
    # id, name, and addr are local variables
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
    @@total_customers += 1
    @customer_num = @@total_customers
  end
  def display_details()
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer address #@cust_addr"
  end
  def total_no_of_customers()
    puts "Customer number is: #@customer_num"
    puts "Total number of customers: #@@total_customers"
  end
end

# Create Objects
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

# Call Methods
cust1.total_no_of_customers()
cust2.total_no_of_customers()