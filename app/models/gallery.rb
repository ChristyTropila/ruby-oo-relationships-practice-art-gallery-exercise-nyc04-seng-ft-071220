require 'pry'

class Gallery

  @@all=[]

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end


  def self.all
    @@all
  end


  def paintings
    Painting.all.select do |painting_info|
      painting_info.gallery==self
    #  binding.pry
    end
  end

  def artists
    paintings.map do |painting_info|
      painting_info.artist
     # binding.pry
    end
  end

  def artist_names
    artists.map do |artist_names|
      artist_names.name
    end
  end


  def most_expensive_painting
    paintings.max_by do |most_exp|
      most_exp.price
    end
  end

end
