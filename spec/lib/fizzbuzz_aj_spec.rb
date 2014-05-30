require 'fizzbuzz_aj'

describe FizzBuzz do
  fizz = FizzBuzz.new(42)
  it "evaluates num%3" do
    expect(fizz.calc(42)).to eq("Fizz")
  end

  it "evaluates num%5" do
    expect(fizz.calc(40)).to eq("Buzz")
  end

  it "evaluates num%15" do
    expect(fizz.calc(45)).to eq("FizzBuzz")
  end

  it "the rest" do
    expect(fizz.calc(41)).to eq(41)
  end
end
