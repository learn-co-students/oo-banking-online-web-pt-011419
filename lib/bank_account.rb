require "pry"
class BankAccount
 attr_reader :name
 attr_accessor :balance, :status, :money, :sender, :receiever
 
 @@all=[]
  def initialize (name)
    @name=name
    @@all<< name
    @balance= 1000
    @status= "open"
  end
  
  def deposit (money)
    @balance= @balance + money
  end
  
  def display_balance
   "Your balance is $#{@balance}."
  end
  
  def valid? 
    if @status== "open" && @balance > 0
      true
    else
      false
  end
  end
   def close_account
     @status= "closed"
    end
    
    def all
      @@all
    end
    
    def balance 
     @balance 
    end
end

