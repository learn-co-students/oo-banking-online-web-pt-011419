class Transfer
  attr_accessor :amount, :sender, :receiver, :status
  def initialize(sender,receiver,amount)
    @amount = amount
    @receiver = receiver
    @sender = sender
    @status = "pending"
  end
  def valid?
    if @sender.valid? == true && @receiver.valid? == true && @sender.balance >= amount 
      true 
    else 
      false 
    end
  end
  def execute_transaction
    if @status == "pending" && valid? == true
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
      @receiver.balance -= @amount
      @sender.balance += @amount
      @status = "reversed"
    end
  end 
end
