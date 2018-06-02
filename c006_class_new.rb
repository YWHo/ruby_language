#!/usr/bin/ruby

class Customer
  @@no_of_customers = 0   # class variable
  def initialize(id, name, addr)    # 3 arguments for new()
    @cust_id = id         # instance variable
    @cust_name = name     # instance variable
    @cust_addr = addr     # instance variable
  end
end

cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")