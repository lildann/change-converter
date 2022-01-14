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
    fifty_pence if @total != 0
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
      @total -= 10 * fives
    end
  end

  def fifty_pence
    if @total >= 0.5
      fiftypences = (@total / 0.5).floor
      @conversion << ["50p"] * fiftypences
      @total -= 0.5 * fiftypences
    end
  end
end
