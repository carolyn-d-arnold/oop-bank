class BankAccount
	attr_reader :balance
    @@minimum_opening_balance = 200
	def initialize(opening_balance, account_holder)
        if opening_balance < @@minimum_opening_balance
            raise ArgumentError
        end
	  @balance = opening_balance
  end
    
    def deposit(amount)
        @balance += amount
    end
    
    def withdrawal(amount)
        @balance -= amount
    end
    
    def transfer(amount, account)
        withdrawal(amount)
        account.deposit(amount)
    end
end
