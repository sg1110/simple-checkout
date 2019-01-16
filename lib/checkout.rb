require_relative 'item'


class Checkout

  attr_reader :scanned_items, :sum

  def initialize
    @scanned_items = []
    @sum = sum
  end

  def scan(item)
    scanned_items << item
  end

  def total
     @sum = @scanned_items.map(&:price).inject(:+)
     format
  end

  def format
    "£#{sum}"
  end
end
