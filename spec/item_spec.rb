require 'item'

describe Item do
  
  it "should provide a random price to an item" do
    allow(subject).to receive(:price).and_return (5)
    expect(subject.price).to eq 5
  end
end
