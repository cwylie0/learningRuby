class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
      @name = name
      @balance = balance
    end
    
    def display_balance(pin_number)
      if pin_number == pin
        puts "Balance: $#{@balance}."
      else
        puts pin_error
      end
    end
    
    def withdraw(pin_number, amount)
      if pin_number == pin
        @balance -= amount
        puts "Withdrew #{amount}. New balance: $#{@balance}."
      else
        puts pin_error
      end
    end
    
    def deposit(pin_number, amount)
      if pin_number == pin
        @balance += amount
        puts "Deposited #{amount}. New balance: $#{@balance}."
      else
        puts pin_error
      end
    end
        
    
    private
    
    def pin()
      @pin = 1234
    end
    
    def pin_error()
      "Access denied: incorrect PIN."
    end
  end
  
  checking_account = Account.new("cwylie0", 600_000)
  checking_account.withdraw(11, 500_000)
  checking_account.display_balance(1234)
  checking_account.withdraw(1234, 500_000)
  checking_account.deposit(1234, 300_000)
  checking_account.display_balance(1234)