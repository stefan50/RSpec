require "rome_converter"

RSpec.describe RomeConverter do
	describe ".to_dec and .to_rome"
		context "initial" do
			it "converts a Roman numeral to an integer and then sees if it eq int" do
				for i in 1..3000
					expect(RomeConverter.to_dec(RomeConverter.to_rome(i))).to eq i
				end
			end
			it "convert 1111 to rome" do
				expect(RomeConverter.to_rome(1111)).to eq "MCXI"
			end
			it "convert 2954 to rome" do
				expect(RomeConverter.to_rome(2954)).to eq "MMCMLIV"
			end
			it "convert DXCIX to 599" do
				expect(RomeConverter.to_dec("DXCIX")).to eq 599
			end
			it "convert MCDXLV to 1445" do
				expect(RomeConverter.to_dec("MCDXLV")).to eq 1445
			end
		end	
end
