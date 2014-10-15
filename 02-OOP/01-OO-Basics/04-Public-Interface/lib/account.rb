# This is how you define your own custom exception classes
class DepositError < StandardError
end



class BankAccount

  attr_reader :iban, :transactions, :to_s, :name, :position

  # Contract for the BankAccount class
  # - you can access full owner's name and position, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account infos
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the position variable)

  MIN_DEPOSIT =  100

  def initialize(name, iban, initial_deposit, password)
    fail DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT
    @password = password
    @transactions = []
    @position = 0
    @name, @iban = name, iban

    add_transaction(initial_deposit)
  end

  def withdraw(amount)
    add_transaction( - amount)
    puts "You've just withdrawn #{amount} euros"
  end

  def deposit(amount)
    add_transaction( + amount)
# TODO: Call add_transaction with the right argument
    puts "You've just deposit #{amount} euros"
  end

  def transactions_history(args = {})
    if args[:password].nil?
       "no password given"
    elsif args[:password] == @password
      return @transactions.to_s
    else
       "wrong password"  # TODO: Check if there is a password and if so if it is correct
    # TODO: return a string displaying the transactions, BUT NOT return the transaction array !
    end
  end

  def iban
    "#{@iban[0..3]}**************#{@iban[-3..-1]}"
   # TODO: Hide the middle of the IBAN like FR14**************606 and return it
  end

  def to_s
     "Owner : #{name} \n IBAN : #{iban} \n Current amount : #{position}"
   # Method used when printing account object as string (also used for string interpolation)
    # TODO: Displays the account owner, the hidden iban and the position of the account
  end

  private

  def add_transaction(amount)
   @transactions << amount # TODO: add the amount in the transactions array
   @position += amount # TODO: update the current position (which represents the balance of the account)
  end
end

new_client = BankAccount.new("Candice", "FR234234345456", 150, "perdue")
new_client.iban
new_client.to_s
new_client.position

