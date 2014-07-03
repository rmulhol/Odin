require '../spec_helper.rb'
require './substrings.rb'

describe "substrings" do
	it "creates a hash with number of times words in array are contained in string" do
		expect(substrings("below", ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])).to include(
			"below" => 1, 
			"low" => 1
			)
	end
end

describe "substrings" do
	it "creates a hash with number of times words in array are contained in string" do
		expect(substrings("Howdy partner, sit down! How's it going?", ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])).to include(
			"down" => 1, 
			"how" => 2, 
			"howdy" => 1,
			"go" => 1, 
			"going" => 1, 
			"it" => 2, 
			"i" => 3, 
			"own" => 1,
			"part" => 1,
			"partner" => 1,
			"sit" => 1
			)
	end
end