require 'pry'
require './lib/item'
require './lib/attendee'
require './lib/auction'

RSpec.describe 'Bidding!' do
  context 'Iteration 2' do
    before(:each) do
      @item1 = Item.new('Chalkware Piggy Bank')
      @item2 = Item.new('Bamboo Picture Frame')
      @item3 = Item.new('Homemade Chocolate Chip Cookies')
      @item4 = Item.new('2 Days Dogsitting')
      @item5 = Item.new('Forever Stamps')

      @attendee1 = Attendee.new({ name: 'Megan', budget: '$50' })
      @attendee2 = Attendee.new({ name: 'Bob', budget: '$75' })
      @attendee3 = Attendee.new({ name: 'Mike', budget: '$100' })

      @auction = Auction.new

      @item1.add_bid(@attendee2, 20)
      @item1.add_bid(@attendee1, 22)
    end

    it 'Item #bids contains info of attendee and amount bid on item' do
      expected = {
        @attendee2 => 20,
        @attendee1 => 22
      }

      expect(@item1.bids).to eq(expected)
    end
  end
end