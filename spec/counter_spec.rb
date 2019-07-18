require('pry')
require('rspec')
require('counter')

describe('#coin') do
  it('returns 1 quarter if input is 0.25') do
    test_count = Coin.new(0.25)
    expect(test_count.sort_coin()).to(eq([1,0,0,0]))
  end

  it('returns 1 dime if input is 0.10') do
    test_count = Coin.new(0.10)
    expect(test_count.sort_coin()).to(eq([0,1,0,0]))
  end

  it('returns 1 nickel if input is 0.05') do
    test_count = Coin.new(0.05)
    expect(test_count.sort_coin()).to(eq([0,0,1,0]))
  end

  it('returns 1 penny if input is 0.01') do
    test_count = Coin.new(0.01)
    expect(test_count.sort_coin()).to(eq([0,0,0,1]))
  end

  it('returns 1 penny if input is 1.49') do
    test_count = Coin.new(1.49)
    expect(test_count.sort_coin()).to(eq([5,2,0,4]))
  end
end
