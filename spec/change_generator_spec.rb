require 'change_generator'

describe ChangeGenerator do
  it "should return £50" do
    change_generator = ChangeGenerator.new
    expect(change_generator.convert(50.00)).to eq("£50")
  end
end