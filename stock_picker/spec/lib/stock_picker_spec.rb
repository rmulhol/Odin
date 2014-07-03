require "../spec_helper.rb"
require "./stock_picker.rb"

describe "stock picker" do
	it "selects the indexes marking biggest difference between low and high in a sequence" do
		expect(stock_picker([36,51,22,18,7,19,54,31])).to eq([4,6])
	end
end