require 'change'

describe Change do
    it 'calculates the amount from array' do
        change = Change.new
        expect(change.total_money([25,20,5,1])).to eq 8.51
    end

    it 'checks if you can buy the item' do
        change = Change.new
        expect(change.change_enough?([25,20,5,1],4.25)).to eq true
    end

    it "returns false if you can't buy the item" do
        change = Change.new
        expect(change.change_enough?([25,20,5,1],9.56)).to eq false
    end
end