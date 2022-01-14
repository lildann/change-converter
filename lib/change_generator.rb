class ChangeGenerator

  def initialize 
    @notes = [50.00, 20.00, 10.00, 5.00]
  end

  def convert(change)
    @notes.each { |note| return "£#{change.round(0).to_s}" if change == note }
  end
end