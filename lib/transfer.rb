class Transfer
  
  attr_accessor :amount, :status
  
  def initialize(receiver, sender, amount)
    @receiver = receiver
    @sender = sender
    @amount = 50 
    @status = "pending"
  end 
  
end
