require '../spec_helper'
require './caesar_cipher.rb'

describe "caesar cipher" do
	it "modifies a string by an integer" do
		expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
	end
end