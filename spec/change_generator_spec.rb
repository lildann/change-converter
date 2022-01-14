require 'change_generator'

describe ChangeGenerator do
  let(:change_generator) { ChangeGenerator.new }

  it "should return £50 from 50" do
    expect(change_generator.convert(50.00)).to eq(["£50"])
  end

  it "should return £20 £20 from 40" do
    expect(change_generator.convert(40.00)).to eq(["£20", "£20"])
  end

  it "should return £50 £20 £5 from 75" do 
    expect(change_generator.convert(75.00)).to eq(["£50", "£20", "£5"])
  end

  it "should return 50p for 0.50" do
    expect(change_generator.convert(0.50)).to eq(["50p"])
  end

  it "should return 20p for 0.20" do
    expect(change_generator.convert(0.20)).to eq(["20p"])
  end

  it "should return £5 £1 £1 £1 for 8.0" do
    expect(change_generator.convert(8.0)).to eq(["£5", "£1", "£1", "£1"])
  end
 
  it "should return mixed amounts of change for all coins and notes" do
    expect(change_generator.convert(76.81)).to eq(["£50", "£20", "£5", "£1", "50p", "20p", "10p", "1p"])
  end
end