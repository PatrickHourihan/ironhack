require_relative "../fizzbuzz"
require "spec_helper"

describe "FizzBuzz" do

	it "should print 'fizzbuzz' if multiple of 15" do
	  expect(FizzBuzz.new.fizzbuzz(45)).to eq("fizzbuzz")
	end 

	it "should print 'fizz' if multiple of 3" do
	  expect(FizzBuzz.new.fizzbuzz(9)).to eq("fizz")
	end

	it "should print 'buzz' if multiple of 5" do 
	  expect(FizzBuzz.new.fizzbuzz(25)).to eq("buzz")
	end

end
