class ChangeGenerator

  def initialize 
    @notes = [50, 20, 10, 5]
  end

  def convert(change)
    @total = change
    @conversion = []
    fifty(change)
    twenty(change)
    # @notes.each do |note| 
    #   if note % change == 0
    #     return conversion << "£#{change.round(0).to_s}"
    #   else 
    #     conversion << "£#{note.round(0).to_s}" * (change / note)
        # total -= note
        # conversion << "£#{note.to_s}"
        # p total 
    #   end
    # end
    @conversion.flatten
  end

  private

  def fifty(change)
    change = @total
    if @total >= 50
      fifties = @total / 50 
      @conversion << ["£50"] * fifties
      @total -= 50 * fifties
    end
  end
  
  def twenty(change)
    change = @total
    if @total >= 20
      twenties = @total / 20 
      @conversion << ["£20"] * twenties
      @total -= 20 * twenties
    end
  end
      


end