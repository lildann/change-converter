class ChangeGenerator

  def initialize
    @total = 0
    @conversion = []
  end

  def convert(change)
    @total += change
    fifty if @total >= 50
    twenty if @total >= 20  
    ten if @total >= 10 
    five if @total >= 5
    one_pound if @total >= 1.0
    fifty_pence if @total >= 0.5
    twenty_pence if @total >= 0.2
    ten_pence if @total >= 0.1
    five_pence if @total >= 0.05
    two_pence if @total >= 0.02
    one_pence if @total >= 0.01
    @conversion.flatten
  end

  private

  def calculate_how_many(value)
    (@total / value).floor
  end

  def fifty(value=50)
    number_of_fifties = calculate_how_many(value)
    @conversion << ["£50"] * number_of_fifties
    @total -= (50 * number_of_fifties)
  end
  
  def twenty(value=20)
    number_of_twenties = calculate_how_many(value)
    @conversion << ["£20"] * number_of_twenties
    @total -= (20 * number_of_twenties)

  end

  def ten(value=10)
    number_of_tens = calculate_how_many(value)
    @conversion << ["£10"] * number_of_tens
    @total -= 10 * number_of_tens
  end

  def five(value=5)
    number_of_fives = calculate_how_many(value)
    @conversion << ["£5"] * number_of_fives
    @total -= 5 * number_of_fives
  end

  def one_pound
    @conversion << ["£1"] * @total.floor
    @total -= 1 * @total.floor
  end

  def fifty_pence(value=0.5)
    number_of_fifty_pence = calculate_how_many(value)
    @conversion << ["50p"] * number_of_fifty_pence
    @total -= 0.5 * number_of_fifty_pence
  end

  def twenty_pence(value=0.2)
    number_of_twenty_pence = calculate_how_many(value)
    @conversion << ["20p"] * number_of_twenty_pence
    @total -= 0.2 * number_of_twenty_pence
  end

  def ten_pence(value=0.1)
    number_of_ten_pence = calculate_how_many(value)
    @conversion << ["10p"] * number_of_ten_pence
    @total -= 0.1 * number_of_ten_pence
  end

  def five_pence(value=0.05)
    number_of_five_pence = calculate_how_many(value)
    @conversion << ["5p"] * number_of_five_pence
    @total -= 0.05 * number_of_five_pence
  end

  def two_pence(value=0.02)
    number_of_two_pence = calculate_how_many(value)
    @conversion << ["2p"] * number_of_two_pence
    @total -= 0.02 * number_of_two_pence
  end

  def one_pence(value=0.01)
    number_of_one_pence = calculate_how_many(value)
    @conversion << ["1p"] * number_of_one_pence
    @total -= 0.01 * number_of_one_pence
  end
end
