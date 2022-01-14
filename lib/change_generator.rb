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

  def fifty
    fifties = (@total / 50).floor
    @conversion << ["£50"] * fifties
    @total -= (50 * fifties)
  end
  
  def twenty
    twenties = (@total / 20).floor
    @conversion << ["£20"] * twenties
    @total -= (20 * twenties)

  end

  def ten
    tens = (@total / 10).floor
    @conversion << ["£10"] * tens
    @total -= 10 * tens
  end

  def five
    fives = (@total / 5).floor
    @conversion << ["£5"] * fives
    @total -= 5 * fives
  end

  def one_pound
    @conversion << ["£1"] * @total.floor
    @total -= 1 * @total.floor
  end

  def fifty_pence
    fifty_pences = (@total / 0.5).floor
    @conversion << ["50p"] * fifty_pences
    @total -= 0.5 * fifty_pences
  end

  def twenty_pence
    twenty_pences = (@total / 0.2).floor
    @conversion << ["20p"] * twenty_pences
    @total -= 0.2 * twenty_pences
  end

  def ten_pence
    ten_pences = (@total / 0.1).floor
    @conversion << ["10p"] * ten_pences
    @total -= 0.1 * ten_pences
  end

  def five_pence
    five_pences = (@total / 0.05).floor
    @conversion << ["5p"] * five_pences
    @total -= 0.05 * five_pences
  end

  def two_pence
      two_pences = (@total / 0.02).floor
      @conversion << ["2p"] * two_pences
      @total -= 0.02 * two_pences
  end

  def one_pence
    one_pences = (@total / 0.01).floor
    @conversion << ["1p"] * one_pences
    @total -= 0.05 * one_pences
  end
end
