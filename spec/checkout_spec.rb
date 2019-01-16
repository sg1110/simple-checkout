require 'checkout'
require 'item'

describe Checkout do

let (:item1) {double(:item, :price => 5)}
let (:item2) {double(:item, :price => 6)}

  describe '#scan' do
    it {is_expected.to respond_to :scan}
    it 'should scan items and move them to an array - scanned_items' do
      item1=Item.new
      subject.scan(item1)
      expect(subject.scanned_items).to include item1
    end
  end

  describe '#total' do
    it {is_expected.to respond_to :total}
    it 'should sum up the price of all scanned items and format it with £ sign'do
    # item1=Item.new
    # item2=Item.new
    # allow(item1).to receive(:price).and_return (5)
    # allow(item2).to receive(:price).and_return (6)
    subject.scan(item1)
    subject.scan(item2)
    expect(subject.total).to eq "£11"
    end
  end
end
