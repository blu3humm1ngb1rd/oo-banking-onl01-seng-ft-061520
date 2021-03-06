require "pry"
class BankAccount

attr_accessor :status, :balance
attr_reader :name  

  def initialize(name)
    @name = name 
    @balance = 1000
    @status = "open"
  end 
  
  def deposit(money)
    self.balance += money
  end 
  
  def display_balance
    "Your balance is $#{self.balance}." 
  end 
  
  def valid? 
    #binding.pry
    if self.balance > 0 && self.status == "open"
      true 
    else 
      false
    end 
  end 
  
  def close_account
    self.status = "closed"
  end 
  
end

#transfer money to savings from checking 