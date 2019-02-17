class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = 50 
    @status = "pending"
  end 
  
  def valid? 
    
  end 
  
end
