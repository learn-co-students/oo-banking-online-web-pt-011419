class Transfer
  attr_accessor :amount, :sender, :receiver, :status 
  
  def initialize(sender, receiver, amount)
    @amount = amount
    @sender = sender 
    @receiver = receiver
    @status = "pending"
  end 
  
  def valid?
    if @sender.valid? == true && @receiver.valid? == true && @sender.balance >= @amount 
      return true 
    else 
      return false 
    end 
  end
  
  def execute_transaction
    if self.valid? == true && @status == "pending"
      @sender.balance -= @amount 
      @receiver.balance += @amount
      @status = "complete"
    else 
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end 
  end 
  
  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount 
      @receiver.balance -= @amount 
      @status = "reversed"
    end
  end 
end   