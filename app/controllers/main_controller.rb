class MainController < ApplicationController
	require 'bank_account.rb' 
	require 'checking_account.rb' #so we can use what's in the file
	
	def play
		ba = BankAccount.new('David', 123, 5000)

		p 'NAME: ' + ba.name
		p 'BALANCE ' + ba.balance.to_s

		ba.number = 50000

		ba.print_statement

		# ba.deposit(500)
		# ba.withdraw(1000)
		# ba.print_last_deposit
		# ba.print_statement
		# ba.rename_account('Amanda')
		# ba.print_statement
		# ba.print_all_deposits

		# ba = BankAccount.new('Frank', 345, 10000)

		# ba.deposit(500)
		# ba.withdraw(1000)
		# ba.print_last_deposit
		# ba.print_statement
		# ba.rename_account('Amanda')
		# ba.print_statement
		# ba.print_all_deposits

		# ca = CheckingAccount.new('John', 555, 3000, 100)
		# ca.print_statement
		# ca.print_spending_limit

		head :ok
	end

end