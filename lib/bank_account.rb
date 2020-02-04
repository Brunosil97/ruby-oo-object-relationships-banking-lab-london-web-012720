require 'pry'

class BankAccount

    attr_accessor :balance, :status
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name 
        @balance = 1000 #when asigning a value the initialize doesnt need parameter
        @status = "open" # a status WITH string 'open'
      
        @@all << self
    end 

    def self.all 
        @@all
    end 

    def deposit(deposit_amount)
        self.balance += deposit_amount
    end 
        
    def display_balance 
        "Your balance is $#{self.balance}."
    end 

    def valid?
        balance > 0 && status == "open"
    end 
    
    def close_account
        self.status = "closed"
    end 

end
