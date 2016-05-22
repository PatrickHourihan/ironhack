require_relative "../lib/lexiconomitron.rb"
require "spec_helper"

describe Lexiconomitron do 

	before :each do
		@lexi = Lexiconomitron.new
	end

  describe "#eat_t" do
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end

  	describe "#shazam" do
  	  it "reverses letter and within words, returns only first and law words and works with Lexi" do
  		expect(@lexi.shazam(["great", "scott", "good", "got!"])).to eq(["aerg", "!og"])
  	   end
  	end

  	describe "oompa loompa" do
	  it "takes an array of words and takes words which are three characters or less" do
		expect(@lexi.oompa_loompa(["if","you","wanna","be","my","lover"])).to eq(["if","you","be","my"])
	  end
	end

end