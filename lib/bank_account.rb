class BankAccount
	attr_reader :name, :balance
	attr_writer :number

	@@total_deposits = 0
	@last_deposit = 0

	def initialize(name, number, initial_balance)
		@name = name
		@number = number
		@balance = initial_balance
	end

	# def test(amount)
	# 	deposit(amount)  access private deposit method below
	# end

	def withdraw(amount)
		@balance -= amount
		puts
		p 'Withdraw : Current Balance: $' + @balance.to_s
	end

	def print_statement
		puts
		p 'PRINT STATEMENT'
		p 'Name: ' + @name.to_s	
		p 'Number: ' + @number.to_s
		p 'Current Balance: $' + @balance.to_s
	end

	def close_account
		@name = nil
		@number = nil
		@balance = nil
	end

	def print_last_deposit
		puts
		p 'Current Balance: $' + @balance.to_s
		p 'Last Deposit: $' + @last_deposit.to_s	
	end

	def rename_account(new_name)
		@name = new_name
	end

	def print_all_deposits
	puts
	p 'ALL DEPOSITS :' + @@total_deposits.to_s
	puts
	end

	private
		def deposit(amount)
		@last_deposit = amount
		@balance += amount
		puts 'Deposited : Current Balance $' +@balance.to_s
		@@total_deposits += amount #use a class variable so it works across all instances
	end
end