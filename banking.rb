class Person 
	attr_accessor :name
	attr_accessor :cash

	def initialize(name, cash)
		@name = name
		@cash = cash
		puts "Hi #{@name}. You have $#{@cash}!"
	end
end

class Bank
	attr_accessor :bank_name
	attr_accessor :accounts

	def initialize(bank_name)
		@bank_name = bank_name
		@accounts = {}
		puts "#{@bank_name} bank was just created."
	end

	def total_cash_in_bank
		total = 0
		@accounts.each do |x, y| #iterates through account hash and adds customer's totals together, then displays
			total += y
		end
		puts "#{bank_name} has $#{total} in the bank."
	end

	def open_account(customer)
		@accounts[customer] = 0
		puts "#{customer.name}, thanks for opening an account at #{bank_name}!"
	end

	def deposit(customer, amount)
		if @accounts.has_key? (customer) #ensures customer has account at bank
			if customer.cash >= amount #protection against over deposits
				@accounts[customer] += amount
				customer.cash -= amount
				puts "#{customer.name} deposited $#{amount} to #{bank_name}. #{customer.name} has $#{customer.cash}. #{customer.name}'s account has $#{@accounts[customer]}."
			else
				puts "#{customer.name} does not have enough cash to deposit $#{amount}."
			end
		else
			puts "#{customer.name} does not have an account at #{bank_name}."
		end
	end

	def withdraw(customer, amount)
		if @accounts.has_key? (customer) #ensures customer has account at bank
			if @accounts[customer] >= amount #protection against over withdrawals
				@accounts[customer] -= amount
				customer.cash += amount
				puts "#{customer.name} withdrew $#{amount} from #{bank_name}. #{customer.name} has $#{customer.cash}. #{customer.name}'s account has $#{@accounts[customer]}."
			else
				puts "#{customer.name} does not have enough money in the account to withdraw $#{amount}."
			end
		else
			puts "#{customer.name} does not have an account at #{bank_name}"
		end
	end

	def transfer(customer, other_bank, amount) #transfer method
		if @accounts.has_key? (customer) #checks to see if customer has an account at bank (transfer from)
			if other_bank.accounts.has_key? (customer) #checks to see if customer has account at bank (transfer to)
				@accounts[customer] -= amount
				other_bank.accounts[customer] += amount
				puts "#{customer.name} transfered $#{amount} from #{bank_name} to #{other_bank.bank_name}. The #{bank_name} account has $#{@accounts[customer]} and the #{other_bank.bank_name} acccount has $#{other_bank.accounts[customer]}."
			else
				puts "#{customer.name} does not have an account at #{other_bank.name}."
			end
		else
			puts "#{customer.name} does not have an account at #{bank_name}."
		end
	end
end

#test code

chase = Bank.new("JP Morgan Chase")
wells_fargo = Bank.new("Wells Fargo")
me = Person.new("David", 500)
friend1 = Person.new("Duevyn", 1000)
chase.open_account(me)
chase.open_account(friend1)
wells_fargo.open_account(me)
wells_fargo.open_account(friend1)
chase.deposit(me, 200)
chase.deposit(friend1, 300)
chase.withdraw(me, 50)
chase.transfer(me, wells_fargo, 100)
chase.deposit(me, 5000)
chase.withdraw(me, 5000)
chase.total_cash_in_bank
wells_fargo.total_cash_in_bank