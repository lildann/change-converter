class ChangeGenerator

  def initialize
    @total = 0
    @conversion = []
  end

  def convert(change)
    @total += change
    fifty if @total != 0
    twenty if @total != 0  
    ten if @total != 0  
    five if @total != 0
    one_pound if @total != 0
    fifty_pence if @total != 0.0
    twenty_pence if @total != 0.0
    ten_pence if @total != 0.0
    five_pence if @total != 0.0
    two_pence if @total != 0.0
    one_pence if @total != 0.0
    @conversion.flatten
  end

  private

  def fifty
    if @total >= 50
      fifties = (@total / 50).floor
      @conversion << ["£50"] * fifties
      @total -= (50 * fifties)
    end
  end
  
  def twenty
    if @total >= 20
      twenties = (@total / 20).floor
      @conversion << ["£20"] * twenties
      @total -= (20 * twenties)
    end
  end

  def ten
    if @total >= 10
      tens = (@total / 10).floor
      @conversion << ["£10"] * tens
      @total -= 10 * tens
    end
  end

  def five
    if @total >= 5
      fives = (@total / 5).floor
      @conversion << ["£5"] * fives
      @total -= 5 * fives
    end
  end

  def one_pound
    if @total >= 1.0
      @conversion << ["£1"] * @total.floor
      @total -= 1 * @total.floor
    end
  end

  def fifty_pence
    if @total >= 0.5
      fifty_pences = (@total / 0.5).floor
      @conversion << ["50p"] * fifty_pences
      @total -= 0.5 * fifty_pences
    end
  end

  def twenty_pence
    if @total >= 0.2
      twenty_pences = (@total / 0.2).floor
      @conversion << ["20p"] * twenty_pences
      @total -= 0.2 * twenty_pences
    end
  end

  def ten_pence
    if @total >= 0.1
      ten_pences = (@total / 0.1).floor
      @conversion << ["10p"] * ten_pences
      @total -= 0.1 * ten_pences
    end
  end

  def five_pence
    if @total >= 0.05
      five_pences = (@total / 0.05).floor
      @conversion << ["5p"] * five_pences
      @total -= 0.05 * five_pences
    end
  end

  def two_pence
    if @total >= 0.02
      two_pences = (@total / 0.02).floor
      @conversion << ["2p"] * two_pences
      @total -= 0.02 * two_pences
    end
  end

  def one_pence
    if @total >= 0.01
      one_pences = (@total / 0.01).floor
      @conversion << ["1p"] * one_pences
      @total -= 0.05 * one_pences
    end
  end
end
