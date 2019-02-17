class Transfer
  attr_accessor :amount, :sender, :receiver, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    if sender.valid? == true && receiver.valid? == true
    true
    end
  end

  def execute_transaction
    if @sender.valid? == false || @receiver.valid? == false
      "Transaction rejected. Please check your account balance."
    end

    if @status == "complete"
      "Transaction rejected. Please check your account balance."
    else
      @sender.balance -= amount
      @receiver.balance += amount
      @status = "complete"
    end

  end

end
