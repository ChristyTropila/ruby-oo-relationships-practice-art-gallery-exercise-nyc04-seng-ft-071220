require 'pry'

class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist=artist
    @gallery=gallery
    @@all << self
  end

  def self.all
    @@all
  end


  def self.total_price
    counter=0
    self.all.select do |pricing|
    counter+=pricing.price
    end
   "The total price is $#{counter} dollhairz"
  end

   



end
