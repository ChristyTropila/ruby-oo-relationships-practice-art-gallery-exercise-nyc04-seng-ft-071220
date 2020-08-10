require 'pry'

class Artist

  attr_reader :name, :years_experience

  @@all=[]

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end


  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting_info|
      painting_info.artist==self
    #  binding.pry
    end
  end

  def galleries
    paintings.map do |gallery_info|
      gallery_info.gallery
         # binding.pry
          end
        end

  def cities
    galleries.map do |gallery_info|
    #  binding.pry
      gallery_info.city
    end
  end

  def self.total_experience
    counter=0
    self.all.select do |info|
    counter+=info.years_experience
     # binding.pry
       end
     counter
  end

  def self.most_prolific
    self.all.max do |info|
      info.years_experience
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


end
