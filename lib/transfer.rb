class Transfer
   attr_accessor :amount, :sender, :receiver, :status
   
   def initialize(sender, receiver, amount)
     @amount = amount 
     @sender = sender 
     @receiver = receiver
     @status = "pending"
   end 
   
   def valid?
     sender.valid? && receiver.valid?
   end 
   
   def execute_transaction 
     if @sender.balance < @amount
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
      
     elsif @status == "complete"
      
     else
      @sender.deposit( @amount * -1 ) 
      @receiver.deposit( @amount )
      @status = "complete"
      
    end
   end 
  
  def reverse_transfer
    if @status == "complete"
      @sender.deposit( @amount ) 
      @receiver.deposit( @amount * -1)
      @status = "reversed"
    end
  end
end
