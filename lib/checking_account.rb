class CheckingAccount < BankAccount
	def initialize(name, number, initial_balance, limit)
		super name, number, initial_balance #connects to bank_account.rb / parent

		@limit = limit
	end

	def print_spending_limit
		puts
		p 'Daily spending limit is $' + @limit.to_s
		puts
	end

end