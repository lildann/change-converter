require 'change_generator'

describe ChangeGenerator do
  let(:change_generator) { ChangeGenerator.new }

  it "should return £50 from 50" do
    expect(change_generator.convert(50.00)).to eq(["£50"])
  end

  it "should return £20 £20 from 40" do
    expect(change_generator.convert(40.00)).to eq(["£20", "£20"])
  end
end