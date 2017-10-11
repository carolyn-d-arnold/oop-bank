class BankAccount
	attr_reader :balance
    
	def initialize(opening_balance, account_holder)
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
