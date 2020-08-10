require_relative '../config/environment.rb'

artist1=Artist.new("Christy", 10)
artist2=Artist.new("Joby", 5)
artist3=Artist.new("Emily", 20)


gallery1=Gallery.new("The Met", "NYC")
gallery2=Gallery.new("the Louvre", "France")


painting1=Painting.new("Best Painting ever", 3000, artist1, gallery1)
painting2=Painting.new("Okay Painting", 50, artist2, gallery1)
painting3=Painting.new("Abstract", 1040, artist3, gallery2)
painting4=Painting.new("Best Painting ever", 900000, artist2, gallery1)

# painting4=Painting.new("Mountains", 10, artist1, gallery2)



artist1.paintings
artist2.galleries

artist3.cities

Artist.total_experience
Artist.most_prolific

# artist3.create_painting("test", 40, gallery1)
# artist2.create_painting("Beautiful river", 400, gallery2)

Painting.total_price

gallery1.paintings
gallery2.artists
gallery2.artist_names

gallery2.most_expensive_painting


binding.pry 

puts "Bob Ross rules."
